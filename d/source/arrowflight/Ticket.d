module arrowflight.Ticket;

private import arrowflight.c.functions;
public  import arrowflight.c.types;
private import glib.Bytes;
private import glib.ConstructionException;
private import gobject.ObjectG;


/** */
public class Ticket : ObjectG
{
	/** the main Gtk struct */
	protected GAFlightTicket* gAFlightTicket;

	/** Get the main Gtk struct */
	public GAFlightTicket* getTicketStruct(bool transferOwnership = false)
	{
		if (transferOwnership)
			ownedRef = false;
		return gAFlightTicket;
	}

	/** the main Gtk struct as a void* */
	protected override void* getStruct()
	{
		return cast(void*)gAFlightTicket;
	}

	/**
	 * Sets our main struct and passes it to the parent class.
	 */
	public this (GAFlightTicket* gAFlightTicket, bool ownedRef = false)
	{
		this.gAFlightTicket = gAFlightTicket;
		super(cast(GObject*)gAFlightTicket, ownedRef);
	}


	/** */
	public static GType getType()
	{
		return gaflight_ticket_get_type();
	}

	/**
	 *
	 * Params:
	 *     data = A #GBytes.
	 * Returns: The newly created #GAFlightTicket, %NULL on error.
	 *
	 * Since: 5.0.0
	 *
	 * Throws: ConstructionException GTK+ fails to create the object.
	 */
	public this(Bytes data)
	{
		auto __p = gaflight_ticket_new((data is null) ? null : data.getBytesStruct());

		if(__p is null)
		{
			throw new ConstructionException("null returned by new");
		}

		this(cast(GAFlightTicket*) __p, true);
	}

	/**
	 *
	 * Params:
	 *     otherTicket = A #GAFlightTicket to be compared.
	 * Returns: %TRUE if both of them represents the same ticket, %FALSE otherwise.
	 *
	 * Since: 5.0.0
	 */
	public bool equal(Ticket otherTicket)
	{
		return gaflight_ticket_equal(gAFlightTicket, (otherTicket is null) ? null : otherTicket.getTicketStruct()) != 0;
	}
}
