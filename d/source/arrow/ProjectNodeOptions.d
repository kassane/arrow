module arrow.ProjectNodeOptions;

private import arrow.ExecuteNodeOptions;
private import arrow.Expression;
private import arrow.c.functions;
public  import arrow.c.types;
private import glib.ConstructionException;
private import glib.ListG;
private import glib.Str;
private import gobject.ObjectG;


/** */
public class ProjectNodeOptions : ExecuteNodeOptions
{
	/** the main Gtk struct */
	protected GArrowProjectNodeOptions* gArrowProjectNodeOptions;

	/** Get the main Gtk struct */
	public GArrowProjectNodeOptions* getProjectNodeOptionsStruct(bool transferOwnership = false)
	{
		if (transferOwnership)
			ownedRef = false;
		return gArrowProjectNodeOptions;
	}

	/** the main Gtk struct as a void* */
	protected override void* getStruct()
	{
		return cast(void*)gArrowProjectNodeOptions;
	}

	/**
	 * Sets our main struct and passes it to the parent class.
	 */
	public this (GArrowProjectNodeOptions* gArrowProjectNodeOptions, bool ownedRef = false)
	{
		this.gArrowProjectNodeOptions = gArrowProjectNodeOptions;
		super(cast(GArrowExecuteNodeOptions*)gArrowProjectNodeOptions, ownedRef);
	}


	/** */
	public static GType getType()
	{
		return garrow_project_node_options_get_type();
	}

	/**
	 *
	 * Params:
	 *     expressions = A list of #GArrowExpression to be executed.
	 *     names = A list of output column names of @expressions. If @names is %NULL,
	 *         the string representations of @expressions will be used.
	 * Returns: A newly created #GArrowProjectNodeOptions.
	 *
	 * Since: 11.0.0
	 *
	 * Throws: ConstructionException GTK+ fails to create the object.
	 */
	public this(ListG expressions, string[] names)
	{
		auto __p = garrow_project_node_options_new((expressions is null) ? null : expressions.getListGStruct(), Str.toStringzArray(names), cast(size_t)names.length);

		if(__p is null)
		{
			throw new ConstructionException("null returned by new");
		}

		this(cast(GArrowProjectNodeOptions*) __p, true);
	}
}
