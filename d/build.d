module d.build;

import std.process;
import std.stdio;
import std.file;
import std.path;
import std.string;
import std.array;
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

    // Build Arrow C++
    string cmakeExe = findProgram("cmake");
    auto cppBuildDir = buildPath("cpp", "build");
    if (!exists(cppBuildDir))
    {
        auto cmakeConfig = [
            cmakeExe,
            buildPath("..", "cpp"),
            "-DCMAKE_BUILD_TYPE=" ~ buildType.capitalize,
            // "-DARROW_DEPENDENCY_SOURCE=AUTO",
            "-DARROW_DEPENDENCY_SOURCE=SYSTEM",
            "-DARROW_PYTHON=ON",
            "-DARROW_BUILD_TESTS=ON",
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
        auto status = wait(spawnProcess(cmakeConfig));
        if (status != 0)
        {
            rmdirRecurse(cppBuildDir);
            throw new Exception(fmt("CMake configure failed with status: %s", status.to!string));
        }
    }
    if (exists(cppBuildDir))
    {
        import std.parallelism : totalCPUs;

        auto cmakeBuild = [
            cmakeExe, "--build", cppBuildDir, "--parallel",
            totalCPUs.to!string
        ];
        writeln(cmakeBuild);
        auto status = wait(spawnProcess(cmakeBuild));
        if (status != 0)
        {
            rmdirRecurse(cppBuildDir);
            throw new Exception(fmt("CMake build failed with status: %s", status.to!string));
        }
    }

    // Build Arrow C GLib
    auto cglibBuildDir = buildPath("c_glib.build");
    auto cglibSourceDir = buildPath("..", "c_glib");
    string mesonExe = findProgram("meson");
    if (!exists(cglibBuildDir))
    {
        auto mesonSetup = [
            mesonExe,
            "setup",
            cglibBuildDir,
            cglibSourceDir,
            fmt("--buildtype=%s", buildType.toLower),
            fmt("-Darrow_cpp_build_dir=%s", cppBuildDir)
        ];
        writeln(mesonSetup);
        auto status = wait(spawnProcess(mesonSetup));
        if (status != 0)
        {
            rmdirRecurse(cglibBuildDir);
            throw new Exception(fmt("Meson setup failed with status: %s", status.to!string));
        }
    }

    if (exists(cglibBuildDir))
    {
        auto mesonBuild = [mesonExe, "compile", "-C", cglibBuildDir];
        writeln(mesonBuild);
        auto status = wait(spawnProcess(mesonBuild));
        if (status != 0)
        {
            rmdirRecurse(cglibBuildDir);
            throw new Exception(fmt("Meson build failed with status: %s", status.to!string));
        }
    }
}

string fmt(Args...)(string fmt, auto ref Args args) @safe
{
    import std.array, std.format;

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
