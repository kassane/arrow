module arrowflight.ServerCustomAuthHandler;

private import arrowflight.ServerAuthHandler;
private import arrowflight.ServerAuthReader;
private import arrowflight.ServerAuthSender;
private import arrowflight.ServerCallContext;
private import arrowflight.c.functions;
public  import arrowflight.c.types;
private import glib.Bytes;
private import glib.ErrorG;
private import glib.GException;


/** */
public class ServerCustomAuthHandler : ServerAuthHandler
{
	/** the main Gtk struct */
	protected GAFlightServerCustomAuthHandler* gAFlightServerCustomAuthHandler;

	/** Get the main Gtk struct */
	public GAFlightServerCustomAuthHandler* getServerCustomAuthHandlerStruct(bool transferOwnership = false)
	{
		if (transferOwnership)
			ownedRef = false;
		return gAFlightServerCustomAuthHandler;
	}

	/** the main Gtk struct as a void* */
	protected override void* getStruct()
	{
		return cast(void*)gAFlightServerCustomAuthHandler;
	}

	/**
	 * Sets our main struct and passes it to the parent class.
	 */
	public this (GAFlightServerCustomAuthHandler* gAFlightServerCustomAuthHandler, bool ownedRef = false)
	{
		this.gAFlightServerCustomAuthHandler = gAFlightServerCustomAuthHandler;
		super(cast(GAFlightServerAuthHandler*)gAFlightServerCustomAuthHandler, ownedRef);
	}


	/** */
	public static GType getType()
	{
		return gaflight_server_custom_auth_handler_get_type();
	}

	/**
	 * Authenticates the client on initial connection. The server can send
	 * and read responses from the client at any time.
	 *
	 * Params:
	 *     context = A #GAFlightServerCallContext.
	 *     sender = A #GAFlightServerAuthSender.
	 *     reader = A #GAFlightServerAuthReader.
	 *
	 * Since: 12.0.0
	 *
	 * Throws: GException on failure.
	 */
	public void authenticate(ServerCallContext context, ServerAuthSender sender, ServerAuthReader reader)
	{
		GError* err = null;

		gaflight_server_custom_auth_handler_authenticate(gAFlightServerCustomAuthHandler, (context is null) ? null : context.getServerCallContextStruct(), (sender is null) ? null : sender.getServerAuthSenderStruct(), (reader is null) ? null : reader.getServerAuthReaderStruct(), &err);

		if (err !is null)
		{
			throw new GException( new ErrorG(err) );
		}
	}

	/**
	 * Validates a per-call client token.
	 *
	 * Params:
	 *     context = A #GAFlightServerCallContext.
	 *     token = The client token. May be the empty string if the client does not
	 *         provide a token.
	 *
	 * Returns: The identity of the peer, if
	 *     this authentication method supports it.
	 *
	 * Since: 12.0.0
	 *
	 * Throws: GException on failure.
	 */
	public Bytes isValid(ServerCallContext context, Bytes token)
	{
		GError* err = null;

		auto __p = gaflight_server_custom_auth_handler_is_valid(gAFlightServerCustomAuthHandler, (context is null) ? null : context.getServerCallContextStruct(), (token is null) ? null : token.getBytesStruct(), &err);

		if (err !is null)
		{
			throw new GException( new ErrorG(err) );
		}

		if(__p is null)
		{
			return null;
		}

		return new Bytes(cast(GBytes*) __p, true);
	}
}
