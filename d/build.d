module d.build;

import std.process : wait, spawnProcess, environment;
import std.stdio : writeln;
import std.file : isFile, exists, rmdirRecurse;
import std.path : buildPath, absolutePath, pathSeparator;
import std.string : capitalize, toLower, startsWith;
import std.array : split, appender;
import std.conv : to; // safe cast

void main(string[] args) @safe
{
    // Default build type
    string buildType = "debug";

    // Parse arguments
    foreach (arg; args[1 .. $])
    {
        if (arg.startsWith("--build-type="))
        {
            buildType = arg["--build-type=".length .. $].toLower();
        }
    }
    buildArrow(buildType);
}

void buildArrow(ref string buildType) @safe
{
    // Build Arrow C++
    immutable string cmakeExe = findProgram("cmake");
    immutable string cppBuildDir = buildPath("cpp", "build");
    if (!exists(cppBuildDir))
    {
        immutable string[] cmakeConfig = [
            cmakeExe,
            buildPath("..", "cpp"),
            "-DCMAKE_BUILD_TYPE=" ~ buildType.capitalize,
            // "-DARROW_DEPENDENCY_SOURCE=AUTO",
            "-DARROW_DEPENDENCY_SOURCE=SYSTEM",
            "-DARROW_PYTHON=ON",
            "-DARROW_BUILD_TESTS=OFF",
            "-DARROW_ALTIVEC=OFF",
            "-DCMAKE_INSTALL_PREFIX=\"/usr\"",
            "-DCMAKE_INSTALL_LIBDIR=\"lib\"",
            "-DARROW_COMPUTE=ON",
            "-DARROW_IPC=ON",
            "-DARROW_JEMALLOC=OFF",
            "-DARROW_ORC=ON",
            "-DARROW_PARQUET=ON",
            "-DARROW_PLASMA=ON",
            "-DARROW_TENSORFLOW=ON",
            "-DARROW_SIMD_LEVEL=AVX2",
            "-DARROW_FLIGHT=ON",
            "-DARROW_GANDIVA=OFF",
            "-DARROW_PROTOBUF_USE_SHARED=ON",
            "-DARROW_GFLAGS_USE_SHARED=ON",
            "-DARROW_USE_GLOG=ON",
            "-DARROW_WITH_ZSTD=ON",
            "-DARROW_WITH_BROTLI=ON",
            "-DARROW_WITH_RE2=OFF",
            "-B",
            cppBuildDir
        ];
        writeln(cmakeConfig);
        immutable int status = wait(spawnProcess(cmakeConfig));
        if (status != 0)
        {
            rmdirRecurse(cppBuildDir);
            throw new Exception(fmt("CMake configure failed with status: %s", status.to!string));
        }
    }
    if (exists(cppBuildDir))
    {
        import std.parallelism : totalCPUs;

        immutable string[] cmakeBuild = [
            cmakeExe, "--build", cppBuildDir, "--parallel",
            totalCPUs.to!string
        ];
        writeln(cmakeBuild);
        immutable int status = wait(spawnProcess(cmakeBuild));
        if (status != 0)
        {
            rmdirRecurse(cppBuildDir);
            throw new Exception(fmt("CMake build failed with status: %s", status.to!string));
        }
    }
    buildCGlib(buildType, cppBuildDir);
}

void buildCGlib(ref string buildType, inout string cppBuildDir) @safe
{
    // Build Arrow C GLib
    immutable string cglibBuildDir = buildPath("c_glib.build");
    immutable string cglibSourceDir = buildPath("..", "c_glib");
    immutable string mesonExe = findProgram("meson");
    if (!exists(cglibBuildDir))
    {
        immutable string[] mesonSetup = [
            mesonExe,
            "setup",
            cglibBuildDir,
            cglibSourceDir,
            fmt("--buildtype=%s", buildType.toLower),
            fmt("-Darrow_cpp_build_dir=%s", absolutePath(cppBuildDir)),
        ];
        writeln(mesonSetup);
        immutable int status = wait(spawnProcess(mesonSetup));
        if (status != 0)
        {
            rmdirRecurse(cglibBuildDir);
            throw new Exception(fmt("Meson setup failed with status: %s", status.to!string));
        }
    }

    if (exists(cglibBuildDir))
    {
        immutable string[] mesonBuild = [
            mesonExe, "compile", "-C", cglibBuildDir
        ];
        writeln(mesonBuild);
        immutable int status = wait(spawnProcess(mesonBuild));
        if (status != 0)
        {
            rmdirRecurse(cglibBuildDir);
            throw new Exception(fmt("Meson build failed with status: %s", status.to!string));
        }
    }
    immutable string[] girs = [
        "arrow-glib", "Arrow-1.0.gir",
        // "arrow-dataset-glib", "ArrowDataset-1.0.gir",
        // "arrow-flight-glib", "ArrowFlight-1.0.gir"
    ];
    foreach (i; 0 .. girs.length / 2)
    {
        string subdir = girs[i * 2];
        string gir = girs[i * 2 + 1];
        if (exists(absolutePath(buildPath(cglibBuildDir, subdir, gir))))
        {
            runGir2D([
                "-g", absolutePath(buildPath(cglibBuildDir, subdir)), "-i",
                gir, "-o", "source",
                "--use-runtime-linker"
            ]);
        }
    }
}

void runGir2D(inout string[] flags) @safe
{
    immutable string dubExe = findProgram("dub");
    string[] gir2d = [dubExe, "run", "girtod", "--"] ~ flags;
    writeln(gir2d);
    immutable int status = wait(spawnProcess(gir2d));
    if (status != 0)
    {
        throw new Exception(fmt("Dub run failed with status: %s", status.to!string));
    }
}

string fmt(Args...)(string fmt, auto ref Args args) @safe
{
    import std.format : formattedWrite;

    auto app = appender!string();
    formattedWrite(app, fmt, args);
    return app.data;
}

string findProgram(string programName) @safe
{
    string[] paths = environment.get("PATH").split(pathSeparator);
    foreach (path; paths)
    {
        string fullPath = buildPath(path, programName);
        version (Windows)
        {
            fullPath ~= ".exe";
        }
        if (exists(fullPath) && isFile(fullPath))
        {
            return fullPath;
        }
    }
    throw new Exception("Could not find program: " ~ programName);
}
