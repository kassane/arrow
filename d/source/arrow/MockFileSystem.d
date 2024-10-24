module arrow.MockFileSystem;

private import arrow.FileSystem;
private import arrow.c.functions;
public  import arrow.c.types;


/** */
public class MockFileSystem : FileSystem
{
	/** the main Gtk struct */
	protected GArrowMockFileSystem* gArrowMockFileSystem;

	/** Get the main Gtk struct */
	public GArrowMockFileSystem* getMockFileSystemStruct(bool transferOwnership = false)
	{
		if (transferOwnership)
			ownedRef = false;
		return gArrowMockFileSystem;
	}

	/** the main Gtk struct as a void* */
	protected override void* getStruct()
	{
		return cast(void*)gArrowMockFileSystem;
	}

	/**
	 * Sets our main struct and passes it to the parent class.
	 */
	public this (GArrowMockFileSystem* gArrowMockFileSystem, bool ownedRef = false)
	{
		this.gArrowMockFileSystem = gArrowMockFileSystem;
		super(cast(GArrowFileSystem*)gArrowMockFileSystem, ownedRef);
	}


	/** */
	public static GType getType()
	{
		return garrow_mock_file_system_get_type();
	}
}
