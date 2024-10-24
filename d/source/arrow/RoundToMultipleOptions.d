module arrow.RoundToMultipleOptions;

private import arrow.FunctionOptions;
private import arrow.c.functions;
public  import arrow.c.types;
private import glib.ConstructionException;
private import gobject.ObjectG;


/** */
public class RoundToMultipleOptions : FunctionOptions
{
	/** the main Gtk struct */
	protected GArrowRoundToMultipleOptions* gArrowRoundToMultipleOptions;

	/** Get the main Gtk struct */
	public GArrowRoundToMultipleOptions* getRoundToMultipleOptionsStruct(bool transferOwnership = false)
	{
		if (transferOwnership)
			ownedRef = false;
		return gArrowRoundToMultipleOptions;
	}

	/** the main Gtk struct as a void* */
	protected override void* getStruct()
	{
		return cast(void*)gArrowRoundToMultipleOptions;
	}

	/**
	 * Sets our main struct and passes it to the parent class.
	 */
	public this (GArrowRoundToMultipleOptions* gArrowRoundToMultipleOptions, bool ownedRef = false)
	{
		this.gArrowRoundToMultipleOptions = gArrowRoundToMultipleOptions;
		super(cast(GArrowFunctionOptions*)gArrowRoundToMultipleOptions, ownedRef);
	}


	/** */
	public static GType getType()
	{
		return garrow_round_to_multiple_options_get_type();
	}

	/**
	 * Returns: A newly created #GArrowRoundToMultipleOptions.
	 *
	 * Since: 7.0.0
	 *
	 * Throws: ConstructionException GTK+ fails to create the object.
	 */
	public this()
	{
		auto __p = garrow_round_to_multiple_options_new();

		if(__p is null)
		{
			throw new ConstructionException("null returned by new");
		}

		this(cast(GArrowRoundToMultipleOptions*) __p, true);
	}
}
