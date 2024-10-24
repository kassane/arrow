module arrowflight.RecordBatchReader;

private import arrow.Table;
private import arrowflight.StreamChunk;
private import arrowflight.c.functions;
public  import arrowflight.c.types;
private import glib.ErrorG;
private import glib.GException;
private import gobject.ObjectG;


/** */
public class RecordBatchReader : ObjectG
{
	/** the main Gtk struct */
	protected GAFlightRecordBatchReader* gAFlightRecordBatchReader;

	/** Get the main Gtk struct */
	public GAFlightRecordBatchReader* getRecordBatchReaderStruct(bool transferOwnership = false)
	{
		if (transferOwnership)
			ownedRef = false;
		return gAFlightRecordBatchReader;
	}

	/** the main Gtk struct as a void* */
	protected override void* getStruct()
	{
		return cast(void*)gAFlightRecordBatchReader;
	}

	/**
	 * Sets our main struct and passes it to the parent class.
	 */
	public this (GAFlightRecordBatchReader* gAFlightRecordBatchReader, bool ownedRef = false)
	{
		this.gAFlightRecordBatchReader = gAFlightRecordBatchReader;
		super(cast(GObject*)gAFlightRecordBatchReader, ownedRef);
	}


	/** */
	public static GType getType()
	{
		return gaflight_record_batch_reader_get_type();
	}

	/**
	 * Returns: The all data on success, %NULL on error.
	 *
	 * Since: 6.0.0
	 *
	 * Throws: GException on failure.
	 */
	public Table readAll()
	{
		GError* err = null;

		auto __p = gaflight_record_batch_reader_read_all(gAFlightRecordBatchReader, &err);

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
	 * Returns: The next chunk on success, %NULL on end
	 *     of stream, %NULL on error.
	 *
	 * Since: 6.0.0
	 *
	 * Throws: GException on failure.
	 */
	public StreamChunk readNext()
	{
		GError* err = null;

		auto __p = gaflight_record_batch_reader_read_next(gAFlightRecordBatchReader, &err);

		if (err !is null)
		{
			throw new GException( new ErrorG(err) );
		}

		if(__p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(StreamChunk)(cast(GAFlightStreamChunk*) __p, true);
	}
}
