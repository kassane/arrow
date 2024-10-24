module arrowflight.StreamChunk;

private import arrow.Buffer;
private import arrow.RecordBatch;
private import arrowflight.c.functions;
public  import arrowflight.c.types;
private import gobject.ObjectG;


/** */
public class StreamChunk : ObjectG
{
	/** the main Gtk struct */
	protected GAFlightStreamChunk* gAFlightStreamChunk;

	/** Get the main Gtk struct */
	public GAFlightStreamChunk* getStreamChunkStruct(bool transferOwnership = false)
	{
		if (transferOwnership)
			ownedRef = false;
		return gAFlightStreamChunk;
	}

	/** the main Gtk struct as a void* */
	protected override void* getStruct()
	{
		return cast(void*)gAFlightStreamChunk;
	}

	/**
	 * Sets our main struct and passes it to the parent class.
	 */
	public this (GAFlightStreamChunk* gAFlightStreamChunk, bool ownedRef = false)
	{
		this.gAFlightStreamChunk = gAFlightStreamChunk;
		super(cast(GObject*)gAFlightStreamChunk, ownedRef);
	}


	/** */
	public static GType getType()
	{
		return gaflight_stream_chunk_get_type();
	}

	/**
	 * Returns: The data of the chunk.
	 *
	 * Since: 6.0.0
	 */
	public RecordBatch getData()
	{
		auto __p = gaflight_stream_chunk_get_data(gAFlightStreamChunk);

		if(__p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(RecordBatch)(cast(GArrowRecordBatch*) __p, true);
	}

	/**
	 * Returns: The metadata of the chunk.
	 *
	 *     The metadata may be NULL.
	 *
	 * Since: 6.0.0
	 */
	public Buffer getMetadata()
	{
		auto __p = gaflight_stream_chunk_get_metadata(gAFlightStreamChunk);

		if(__p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(Buffer)(cast(GArrowBuffer*) __p, true);
	}
}
