module arrow.LocalFileSystemOptions;

private import arrow.c.functions;
public  import arrow.c.types;
private import glib.ConstructionException;
private import gobject.ObjectG;


/** */
public class LocalFileSystemOptions : ObjectG
{
	/** the main Gtk struct */
	protected GArrowLocalFileSystemOptions* gArrowLocalFileSystemOptions;

	/** Get the main Gtk struct */
	public GArrowLocalFileSystemOptions* getLocalFileSystemOptionsStruct(bool transferOwnership = false)
	{
		if (transferOwnership)
			ownedRef = false;
		return gArrowLocalFileSystemOptions;
	}

	/** the main Gtk struct as a void* */
	protected override void* getStruct()
	{
		return cast(void*)gArrowLocalFileSystemOptions;
	}

	/**
	 * Sets our main struct and passes it to the parent class.
	 */
	public this (GArrowLocalFileSystemOptions* gArrowLocalFileSystemOptions, bool ownedRef = false)
	{
		this.gArrowLocalFileSystemOptions = gArrowLocalFileSystemOptions;
		super(cast(GObject*)gArrowLocalFileSystemOptions, ownedRef);
	}


	/** */
	public static GType getType()
	{
		return garrow_local_file_system_options_get_type();
	}

	/**
	 * Returns: A newly created #GArrowLocalFileSystemOptions.
	 *
	 * Since: 0.17.0
	 *
	 * Throws: ConstructionException GTK+ fails to create the object.
	 */
	public this()
	{
		auto __p = garrow_local_file_system_options_new();

		if(__p is null)
		{
			throw new ConstructionException("null returned by new");
		}

		this(cast(GArrowLocalFileSystemOptions*) __p, true);
	}
}
