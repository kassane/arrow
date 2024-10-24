module arrow.SplitPatternOptions;

private import arrow.FunctionOptions;
private import arrow.c.functions;
public  import arrow.c.types;
private import glib.ConstructionException;
private import gobject.ObjectG;


/** */
public class SplitPatternOptions : FunctionOptions
{
	/** the main Gtk struct */
	protected GArrowSplitPatternOptions* gArrowSplitPatternOptions;

	/** Get the main Gtk struct */
	public GArrowSplitPatternOptions* getSplitPatternOptionsStruct(bool transferOwnership = false)
	{
		if (transferOwnership)
			ownedRef = false;
		return gArrowSplitPatternOptions;
	}

	/** the main Gtk struct as a void* */
	protected override void* getStruct()
	{
		return cast(void*)gArrowSplitPatternOptions;
	}

	/**
	 * Sets our main struct and passes it to the parent class.
	 */
	public this (GArrowSplitPatternOptions* gArrowSplitPatternOptions, bool ownedRef = false)
	{
		this.gArrowSplitPatternOptions = gArrowSplitPatternOptions;
		super(cast(GArrowFunctionOptions*)gArrowSplitPatternOptions, ownedRef);
	}


	/** */
	public static GType getType()
	{
		return garrow_split_pattern_options_get_type();
	}

	/**
	 * Returns: A newly created #GArrowSplitPatternOptions.
	 *
	 * Since: 16.0.0
	 *
	 * Throws: ConstructionException GTK+ fails to create the object.
	 */
	public this()
	{
		auto __p = garrow_split_pattern_options_new();

		if(__p is null)
		{
			throw new ConstructionException("null returned by new");
		}

		this(cast(GArrowSplitPatternOptions*) __p, true);
	}
}
