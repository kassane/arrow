module arrow.HDFSFileSystem;

private import arrow.FileSystem;
private import arrow.c.functions;
public  import arrow.c.types;


/** */
public class HDFSFileSystem : FileSystem
{
	/** the main Gtk struct */
	protected GArrowHDFSFileSystem* gArrowHDFSFileSystem;

	/** Get the main Gtk struct */
	public GArrowHDFSFileSystem* getHDFSFileSystemStruct(bool transferOwnership = false)
	{
		if (transferOwnership)
			ownedRef = false;
		return gArrowHDFSFileSystem;
	}

	/** the main Gtk struct as a void* */
	protected override void* getStruct()
	{
		return cast(void*)gArrowHDFSFileSystem;
	}

	/**
	 * Sets our main struct and passes it to the parent class.
	 */
	public this (GArrowHDFSFileSystem* gArrowHDFSFileSystem, bool ownedRef = false)
	{
		this.gArrowHDFSFileSystem = gArrowHDFSFileSystem;
		super(cast(GArrowFileSystem*)gArrowHDFSFileSystem, ownedRef);
	}


	/** */
	public static GType getType()
	{
		return garrow_hdfs_file_system_get_type();
	}
}
