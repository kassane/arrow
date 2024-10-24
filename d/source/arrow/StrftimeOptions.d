module arrow.StrftimeOptions;

private import arrow.FunctionOptions;
private import arrow.c.functions;
public  import arrow.c.types;
private import glib.ConstructionException;
private import gobject.ObjectG;


/** */
public class StrftimeOptions : FunctionOptions
{
	/** the main Gtk struct */
	protected GArrowStrftimeOptions* gArrowStrftimeOptions;

	/** Get the main Gtk struct */
	public GArrowStrftimeOptions* getStrftimeOptionsStruct(bool transferOwnership = false)
	{
		if (transferOwnership)
			ownedRef = false;
		return gArrowStrftimeOptions;
	}

	/** the main Gtk struct as a void* */
	protected override void* getStruct()
	{
		return cast(void*)gArrowStrftimeOptions;
	}

	/**
	 * Sets our main struct and passes it to the parent class.
	 */
	public this (GArrowStrftimeOptions* gArrowStrftimeOptions, bool ownedRef = false)
	{
		this.gArrowStrftimeOptions = gArrowStrftimeOptions;
		super(cast(GArrowFunctionOptions*)gArrowStrftimeOptions, ownedRef);
	}


	/** */
	public static GType getType()
	{
		return garrow_strftime_options_get_type();
	}

	/**
	 * Returns: A newly created #GArrowStrftimeOptions.
	 *
	 * Since: 16.0.0
	 *
	 * Throws: ConstructionException GTK+ fails to create the object.
	 */
	public this()
	{
		auto __p = garrow_strftime_options_new();

		if(__p is null)
		{
			throw new ConstructionException("null returned by new");
		}

		this(cast(GArrowStrftimeOptions*) __p, true);
	}
}
