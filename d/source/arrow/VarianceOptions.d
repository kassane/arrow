module arrow.VarianceOptions;

private import arrow.FunctionOptions;
private import arrow.c.functions;
public  import arrow.c.types;
private import glib.ConstructionException;
private import gobject.ObjectG;


/** */
public class VarianceOptions : FunctionOptions
{
	/** the main Gtk struct */
	protected GArrowVarianceOptions* gArrowVarianceOptions;

	/** Get the main Gtk struct */
	public GArrowVarianceOptions* getVarianceOptionsStruct(bool transferOwnership = false)
	{
		if (transferOwnership)
			ownedRef = false;
		return gArrowVarianceOptions;
	}

	/** the main Gtk struct as a void* */
	protected override void* getStruct()
	{
		return cast(void*)gArrowVarianceOptions;
	}

	/**
	 * Sets our main struct and passes it to the parent class.
	 */
	public this (GArrowVarianceOptions* gArrowVarianceOptions, bool ownedRef = false)
	{
		this.gArrowVarianceOptions = gArrowVarianceOptions;
		super(cast(GArrowFunctionOptions*)gArrowVarianceOptions, ownedRef);
	}


	/** */
	public static GType getType()
	{
		return garrow_variance_options_get_type();
	}

	/**
	 * Returns: A newly created #GArrowVarianceOptions.
	 *
	 * Since: 6.0.0
	 *
	 * Throws: ConstructionException GTK+ fails to create the object.
	 */
	public this()
	{
		auto __p = garrow_variance_options_new();

		if(__p is null)
		{
			throw new ConstructionException("null returned by new");
		}

		this(cast(GArrowVarianceOptions*) __p, true);
	}
}
