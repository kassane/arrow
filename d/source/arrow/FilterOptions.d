module arrow.FilterOptions;

private import arrow.FunctionOptions;
private import arrow.c.functions;
public  import arrow.c.types;
private import glib.ConstructionException;
private import gobject.ObjectG;


/** */
public class FilterOptions : FunctionOptions
{
	/** the main Gtk struct */
	protected GArrowFilterOptions* gArrowFilterOptions;

	/** Get the main Gtk struct */
	public GArrowFilterOptions* getFilterOptionsStruct(bool transferOwnership = false)
	{
		if (transferOwnership)
			ownedRef = false;
		return gArrowFilterOptions;
	}

	/** the main Gtk struct as a void* */
	protected override void* getStruct()
	{
		return cast(void*)gArrowFilterOptions;
	}

	/**
	 * Sets our main struct and passes it to the parent class.
	 */
	public this (GArrowFilterOptions* gArrowFilterOptions, bool ownedRef = false)
	{
		this.gArrowFilterOptions = gArrowFilterOptions;
		super(cast(GArrowFunctionOptions*)gArrowFilterOptions, ownedRef);
	}


	/** */
	public static GType getType()
	{
		return garrow_filter_options_get_type();
	}

	/**
	 * Returns: A newly created #GArrowFilterOptions.
	 *
	 * Since: 0.17.0
	 *
	 * Throws: ConstructionException GTK+ fails to create the object.
	 */
	public this()
	{
		auto __p = garrow_filter_options_new();

		if(__p is null)
		{
			throw new ConstructionException("null returned by new");
		}

		this(cast(GArrowFilterOptions*) __p, true);
	}
}
