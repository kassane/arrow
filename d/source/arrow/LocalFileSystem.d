module arrow.LocalFileSystem;

private import arrow.FileSystem;
private import arrow.LocalFileSystemOptions;
private import arrow.c.functions;
public  import arrow.c.types;
private import glib.ConstructionException;
private import gobject.ObjectG;


/** */
public class LocalFileSystem : FileSystem
{
	/** the main Gtk struct */
	protected GArrowLocalFileSystem* gArrowLocalFileSystem;

	/** Get the main Gtk struct */
	public GArrowLocalFileSystem* getLocalFileSystemStruct(bool transferOwnership = false)
	{
		if (transferOwnership)
			ownedRef = false;
		return gArrowLocalFileSystem;
	}

	/** the main Gtk struct as a void* */
	protected override void* getStruct()
	{
		return cast(void*)gArrowLocalFileSystem;
	}

	/**
	 * Sets our main struct and passes it to the parent class.
	 */
	public this (GArrowLocalFileSystem* gArrowLocalFileSystem, bool ownedRef = false)
	{
		this.gArrowLocalFileSystem = gArrowLocalFileSystem;
		super(cast(GArrowFileSystem*)gArrowLocalFileSystem, ownedRef);
	}


	/** */
	public static GType getType()
	{
		return garrow_local_file_system_get_type();
	}

	/**
	 *
	 * Params:
	 *     options = A #GArrowLocalFileSystemOptions.
	 * Returns: A newly created #GArrowLocalFileSystem.
	 *
	 * Since: 0.17.0
	 *
	 * Throws: ConstructionException GTK+ fails to create the object.
	 */
	public this(LocalFileSystemOptions options)
	{
		auto __p = garrow_local_file_system_new((options is null) ? null : options.getLocalFileSystemOptionsStruct());

		if(__p is null)
		{
			throw new ConstructionException("null returned by new");
		}

		this(cast(GArrowLocalFileSystem*) __p, true);
	}
}
