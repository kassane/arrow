module arrowflight.Location;

private import arrowflight.c.functions;
public  import arrowflight.c.types;
private import glib.ConstructionException;
private import glib.ErrorG;
private import glib.GException;
private import glib.Str;
private import glib.c.functions;
private import gobject.ObjectG;


/** */
public class Location : ObjectG
{
	/** the main Gtk struct */
	protected GAFlightLocation* gAFlightLocation;

	/** Get the main Gtk struct */
	public GAFlightLocation* getLocationStruct(bool transferOwnership = false)
	{
		if (transferOwnership)
			ownedRef = false;
		return gAFlightLocation;
	}

	/** the main Gtk struct as a void* */
	protected override void* getStruct()
	{
		return cast(void*)gAFlightLocation;
	}

	/**
	 * Sets our main struct and passes it to the parent class.
	 */
	public this (GAFlightLocation* gAFlightLocation, bool ownedRef = false)
	{
		this.gAFlightLocation = gAFlightLocation;
		super(cast(GObject*)gAFlightLocation, ownedRef);
	}


	/** */
	public static GType getType()
	{
		return gaflight_location_get_type();
	}

	/**
	 *
	 * Params:
	 *     uri = An URI to specify location.
	 * Returns: The newly created location, %NULL on error.
	 *
	 * Since: 5.0.0
	 *
	 * Throws: GException on failure.
	 * Throws: ConstructionException GTK+ fails to create the object.
	 */
	public this(string uri)
	{
		GError* err = null;

		auto __p = gaflight_location_new(Str.toStringz(uri), &err);

		if (err !is null)
		{
			throw new GException( new ErrorG(err) );
		}

		if(__p is null)
		{
			throw new ConstructionException("null returned by new");
		}

		this(cast(GAFlightLocation*) __p, true);
	}

	/**
	 *
	 * Params:
	 *     otherLocation = A #GAFlightLocation to be compared.
	 * Returns: %TRUE if both of them represents the same URI, %FALSE otherwise.
	 *
	 * Since: 5.0.0
	 */
	public bool equal(Location otherLocation)
	{
		return gaflight_location_equal(gAFlightLocation, (otherLocation is null) ? null : otherLocation.getLocationStruct()) != 0;
	}

	/**
	 * Returns: The scheme of this URI.
	 *
	 *     It should be freed with g_free() when no longer needed.
	 *
	 * Since: 5.0.0
	 */
	public string getScheme()
	{
		auto retStr = gaflight_location_get_scheme(gAFlightLocation);

		scope(exit) Str.freeString(retStr);
		return Str.toString(retStr);
	}

	/**
	 * Returns: A representation of this URI as a string.
	 *
	 *     It should be freed with g_free() when no longer needed.
	 *
	 * Since: 5.0.0
	 */
	public override string toString()
	{
		auto retStr = gaflight_location_to_string(gAFlightLocation);

		scope(exit) Str.freeString(retStr);
		return Str.toString(retStr);
	}
}
