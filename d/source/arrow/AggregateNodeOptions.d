module arrow.AggregateNodeOptions;

private import arrow.Aggregation;
private import arrow.ExecuteNodeOptions;
private import arrow.c.functions;
public  import arrow.c.types;
private import glib.ConstructionException;
private import glib.ErrorG;
private import glib.GException;
private import glib.ListG;
private import glib.Str;
private import gobject.ObjectG;


/** */
public class AggregateNodeOptions : ExecuteNodeOptions
{
	/** the main Gtk struct */
	protected GArrowAggregateNodeOptions* gArrowAggregateNodeOptions;

	/** Get the main Gtk struct */
	public GArrowAggregateNodeOptions* getAggregateNodeOptionsStruct(bool transferOwnership = false)
	{
		if (transferOwnership)
			ownedRef = false;
		return gArrowAggregateNodeOptions;
	}

	/** the main Gtk struct as a void* */
	protected override void* getStruct()
	{
		return cast(void*)gArrowAggregateNodeOptions;
	}

	/**
	 * Sets our main struct and passes it to the parent class.
	 */
	public this (GArrowAggregateNodeOptions* gArrowAggregateNodeOptions, bool ownedRef = false)
	{
		this.gArrowAggregateNodeOptions = gArrowAggregateNodeOptions;
		super(cast(GArrowExecuteNodeOptions*)gArrowAggregateNodeOptions, ownedRef);
	}


	/** */
	public static GType getType()
	{
		return garrow_aggregate_node_options_get_type();
	}

	/**
	 *
	 * Params:
	 *     aggregations = A list of #GArrowAggregation.
	 *     keys = Group keys.
	 * Returns: A newly created #GArrowAggregateNodeOptions on success,
	 *     %NULL otherwise.
	 *
	 * Since: 6.0.0
	 *
	 * Throws: GException on failure.
	 * Throws: ConstructionException GTK+ fails to create the object.
	 */
	public this(ListG aggregations, string[] keys)
	{
		GError* err = null;

		auto __p = garrow_aggregate_node_options_new((aggregations is null) ? null : aggregations.getListGStruct(), Str.toStringzArray(keys), cast(size_t)keys.length, &err);

		if (err !is null)
		{
			throw new GException( new ErrorG(err) );
		}

		if(__p is null)
		{
			throw new ConstructionException("null returned by new");
		}

		this(cast(GArrowAggregateNodeOptions*) __p, true);
	}
}
