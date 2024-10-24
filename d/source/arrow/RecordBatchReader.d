module arrow.RecordBatchReader;

private import arrow.RecordBatch;
private import arrow.Schema;
private import arrow.Table;
private import arrow.c.functions;
public  import arrow.c.types;
private import glib.ConstructionException;
private import glib.ErrorG;
private import glib.GException;
private import glib.ListG;
private import gobject.ObjectG;


/** */
public class RecordBatchReader : ObjectG
{
	/** the main Gtk struct */
	protected GArrowRecordBatchReader* gArrowRecordBatchReader;

	/** Get the main Gtk struct */
	public GArrowRecordBatchReader* getRecordBatchReaderStruct(bool transferOwnership = false)
	{
		if (transferOwnership)
			ownedRef = false;
		return gArrowRecordBatchReader;
	}

	/** the main Gtk struct as a void* */
	protected override void* getStruct()
	{
		return cast(void*)gArrowRecordBatchReader;
	}

	/**
	 * Sets our main struct and passes it to the parent class.
	 */
	public this (GArrowRecordBatchReader* gArrowRecordBatchReader, bool ownedRef = false)
	{
		this.gArrowRecordBatchReader = gArrowRecordBatchReader;
		super(cast(GObject*)gArrowRecordBatchReader, ownedRef);
	}


	/** */
	public static GType getType()
	{
		return garrow_record_batch_reader_get_type();
	}

	/**
	 *
	 * Params:
	 *     recordBatches = A list of #GArrowRecordBatch.
	 *     schema = A #GArrowSchema to confirm to.
	 * Returns: A newly created #GArrowRecordBatchReader.
	 *
	 * Since: 6.0.0
	 *
	 * Throws: GException on failure.
	 * Throws: ConstructionException GTK+ fails to create the object.
	 */
	public this(ListG recordBatches, Schema schema)
	{
		GError* err = null;

		auto __p = garrow_record_batch_reader_new((recordBatches is null) ? null : recordBatches.getListGStruct(), (schema is null) ? null : schema.getSchemaStruct(), &err);

		if (err !is null)
		{
			throw new GException( new ErrorG(err) );
		}

		if(__p is null)
		{
			throw new ConstructionException("null returned by new");
		}

		this(cast(GArrowRecordBatchReader*) __p, true);
	}

	/**
	 *
	 * Params:
	 *     cAbiArrayStream = A `struct ArrowArrayStream *`.
	 * Returns: An imported
	 *     #GArrowRecordBatchReader on success, %NULL on error.
	 *
	 *     You don't need to release the passed `struct ArrowArrayStream *`,
	 *     even if this function reports an error.
	 *
	 * Since: 6.0.0
	 *
	 * Throws: GException on failure.
	 */
	public static RecordBatchReader import(void* cAbiArrayStream)
	{
		GError* err = null;

		auto __p = garrow_record_batch_reader_import(cAbiArrayStream, &err);

		if (err !is null)
		{
			throw new GException( new ErrorG(err) );
		}

		if(__p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(RecordBatchReader)(cast(GArrowRecordBatchReader*) __p, true);
	}

	alias expor = export_;
	/**
	 * Returns: An exported
	 *     #GArrowRecordBatchReader as `struct ArrowArrayStream *` on
	 *     success, %NULL on error.
	 *
	 *     It should be freed with the `ArrowArrayStream::release` callback then
	 *     g_free() when no longer needed.
	 *
	 * Since: 6.0.0
	 *
	 * Throws: GException on failure.
	 */
	public void* export_()
	{
		GError* err = null;

		auto __p = garrow_record_batch_reader_export(gArrowRecordBatchReader, &err);

		if (err !is null)
		{
			throw new GException( new ErrorG(err) );
		}

		return __p;
	}

	/**
	 *
	 *
	 * Deprecated: Use garrow_record_batch_reader_read_next() instead.
	 *
	 * Returns: The next record batch in the stream or %NULL on end of stream.
	 *
	 * Since: 0.4.0
	 *
	 * Throws: GException on failure.
	 */
	public RecordBatch getNextRecordBatch()
	{
		GError* err = null;

		auto __p = garrow_record_batch_reader_get_next_record_batch(gArrowRecordBatchReader, &err);

		if (err !is null)
		{
			throw new GException( new ErrorG(err) );
		}

		if(__p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(RecordBatch)(cast(GArrowRecordBatch*) __p, true);
	}

	/**
	 * Returns: The schema in the stream.
	 *
	 * Since: 0.4.0
	 */
	public Schema getSchema()
	{
		auto __p = garrow_record_batch_reader_get_schema(gArrowRecordBatchReader);

		if(__p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(Schema)(cast(GArrowSchema*) __p, true);
	}

	/**
	 * Returns: A list of source
	 *     of this reader.
	 *
	 * Since: 13.0.0
	 */
	public ListG getSources()
	{
		auto __p = garrow_record_batch_reader_get_sources(gArrowRecordBatchReader);

		if(__p is null)
		{
			return null;
		}

		return new ListG(cast(GList*) __p);
	}

	/**
	 * Returns: The all record batches in the stream as #GArrowTable.
	 *
	 * Since: 6.0.0
	 *
	 * Throws: GException on failure.
	 */
	public Table readAll()
	{
		GError* err = null;

		auto __p = garrow_record_batch_reader_read_all(gArrowRecordBatchReader, &err);

		if (err !is null)
		{
			throw new GException( new ErrorG(err) );
		}

		if(__p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(Table)(cast(GArrowTable*) __p, true);
	}

	/**
	 * Returns: The next record batch in the stream or %NULL on end of stream.
	 *
	 * Since: 0.8.0
	 *
	 * Throws: GException on failure.
	 */
	public RecordBatch readNext()
	{
		GError* err = null;

		auto __p = garrow_record_batch_reader_read_next(gArrowRecordBatchReader, &err);

		if (err !is null)
		{
			throw new GException( new ErrorG(err) );
		}

		if(__p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(RecordBatch)(cast(GArrowRecordBatch*) __p, true);
	}

	/**
	 *
	 *
	 * Deprecated: Use garrow_record_batch_reader_read_next() instead.
	 *
	 * Returns: The next record batch in the stream or %NULL on end of stream.
	 *
	 * Since: 0.5.0
	 *
	 * Throws: GException on failure.
	 */
	public RecordBatch readNextRecordBatch()
	{
		GError* err = null;

		auto __p = garrow_record_batch_reader_read_next_record_batch(gArrowRecordBatchReader, &err);

		if (err !is null)
		{
			throw new GException( new ErrorG(err) );
		}

		if(__p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(RecordBatch)(cast(GArrowRecordBatch*) __p, true);
	}
}
