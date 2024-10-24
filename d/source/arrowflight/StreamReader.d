module arrowflight.StreamReader;

private import arrowflight.RecordBatchReader;
private import arrowflight.c.functions;
public  import arrowflight.c.types;


/** */
public class StreamReader : RecordBatchReader
{
	/** the main Gtk struct */
	protected GAFlightStreamReader* gAFlightStreamReader;

	/** Get the main Gtk struct */
	public GAFlightStreamReader* getStreamReaderStruct(bool transferOwnership = false)
	{
		if (transferOwnership)
			ownedRef = false;
		return gAFlightStreamReader;
	}

	/** the main Gtk struct as a void* */
	protected override void* getStruct()
	{
		return cast(void*)gAFlightStreamReader;
	}

	/**
	 * Sets our main struct and passes it to the parent class.
	 */
	public this (GAFlightStreamReader* gAFlightStreamReader, bool ownedRef = false)
	{
		this.gAFlightStreamReader = gAFlightStreamReader;
		super(cast(GAFlightRecordBatchReader*)gAFlightStreamReader, ownedRef);
	}


	/** */
	public static GType getType()
	{
		return gaflight_stream_reader_get_type();
	}
}
