module arrow.StreamDecoder;

private import arrow.Buffer;
private import arrow.ReadOptions;
private import arrow.Schema;
private import arrow.StreamListener;
private import arrow.c.functions;
public  import arrow.c.types;
private import glib.Bytes;
private import glib.ConstructionException;
private import glib.ErrorG;
private import glib.GException;
private import gobject.ObjectG;


/** */
public class StreamDecoder : ObjectG
{
	/** the main Gtk struct */
	protected GArrowStreamDecoder* gArrowStreamDecoder;

	/** Get the main Gtk struct */
	public GArrowStreamDecoder* getStreamDecoderStruct(bool transferOwnership = false)
	{
		if (transferOwnership)
			ownedRef = false;
		return gArrowStreamDecoder;
	}

	/** the main Gtk struct as a void* */
	protected override void* getStruct()
	{
		return cast(void*)gArrowStreamDecoder;
	}

	/**
	 * Sets our main struct and passes it to the parent class.
	 */
	public this (GArrowStreamDecoder* gArrowStreamDecoder, bool ownedRef = false)
	{
		this.gArrowStreamDecoder = gArrowStreamDecoder;
		super(cast(GObject*)gArrowStreamDecoder, ownedRef);
	}


	/** */
	public static GType getType()
	{
		return garrow_stream_decoder_get_type();
	}

	/**
	 *
	 * Params:
	 *     listener = The #GArrowStreamListener that receives decoded events.
	 *     options = The #GArrowReadOptions.
	 * Returns: A newly created #GArrowStreamDecoder.
	 *
	 * Since: 18.0.0
	 *
	 * Throws: ConstructionException GTK+ fails to create the object.
	 */
	public this(StreamListener listener, ReadOptions options)
	{
		auto __p = garrow_stream_decoder_new((listener is null) ? null : listener.getStreamListenerStruct(), (options is null) ? null : options.getReadOptionsStruct());

		if(__p is null)
		{
			throw new ConstructionException("null returned by new");
		}

		this(cast(GArrowStreamDecoder*) __p, true);
	}

	/**
	 * Feed data to the decoder as a #GArrowBuffer.
	 *
	 * If the decoder can read one or more record batches by the data, the
	 * decoder calls [vfunc@GArrowStreamListener.on_record_batch_decoded]
	 * with a decoded record batch multiple times.
	 *
	 * Params:
	 *     buffer = A #GArrowBuffer to be decoded.
	 *
	 * Returns: %TRUE on success, %FALSE if there was an error.
	 *
	 * Since: 18.0.0
	 *
	 * Throws: GException on failure.
	 */
	public bool consumeBuffer(Buffer buffer)
	{
		GError* err = null;

		auto __p = garrow_stream_decoder_consume_buffer(gArrowStreamDecoder, (buffer is null) ? null : buffer.getBufferStruct(), &err) != 0;

		if (err !is null)
		{
			throw new GException( new ErrorG(err) );
		}

		return __p;
	}

	/**
	 * Feed data to the decoder as a raw data.
	 *
	 * If the decoder can read one or more record batches by the data, the
	 * decoder calls [vfunc@GArrowStreamListener.on_record_batch_decoded]
	 * with a decoded record batch multiple times.
	 *
	 * Params:
	 *     bytes = A #GBytes to be decoded.
	 *
	 * Returns: %TRUE on success, %FALSE if there was an error.
	 *
	 * Since: 18.0.0
	 *
	 * Throws: GException on failure.
	 */
	public bool consumeBytes(Bytes bytes)
	{
		GError* err = null;

		auto __p = garrow_stream_decoder_consume_bytes(gArrowStreamDecoder, (bytes is null) ? null : bytes.getBytesStruct(), &err) != 0;

		if (err !is null)
		{
			throw new GException( new ErrorG(err) );
		}

		return __p;
	}

