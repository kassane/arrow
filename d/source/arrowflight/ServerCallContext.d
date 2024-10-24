module arrowflight.ServerCallContext;

private import arrowflight.c.functions;
public  import arrowflight.c.types;
private import gobject.ObjectG;


/** */
public class ServerCallContext : ObjectG
{
	/** the main Gtk struct */
	protected GAFlightServerCallContext* gAFlightServerCallContext;

	/** Get the main Gtk struct */
	public GAFlightServerCallContext* getServerCallContextStruct(bool transferOwnership = false)
	{
		if (transferOwnership)
			ownedRef = false;
		return gAFlightServerCallContext;
	}

	/** the main Gtk struct as a void* */
	protected override void* getStruct()
	{
		return cast(void*)gAFlightServerCallContext;
	}

	/**
	 * Sets our main struct and passes it to the parent class.
	 */
	public this (GAFlightServerCallContext* gAFlightServerCallContext, bool ownedRef = false)
	{
		this.gAFlightServerCallContext = gAFlightServerCallContext;
		super(cast(GObject*)gAFlightServerCallContext, ownedRef);
	}


	/** */
	public static GType getType()
	{
		return gaflight_server_call_context_get_type();
	}

	/**
	 * Iterates over all incoming headers.
	 *
	 * Params:
	 *     func = The user's callback function.
	 *     userData = Data for @func.
	 *
	 * Since: 14.0.0
	 */
	public void foreachIncomingHeader(GAFlightHeaderFunc func, void* userData)
	{
		gaflight_server_call_context_foreach_incoming_header(gAFlightServerCallContext, func, userData);
	}
}
