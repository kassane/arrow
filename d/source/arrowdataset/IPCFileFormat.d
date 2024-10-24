module arrowdataset.IPCFileFormat;

private import arrowdataset.FileFormat;
private import arrowdataset.c.functions;
public  import arrowdataset.c.types;
private import glib.ConstructionException;
private import gobject.ObjectG;


/** */
public class IPCFileFormat : FileFormat
{
	/** the main Gtk struct */
	protected GADatasetIPCFileFormat* gADatasetIPCFileFormat;

	/** Get the main Gtk struct */
	public GADatasetIPCFileFormat* getIPCFileFormatStruct(bool transferOwnership = false)
	{
		if (transferOwnership)
			ownedRef = false;
		return gADatasetIPCFileFormat;
	}

	/** the main Gtk struct as a void* */
	protected override void* getStruct()
	{
		return cast(void*)gADatasetIPCFileFormat;
	}

	/**
	 * Sets our main struct and passes it to the parent class.
	 */
	public this (GADatasetIPCFileFormat* gADatasetIPCFileFormat, bool ownedRef = false)
	{
		this.gADatasetIPCFileFormat = gADatasetIPCFileFormat;
		super(cast(GADatasetFileFormat*)gADatasetIPCFileFormat, ownedRef);
	}


	/** */
	public static GType getType()
	{
		return gadataset_ipc_file_format_get_type();
	}

	/**
	 * Returns: The newly created IPC file format.
	 *
	 * Since: 3.0.0
	 *
	 * Throws: ConstructionException GTK+ fails to create the object.
	 */
	public this()
	{
		auto __p = gadataset_ipc_file_format_new();

		if(__p is null)
		{
			throw new ConstructionException("null returned by new");
		}

		this(cast(GADatasetIPCFileFormat*) __p, true);
	}
}
