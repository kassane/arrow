module arrow.FileSystem;

private import arrow.FileInfo;
private import arrow.FileSelector;
private import arrow.InputStream;
private import arrow.OutputStream;
private import arrow.SeekableInputStream;
private import arrow.c.functions;
public  import arrow.c.types;
private import glib.ErrorG;
private import glib.GException;
private import glib.ListG;
private import glib.Str;
private import glib.c.functions;
private import gobject.ObjectG;


/** */
public class FileSystem : ObjectG
{
	/** the main Gtk struct */
	protected GArrowFileSystem* gArrowFileSystem;

	/** Get the main Gtk struct */
	public GArrowFileSystem* getFileSystemStruct(bool transferOwnership = false)
	{
		if (transferOwnership)
			ownedRef = false;
		return gArrowFileSystem;
	}

	/** the main Gtk struct as a void* */
	protected override void* getStruct()
	{
		return cast(void*)gArrowFileSystem;
	}

	/**
	 * Sets our main struct and passes it to the parent class.
	 */
	public this (GArrowFileSystem* gArrowFileSystem, bool ownedRef = false)
	{
		this.gArrowFileSystem = gArrowFileSystem;
		super(cast(GObject*)gArrowFileSystem, ownedRef);
	}


	/** */
	public static GType getType()
	{
		return garrow_file_system_get_type();
	}

