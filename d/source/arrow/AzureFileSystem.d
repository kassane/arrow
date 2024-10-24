module arrow.AzureFileSystem;

private import arrow.FileSystem;
private import arrow.c.functions;
public  import arrow.c.types;


/** */
public class AzureFileSystem : FileSystem
{
	/** the main Gtk struct */
	protected GArrowAzureFileSystem* gArrowAzureFileSystem;

	/** Get the main Gtk struct */
	public GArrowAzureFileSystem* getAzureFileSystemStruct(bool transferOwnership = false)
	{
		if (transferOwnership)
			ownedRef = false;
		return gArrowAzureFileSystem;
	}

	/** the main Gtk struct as a void* */
	protected override void* getStruct()
	{
		return cast(void*)gArrowAzureFileSystem;
	}

	/**
	 * Sets our main struct and passes it to the parent class.
	 */
	public this (GArrowAzureFileSystem* gArrowAzureFileSystem, bool ownedRef = false)
	{
		this.gArrowAzureFileSystem = gArrowAzureFileSystem;
		super(cast(GArrowFileSystem*)gArrowAzureFileSystem, ownedRef);
	}


	/** */
	public static GType getType()
	{
		return garrow_azure_file_system_get_type();
	}
}
