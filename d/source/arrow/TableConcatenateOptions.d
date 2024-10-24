module arrow.TableConcatenateOptions;

private import arrow.c.functions;
public  import arrow.c.types;
private import glib.ConstructionException;
private import gobject.ObjectG;


/** */
public class TableConcatenateOptions : ObjectG
{
	/** the main Gtk struct */
	protected GArrowTableConcatenateOptions* gArrowTableConcatenateOptions;

	/** Get the main Gtk struct */
	public GArrowTableConcatenateOptions* getTableConcatenateOptionsStruct(bool transferOwnership = false)
	{
		if (transferOwnership)
			ownedRef = false;
		return gArrowTableConcatenateOptions;
	}

	/** the main Gtk struct as a void* */
	protected override void* getStruct()
	{
		return cast(void*)gArrowTableConcatenateOptions;
	}

	/**
	 * Sets our main struct and passes it to the parent class.
	 */
	public this (GArrowTableConcatenateOptions* gArrowTableConcatenateOptions, bool ownedRef = false)
	{
		this.gArrowTableConcatenateOptions = gArrowTableConcatenateOptions;
		super(cast(GObject*)gArrowTableConcatenateOptions, ownedRef);
	}


	/** */
	public static GType getType()
	{
		return garrow_table_concatenate_options_get_type();
	}

	/**
	 * Returns: A newly created #GArrowTableConcatenateOptions.
	 *
	 * Since: 6.0.0
	 *
	 * Throws: ConstructionException GTK+ fails to create the object.
	 */
	public this()
	{
		auto __p = garrow_table_concatenate_options_new();

		if(__p is null)
		{
			throw new ConstructionException("null returned by new");
		}

		this(cast(GArrowTableConcatenateOptions*) __p, true);
	}
}
