module arrow.UTF8NormalizeOptions;

private import arrow.FunctionOptions;
private import arrow.c.functions;
public  import arrow.c.types;
private import glib.ConstructionException;
private import gobject.ObjectG;


/** */
public class UTF8NormalizeOptions : FunctionOptions
{
	/** the main Gtk struct */
	protected GArrowUTF8NormalizeOptions* gArrowUTF8NormalizeOptions;

	/** Get the main Gtk struct */
	public GArrowUTF8NormalizeOptions* getUTF8NormalizeOptionsStruct(bool transferOwnership = false)
	{
		if (transferOwnership)
			ownedRef = false;
		return gArrowUTF8NormalizeOptions;
	}

	/** the main Gtk struct as a void* */
	protected override void* getStruct()
	{
		return cast(void*)gArrowUTF8NormalizeOptions;
	}

	/**
	 * Sets our main struct and passes it to the parent class.
	 */
	public this (GArrowUTF8NormalizeOptions* gArrowUTF8NormalizeOptions, bool ownedRef = false)
	{
		this.gArrowUTF8NormalizeOptions = gArrowUTF8NormalizeOptions;
		super(cast(GArrowFunctionOptions*)gArrowUTF8NormalizeOptions, ownedRef);
	}


	/** */
	public static GType getType()
	{
		return garrow_utf8_normalize_options_get_type();
	}

	/**
	 * Returns: A newly created #GArrowUTF8NormalizeOptions.
	 *
	 * Since: 8.0.0
	 *
	 * Throws: ConstructionException GTK+ fails to create the object.
	 */
	public this()
	{
		auto __p = garrow_utf8_normalize_options_new();

		if(__p is null)
		{
			throw new ConstructionException("null returned by new");
		}

		this(cast(GArrowUTF8NormalizeOptions*) __p, true);
	}
}
