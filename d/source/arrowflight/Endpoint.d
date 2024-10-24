module arrowflight.Endpoint;

private import arrowflight.Location;
private import arrowflight.Ticket;
private import arrowflight.c.functions;
public  import arrowflight.c.types;
private import glib.ConstructionException;
private import glib.ListG;
private import gobject.ObjectG;


/** */
public class Endpoint : ObjectG
{
	/** the main Gtk struct */
	protected GAFlightEndpoint* gAFlightEndpoint;

	/** Get the main Gtk struct */
	public GAFlightEndpoint* getEndpointStruct(bool transferOwnership = false)
	{
		if (transferOwnership)
			ownedRef = false;
		return gAFlightEndpoint;
	}

	/** the main Gtk struct as a void* */
	protected override void* getStruct()
	{
		return cast(void*)gAFlightEndpoint;
	}

	/**
	 * Sets our main struct and passes it to the parent class.
	 */
	public this (GAFlightEndpoint* gAFlightEndpoint, bool ownedRef = false)
	{
		this.gAFlightEndpoint = gAFlightEndpoint;
		super(cast(GObject*)gAFlightEndpoint, ownedRef);
	}


	/** */
	public static GType getType()
	{
		return gaflight_endpoint_get_type();
	}

	/**
	 *
	 * Params:
	 *     ticket = A #GAFlightTicket.
	 *     locations = A list of #GAFlightLocation.
	 * Returns: The newly created #GAFlightEndpoint, %NULL on error.
	 *
	 * Since: 5.0.0
	 *
	 * Throws: ConstructionException GTK+ fails to create the object.
	 */
	public this(Ticket ticket, ListG locations)
	{
		auto __p = gaflight_endpoint_new((ticket is null) ? null : ticket.getTicketStruct(), (locations is null) ? null : locations.getListGStruct());

		if(__p is null)
		{
			throw new ConstructionException("null returned by new");
		}

		this(cast(GAFlightEndpoint*) __p, true);
	}

	/**
	 *
	 * Params:
	 *     otherEndpoint = A #GAFlightEndpoint to be compared.
	 * Returns: %TRUE if both of them represents the same endpoint,
	 *     %FALSE otherwise.
	 *
	 * Since: 5.0.0
	 */
	public bool equal(Endpoint otherEndpoint)
	{
		return gaflight_endpoint_equal(gAFlightEndpoint, (otherEndpoint is null) ? null : otherEndpoint.getEndpointStruct()) != 0;
	}

	/**
	 * Returns: The locations in this endpoint.
	 *
	 *     It must be freed with g_list_free() and g_object_unref() when no
	 *     longer needed. You can use `g_list_free_full(locations,
	 *     g_object_unref)`.
	 *
	 * Since: 5.0.0
	 */
	public ListG getLocations()
	{
		auto __p = gaflight_endpoint_get_locations(gAFlightEndpoint);

		if(__p is null)
		{
			return null;
		}

		return new ListG(cast(GList*) __p, true);
	}
}
