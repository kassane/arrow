module arrowflight.CallOptions;

private import arrowflight.c.functions;
public  import arrowflight.c.types;
private import glib.ConstructionException;
private import glib.Str;
private import gobject.ObjectG;


/** */
public class CallOptions : ObjectG
{
	/** the main Gtk struct */
	protected GAFlightCallOptions* gAFlightCallOptions;

	/** Get the main Gtk struct */
	public GAFlightCallOptions* getCallOptionsStruct(bool transferOwnership = false)
	{
		if (transferOwnership)
			ownedRef = false;
		return gAFlightCallOptions;
	}

	/** the main Gtk struct as a void* */
	protected override void* getStruct()
	{
		return cast(void*)gAFlightCallOptions;
	}

	/**
	 * Sets our main struct and passes it to the parent class.
	 */
	public this (GAFlightCallOptions* gAFlightCallOptions, bool ownedRef = false)
	{
		this.gAFlightCallOptions = gAFlightCallOptions;
		super(cast(GObject*)gAFlightCallOptions, ownedRef);
	}


	/** */
	public static GType getType()
	{
		return gaflight_call_options_get_type();
	}

	/**
	 * Returns: The newly created options for a call.
	 *
	 * Since: 5.0.0
	 *
	 * Throws: ConstructionException GTK+ fails to create the object.
	 */
	public this()
	{
		auto __p = gaflight_call_options_new();

		if(__p is null)
		{
			throw new ConstructionException("null returned by new");
		}

		this(cast(GAFlightCallOptions*) __p, true);
	}

	/**
	 * Add a header.
	 *
	 * Params:
	 *     name = A header name.
	 *     value = A header value.
	 *
	 * Since: 9.0.0
	 */
	public void addHeader(string name, string value)
	{
		gaflight_call_options_add_header(gAFlightCallOptions, Str.toStringz(name), Str.toStringz(value));
	}

	/**
	 * Clear all headers.
	 *
	 * Since: 9.0.0
	 */
	public void clearHeaders()
	{
		gaflight_call_options_clear_headers(gAFlightCallOptions);
	}

	/**
	 * Iterates over all headers in the options.
	 *
	 * Params:
	 *     func = The user's callback function.
	 *     userData = Data for @func.
	 *
	 * Since: 9.0.0
	 */
	public void foreachHeader(GAFlightHeaderFunc func, void* userData)
	{
		gaflight_call_options_foreach_header(gAFlightCallOptions, func, userData);
	}
}
