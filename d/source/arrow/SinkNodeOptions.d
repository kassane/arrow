module arrow.SinkNodeOptions;

private import arrow.ExecuteNodeOptions;
private import arrow.RecordBatchReader;
private import arrow.Schema;
private import arrow.c.functions;
public  import arrow.c.types;
private import glib.ConstructionException;
private import gobject.ObjectG;


/** */
public class SinkNodeOptions : ExecuteNodeOptions
{
	/** the main Gtk struct */
	protected GArrowSinkNodeOptions* gArrowSinkNodeOptions;

	/** Get the main Gtk struct */
	public GArrowSinkNodeOptions* getSinkNodeOptionsStruct(bool transferOwnership = false)
	{
		if (transferOwnership)
			ownedRef = false;
		return gArrowSinkNodeOptions;
	}

	/** the main Gtk struct as a void* */
	protected override void* getStruct()
	{
		return cast(void*)gArrowSinkNodeOptions;
	}

	/**
	 * Sets our main struct and passes it to the parent class.
	 */
	public this (GArrowSinkNodeOptions* gArrowSinkNodeOptions, bool ownedRef = false)
	{
		this.gArrowSinkNodeOptions = gArrowSinkNodeOptions;
		super(cast(GArrowExecuteNodeOptions*)gArrowSinkNodeOptions, ownedRef);
	}


	/** */
	public static GType getType()
	{
		return garrow_sink_node_options_get_type();
	}

	/**
	 * Returns: A newly created #GArrowSinkNodeOptions.
	 *
	 * Since: 6.0.0
	 *
	 * Throws: ConstructionException GTK+ fails to create the object.
	 */
	public this()
	{
		auto __p = garrow_sink_node_options_new();

		if(__p is null)
		{
			throw new ConstructionException("null returned by new");
		}

		this(cast(GArrowSinkNodeOptions*) __p, true);
	}

	/**
	 *
	 * Params:
	 *     schema = A #GArrowSchema.
	 * Returns: A #GArrowRecordBatchReader to read generated record batches.
	 *
	 * Since: 6.0.0
	 */
	public RecordBatchReader getReader(Schema schema)
	{
		auto __p = garrow_sink_node_options_get_reader(gArrowSinkNodeOptions, (schema is null) ? null : schema.getSchemaStruct());

		if(__p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(RecordBatchReader)(cast(GArrowRecordBatchReader*) __p, true);
	}
}
