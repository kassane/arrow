module arrow.S3FileSystem;

private import arrow.FileSystem;
private import arrow.c.functions;
public  import arrow.c.types;


/** */
public class S3FileSystem : FileSystem
{
	/** the main Gtk struct */
	protected GArrowS3FileSystem* gArrowS3FileSystem;

	/** Get the main Gtk struct */
	public GArrowS3FileSystem* getS3FileSystemStruct(bool transferOwnership = false)
	{
		if (transferOwnership)
			ownedRef = false;
		return gArrowS3FileSystem;
	}

	/** the main Gtk struct as a void* */
	protected override void* getStruct()
	{
		return cast(void*)gArrowS3FileSystem;
	}

	/**
	 * Sets our main struct and passes it to the parent class.
	 */
	public this (GArrowS3FileSystem* gArrowS3FileSystem, bool ownedRef = false)
	{
		this.gArrowS3FileSystem = gArrowS3FileSystem;
		super(cast(GArrowFileSystem*)gArrowS3FileSystem, ownedRef);
	}


	/** */
	public static GType getType()
	{
		return garrow_s3_file_system_get_type();
	}
}
