module arrowflight.RecordBatchWriter;

private import arrow.Buffer;
private import arrow.RecordBatch;
private import arrow.RecordBatchWriter : DArrowRecordBatchWriter = RecordBatchWriter;
private import arrow.Schema;
private import arrow.WriteOptions;
private import arrowflight.c.functions;
public  import arrowflight.c.types;
private import glib.ErrorG;
private import glib.GException;


/** */
public class RecordBatchWriter : DArrowRecordBatchWriter
{
	/** the main Gtk struct */
	protected GAFlightRecordBatchWriter* gAFlightRecordBatchWriter;

	/** Get the main Gtk struct */
	public GAFlightRecordBatchWriter* getArrowflightRecordBatchWriterStruct(bool transferOwnership = false)
	{
		if (transferOwnership)
			ownedRef = false;
		return gAFlightRecordBatchWriter;
	}

	/** the main Gtk struct as a void* */
	protected override void* getStruct()
	{
		return cast(void*)gAFlightRecordBatchWriter;
	}

	/**
	 * Sets our main struct and passes it to the parent class.
	 */
	public this (GAFlightRecordBatchWriter* gAFlightRecordBatchWriter, bool ownedRef = false)
	{
		this.gAFlightRecordBatchWriter = gAFlightRecordBatchWriter;
		super(cast(GArrowRecordBatchWriter*)gAFlightRecordBatchWriter, ownedRef);
	}


	/** */
	public static GType getType()
	{
		return gaflight_record_batch_writer_get_type();
	}

	/**
	 * Begins writing data with the given schema. Only used with
	 * `DoExchange`.
	 *
	 * Params:
	 *     schema = A #GArrowSchema.
	 *     options = A #GArrowWriteOptions.
	 *
	 * Returns: %TRUE on success, %FALSE on error.
	 *
	 * Since: 18.0.0
	 *
	 * Throws: GException on failure.
	 */
	public bool begin(Schema schema, WriteOptions options)
	{
		GError* err = null;

		auto __p = gaflight_record_batch_writer_begin(gAFlightRecordBatchWriter, (schema is null) ? null : schema.getSchemaStruct(), (options is null) ? null : options.getWriteOptionsStruct(), &err) != 0;

		if (err !is null)
		{
			throw new GException( new ErrorG(err) );
		}

		return __p;
	}

	/**
	 * Write metadata.
	 *
	 * Params:
	 *     metadata = A #GArrowBuffer.
	 *
	 * Returns: %TRUE on success, %FALSE on error.
	 *
	 * Since: 18.0.0
	 *
	 * Throws: GException on failure.
	 */
	public bool writeMetadata(Buffer metadata)
	{
		GError* err = null;

		auto __p = gaflight_record_batch_writer_write_metadata(gAFlightRecordBatchWriter, (metadata is null) ? null : metadata.getBufferStruct(), &err) != 0;

		if (err !is null)
		{
			throw new GException( new ErrorG(err) );
		}

		return __p;
	}

	/**
	 * Write a record batch with metadata.
	 *
	 * Params:
	 *     recordBatch = A #GArrowRecordBatch.
	 *     metadata = A #GArrowBuffer.
	 *
	 * Returns: %TRUE on success, %FALSE on error.
	 *
	 * Since: 18.0.0
	 *
	 * Throws: GException on failure.
	 */
	public bool writeRecordBatch(RecordBatch recordBatch, Buffer metadata)
	{
		GError* err = null;

		auto __p = gaflight_record_batch_writer_write_record_batch(gAFlightRecordBatchWriter, (recordBatch is null) ? null : recordBatch.getRecordBatchStruct(), (metadata is null) ? null : metadata.getBufferStruct(), &err) != 0;

		if (err !is null)
		{
			throw new GException( new ErrorG(err) );
		}

		return __p;
	}
}
