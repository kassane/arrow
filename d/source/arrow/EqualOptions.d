module arrow.EqualOptions;

private import arrow.c.functions;
public  import arrow.c.types;
private import glib.ConstructionException;
private import gobject.ObjectG;


/** */
public class EqualOptions : ObjectG
{
	/** the main Gtk struct */
	protected GArrowEqualOptions* gArrowEqualOptions;

	/** Get the main Gtk struct */
	public GArrowEqualOptions* getEqualOptionsStruct(bool transferOwnership = false)
	{
		if (transferOwnership)
			ownedRef = false;
		return gArrowEqualOptions;
	}

	/** the main Gtk struct as a void* */
	protected override void* getStruct()
	{
		return cast(void*)gArrowEqualOptions;
	}

	/**
	 * Sets our main struct and passes it to the parent class.
	 */
	public this (GArrowEqualOptions* gArrowEqualOptions, bool ownedRef = false)
	{
		this.gArrowEqualOptions = gArrowEqualOptions;
		super(cast(GObject*)gArrowEqualOptions, ownedRef);
	}


	/** */
	public static GType getType()
	{
		return garrow_equal_options_get_type();
	}

	/**
	 * Returns: A newly created #GArrowEqualOptions.
	 *
	 * Since: 5.0.0
	 *
	 * Throws: ConstructionException GTK+ fails to create the object.
	 */
	public this()
	{
		auto __p = garrow_equal_options_new();

		if(__p is null)
		{
			throw new ConstructionException("null returned by new");
		}

		this(cast(GArrowEqualOptions*) __p, true);
	}

	/**
	 * Returns: %TRUE if approximate comparison is used, %FALSE otherwise.
	 *
	 * Since: 5.0.0
	 */
	public bool isApprox()
	{
		return garrow_equal_options_is_approx(gArrowEqualOptions) != 0;
	}
}
