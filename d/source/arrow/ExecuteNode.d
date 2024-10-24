module arrow.ExecuteNode;

private import arrow.Schema;
private import arrow.c.functions;
public  import arrow.c.types;
private import glib.Str;
private import glib.c.functions;
private import gobject.ObjectG;


/** */
public class ExecuteNode : ObjectG
{
	/** the main Gtk struct */
	protected GArrowExecuteNode* gArrowExecuteNode;

	/** Get the main Gtk struct */
	public GArrowExecuteNode* getExecuteNodeStruct(bool transferOwnership = false)
	{
		if (transferOwnership)
			ownedRef = false;
		return gArrowExecuteNode;
	}

	/** the main Gtk struct as a void* */
	protected override void* getStruct()
	{
		return cast(void*)gArrowExecuteNode;
	}

	/**
	 * Sets our main struct and passes it to the parent class.
	 */
	public this (GArrowExecuteNode* gArrowExecuteNode, bool ownedRef = false)
	{
		this.gArrowExecuteNode = gArrowExecuteNode;
		super(cast(GObject*)gArrowExecuteNode, ownedRef);
	}


	/** */
	public static GType getType()
	{
		return garrow_execute_node_get_type();
	}

	/**
	 * Returns: The kind name of the node.
	 *
	 * Since: 6.0.0
	 */
	public string getKindName()
	{
		return Str.toString(garrow_execute_node_get_kind_name(gArrowExecuteNode));
	}

	/**
	 * Returns: The output schema of the node.
	 *
	 * Since: 6.0.0
	 */
	public Schema getOutputSchema()
	{
		auto __p = garrow_execute_node_get_output_schema(gArrowExecuteNode);

		if(__p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(Schema)(cast(GArrowSchema*) __p, true);
	}
}
