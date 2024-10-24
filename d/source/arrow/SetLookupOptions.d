module arrow.SetLookupOptions;

private import arrow.Datum;
private import arrow.FunctionOptions;
private import arrow.c.functions;
public  import arrow.c.types;
private import glib.ConstructionException;
private import gobject.ObjectG;


/** */
public class SetLookupOptions : FunctionOptions
{
	/** the main Gtk struct */
	protected GArrowSetLookupOptions* gArrowSetLookupOptions;

	/** Get the main Gtk struct */
	public GArrowSetLookupOptions* getSetLookupOptionsStruct(bool transferOwnership = false)
	{
		if (transferOwnership)
			ownedRef = false;
		return gArrowSetLookupOptions;
	}

	/** the main Gtk struct as a void* */
	protected override void* getStruct()
	{
		return cast(void*)gArrowSetLookupOptions;
	}

	/**
	 * Sets our main struct and passes it to the parent class.
	 */
	public this (GArrowSetLookupOptions* gArrowSetLookupOptions, bool ownedRef = false)
	{
		this.gArrowSetLookupOptions = gArrowSetLookupOptions;
		super(cast(GArrowFunctionOptions*)gArrowSetLookupOptions, ownedRef);
	}


	/** */
	public static GType getType()
	{
		return garrow_set_lookup_options_get_type();
	}

	/**
	 *
	 * Params:
	 *     valueSet = A #GArrowArrayDatum or
	 *         #GArrowChunkedArrayDatum to be looked up.
	 * Returns: A newly created #GArrowSetLookupOptions.
	 *
	 * Since: 6.0.0
	 *
	 * Throws: ConstructionException GTK+ fails to create the object.
	 */
	public this(Datum valueSet)
	{
		auto __p = garrow_set_lookup_options_new((valueSet is null) ? null : valueSet.getDatumStruct());

		if(__p is null)
		{
			throw new ConstructionException("null returned by new");
		}

		this(cast(GArrowSetLookupOptions*) __p, true);
	}
}
