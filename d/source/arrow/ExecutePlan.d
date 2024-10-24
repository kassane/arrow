module arrow.ExecutePlan;

private import arrow.AggregateNodeOptions;
private import arrow.ExecuteNode;
private import arrow.ExecuteNodeOptions;
private import arrow.FilterNodeOptions;
private import arrow.HashJoinNodeOptions;
private import arrow.ProjectNodeOptions;
private import arrow.SinkNodeOptions;
private import arrow.SourceNodeOptions;
private import arrow.c.functions;
public  import arrow.c.types;
private import glib.ConstructionException;
private import glib.ErrorG;
private import glib.GException;
private import glib.ListG;
private import glib.Str;
private import gobject.ObjectG;


/** */
public class ExecutePlan : ObjectG
{
	/** the main Gtk struct */
	protected GArrowExecutePlan* gArrowExecutePlan;

	/** Get the main Gtk struct */
	public GArrowExecutePlan* getExecutePlanStruct(bool transferOwnership = false)
	{
		if (transferOwnership)
			ownedRef = false;
		return gArrowExecutePlan;
	}

	/** the main Gtk struct as a void* */
	protected override void* getStruct()
	{
		return cast(void*)gArrowExecutePlan;
	}

	/**
	 * Sets our main struct and passes it to the parent class.
	 */
	public this (GArrowExecutePlan* gArrowExecutePlan, bool ownedRef = false)
	{
		this.gArrowExecutePlan = gArrowExecutePlan;
		super(cast(GObject*)gArrowExecutePlan, ownedRef);
	}


	/** */
	public static GType getType()
	{
		return garrow_execute_plan_get_type();
	}

	/**
	 * Returns: A newly created #GArrowExecutePlan on success,
	 *     %NULL on error.
	 *
	 * Since: 6.0.0
	 *
	 * Throws: GException on failure.
	 * Throws: ConstructionException GTK+ fails to create the object.
	 */
	public this()
	{
		GError* err = null;

		auto __p = garrow_execute_plan_new(&err);

		if (err !is null)
		{
			throw new GException( new ErrorG(err) );
		}

		if(__p is null)
		{
			throw new ConstructionException("null returned by new");
		}

		this(cast(GArrowExecutePlan*) __p, true);
	}

