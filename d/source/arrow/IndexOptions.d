module arrow.IndexOptions;

private import arrow.FunctionOptions;
private import arrow.c.functions;
public  import arrow.c.types;
private import glib.ConstructionException;
private import gobject.ObjectG;


/** */
public class IndexOptions : FunctionOptions
{
	/** the main Gtk struct */
	protected GArrowIndexOptions* gArrowIndexOptions;

	/** Get the main Gtk struct */
	public GArrowIndexOptions* getIndexOptionsStruct(bool transferOwnership = false)
	{
		if (transferOwnership)
			ownedRef = false;
		return gArrowIndexOptions;
	}

	/** the main Gtk struct as a void* */
	protected override void* getStruct()
	{
		return cast(void*)gArrowIndexOptions;
	}

	/**
	 * Sets our main struct and passes it to the parent class.
	 */
	public this (GArrowIndexOptions* gArrowIndexOptions, bool ownedRef = false)
	{
		this.gArrowIndexOptions = gArrowIndexOptions;
		super(cast(GArrowFunctionOptions*)gArrowIndexOptions, ownedRef);
	}


	/** */
	public static GType getType()
	{
		return garrow_index_options_get_type();
	}

	/**
	 * Returns: A newly created #GArrowIndexOptions.
	 *
	 * Since: 12.0.0
	 *
	 * Throws: ConstructionException GTK+ fails to create the object.
	 */
	public this()
	{
		auto __p = garrow_index_options_new();

		if(__p is null)
		{
			throw new ConstructionException("null returned by new");
		}

		this(cast(GArrowIndexOptions*) __p, true);
	}
}
