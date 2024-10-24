module arrow.StreamListener;

private import arrow.RecordBatch;
private import arrow.Schema;
private import arrow.c.functions;
public  import arrow.c.types;
private import glib.ErrorG;
private import glib.GException;
private import glib.HashTable;
private import glib.Str;
private import gobject.ObjectG;


/** */
public class StreamListener : ObjectG
{
	/** the main Gtk struct */
	protected GArrowStreamListener* gArrowStreamListener;

	/** Get the main Gtk struct */
	public GArrowStreamListener* getStreamListenerStruct(bool transferOwnership = false)
	{
		if (transferOwnership)
			ownedRef = false;
		return gArrowStreamListener;
	}

	/** the main Gtk struct as a void* */
	protected override void* getStruct()
	{
		return cast(void*)gArrowStreamListener;
	}

	/**
	 * Sets our main struct and passes it to the parent class.
	 */
	public this (GArrowStreamListener* gArrowStreamListener, bool ownedRef = false)
	{
		this.gArrowStreamListener = gArrowStreamListener;
		super(cast(GObject*)gArrowStreamListener, ownedRef);
	}


	/** */
	public static GType getType()
	{
		return garrow_stream_listener_get_type();
	}

	/**
	 * Processes an EOS event.
	 *
	 * Returns: %TRUE on success, %FALSE on error.
	 *
	 * Since: 18.0.0
	 *
	 * Throws: GException on failure.
	 */
	public bool onEos()
	{
		GError* err = null;

		auto __p = garrow_stream_listener_on_eos(gArrowStreamListener, &err) != 0;

		if (err !is null)
		{
			throw new GException( new ErrorG(err) );
		}

		return __p;
	}

	/**
	 * Processes a decoded record batch.
	 *
	 * Params:
	 *     recordBatch = A decoded #GArrowRecordBatch.
	 *     metadata = A decoded metadata.
	 *
	 * Returns: %TRUE on success, %FALSE on error.
	 *
	 * Since: 18.0.0
	 *
	 * Throws: GException on failure.
	 */
	public bool onRecordBatchDecoded(RecordBatch recordBatch, HashTable metadata)
	{
		GError* err = null;

		auto __p = garrow_stream_listener_on_record_batch_decoded(gArrowStreamListener, (recordBatch is null) ? null : recordBatch.getRecordBatchStruct(), (metadata is null) ? null : metadata.getHashTableStruct(), &err) != 0;

		if (err !is null)
		{
			throw new GException( new ErrorG(err) );
		}

		return __p;
	}

	/**
	 * Processes a decoded schema.
	 *
	 * Params:
	 *     schema = A decoded #GArrowSchema.
	 *     filteredSchema = A decoded #GArrowSchema that only has read fields.
	 *
	 * Returns: %TRUE on success, %FALSE on error.
	 *
	 * Since: 18.0.0
	 *
	 * Throws: GException on failure.
	 */
	public bool onSchemaDecoded(Schema schema, Schema filteredSchema)
	{
		GError* err = null;

		auto __p = garrow_stream_listener_on_schema_decoded(gArrowStreamListener, (schema is null) ? null : schema.getSchemaStruct(), (filteredSchema is null) ? null : filteredSchema.getSchemaStruct(), &err) != 0;

		if (err !is null)
		{
			throw new GException( new ErrorG(err) );
		}

		return __p;
	}
}
