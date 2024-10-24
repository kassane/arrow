module arrow.ScalarAggregateOptions;

private import arrow.FunctionOptions;
private import arrow.c.functions;
public  import arrow.c.types;
private import glib.ConstructionException;
private import gobject.ObjectG;


/** */
public class ScalarAggregateOptions : FunctionOptions
{
	/** the main Gtk struct */
	protected GArrowScalarAggregateOptions* gArrowScalarAggregateOptions;

	/** Get the main Gtk struct */
	public GArrowScalarAggregateOptions* getScalarAggregateOptionsStruct(bool transferOwnership = false)
	{
		if (transferOwnership)
			ownedRef = false;
		return gArrowScalarAggregateOptions;
	}

	/** the main Gtk struct as a void* */
	protected override void* getStruct()
	{
		return cast(void*)gArrowScalarAggregateOptions;
	}

	/**
	 * Sets our main struct and passes it to the parent class.
	 */
	public this (GArrowScalarAggregateOptions* gArrowScalarAggregateOptions, bool ownedRef = false)
	{
		this.gArrowScalarAggregateOptions = gArrowScalarAggregateOptions;
		super(cast(GArrowFunctionOptions*)gArrowScalarAggregateOptions, ownedRef);
	}


	/** */
	public static GType getType()
	{
		return garrow_scalar_aggregate_options_get_type();
	}

	/**
	 * Returns: A newly created #GArrowScalarAggregateOptions.
	 *
	 * Since: 5.0.0
	 *
	 * Throws: ConstructionException GTK+ fails to create the object.
	 */
	public this()
	{
		auto __p = garrow_scalar_aggregate_options_new();

		if(__p is null)
		{
			throw new ConstructionException("null returned by new");
		}

		this(cast(GArrowScalarAggregateOptions*) __p, true);
	}
}
