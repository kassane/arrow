module arrowflight.Server;

private import arrowflight.Criteria;
private import arrowflight.DataStream;
private import arrowflight.Descriptor;
private import arrowflight.Info;
private import arrowflight.MessageReader;
private import arrowflight.MetadataWriter;
private import arrowflight.ServableIF;
private import arrowflight.ServableT;
private import arrowflight.ServerCallContext;
private import arrowflight.ServerOptions;
private import arrowflight.Ticket;
private import arrowflight.c.functions;
public  import arrowflight.c.types;
private import glib.ErrorG;
private import glib.GException;
private import glib.ListG;
private import gobject.ObjectG;


/** */
public class Server : ObjectG, ServableIF
{
	/** the main Gtk struct */
	protected GAFlightServer* gAFlightServer;

	/** Get the main Gtk struct */
	public GAFlightServer* getServerStruct(bool transferOwnership = false)
	{
		if (transferOwnership)
			ownedRef = false;
		return gAFlightServer;
	}

	/** the main Gtk struct as a void* */
	protected override void* getStruct()
	{
		return cast(void*)gAFlightServer;
	}

	/**
	 * Sets our main struct and passes it to the parent class.
	 */
	public this (GAFlightServer* gAFlightServer, bool ownedRef = false)
	{
		this.gAFlightServer = gAFlightServer;
		super(cast(GObject*)gAFlightServer, ownedRef);
	}

	// add the Servable capabilities
	mixin ServableT!(GAFlightServer);


	/** */
	public static GType getType()
	{
		return gaflight_server_get_type();
	}

	/**
	 *
	 * Params:
	 *     context = A #GAFlightServerCallContext.
	 *     ticket = A #GAFlightTicket.
	 * Returns: #GAFlightDataStream on success, %NULL on error.
	 *
	 * Since: 6.0.0
	 *
	 * Throws: GException on failure.
	 */
	public DataStream doGet(ServerCallContext context, Ticket ticket)
	{
		GError* err = null;

		auto __p = gaflight_server_do_get(gAFlightServer, (context is null) ? null : context.getServerCallContextStruct(), (ticket is null) ? null : ticket.getTicketStruct(), &err);

		if (err !is null)
		{
			throw new GException( new ErrorG(err) );
		}

		if(__p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(DataStream)(cast(GAFlightDataStream*) __p, true);
	}

	/**
	 * Processes a stream of IPC payloads sent from a client.
	 *
	 * Params:
	 *     context = A #GAFlightServerCallContext.
	 *     reader = A #GAFlightMessageReader.
	 *     writer = A #GAFlightMetadataWriter.
	 *
	 * Returns: %TRUE on success, %FALSE on error.
	 *
	 * Since: 18.0.0
	 *
	 * Throws: GException on failure.
	 */
	public bool doPut(ServerCallContext context, MessageReader reader, MetadataWriter writer)
	{
		GError* err = null;

		auto __p = gaflight_server_do_put(gAFlightServer, (context is null) ? null : context.getServerCallContextStruct(), (reader is null) ? null : reader.getMessageReaderStruct(), (writer is null) ? null : writer.getMetadataWriterStruct(), &err) != 0;

		if (err !is null)
		{
			throw new GException( new ErrorG(err) );
		}

		return __p;
	}

	/**
	 *
	 * Params:
	 *     context = A #GAFlightServerCallContext.
	 *     request = A #GAFlightDescriptor.
	 * Returns: A #GAFlightInfo on success, %NULL on error.
	 *
	 * Since: 9.0.0
	 *
	 * Throws: GException on failure.
	 */
	public Info getFlightInfo(ServerCallContext context, Descriptor request)
	{
		GError* err = null;

		auto __p = gaflight_server_get_flight_info(gAFlightServer, (context is null) ? null : context.getServerCallContextStruct(), (request is null) ? null : request.getDescriptorStruct(), &err);

		if (err !is null)
		{
			throw new GException( new ErrorG(err) );
		}

		if(__p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(Info)(cast(GAFlightInfo*) __p, true);
	}

	/** */
	public int getPort()
	{
		return gaflight_server_get_port(gAFlightServer);
	}

	/**
	 *
	 * Params:
	 *     context = A #GAFlightServerCallContext.
	 *     criteria = A #GAFlightCriteria.
	 * Returns: #GList of #GAFlightInfo on success, %NULL on error.
	 *
	 * Since: 5.0.0
	 *
	 * Throws: GException on failure.
	 */
	public ListG listFlights(ServerCallContext context, Criteria criteria)
	{
		GError* err = null;

		auto __p = gaflight_server_list_flights(gAFlightServer, (context is null) ? null : context.getServerCallContextStruct(), (criteria is null) ? null : criteria.getCriteriaStruct(), &err);

		if (err !is null)
		{
			throw new GException( new ErrorG(err) );
		}

		if(__p is null)
		{
			return null;
		}

		return new ListG(cast(GList*) __p, true);
	}

	/**
	 *
	 * Params:
	 *     options = A #GAFlightServerOptions.
	 * Returns: %TRUE on success, %FALSE on error.
	 *
	 * Since: 5.0.0
	 *
	 * Throws: GException on failure.
	 */
	public bool listen(ServerOptions options)
	{
		GError* err = null;

		auto __p = gaflight_server_listen(gAFlightServer, (options is null) ? null : options.getServerOptionsStruct(), &err) != 0;

		if (err !is null)
		{
			throw new GException( new ErrorG(err) );
		}

		return __p;
	}

	/**
	 * Shuts down the serve. This function can be called from signal
	 * handler or another thread.
	 *
	 * Returns: %TRUE on success, %FALSE on error.
	 *
	 * Since: 5.0.0
	 *
	 * Throws: GException on failure.
	 */
	public bool shutdown()
	{
		GError* err = null;

		auto __p = gaflight_server_shutdown(gAFlightServer, &err) != 0;

		if (err !is null)
		{
			throw new GException( new ErrorG(err) );
		}

		return __p;
	}

	/** */
	public bool wait()
	{
		GError* err = null;

		auto __p = gaflight_server_wait(gAFlightServer, &err) != 0;

		if (err !is null)
		{
			throw new GException( new ErrorG(err) );
		}

		return __p;
	}
}
