module arrow.StrptimeOptions;

private import arrow.FunctionOptions;
private import arrow.c.functions;
public  import arrow.c.types;
private import glib.ConstructionException;
private import gobject.ObjectG;


/** */
public class StrptimeOptions : FunctionOptions
{
	/** the main Gtk struct */
	protected GArrowStrptimeOptions* gArrowStrptimeOptions;

	/** Get the main Gtk struct */
	public GArrowStrptimeOptions* getStrptimeOptionsStruct(bool transferOwnership = false)
	{
		if (transferOwnership)
			ownedRef = false;
		return gArrowStrptimeOptions;
	}

	/** the main Gtk struct as a void* */
	protected override void* getStruct()
	{
		return cast(void*)gArrowStrptimeOptions;
	}

	/**
	 * Sets our main struct and passes it to the parent class.
	 */
	public this (GArrowStrptimeOptions* gArrowStrptimeOptions, bool ownedRef = false)
	{
		this.gArrowStrptimeOptions = gArrowStrptimeOptions;
		super(cast(GArrowFunctionOptions*)gArrowStrptimeOptions, ownedRef);
	}


	/** */
	public static GType getType()
	{
		return garrow_strptime_options_get_type();
	}

	/**
	 * Returns: A newly created #GArrowStrptimeOptions.
	 *
	 * Since: 16.0.0
	 *
	 * Throws: ConstructionException GTK+ fails to create the object.
	 */
	public this()
	{
		auto __p = garrow_strptime_options_new();

		if(__p is null)
		{
			throw new ConstructionException("null returned by new");
		}

		this(cast(GArrowStrptimeOptions*) __p, true);
	}
}
