module arrow.WriteOptions;

private import arrow.c.functions;
public  import arrow.c.types;
private import glib.ConstructionException;
private import gobject.ObjectG;


/** */
public class WriteOptions : ObjectG
{
	/** the main Gtk struct */
	protected GArrowWriteOptions* gArrowWriteOptions;

	/** Get the main Gtk struct */
	public GArrowWriteOptions* getWriteOptionsStruct(bool transferOwnership = false)
	{
		if (transferOwnership)
			ownedRef = false;
		return gArrowWriteOptions;
	}

	/** the main Gtk struct as a void* */
	protected override void* getStruct()
	{
		return cast(void*)gArrowWriteOptions;
	}

	/**
	 * Sets our main struct and passes it to the parent class.
	 */
	public this (GArrowWriteOptions* gArrowWriteOptions, bool ownedRef = false)
	{
		this.gArrowWriteOptions = gArrowWriteOptions;
		super(cast(GObject*)gArrowWriteOptions, ownedRef);
	}


	/** */
	public static GType getType()
	{
		return garrow_write_options_get_type();
	}

	/**
	 * Returns: A newly created #GArrowWriteOptions.
	 *
	 * Since: 1.0.0
	 *
	 * Throws: ConstructionException GTK+ fails to create the object.
	 */
	public this()
	{
		auto __p = garrow_write_options_new();

		if(__p is null)
		{
			throw new ConstructionException("null returned by new");
		}

		this(cast(GArrowWriteOptions*) __p, true);
	}
}
