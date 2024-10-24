module arrowflight.Client;

private import arrow.Schema;
private import arrowflight.CallOptions;
private import arrowflight.ClientOptions;
private import arrowflight.Criteria;
private import arrowflight.Descriptor;
private import arrowflight.DoPutResult;
private import arrowflight.Info;
private import arrowflight.Location;
private import arrowflight.StreamReader;
private import arrowflight.Ticket;
private import arrowflight.c.functions;
public  import arrowflight.c.types;
private import glib.ConstructionException;
private import glib.ErrorG;
private import glib.GException;
private import glib.ListG;
private import glib.Str;
private import glib.c.functions;
private import gobject.ObjectG;


/** */
public class Client : ObjectG
{
	/** the main Gtk struct */
	protected GAFlightClient* gAFlightClient;

	/** Get the main Gtk struct */
	public GAFlightClient* getClientStruct(bool transferOwnership = false)
	{
		if (transferOwnership)
			ownedRef = false;
		return gAFlightClient;
	}

	/** the main Gtk struct as a void* */
	protected override void* getStruct()
	{
		return cast(void*)gAFlightClient;
	}

	/**
	 * Sets our main struct and passes it to the parent class.
	 */
	public this (GAFlightClient* gAFlightClient, bool ownedRef = false)
	{
		this.gAFlightClient = gAFlightClient;
		super(cast(GObject*)gAFlightClient, ownedRef);
	}


	/** */
	public static GType getType()
	{
		return gaflight_client_get_type();
	}

	/**
	 *
	 * Params:
	 *     location = A #GAFlightLocation to be connected.
	 *     options = A #GAFlightClientOptions.
	 * Returns: The newly created client, %NULL on error.
	 *
	 * Since: 5.0.0
	 *
	 * Throws: GException on failure.
	 * Throws: ConstructionException GTK+ fails to create the object.
	 */
	public this(Location location, ClientOptions options)
	{
		GError* err = null;

		auto __p = gaflight_client_new((location is null) ? null : location.getLocationStruct(), (options is null) ? null : options.getClientOptionsStruct(), &err);

		if (err !is null)
		{
			throw new GException( new ErrorG(err) );
		}

		if(__p is null)
		{
			throw new ConstructionException("null returned by new");
		}

		this(cast(GAFlightClient*) __p, true);
	}

	/**
	 * Authenticates to the server using basic HTTP style authentication.
	 *
	 * Params:
	 *     user = User name to be used.
	 *     password = Password to be used.
	 *     options = A #GAFlightCallOptions.
	 *     bearerName = Bearer token name on success.
	 *     bearerValue = Bearer token value on success.
	 *
	 * Returns: %TRUE on success, %FALSE if there was an error.
	 *
	 * Since: 12.0.0
	 *
	 * Throws: GException on failure.
	 */
	public bool authenticateBasicToken(string user, string password, CallOptions options, out string bearerName, out string bearerValue)
	{
		char* outbearerName = null;
		char* outbearerValue = null;
		GError* err = null;

		auto __p = gaflight_client_authenticate_basic_token(gAFlightClient, Str.toStringz(user), Str.toStringz(password), (options is null) ? null : options.getCallOptionsStruct(), &outbearerName, &outbearerValue, &err) != 0;

		if (err !is null)
		{
			throw new GException( new ErrorG(err) );
		}

		bearerName = Str.toString(outbearerName);
		bearerValue = Str.toString(outbearerValue);

		return __p;
	}

	/**
	 * Returns: %TRUE on success, %FALSE if there was an error.
	 *
	 * Since: 8.0.0
	 *
	 * Throws: GException on failure.
	 */
	public bool close()
	{
		GError* err = null;

		auto __p = gaflight_client_close(gAFlightClient, &err) != 0;

		if (err !is null)
		{
			throw new GException( new ErrorG(err) );
		}

		return __p;
	}

	/**
	 *
	 * Params:
	 *     ticket = A #GAFlightTicket.
	 *     options = A #GAFlightCallOptions.
	 * Returns: The #GAFlightStreamReader to read record batched from the server
	 *     on success, %NULL on error.
	 *
	 * Since: 6.0.0
	 *
	 * Throws: GException on failure.
	 */
	public StreamReader doGet(Ticket ticket, CallOptions options)
	{
		GError* err = null;

		auto __p = gaflight_client_do_get(gAFlightClient, (ticket is null) ? null : ticket.getTicketStruct(), (options is null) ? null : options.getCallOptionsStruct(), &err);

		if (err !is null)
		{
			throw new GException( new ErrorG(err) );
		}

		if(__p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(StreamReader)(cast(GAFlightStreamReader*) __p, true);
	}

	/**
	 * Upload data to a Flight described by the given descriptor. The
	 * caller must call garrow_record_batch_writer_close() on the
	 * returned stream once they are done writing.
	 *
	 * The reader and writer are linked; closing the writer will also
	 * close the reader. Use garrow_flight_stream_writer_done_writing() to
	 * only close the write side of the channel.
	 *
	 * Params:
	 *     descriptor = A #GAFlightDescriptor.
	 *     schema = A #GArrowSchema.
	 *     options = A #GAFlightCallOptions.
	 *
	 * Returns: The #GAFlighDoPutResult holding a reader and a writer on success,
	 *     %NULL on error.
	 *
	 * Since: 18.0.0
	 *
	 * Throws: GException on failure.
	 */
	public DoPutResult doPut(Descriptor descriptor, Schema schema, CallOptions options)
	{
		GError* err = null;

		auto __p = gaflight_client_do_put(gAFlightClient, (descriptor is null) ? null : descriptor.getDescriptorStruct(), (schema is null) ? null : schema.getSchemaStruct(), (options is null) ? null : options.getCallOptionsStruct(), &err);

		if (err !is null)
		{
			throw new GException( new ErrorG(err) );
		}

		if(__p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(DoPutResult)(cast(GAFlightDoPutResult*) __p, true);
	}

	/**
	 *
	 * Params:
	 *     descriptor = A #GAFlightDescriptor to be processed.
	 *     options = A #GAFlightCallOptions.
	 * Returns: The returned #GAFlightInfo on
	 *     success, %NULL on error.
	 *
	 * Since: 9.0.0
	 *
	 * Throws: GException on failure.
	 */
	public Info getFlightInfo(Descriptor descriptor, CallOptions options)
	{
		GError* err = null;

		auto __p = gaflight_client_get_flight_info(gAFlightClient, (descriptor is null) ? null : descriptor.getDescriptorStruct(), (options is null) ? null : options.getCallOptionsStruct(), &err);

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

	/**
	 *
	 * Params:
	 *     criteria = A #GAFlightCriteria.
	 *     options = A #GAFlightCallOptions.
	 * Returns: The returned list of #GAFlightInfo on success, %NULL on error.
	 *
	 * Since: 5.0.0
	 *
	 * Throws: GException on failure.
	 */
	public ListG listFlights(Criteria criteria, CallOptions options)
	{
		GError* err = null;

		auto __p = gaflight_client_list_flights(gAFlightClient, (criteria is null) ? null : criteria.getCriteriaStruct(), (options is null) ? null : options.getCallOptionsStruct(), &err);

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
}
