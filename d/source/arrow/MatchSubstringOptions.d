module arrow.MatchSubstringOptions;

private import arrow.FunctionOptions;
private import arrow.c.functions;
public  import arrow.c.types;
private import glib.ConstructionException;
private import gobject.ObjectG;


/** */
public class MatchSubstringOptions : FunctionOptions
{
	/** the main Gtk struct */
	protected GArrowMatchSubstringOptions* gArrowMatchSubstringOptions;

	/** Get the main Gtk struct */
	public GArrowMatchSubstringOptions* getMatchSubstringOptionsStruct(bool transferOwnership = false)
	{
		if (transferOwnership)
			ownedRef = false;
		return gArrowMatchSubstringOptions;
	}

	/** the main Gtk struct as a void* */
	protected override void* getStruct()
	{
		return cast(void*)gArrowMatchSubstringOptions;
	}

	/**
	 * Sets our main struct and passes it to the parent class.
	 */
	public this (GArrowMatchSubstringOptions* gArrowMatchSubstringOptions, bool ownedRef = false)
	{
		this.gArrowMatchSubstringOptions = gArrowMatchSubstringOptions;
		super(cast(GArrowFunctionOptions*)gArrowMatchSubstringOptions, ownedRef);
	}


	/** */
	public static GType getType()
	{
		return garrow_match_substring_options_get_type();
	}

	/**
	 * Returns: A newly created #GArrowMatchSubstringOptions.
	 *
	 * Since: 12.0.0
	 *
	 * Throws: ConstructionException GTK+ fails to create the object.
	 */
	public this()
	{
		auto __p = garrow_match_substring_options_new();

		if(__p is null)
		{
			throw new ConstructionException("null returned by new");
		}

		this(cast(GArrowMatchSubstringOptions*) __p, true);
	}
}
