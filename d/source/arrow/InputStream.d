module arrow.InputStream;

private import arrow.FileIF;
private import arrow.FileT;
private import arrow.ReadOptions;
private import arrow.ReadableIF;
private import arrow.ReadableT;
private import arrow.RecordBatch;
private import arrow.Schema;
private import arrow.Tensor;
private import arrow.c.functions;
public  import arrow.c.types;
private import gio.InputStream : DGioInputStream = InputStream;
private import glib.ErrorG;
private import glib.GException;
private import gobject.ObjectG;


/** */
public class InputStream : DGioInputStream, FileIF, ReadableIF
{
	/** the main Gtk struct */
	protected GArrowInputStream* gArrowInputStream;

	/** Get the main Gtk struct */
	public GArrowInputStream* getArrowInputStreamStruct(bool transferOwnership = false)
	{
		if (transferOwnership)
			ownedRef = false;
		return gArrowInputStream;
	}

	/** the main Gtk struct as a void* */
	protected override void* getStruct()
	{
		return cast(void*)gArrowInputStream;
	}

	/**
	 * Sets our main struct and passes it to the parent class.
	 */
	public this (GArrowInputStream* gArrowInputStream, bool ownedRef = false)
	{
		this.gArrowInputStream = gArrowInputStream;
		super(cast(GInputStream*)gArrowInputStream, ownedRef);
	}

	// add the File capabilities
	mixin FileT!(GArrowInputStream);

	// add the Readable capabilities
	mixin ReadableT!(GArrowInputStream);


	/** */
	public static GType getType()
	{
		return garrow_input_stream_get_type();
	}

	/**
	 *
	 * Params:
	 *     nBytes = The number of bytes to be advanced.
	 * Returns: %TRUE on success, %FALSE on error.
	 *
	 * Since: 0.11.0
	 *
	 * Throws: GException on failure.
	 */
	public bool advance(long nBytes)
	{
		GError* err = null;

		auto __p = garrow_input_stream_advance(gArrowInputStream, nBytes, &err) != 0;

		if (err !is null)
		{
			throw new GException( new ErrorG(err) );
		}

		return __p;
	}

	/**
	 *
	 * Params:
	 *     alignment = The byte multiple for the metadata prefix, usually 8
	 *         or 64, to ensure the body starts on a multiple of that alignment.
	 * Returns: %TRUE on success, %FALSE on error.
	 *
	 * Since: 0.11.0
	 *
	 * Throws: GException on failure.
	 */
	public bool align_(int alignment)
	{
		GError* err = null;

		auto __p = garrow_input_stream_align(gArrowInputStream, alignment, &err) != 0;

		if (err !is null)
		{
			throw new GException( new ErrorG(err) );
		}

		return __p;
	}

	/**
	 *
	 * Params:
	 *     schema = A #GArrowSchema for a read record batch.
	 *     options = A #GArrowReadOptions.
	 * Returns: #GArrowRecordBatch on success, %NULL on error.
	 *
	 * Since: 1.0.0
	 *
	 * Throws: GException on failure.
	 */
	public RecordBatch readRecordBatch(Schema schema, ReadOptions options)
	{
		GError* err = null;

		auto __p = garrow_input_stream_read_record_batch(gArrowInputStream, (schema is null) ? null : schema.getSchemaStruct(), (options is null) ? null : options.getReadOptionsStruct(), &err);

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
	 * Returns: #GArrowTensor on success, %NULL on error.
	 *
	 * Since: 0.11.0
	 *
	 * Throws: GException on failure.
	 */
	public Tensor readTensor()
	{
		GError* err = null;

		auto __p = garrow_input_stream_read_tensor(gArrowInputStream, &err);

		if (err !is null)
		{
			throw new GException( new ErrorG(err) );
		}

		if(__p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(Tensor)(cast(GArrowTensor*) __p, true);
	}
}
