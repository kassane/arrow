module arrowflight.ServerAuthReader;

private import arrowflight.c.functions;
public  import arrowflight.c.types;
private import glib.Bytes;
private import glib.ErrorG;
private import glib.GException;
private import gobject.ObjectG;


/** */
public class ServerAuthReader : ObjectG
{
	/** the main Gtk struct */
	protected GAFlightServerAuthReader* gAFlightServerAuthReader;

	/** Get the main Gtk struct */
	public GAFlightServerAuthReader* getServerAuthReaderStruct(bool transferOwnership = false)
	{
		if (transferOwnership)
			ownedRef = false;
		return gAFlightServerAuthReader;
	}

	/** the main Gtk struct as a void* */
	protected override void* getStruct()
	{
		return cast(void*)gAFlightServerAuthReader;
	}

	/**
	 * Sets our main struct and passes it to the parent class.
	 */
	public this (GAFlightServerAuthReader* gAFlightServerAuthReader, bool ownedRef = false)
	{
		this.gAFlightServerAuthReader = gAFlightServerAuthReader;
		super(cast(GObject*)gAFlightServerAuthReader, ownedRef);
	}


	/** */
	public static GType getType()
	{
		return gaflight_server_auth_reader_get_type();
	}

	/**
	 * Reads a message from the client.
	 *
	 * Returns: Read data as #GBytes on
	 *     success, %NULL on error.
	 *
	 * Since: 12.0.0
	 *
	 * Throws: GException on failure.
	 */
	public Bytes read()
	{
		GError* err = null;

		auto __p = gaflight_server_auth_reader_read(gAFlightServerAuthReader, &err);

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