	/**
	 * This method is provided for users who want to optimize performance.
	 * Normal users don't need to use this method.
	 *
	 * Here is an example usage for normal users:
	 *
	 * garrow_stream_decoder_consume_buffer(decoder, buffer1);
	 * garrow_stream_decoder_consume_buffer(decoder, buffer2);
	 * garrow_stream_decoder_consume_buffer(decoder, buffer3);
	 *
	 * Decoder has internal buffer. If consumed data isn't enough to
	 * advance the state of the decoder, consumed data is buffered to
	 * the internal buffer. It causes performance overhead.
	 *
	 * If you pass garrow_stream_decoer_get_next_required_size() size data
	 * to each
	 * garrow_stream_decoder_consume_bytes()/garrow_stream_decoder_consume_buffer()
	 * call, the decoder doesn't use its internal buffer. It improves
	 * performance.
	 *
	 * Here is an example usage to avoid using internal buffer:
	 *
	 * buffer1 = get_data(garrow_stream_decoder_get_next_required_size(decoder));
	 * garrow_stream_decoder_consume_buffer(buffer1);
	 * buffer2 = get_data(garrow_stream_decoder_get_next_required_size(decoder));
	 * garrow_stream_decoder_consume_buffer(buffer2);
	 *
	 * Users can use this method to avoid creating small chunks. Record
	 * batch data must be contiguous data. If users pass small chunks to
	 * the decoder, the decoder needs concatenate small chunks
	 * internally. It causes performance overhead.
	 *
	 * Here is an example usage to reduce small chunks:
	 *
	 * GArrowResizablBuffer *buffer = garrow_resizable_buffer_new(1024, NULL);
	 * while ((small_chunk = get_data(&small_chunk_size))) {
	 * size_t current_buffer_size = garrow_buffer_get_size(GARROW_BUFFER(buffer));
	 * garrow_resizable_buffer_resize(buffer, current_buffer_size + small_chunk_size,
	 * NULL);
	 * garrow_mutable_buffer_set_data(GARROW_MUTABLE_BUFFER(buffer),
	 * current_buffer_size,
	 * small_chunk,
	 * small_chunk_size,
	 * NULL);
	 * if (garrow_buffer_get_size(GARROW_BUFFER(buffer)) <
	 * garrow_stream_decoder_get_next_required_size(decoder)) {
	 * continue;
	 * }
	 * garrow_stream_decoder_consume_buffer(decoder, GARROW_BUFFER(buffer), NULL);
	 * g_object_unref(buffer);
	 * buffer = garrow_resizable_buffer_new(1024, NULL);
	 * }
	 * if (garrow_buffer_get_size(GARROW_BUFFER(buffer)) > 0) {
	 * garrow_stream_decoder_consume_buffer(decoder, GARROW_BUFFER(buffer), NULL);
	 * }
	 * g_object_unref(buffer);
	 *
	 * Returns: The number of bytes needed to advance the state of
	 *     the decoder.
	 *
	 * Since: 18.0.0
	 */
	public size_t getNextRequiredSize()
	{
		return garrow_stream_decoder_get_next_required_size(gArrowStreamDecoder);
	}

	/**
	 * Returns: The shared #GArrowSchema of
	 *     the record batches in the stream.
	 *
	 * Since: 18.0.0
	 */
	public Schema getSchema()
	{
		auto __p = garrow_stream_decoder_get_schema(gArrowStreamDecoder);

		if(__p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(Schema)(cast(GArrowSchema*) __p, true);
	}

	/**
	 * Reset the internal status.
	 *
	 * You can reuse this decoder for new stream after calling this.
	 *
	 * Returns: %TRUE on success, %FALSE if there was an error.
	 *
	 * Since: 18.0.0
	 *
	 * Throws: GException on failure.
	 */
	public bool reset()
	{
		GError* err = null;

		auto __p = garrow_stream_decoder_reset(gArrowStreamDecoder, &err) != 0;

		if (err !is null)
		{
			throw new GException( new ErrorG(err) );
		}

		return __p;
	}
}
