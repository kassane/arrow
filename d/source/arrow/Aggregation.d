module arrow.Aggregation;

private import arrow.FunctionOptions;
private import arrow.c.functions;
public  import arrow.c.types;
private import glib.ConstructionException;
private import glib.Str;
private import gobject.ObjectG;


/** */
public class Aggregation : ObjectG
{
	/** the main Gtk struct */
	protected GArrowAggregation* gArrowAggregation;

	/** Get the main Gtk struct */
	public GArrowAggregation* getAggregationStruct(bool transferOwnership = false)
	{
		if (transferOwnership)
			ownedRef = false;
		return gArrowAggregation;
	}

	/** the main Gtk struct as a void* */
	protected override void* getStruct()
	{
		return cast(void*)gArrowAggregation;
	}

	/**
	 * Sets our main struct and passes it to the parent class.
	 */
	public this (GArrowAggregation* gArrowAggregation, bool ownedRef = false)
	{
		this.gArrowAggregation = gArrowAggregation;
		super(cast(GObject*)gArrowAggregation, ownedRef);
	}


	/** */
	public static GType getType()
	{
		return garrow_aggregation_get_type();
	}

	/**
	 *
	 * Params:
	 *     function_ = A name of aggregate function.
	 *     options = A #GArrowFunctionOptions of aggregate function.
	 *     input = An input field name of aggregate function.
	 *     output = An output field name of aggregate function.
	 * Returns: A newly created #GArrowAggregation.
	 *
	 * Since: 6.0.0
	 *
	 * Throws: ConstructionException GTK+ fails to create the object.
	 */
	public this(string function_, FunctionOptions options, string input, string output)
	{
		auto __p = garrow_aggregation_new(Str.toStringz(function_), (options is null) ? null : options.getFunctionOptionsStruct(), Str.toStringz(input), Str.toStringz(output));

		if(__p is null)
		{
			throw new ConstructionException("null returned by new");
		}

		this(cast(GArrowAggregation*) __p, true);
	}
}
