module arrowflight.StreamWriter;

private import arrowflight.RecordBatchWriter;
private import arrowflight.c.functions;
public  import arrowflight.c.types;
private import glib.ErrorG;
private import glib.GException;


/** */
public class StreamWriter : RecordBatchWriter
{
	/** the main Gtk struct */
	protected GAFlightStreamWriter* gAFlightStreamWriter;

	/** Get the main Gtk struct */
	public GAFlightStreamWriter* getStreamWriterStruct(bool transferOwnership = false)
	{
		if (transferOwnership)
			ownedRef = false;
		return gAFlightStreamWriter;
	}

	/** the main Gtk struct as a void* */
	protected override void* getStruct()
	{
		return cast(void*)gAFlightStreamWriter;
	}

	/**
	 * Sets our main struct and passes it to the parent class.
	 */
	public this (GAFlightStreamWriter* gAFlightStreamWriter, bool ownedRef = false)
	{
		this.gAFlightStreamWriter = gAFlightStreamWriter;
		super(cast(GAFlightRecordBatchWriter*)gAFlightStreamWriter, ownedRef);
	}


	/** */
	public static GType getType()
	{
		return gaflight_stream_writer_get_type();
	}

	/**
	 * Returns: %TRUE on success, %FALSE on error.
	 *
	 * Since: 18.0.0
	 *
	 * Throws: GException on failure.
	 */
	public bool doneWriting()
	{
		GError* err = null;

		auto __p = gaflight_stream_writer_done_writing(gAFlightStreamWriter, &err) != 0;

		if (err !is null)
		{
			throw new GException( new ErrorG(err) );
		}

		return __p;
	}
}
