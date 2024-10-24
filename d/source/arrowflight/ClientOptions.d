module arrowflight.ClientOptions;

private import arrowflight.c.functions;
public  import arrowflight.c.types;
private import glib.ConstructionException;
private import gobject.ObjectG;


/** */
public class ClientOptions : ObjectG
{
	/** the main Gtk struct */
	protected GAFlightClientOptions* gAFlightClientOptions;

	/** Get the main Gtk struct */
	public GAFlightClientOptions* getClientOptionsStruct(bool transferOwnership = false)
	{
		if (transferOwnership)
			ownedRef = false;
		return gAFlightClientOptions;
	}

	/** the main Gtk struct as a void* */
	protected override void* getStruct()
	{
		return cast(void*)gAFlightClientOptions;
	}

	/**
	 * Sets our main struct and passes it to the parent class.
	 */
	public this (GAFlightClientOptions* gAFlightClientOptions, bool ownedRef = false)
	{
		this.gAFlightClientOptions = gAFlightClientOptions;
		super(cast(GObject*)gAFlightClientOptions, ownedRef);
	}


	/** */
	public static GType getType()
	{
		return gaflight_client_options_get_type();
	}

	/**
	 * Returns: The newly created options for a client.
	 *
	 * Since: 5.0.0
	 *
	 * Throws: ConstructionException GTK+ fails to create the object.
	 */
	public this()
	{
		auto __p = gaflight_client_options_new();

		if(__p is null)
		{
			throw new ConstructionException("null returned by new");
		}

		this(cast(GAFlightClientOptions*) __p, true);
	}
}
