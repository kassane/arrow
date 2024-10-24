module arrow.RoundOptions;

private import arrow.FunctionOptions;
private import arrow.c.functions;
public  import arrow.c.types;
private import glib.ConstructionException;
private import gobject.ObjectG;


/** */
public class RoundOptions : FunctionOptions
{
	/** the main Gtk struct */
	protected GArrowRoundOptions* gArrowRoundOptions;

	/** Get the main Gtk struct */
	public GArrowRoundOptions* getRoundOptionsStruct(bool transferOwnership = false)
	{
		if (transferOwnership)
			ownedRef = false;
		return gArrowRoundOptions;
	}

	/** the main Gtk struct as a void* */
	protected override void* getStruct()
	{
		return cast(void*)gArrowRoundOptions;
	}

	/**
	 * Sets our main struct and passes it to the parent class.
	 */
	public this (GArrowRoundOptions* gArrowRoundOptions, bool ownedRef = false)
	{
		this.gArrowRoundOptions = gArrowRoundOptions;
		super(cast(GArrowFunctionOptions*)gArrowRoundOptions, ownedRef);
	}


	/** */
	public static GType getType()
	{
		return garrow_round_options_get_type();
	}

	/**
	 * Returns: A newly created #GArrowRoundOptions.
	 *
	 * Since: 7.0.0
	 *
	 * Throws: ConstructionException GTK+ fails to create the object.
	 */
	public this()
	{
		auto __p = garrow_round_options_new();

		if(__p is null)
		{
			throw new ConstructionException("null returned by new");
		}

		this(cast(GArrowRoundOptions*) __p, true);
	}
}
