module arrow.ExecuteNodeOptions;

private import arrow.c.functions;
public  import arrow.c.types;
private import gobject.ObjectG;


/** */
public class ExecuteNodeOptions : ObjectG
{
	/** the main Gtk struct */
	protected GArrowExecuteNodeOptions* gArrowExecuteNodeOptions;

	/** Get the main Gtk struct */
	public GArrowExecuteNodeOptions* getExecuteNodeOptionsStruct(bool transferOwnership = false)
	{
		if (transferOwnership)
			ownedRef = false;
		return gArrowExecuteNodeOptions;
	}

	/** the main Gtk struct as a void* */
	protected override void* getStruct()
	{
		return cast(void*)gArrowExecuteNodeOptions;
	}

	/**
	 * Sets our main struct and passes it to the parent class.
	 */
	public this (GArrowExecuteNodeOptions* gArrowExecuteNodeOptions, bool ownedRef = false)
	{
		this.gArrowExecuteNodeOptions = gArrowExecuteNodeOptions;
		super(cast(GObject*)gArrowExecuteNodeOptions, ownedRef);
	}


	/** */
	public static GType getType()
	{
		return garrow_execute_node_options_get_type();
	}
}
