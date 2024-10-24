module arrow.ReadOptions;

private import arrow.c.functions;
public  import arrow.c.types;
private import glib.ConstructionException;
private import gobject.ObjectG;


/** */
public class ReadOptions : ObjectG
{
	/** the main Gtk struct */
	protected GArrowReadOptions* gArrowReadOptions;

	/** Get the main Gtk struct */
	public GArrowReadOptions* getReadOptionsStruct(bool transferOwnership = false)
	{
		if (transferOwnership)
			ownedRef = false;
		return gArrowReadOptions;
	}

	/** the main Gtk struct as a void* */
	protected override void* getStruct()
	{
		return cast(void*)gArrowReadOptions;
	}

	/**
	 * Sets our main struct and passes it to the parent class.
	 */
	public this (GArrowReadOptions* gArrowReadOptions, bool ownedRef = false)
	{
		this.gArrowReadOptions = gArrowReadOptions;
		super(cast(GObject*)gArrowReadOptions, ownedRef);
	}


	/** */
	public static GType getType()
	{
		return garrow_read_options_get_type();
	}

	/**
	 * Returns: A newly created #GArrowReadOptions.
	 *
	 * Since: 1.0.0
	 *
	 * Throws: ConstructionException GTK+ fails to create the object.
	 */
	public this()
	{
		auto __p = garrow_read_options_new();

		if(__p is null)
		{
			throw new ConstructionException("null returned by new");
		}

		this(cast(GArrowReadOptions*) __p, true);
	}

	/**
	 * Returns: Top-level schema fields to include when deserializing
	 *     RecordBatch. If empty, return all deserialized fields.
	 *
	 *     It should be freed with g_free() when no longer needed.
	 *
	 * Since: 1.0.0
	 */
	public int[] getIncludedFields()
	{
		size_t nFields;

		auto __p = garrow_read_options_get_included_fields(gArrowReadOptions, &nFields);

		return __p[0 .. nFields];
	}

	/** */
	public void setIncludedFields(int[] fields)
	{
		garrow_read_options_set_included_fields(gArrowReadOptions, fields.ptr, cast(size_t)fields.length);
	}
}
