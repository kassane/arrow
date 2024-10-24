module arrow.SourceNodeOptions;

private import arrow.ExecuteNodeOptions;
private import arrow.RecordBatch;
private import arrow.RecordBatchReader;
private import arrow.Table;
private import arrow.c.functions;
public  import arrow.c.types;
private import glib.ConstructionException;
private import gobject.ObjectG;


/** */
public class SourceNodeOptions : ExecuteNodeOptions
{
	/** the main Gtk struct */
	protected GArrowSourceNodeOptions* gArrowSourceNodeOptions;

	/** Get the main Gtk struct */
	public GArrowSourceNodeOptions* getSourceNodeOptionsStruct(bool transferOwnership = false)
	{
		if (transferOwnership)
			ownedRef = false;
		return gArrowSourceNodeOptions;
	}

	/** the main Gtk struct as a void* */
	protected override void* getStruct()
	{
		return cast(void*)gArrowSourceNodeOptions;
	}

	/**
	 * Sets our main struct and passes it to the parent class.
	 */
	public this (GArrowSourceNodeOptions* gArrowSourceNodeOptions, bool ownedRef = false)
	{
		this.gArrowSourceNodeOptions = gArrowSourceNodeOptions;
		super(cast(GArrowExecuteNodeOptions*)gArrowSourceNodeOptions, ownedRef);
	}


	/** */
	public static GType getType()
	{
		return garrow_source_node_options_get_type();
	}

	/**
	 *
	 * Params:
	 *     recordBatch = A #GArrowRecordBatch.
	 * Returns: A newly created #GArrowSourceNodeOptions.
	 *
	 * Since: 6.0.0
	 *
	 * Throws: ConstructionException GTK+ fails to create the object.
	 */
	public this(RecordBatch recordBatch)
	{
		auto __p = garrow_source_node_options_new_record_batch((recordBatch is null) ? null : recordBatch.getRecordBatchStruct());

		if(__p is null)
		{
			throw new ConstructionException("null returned by new_record_batch");
		}

		this(cast(GArrowSourceNodeOptions*) __p, true);
	}

	/**
	 *
	 * Params:
	 *     reader = A #GArrowRecordBatchReader.
	 * Returns: A newly created #GArrowSourceNodeOptions.
	 *
	 * Since: 6.0.0
	 *
	 * Throws: ConstructionException GTK+ fails to create the object.
	 */
	public this(RecordBatchReader reader)
	{
		auto __p = garrow_source_node_options_new_record_batch_reader((reader is null) ? null : reader.getRecordBatchReaderStruct());

		if(__p is null)
		{
			throw new ConstructionException("null returned by new_record_batch_reader");
		}

		this(cast(GArrowSourceNodeOptions*) __p, true);
	}

	/**
	 *
	 * Params:
	 *     table = A #GArrowTable.
	 * Returns: A newly created #GArrowSourceNodeOptions.
	 *
	 * Since: 6.0.0
	 *
	 * Throws: ConstructionException GTK+ fails to create the object.
	 */
	public this(Table table)
	{
		auto __p = garrow_source_node_options_new_table((table is null) ? null : table.getTableStruct());

		if(__p is null)
		{
			throw new ConstructionException("null returned by new_table");
		}

		this(cast(GArrowSourceNodeOptions*) __p, true);
	}
}
