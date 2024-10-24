module arrowdataset.FileSystemDatasetWriteOptions;

private import arrowdataset.c.functions;
public  import arrowdataset.c.types;
private import glib.ConstructionException;
private import gobject.ObjectG;


/** */
public class FileSystemDatasetWriteOptions : ObjectG
{
	/** the main Gtk struct */
	protected GADatasetFileSystemDatasetWriteOptions* gADatasetFileSystemDatasetWriteOptions;

	/** Get the main Gtk struct */
	public GADatasetFileSystemDatasetWriteOptions* getFileSystemDatasetWriteOptionsStruct(bool transferOwnership = false)
	{
		if (transferOwnership)
			ownedRef = false;
		return gADatasetFileSystemDatasetWriteOptions;
	}

	/** the main Gtk struct as a void* */
	protected override void* getStruct()
	{
		return cast(void*)gADatasetFileSystemDatasetWriteOptions;
	}

	/**
	 * Sets our main struct and passes it to the parent class.
	 */
	public this (GADatasetFileSystemDatasetWriteOptions* gADatasetFileSystemDatasetWriteOptions, bool ownedRef = false)
	{
		this.gADatasetFileSystemDatasetWriteOptions = gADatasetFileSystemDatasetWriteOptions;
		super(cast(GObject*)gADatasetFileSystemDatasetWriteOptions, ownedRef);
	}


	/** */
	public static GType getType()
	{
		return gadataset_file_system_dataset_write_options_get_type();
	}

	/**
	 * Returns: The newly created #GADatasetFileSystemDatasetWriteOptions.
	 *
	 * Since: 6.0.0
	 *
	 * Throws: ConstructionException GTK+ fails to create the object.
	 */
	public this()
	{
		auto __p = gadataset_file_system_dataset_write_options_new();

		if(__p is null)
		{
			throw new ConstructionException("null returned by new");
		}

		this(cast(GADatasetFileSystemDatasetWriteOptions*) __p, true);
	}
}
