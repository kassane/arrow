module arrowflight.RecordBatchStream;

private import arrow.RecordBatchReader;
private import arrow.WriteOptions;
private import arrowflight.DataStream;
private import arrowflight.c.functions;
public  import arrowflight.c.types;
private import glib.ConstructionException;
private import gobject.ObjectG;


/** */
public class RecordBatchStream : DataStream
{
	/** the main Gtk struct */
	protected GAFlightRecordBatchStream* gAFlightRecordBatchStream;

	/** Get the main Gtk struct */
	public GAFlightRecordBatchStream* getRecordBatchStreamStruct(bool transferOwnership = false)
	{
		if (transferOwnership)
			ownedRef = false;
		return gAFlightRecordBatchStream;
	}

	/** the main Gtk struct as a void* */
	protected override void* getStruct()
	{
		return cast(void*)gAFlightRecordBatchStream;
	}

	/**
	 * Sets our main struct and passes it to the parent class.
	 */
	public this (GAFlightRecordBatchStream* gAFlightRecordBatchStream, bool ownedRef = false)
	{
		this.gAFlightRecordBatchStream = gAFlightRecordBatchStream;
		super(cast(GAFlightDataStream*)gAFlightRecordBatchStream, ownedRef);
	}


	/** */
	public static GType getType()
	{
		return gaflight_record_batch_stream_get_type();
	}

	/**
	 *
	 * Params:
	 *     reader = A #GArrowRecordBatchReader to be read.
	 *     options = A #GArrowWriteOptions for writing record batches to
	 *         a client.
	 * Returns: The newly created #GAFlightRecordBatchStream.
	 *
	 * Since: 6.0.0
	 *
	 * Throws: ConstructionException GTK+ fails to create the object.
	 */
	public this(RecordBatchReader reader, WriteOptions options)
	{
		auto __p = gaflight_record_batch_stream_new((reader is null) ? null : reader.getRecordBatchReaderStruct(), (options is null) ? null : options.getWriteOptionsStruct());

		if(__p is null)
		{
			throw new ConstructionException("null returned by new");
		}

		this(cast(GAFlightRecordBatchStream*) __p, true);
	}
}
