module arrow.BinaryArray;

private import arrow.Array;
private import arrow.Buffer;
private import arrow.c.functions;
public  import arrow.c.types;
private import glib.Bytes;
private import glib.ConstructionException;
private import gobject.ObjectG;


/** */
public class BinaryArray : Array
{
	/** the main Gtk struct */
	protected GArrowBinaryArray* gArrowBinaryArray;

	/** Get the main Gtk struct */
	public GArrowBinaryArray* getBinaryArrayStruct(bool transferOwnership = false)
	{
		if (transferOwnership)
			ownedRef = false;
		return gArrowBinaryArray;
	}

	/** the main Gtk struct as a void* */
	protected override void* getStruct()
	{
		return cast(void*)gArrowBinaryArray;
	}

	/**
	 * Sets our main struct and passes it to the parent class.
	 */
	public this (GArrowBinaryArray* gArrowBinaryArray, bool ownedRef = false)
	{
		this.gArrowBinaryArray = gArrowBinaryArray;
		super(cast(GArrowArray*)gArrowBinaryArray, ownedRef);
	}


	/** */
	public static GType getType()
	{
		return garrow_binary_array_get_type();
	}

	/**
	 *
	 * Params:
	 *     length = The number of elements.
	 *     valueOffsets = The value offsets of @data in Arrow format.
	 *     valueData = The binary data in Arrow format of the array.
	 *     nullBitmap = The bitmap that shows null elements. The
	 *         N-th element is null when the N-th bit is 0, not null otherwise.
	 *         If the array has no null elements, the bitmap must be %NULL and
	 *         @n_nulls is 0.
	 *     nNulls = The number of null elements. If -1 is specified, the
	 *         number of nulls are computed from @null_bitmap.
	 * Returns: A newly created #GArrowBinaryArray.
	 *
	 * Since: 0.4.0
	 *
	 * Throws: ConstructionException GTK+ fails to create the object.
	 */
	public this(long length, Buffer valueOffsets, Buffer valueData, Buffer nullBitmap, long nNulls)
	{
		auto __p = garrow_binary_array_new(length, (valueOffsets is null) ? null : valueOffsets.getBufferStruct(), (valueData is null) ? null : valueData.getBufferStruct(), (nullBitmap is null) ? null : nullBitmap.getBufferStruct(), nNulls);

		if(__p is null)
		{
			throw new ConstructionException("null returned by new");
		}

		this(cast(GArrowBinaryArray*) __p, true);
	}

	/**
	 *
	 *
	 * Deprecated: Use garrow_binary_array_get_data_buffer() instead.
	 *
	 * Returns: The data of the array as #GArrowBuffer.
	 */
	public Buffer getBuffer()
	{
		auto __p = garrow_binary_array_get_buffer(gArrowBinaryArray);

		if(__p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(Buffer)(cast(GArrowBuffer*) __p, true);
	}

	/**
	 * Returns: The data of the array as #GArrowBuffer.
	 *
	 * Since: 1.0.0
	 */
	public Buffer getDataBuffer()
	{
		auto __p = garrow_binary_array_get_data_buffer(gArrowBinaryArray);

		if(__p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(Buffer)(cast(GArrowBuffer*) __p, true);
	}

	/**
	 * Returns: The offsets of the array as #GArrowBuffer.
	 */
	public Buffer getOffsetsBuffer()
	{
		auto __p = garrow_binary_array_get_offsets_buffer(gArrowBinaryArray);

		if(__p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(Buffer)(cast(GArrowBuffer*) __p, true);
	}

	/**
	 *
	 * Params:
	 *     i = The index of the target value.
	 * Returns: The @i-th value.
	 */
	public Bytes getValue(long i)
	{
		auto __p = garrow_binary_array_get_value(gArrowBinaryArray, i);

		if(__p is null)
		{
			return null;
		}

		return new Bytes(cast(GBytes*) __p, true);
	}
}
