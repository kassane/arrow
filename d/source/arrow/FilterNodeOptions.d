module arrow.FilterNodeOptions;

private import arrow.ExecuteNodeOptions;
private import arrow.Expression;
private import arrow.c.functions;
public  import arrow.c.types;
private import glib.ConstructionException;
private import gobject.ObjectG;


/** */
public class FilterNodeOptions : ExecuteNodeOptions
{
	/** the main Gtk struct */
	protected GArrowFilterNodeOptions* gArrowFilterNodeOptions;

	/** Get the main Gtk struct */
	public GArrowFilterNodeOptions* getFilterNodeOptionsStruct(bool transferOwnership = false)
	{
		if (transferOwnership)
			ownedRef = false;
		return gArrowFilterNodeOptions;
	}

	/** the main Gtk struct as a void* */
	protected override void* getStruct()
	{
		return cast(void*)gArrowFilterNodeOptions;
	}

	/**
	 * Sets our main struct and passes it to the parent class.
	 */
	public this (GArrowFilterNodeOptions* gArrowFilterNodeOptions, bool ownedRef = false)
	{
		this.gArrowFilterNodeOptions = gArrowFilterNodeOptions;
		super(cast(GArrowExecuteNodeOptions*)gArrowFilterNodeOptions, ownedRef);
	}


	/** */
	public static GType getType()
	{
		return garrow_filter_node_options_get_type();
	}

	/**
	 *
	 * Params:
	 *     expression = A #GArrowExpression to be used for filter.
	 * Returns: A newly created #GArrowFilterNodeOptions.
	 *
	 * Since: 12.0.0
	 *
	 * Throws: ConstructionException GTK+ fails to create the object.
	 */
	public this(Expression expression)
	{
		auto __p = garrow_filter_node_options_new((expression is null) ? null : expression.getExpressionStruct());

		if(__p is null)
		{
			throw new ConstructionException("null returned by new");
		}

		this(cast(GArrowFilterNodeOptions*) __p, true);
	}
}