	/**
	 * This is a shortcut of garrow_execute_plan_build_node() for aggregate
	 * node.
	 *
	 * Params:
	 *     input = A #GArrowExecuteNode.
	 *     options = A #GArrowAggregateNodeOptions.
	 *
	 * Returns: A newly built and added #GArrowExecuteNode
	 *     for aggregation on success, %NULL on error.
	 *
	 * Since: 6.0.0
	 *
	 * Throws: GException on failure.
	 */
	public ExecuteNode buildAggregateNode(ExecuteNode input, AggregateNodeOptions options)
	{
		GError* err = null;

		auto __p = garrow_execute_plan_build_aggregate_node(gArrowExecutePlan, (input is null) ? null : input.getExecuteNodeStruct(), (options is null) ? null : options.getAggregateNodeOptionsStruct(), &err);

		if (err !is null)
		{
			throw new GException( new ErrorG(err) );
		}

		if(__p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(ExecuteNode)(cast(GArrowExecuteNode*) __p, true);
	}

	/**
	 * This is a shortcut of garrow_execute_plan_build_node() for filter
	 * node.
	 *
	 * Params:
	 *     input = A #GArrowExecuteNode.
	 *     options = A #GArrowFilterNodeOptions.
	 *
	 * Returns: A newly built and added #GArrowExecuteNode
	 *     for filter on success, %NULL on error.
	 *
	 * Since: 12.0.0
	 *
	 * Throws: GException on failure.
	 */
	public ExecuteNode buildFilterNode(ExecuteNode input, FilterNodeOptions options)
	{
		GError* err = null;

		auto __p = garrow_execute_plan_build_filter_node(gArrowExecutePlan, (input is null) ? null : input.getExecuteNodeStruct(), (options is null) ? null : options.getFilterNodeOptionsStruct(), &err);

		if (err !is null)
		{
			throw new GException( new ErrorG(err) );
		}

		if(__p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(ExecuteNode)(cast(GArrowExecuteNode*) __p, true);
	}

	/**
	 * This is a shortcut of garrow_execute_plan_build_node() for hash
	 * join node.
	 *
	 * Params:
	 *     left = A left #GArrowExecuteNode.
	 *     right = A right #GArrowExecuteNode.
	 *     options = A #GArrowHashJoinNodeOptions.
	 *
	 * Returns: A newly built and added #GArrowExecuteNode
	 *     for hash join on success, %NULL on error.
	 *
	 * Since: 7.0.0
	 *
	 * Throws: GException on failure.
	 */
	public ExecuteNode buildHashJoinNode(ExecuteNode left, ExecuteNode right, HashJoinNodeOptions options)
	{
		GError* err = null;

		auto __p = garrow_execute_plan_build_hash_join_node(gArrowExecutePlan, (left is null) ? null : left.getExecuteNodeStruct(), (right is null) ? null : right.getExecuteNodeStruct(), (options is null) ? null : options.getHashJoinNodeOptionsStruct(), &err);

		if (err !is null)
		{
			throw new GException( new ErrorG(err) );
		}

		if(__p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(ExecuteNode)(cast(GArrowExecuteNode*) __p, true);
	}

	/**
	 *
	 * Params:
	 *     factoryName = A factory name to build a #GArrowExecuteNode.
	 *     inputs = An inputs to execute new node.
	 *     options = A #GArrowExecuteNodeOptions for new node.
	 * Returns: A newly built and added #GArrowExecuteNode
	 *     on success, %NULL on error.
	 *
	 * Since: 6.0.0
	 *
	 * Throws: GException on failure.
	 */
	public ExecuteNode buildNode(string factoryName, ListG inputs, ExecuteNodeOptions options)
	{
		GError* err = null;

		auto __p = garrow_execute_plan_build_node(gArrowExecutePlan, Str.toStringz(factoryName), (inputs is null) ? null : inputs.getListGStruct(), (options is null) ? null : options.getExecuteNodeOptionsStruct(), &err);

		if (err !is null)
		{
			throw new GException( new ErrorG(err) );
		}

		if(__p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(ExecuteNode)(cast(GArrowExecuteNode*) __p, true);
	}

	/**
	 * This is a shortcut of garrow_execute_plan_build_node() for project
	 * node.
	 *
	 * Params:
	 *     input = A #GArrowExecuteNode.
	 *     options = A #GArrowProjectNodeOptions.
	 *
	 * Returns: A newly built and added #GArrowExecuteNode
	 *     for project on success, %NULL on error.
	 *
	 * Since: 11.0.0
	 *
	 * Throws: GException on failure.
	 */
	public ExecuteNode buildProjectNode(ExecuteNode input, ProjectNodeOptions options)
	{
		GError* err = null;

		auto __p = garrow_execute_plan_build_project_node(gArrowExecutePlan, (input is null) ? null : input.getExecuteNodeStruct(), (options is null) ? null : options.getProjectNodeOptionsStruct(), &err);

		if (err !is null)
		{
			throw new GException( new ErrorG(err) );
		}

		if(__p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(ExecuteNode)(cast(GArrowExecuteNode*) __p, true);
	}

	/**
	 * This is a shortcut of garrow_execute_plan_build_node() for sink
	 * node.
	 *
	 * Params:
	 *     input = A #GArrowExecuteNode.
	 *     options = A #GArrowSinkNodeOptions.
	 *
	 * Returns: A newly built and added #GArrowExecuteNode
	 *     for sink on success, %NULL on error.
	 *
	 * Since: 6.0.0
	 *
	 * Throws: GException on failure.
	 */
	public ExecuteNode buildSinkNode(ExecuteNode input, SinkNodeOptions options)
	{
		GError* err = null;

		auto __p = garrow_execute_plan_build_sink_node(gArrowExecutePlan, (input is null) ? null : input.getExecuteNodeStruct(), (options is null) ? null : options.getSinkNodeOptionsStruct(), &err);

		if (err !is null)
		{
			throw new GException( new ErrorG(err) );
		}

		if(__p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(ExecuteNode)(cast(GArrowExecuteNode*) __p, true);
	}

	/**
	 * This is a shortcut of garrow_execute_plan_build_node() for source
	 * node.
	 *
	 * Params:
	 *     options = A #GArrowSourceNodeOptions.
	 *
	 * Returns: A newly built and added #GArrowExecuteNode
	 *     for source on success, %NULL on error.
	 *
	 * Since: 6.0.0
	 *
	 * Throws: GException on failure.
	 */
	public ExecuteNode buildSourceNode(SourceNodeOptions options)
	{
		GError* err = null;

		auto __p = garrow_execute_plan_build_source_node(gArrowExecutePlan, (options is null) ? null : options.getSourceNodeOptionsStruct(), &err);

		if (err !is null)
		{
			throw new GException( new ErrorG(err) );
		}

		if(__p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(ExecuteNode)(cast(GArrowExecuteNode*) __p, true);
	}

	/**
	 * Returns: A list of
	 *     #GArrowExecuteNode of this plan.
	 *
	 * Since: 13.0.0
	 */
	public ListG getNodes()
	{
		auto __p = garrow_execute_plan_get_nodes(gArrowExecutePlan);

		if(__p is null)
		{
			return null;
		}

		return new ListG(cast(GList*) __p);
	}

	/**
	 * Starts this plan.
	 *
	 * Since: 6.0.0
	 */
	public void start()
	{
		garrow_execute_plan_start(gArrowExecutePlan);
	}

	/**
	 * Stops this plan.
	 *
	 * Since: 6.0.0
	 */
	public void stop()
	{
		garrow_execute_plan_stop(gArrowExecutePlan);
	}

	/**
	 * Returns: %TRUE on success, %FALSE on error.
	 *
	 * Since: 6.0.0
	 *
	 * Throws: GException on failure.
	 */
	public bool validate()
	{
		GError* err = null;

		auto __p = garrow_execute_plan_validate(gArrowExecutePlan, &err) != 0;

		if (err !is null)
		{
			throw new GException( new ErrorG(err) );
		}

		return __p;
	}

	/**
	 * Waits for finishing this plan.
	 *
	 * Returns: %TRUE on success, %FALSE on error.
	 *
	 * Since: 6.0.0
	 *
	 * Throws: GException on failure.
	 */
	public bool wait()
	{
		GError* err = null;

		auto __p = garrow_execute_plan_wait(gArrowExecutePlan, &err) != 0;

		if (err !is null)
		{
			throw new GException( new ErrorG(err) );
		}

		return __p;
	}
}
