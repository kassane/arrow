module arrowdataset.FileFormat;

private import arrow.FileSystem;
private import arrow.OutputStream;
private import arrow.Schema;
private import arrowdataset.FileWriteOptions;
private import arrowdataset.FileWriter;
private import arrowdataset.c.functions;
public  import arrowdataset.c.types;
private import glib.ErrorG;
private import glib.GException;
private import glib.Str;
private import glib.c.functions;
private import gobject.ObjectG;


/** */
public class FileFormat : ObjectG
{
	/** the main Gtk struct */
	protected GADatasetFileFormat* gADatasetFileFormat;

	/** Get the main Gtk struct */
	public GADatasetFileFormat* getFileFormatStruct(bool transferOwnership = false)
	{
		if (transferOwnership)
			ownedRef = false;
		return gADatasetFileFormat;
	}

	/** the main Gtk struct as a void* */
	protected override void* getStruct()
	{
		return cast(void*)gADatasetFileFormat;
	}

	/**
	 * Sets our main struct and passes it to the parent class.
	 */
	public this (GADatasetFileFormat* gADatasetFileFormat, bool ownedRef = false)
	{
		this.gADatasetFileFormat = gADatasetFileFormat;
		super(cast(GObject*)gADatasetFileFormat, ownedRef);
	}


	/** */
	public static GType getType()
	{
		return gadataset_file_format_get_type();
	}

	/**
	 *
	 * Params:
	 *     otherFormat = A #GADatasetFileFormat to be compared.
	 * Returns: %TRUE if they are the same content file format, %FALSE otherwise.
	 *
	 * Since: 3.0.0
	 */
	public bool equal(FileFormat otherFormat)
	{
		return gadataset_file_format_equal(gADatasetFileFormat, (otherFormat is null) ? null : otherFormat.getFileFormatStruct()) != 0;
	}

	/**
	 * Returns: The default #GADatasetFileWriteOptions of @format.
	 *
	 * Since: 6.0.0
	 */
	public FileWriteOptions getDefaultWriteOptions()
	{
		auto __p = gadataset_file_format_get_default_write_options(gADatasetFileFormat);

		if(__p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(FileWriteOptions)(cast(GADatasetFileWriteOptions*) __p, true);
	}

	/**
	 * Returns: The type name of @format.
	 *
	 *     It should be freed with g_free() when no longer needed.
	 *
	 * Since: 3.0.0
	 */
	public string getTypeName()
	{
		auto retStr = gadataset_file_format_get_type_name(gADatasetFileFormat);

		scope(exit) Str.freeString(retStr);
		return Str.toString(retStr);
	}

	/**
	 *
	 * Params:
	 *     destination = A #GArrowOutputStream.
	 *     fileSystem = The #GArrowFileSystem of @destination.
	 *     path = The path of @destination.
	 *     schema = A #GArrowSchema that is used by written record batches.
	 *     options = A #GADatasetFileWriteOptions.
	 * Returns: The newly created #GADatasetFileWriter of @format
	 *     on success, %NULL on error.
	 *
	 * Since: 6.0.0
	 *
	 * Throws: GException on failure.
	 */
	public FileWriter openWriter(OutputStream destination, FileSystem fileSystem, string path, Schema schema, FileWriteOptions options)
	{
		GError* err = null;

		auto __p = gadataset_file_format_open_writer(gADatasetFileFormat, (destination is null) ? null : destination.getOutputStreamStruct(), (fileSystem is null) ? null : fileSystem.getFileSystemStruct(), Str.toStringz(path), (schema is null) ? null : schema.getSchemaStruct(), (options is null) ? null : options.getFileWriteOptionsStruct(), &err);

		if (err !is null)
		{
			throw new GException( new ErrorG(err) );
		}

		if(__p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(FileWriter)(cast(GADatasetFileWriter*) __p, true);
	}
}