	/**
	 * This is a factory function to create a specific #GArrowFileSystem
	 * object.
	 *
	 * Params:
	 *     uri = An URI to specify file system with options. If you only have an
	 *         absolute path, g_filename_to_uri() will help you.
	 *
	 * Returns: The newly created file system
	 *     that is an object of a subclass of #GArrowFileSystem.
	 *
	 * Since: 3.0.0
	 *
	 * Throws: GException on failure.
	 */
	public static FileSystem create(string uri)
	{
		GError* err = null;

		auto __p = garrow_file_system_create(Str.toStringz(uri), &err);

		if (err !is null)
		{
			throw new GException( new ErrorG(err) );
		}

		if(__p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(FileSystem)(cast(GArrowFileSystem*) __p, true);
	}

	/**
	 * Copy a file.
	 * If the destination exists and is a directory, an error is returned.
	 * Otherwise, it is replaced.
	 *
	 * Params:
	 *     src = The path of the source file.
	 *     dest = The path of the destination.
	 *
	 * Returns: %TRUE on success, %FALSE if there was an error.
	 *
	 * Since: 0.17.0
	 *
	 * Throws: GException on failure.
	 */
	public bool copyFile(string src, string dest)
	{
		GError* err = null;

		auto __p = garrow_file_system_copy_file(gArrowFileSystem, Str.toStringz(src), Str.toStringz(dest), &err) != 0;

		if (err !is null)
		{
			throw new GException( new ErrorG(err) );
		}

		return __p;
	}

	/**
	 * Create a directory and subdirectories.
	 * This function succeeds if the directory already exists.
	 *
	 * Params:
	 *     path = The paths of the directory.
	 *     recursive = Whether creating directory recursively or not.
	 *
	 * Returns: %TRUE on success, %FALSE if there was an error.
	 *
	 * Since: 0.17.0
	 *
	 * Throws: GException on failure.
	 */
	public bool createDir(string path, bool recursive)
	{
		GError* err = null;

		auto __p = garrow_file_system_create_dir(gArrowFileSystem, Str.toStringz(path), recursive, &err) != 0;

		if (err !is null)
		{
			throw new GException( new ErrorG(err) );
		}

		return __p;
	}

	/**
	 * Delete a directory and its contents, recursively.
	 *
	 * Params:
	 *     path = The paths of the directory.
	 *
	 * Returns: %TRUE on success, %FALSE if there was an error.
	 *
	 * Since: 0.17.0
	 *
	 * Throws: GException on failure.
	 */
	public bool deleteDir(string path)
	{
		GError* err = null;

		auto __p = garrow_file_system_delete_dir(gArrowFileSystem, Str.toStringz(path), &err) != 0;

		if (err !is null)
		{
			throw new GException( new ErrorG(err) );
		}

		return __p;
	}

	/**
	 * Delete a directory's contents, recursively. Like
	 * garrow_file_system_delete_dir(), but doesn't delete the directory
	 * itself. Passing an empty path (`""`) will wipe the entire file
	 * system tree.
	 *
	 * Params:
	 *     path = The paths of the directory.
	 *
	 * Returns: %TRUE on success, %FALSE if there was an error.
	 *
	 * Since: 0.17.0
	 *
	 * Throws: GException on failure.
	 */
	public bool deleteDirContents(string path)
	{
		GError* err = null;

		auto __p = garrow_file_system_delete_dir_contents(gArrowFileSystem, Str.toStringz(path), &err) != 0;

		if (err !is null)
		{
			throw new GException( new ErrorG(err) );
		}

		return __p;
	}

	/**
	 * Delete a file.
	 *
	 * Params:
	 *     path = The paths of the file to be delete.
	 *
	 * Returns: %TRUE on success, %FALSE if there was an error.
	 *
	 * Since: 0.17.0
	 *
	 * Throws: GException on failure.
	 */
	public bool deleteFile(string path)
	{
		GError* err = null;

		auto __p = garrow_file_system_delete_file(gArrowFileSystem, Str.toStringz(path), &err) != 0;

		if (err !is null)
		{
			throw new GException( new ErrorG(err) );
		}

		return __p;
	}

	/**
	 * Delete many files.
	 *
	 * Params:
	 *     paths = The paths of the files to be delete.
	 *
	 * Returns: %TRUE on success, %FALSE if there was an error.
	 *
	 * Since: 0.17.0
	 *
	 * Throws: GException on failure.
	 */
	public bool deleteFiles(string[] paths)
	{
		GError* err = null;

		auto __p = garrow_file_system_delete_files(gArrowFileSystem, Str.toStringzArray(paths), cast(size_t)paths.length, &err) != 0;

		if (err !is null)
		{
			throw new GException( new ErrorG(err) );
		}

		return __p;
	}

	/**
	 * Get information for the given target.
	 *
	 * Any symlink is automatically dereferenced, recursively.
	 * A non-existing or unreachable file returns an OK status and has
	 * a #GArrowFileType of value %GARROW_FILE_TYPE_NOT_FOUND.
	 * An error status indicates a truly exceptional condition
	 * (low-level I/O error, etc.).
	 *
	 * Params:
	 *     path = The path of the target.
	 *
	 * Returns: A #GArrowFileInfo.
	 *
	 * Since: 0.17.0
	 *
	 * Throws: GException on failure.
	 */
	public FileInfo getFileInfo(string path)
	{
		GError* err = null;

		auto __p = garrow_file_system_get_file_info(gArrowFileSystem, Str.toStringz(path), &err);

		if (err !is null)
		{
			throw new GException( new ErrorG(err) );
		}

		if(__p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(FileInfo)(cast(GArrowFileInfo*) __p, true);
	}

	/**
	 * Get information same as garrow_file_system_get_file_info()
	 * for the given many targets at once.
	 *
	 * Params:
	 *     paths = The paths of the targets.
	 *
	 * Returns: A list of #GArrowFileInfo.
	 *
	 * Since: 0.17.0
	 *
	 * Throws: GException on failure.
	 */
	public ListG getFileInfosPaths(string[] paths)
	{
		GError* err = null;

		auto __p = garrow_file_system_get_file_infos_paths(gArrowFileSystem, Str.toStringzArray(paths), cast(size_t)paths.length, &err);

		if (err !is null)
		{
			throw new GException( new ErrorG(err) );
		}

		if(__p is null)
		{
			return null;
		}

		return new ListG(cast(GList*) __p, true);
	}

	/**
	 * Get information same as garrow_file_system_get_file_info()
	 * according to a selector.
	 *
	 * The selector's base directory will not be part of the results,
	 * even if it exists.
	 *
	 * Params:
	 *     fileSelector = A #GArrowFileSelector.
	 *
	 * Returns: A list of #GArrowFileInfo.
	 *
	 * Since: 0.17.0
	 *
	 * Throws: GException on failure.
	 */
	public ListG getFileInfosSelector(FileSelector fileSelector)
	{
		GError* err = null;

		auto __p = garrow_file_system_get_file_infos_selector(gArrowFileSystem, (fileSelector is null) ? null : fileSelector.getFileSelectorStruct(), &err);

		if (err !is null)
		{
			throw new GException( new ErrorG(err) );
		}

		if(__p is null)
		{
			return null;
		}

		return new ListG(cast(GList*) __p, true);
	}

	/**
	 * Returns: The name of file system type.
	 *
	 *     It should be freed with g_free() when no longer needed.
	 *
	 * Since: 0.17.0
	 */
	public string getTypeName()
	{
		auto retStr = garrow_file_system_get_type_name(gArrowFileSystem);

		scope(exit) Str.freeString(retStr);
		return Str.toString(retStr);
	}

	/**
	 * Move / rename a file or a directory.
	 * If the destination exists:
	 * - if it is a non-empty directory, an error is returned
	 * - otherwise, if it has the same type as the source, it is replaced
	 * - otherwise, behavior is unspecified (implementation-dependent).
	 *
	 * Params:
	 *     src = The path of the source file.
	 *     dest = The path of the destination.
	 *
	 * Returns: %TRUE on success, %FALSE if there was an error.
	 *
	 * Since: 0.17.0
	 *
	 * Throws: GException on failure.
	 */
	public bool move(string src, string dest)
	{
		GError* err = null;

		auto __p = garrow_file_system_move(gArrowFileSystem, Str.toStringz(src), Str.toStringz(dest), &err) != 0;

		if (err !is null)
		{
			throw new GException( new ErrorG(err) );
		}

		return __p;
	}

	/**
	 * Open an output stream for appending.
	 * If the target doesn't exist, a new empty file is created.
	 *
	 * Params:
	 *     path = The path of the output stream.
	 *
	 * Returns: A newly created #GArrowOutputStream
	 *     for appending.
	 *
	 * Since: 0.17.0
	 *
	 * Throws: GException on failure.
	 */
	public OutputStream openAppendStream(string path)
	{
		GError* err = null;

		auto __p = garrow_file_system_open_append_stream(gArrowFileSystem, Str.toStringz(path), &err);

		if (err !is null)
		{
			throw new GException( new ErrorG(err) );
		}

		if(__p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(OutputStream)(cast(GArrowOutputStream*) __p, true);
	}

	/**
	 * Open an input file for random access reading.
	 *
	 * Params:
	 *     path = The path of the input file.
	 *
	 * Returns: A newly created
	 *     #GArrowSeekableInputStream.
	 *
	 * Since: 0.17.0
	 *
	 * Throws: GException on failure.
	 */
	public SeekableInputStream openInputFile(string path)
	{
		GError* err = null;

		auto __p = garrow_file_system_open_input_file(gArrowFileSystem, Str.toStringz(path), &err);

		if (err !is null)
		{
			throw new GException( new ErrorG(err) );
		}

		if(__p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(SeekableInputStream)(cast(GArrowSeekableInputStream*) __p, true);
	}

	/**
	 * Open an input stream for sequential reading.
	 *
	 * Params:
	 *     path = The path of the input stream.
	 *
	 * Returns: A newly created
	 *     #GArrowInputStream.
	 *
	 * Since: 0.17.0
	 *
	 * Throws: GException on failure.
	 */
	public InputStream openInputStream(string path)
	{
		GError* err = null;

		auto __p = garrow_file_system_open_input_stream(gArrowFileSystem, Str.toStringz(path), &err);

		if (err !is null)
		{
			throw new GException( new ErrorG(err) );
		}

		if(__p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(InputStream)(cast(GArrowInputStream*) __p, true);
	}

	/**
	 * Open an output stream for sequential writing.
	 * If the target already exists, the existing data is truncated.
	 *
	 * Params:
	 *     path = The path of the output stream.
	 *
	 * Returns: A newly created
	 *     #GArrowOutputStream.
	 *
	 * Since: 0.17.0
	 *
	 * Throws: GException on failure.
	 */
	public OutputStream openOutputStream(string path)
	{
		GError* err = null;

		auto __p = garrow_file_system_open_output_stream(gArrowFileSystem, Str.toStringz(path), &err);

		if (err !is null)
		{
			throw new GException( new ErrorG(err) );
		}

		if(__p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(OutputStream)(cast(GArrowOutputStream*) __p, true);
	}
}
