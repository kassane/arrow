module arrowflight.ServerAuthSender;

private import arrowflight.c.functions;
public  import arrowflight.c.types;
private import glib.Bytes;
private import glib.ErrorG;
private import glib.GException;
private import gobject.ObjectG;


/** */
public class ServerAuthSender : ObjectG
{
	/** the main Gtk struct */
	protected GAFlightServerAuthSender* gAFlightServerAuthSender;

	/** Get the main Gtk struct */
	public GAFlightServerAuthSender* getServerAuthSenderStruct(bool transferOwnership = false)
	{
		if (transferOwnership)
			ownedRef = false;
		return gAFlightServerAuthSender;
	}

	/** the main Gtk struct as a void* */
	protected override void* getStruct()
	{
		return cast(void*)gAFlightServerAuthSender;
	}

	/**
	 * Sets our main struct and passes it to the parent class.
	 */
	public this (GAFlightServerAuthSender* gAFlightServerAuthSender, bool ownedRef = false)
	{
		this.gAFlightServerAuthSender = gAFlightServerAuthSender;
		super(cast(GObject*)gAFlightServerAuthSender, ownedRef);
	}


	/** */
	public static GType getType()
	{
		return gaflight_server_auth_sender_get_type();
	}

	/**
	 * Writes a message to the client.
	 *
	 * Params:
	 *     message = A #GBytes to be sent.
	 *
	 * Returns: %TRUE on success, %FALSE on error.
	 *
	 * Since: 12.0.0
	 *
	 * Throws: GException on failure.
	 */
	public bool write(Bytes message)
	{
		GError* err = null;

		auto __p = gaflight_server_auth_sender_write(gAFlightServerAuthSender, (message is null) ? null : message.getBytesStruct(), &err) != 0;

		if (err !is null)
		{
			throw new GException( new ErrorG(err) );
		}

		return __p;
	}
}
