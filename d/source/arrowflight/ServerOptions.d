module arrowflight.ServerOptions;

private import arrowflight.Location;
private import arrowflight.c.functions;
public  import arrowflight.c.types;
private import glib.ConstructionException;
private import gobject.ObjectG;


/** */
public class ServerOptions : ObjectG
{
	/** the main Gtk struct */
	protected GAFlightServerOptions* gAFlightServerOptions;

	/** Get the main Gtk struct */
	public GAFlightServerOptions* getServerOptionsStruct(bool transferOwnership = false)
	{
		if (transferOwnership)
			ownedRef = false;
		return gAFlightServerOptions;
	}

	/** the main Gtk struct as a void* */
	protected override void* getStruct()
	{
		return cast(void*)gAFlightServerOptions;
	}

	/**
	 * Sets our main struct and passes it to the parent class.
	 */
	public this (GAFlightServerOptions* gAFlightServerOptions, bool ownedRef = false)
	{
		this.gAFlightServerOptions = gAFlightServerOptions;
		super(cast(GObject*)gAFlightServerOptions, ownedRef);
	}


	/** */
	public static GType getType()
	{
		return gaflight_server_options_get_type();
	}

	/**
	 *
	 * Params:
	 *     location = A #GAFlightLocation to be listened.
	 * Returns: The newly created options for a server.
	 *
	 * Since: 5.0.0
	 *
	 * Throws: ConstructionException GTK+ fails to create the object.
	 */
	public this(Location location)
	{
		auto __p = gaflight_server_options_new((location is null) ? null : location.getLocationStruct());

		if(__p is null)
		{
			throw new ConstructionException("null returned by new");
		}

		this(cast(GAFlightServerOptions*) __p, true);
	}
}
