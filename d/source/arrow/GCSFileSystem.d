module arrow.GCSFileSystem;

private import arrow.FileSystem;
private import arrow.c.functions;
public  import arrow.c.types;


/** */
public class GCSFileSystem : FileSystem
{
	/** the main Gtk struct */
	protected GArrowGCSFileSystem* gArrowGCSFileSystem;

	/** Get the main Gtk struct */
	public GArrowGCSFileSystem* getGCSFileSystemStruct(bool transferOwnership = false)
	{
		if (transferOwnership)
			ownedRef = false;
		return gArrowGCSFileSystem;
	}

	/** the main Gtk struct as a void* */
	protected override void* getStruct()
	{
		return cast(void*)gArrowGCSFileSystem;
	}

	/**
	 * Sets our main struct and passes it to the parent class.
	 */
	public this (GArrowGCSFileSystem* gArrowGCSFileSystem, bool ownedRef = false)
	{
		this.gArrowGCSFileSystem = gArrowGCSFileSystem;
		super(cast(GArrowFileSystem*)gArrowGCSFileSystem, ownedRef);
	}


	/** */
	public static GType getType()
	{
		return garrow_gcs_file_system_get_type();
	}
}
