module arrow.HashJoinNodeOptions;

private import arrow.ExecuteNodeOptions;
private import arrow.c.functions;
public  import arrow.c.types;
private import glib.ConstructionException;
private import glib.ErrorG;
private import glib.GException;
private import glib.Str;
private import gobject.ObjectG;


/** */
public class HashJoinNodeOptions : ExecuteNodeOptions
{
	/** the main Gtk struct */
	protected GArrowHashJoinNodeOptions* gArrowHashJoinNodeOptions;

	/** Get the main Gtk struct */
	public GArrowHashJoinNodeOptions* getHashJoinNodeOptionsStruct(bool transferOwnership = false)
	{
		if (transferOwnership)
			ownedRef = false;
		return gArrowHashJoinNodeOptions;
	}

	/** the main Gtk struct as a void* */
	protected override void* getStruct()
	{
		return cast(void*)gArrowHashJoinNodeOptions;
	}

	/**
	 * Sets our main struct and passes it to the parent class.
	 */
	public this (GArrowHashJoinNodeOptions* gArrowHashJoinNodeOptions, bool ownedRef = false)
	{
		this.gArrowHashJoinNodeOptions = gArrowHashJoinNodeOptions;
		super(cast(GArrowExecuteNodeOptions*)gArrowHashJoinNodeOptions, ownedRef);
	}


	/** */
	public static GType getType()
	{
		return garrow_hash_join_node_options_get_type();
	}

	/**
	 *
	 * Params:
	 *     type = A #GArrowJoinType to be used.
	 *     leftKeys = Left join keys.
	 *     rightKeys = Right join keys.
	 * Returns: A newly created #GArrowHashJoinNodeOptions on success,
	 *     %NULL otherwise.
	 *
	 * Since: 7.0.0
	 *
	 * Throws: GException on failure.
	 * Throws: ConstructionException GTK+ fails to create the object.
	 */
	public this(GArrowJoinType type, string[] leftKeys, string[] rightKeys)
	{
		GError* err = null;

		auto __p = garrow_hash_join_node_options_new(type, Str.toStringzArray(leftKeys), cast(size_t)leftKeys.length, Str.toStringzArray(rightKeys), cast(size_t)rightKeys.length, &err);

		if (err !is null)
		{
			throw new GException( new ErrorG(err) );
		}

		if(__p is null)
		{
			throw new ConstructionException("null returned by new");
		}

		this(cast(GArrowHashJoinNodeOptions*) __p, true);
	}

	/**
	 *
	 * Params:
	 *     outputs = Output fields.
	 * Returns: %TRUE on success, %FALSE on error.
	 *
	 * Since: 7.0.0
	 *
	 * Throws: GException on failure.
	 */
	public bool setLeftOutputs(string[] outputs)
	{
		GError* err = null;

		auto __p = garrow_hash_join_node_options_set_left_outputs(gArrowHashJoinNodeOptions, Str.toStringzArray(outputs), cast(size_t)outputs.length, &err) != 0;

		if (err !is null)
		{
			throw new GException( new ErrorG(err) );
		}

		return __p;
	}

	/**
	 *
	 * Params:
	 *     outputs = Output fields.
	 * Returns: %TRUE on success, %FALSE on error.
	 *
	 * Since: 7.0.0
	 *
	 * Throws: GException on failure.
	 */
	public bool setRightOutputs(string[] outputs)
	{
		GError* err = null;

		auto __p = garrow_hash_join_node_options_set_right_outputs(gArrowHashJoinNodeOptions, Str.toStringzArray(outputs), cast(size_t)outputs.length, &err) != 0;

		if (err !is null)
		{
			throw new GException( new ErrorG(err) );
		}

		return __p;
	}
}
