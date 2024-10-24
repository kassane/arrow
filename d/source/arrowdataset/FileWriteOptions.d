module arrowdataset.FileWriteOptions;

private import arrowdataset.c.functions;
public  import arrowdataset.c.types;
private import gobject.ObjectG;


/** */
public class FileWriteOptions : ObjectG
{
	/** the main Gtk struct */
	protected GADatasetFileWriteOptions* gADatasetFileWriteOptions;

	/** Get the main Gtk struct */
	public GADatasetFileWriteOptions* getFileWriteOptionsStruct(bool transferOwnership = false)
	{
		if (transferOwnership)
			ownedRef = false;
		return gADatasetFileWriteOptions;
	}

	/** the main Gtk struct as a void* */
	protected override void* getStruct()
	{
		return cast(void*)gADatasetFileWriteOptions;
	}

	/**
	 * Sets our main struct and passes it to the parent class.
	 */
	public this (GADatasetFileWriteOptions* gADatasetFileWriteOptions, bool ownedRef = false)
	{
		this.gADatasetFileWriteOptions = gADatasetFileWriteOptions;
		super(cast(GObject*)gADatasetFileWriteOptions, ownedRef);
	}


	/** */
	public static GType getType()
	{
		return gadataset_file_write_options_get_type();
	}
}
