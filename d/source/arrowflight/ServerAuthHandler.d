module arrowflight.ServerAuthHandler;

private import arrowflight.c.functions;
public  import arrowflight.c.types;
private import gobject.ObjectG;


/** */
public class ServerAuthHandler : ObjectG
{
	/** the main Gtk struct */
	protected GAFlightServerAuthHandler* gAFlightServerAuthHandler;

	/** Get the main Gtk struct */
	public GAFlightServerAuthHandler* getServerAuthHandlerStruct(bool transferOwnership = false)
	{
		if (transferOwnership)
			ownedRef = false;
		return gAFlightServerAuthHandler;
	}

	/** the main Gtk struct as a void* */
	protected override void* getStruct()
	{
		return cast(void*)gAFlightServerAuthHandler;
	}

	/**
	 * Sets our main struct and passes it to the parent class.
	 */
	public this (GAFlightServerAuthHandler* gAFlightServerAuthHandler, bool ownedRef = false)
	{
		this.gAFlightServerAuthHandler = gAFlightServerAuthHandler;
		super(cast(GObject*)gAFlightServerAuthHandler, ownedRef);
	}


	/** */
	public static GType getType()
	{
		return gaflight_server_auth_handler_get_type();
	}
}
