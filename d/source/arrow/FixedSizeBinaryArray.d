module arrow.FixedSizeBinaryArray;

private import arrow.Buffer;
private import arrow.FixedSizeBinaryDataType;
private import arrow.PrimitiveArray;
private import arrow.c.functions;
public  import arrow.c.types;
private import glib.Bytes;
private import glib.ConstructionException;
private import gobject.ObjectG;


/** */
public class FixedSizeBinaryArray : PrimitiveArray
{
	/** the main Gtk struct */
	protected GArrowFixedSizeBinaryArray* gArrowFixedSizeBinaryArray;

	/** Get the main Gtk struct */
	public GArrowFixedSizeBinaryArray* getFixedSizeBinaryArrayStruct(bool transferOwnership = false)
	{
		if (transferOwnership)
			ownedRef = false;
		return gArrowFixedSizeBinaryArray;
	}

	/** the main Gtk struct as a void* */
	protected override void* getStruct()
	{
		return cast(void*)gArrowFixedSizeBinaryArray;
	}

	/**
	 * Sets our main struct and passes it to the parent class.
	 */
	public this (GArrowFixedSizeBinaryArray* gArrowFixedSizeBinaryArray, bool ownedRef = false)
	{
		this.gArrowFixedSizeBinaryArray = gArrowFixedSizeBinaryArray;
		super(cast(GArrowPrimitiveArray*)gArrowFixedSizeBinaryArray, ownedRef);
	}


	/** */
	public static GType getType()
	{
		return garrow_fixed_size_binary_array_get_type();
	}

	/**
	 *
	 * Params:
	 *     dataType = A #GArrowFixedSizeBinaryDataType for the array.
	 *     length = The number of elements.
	 *     data = The binary data in Arrow format of the array.
	 *     nullBitmap = The bitmap that shows null elements. The
	 *         N-th element is null when the N-th bit is 0, not null otherwise.
	 *         If the array has no null elements, the bitmap must be %NULL and
	 *         @n_nulls is 0.
	 *     nNulls = The number of null elements. If -1 is specified, the
	 *         number of nulls are computed from @null_bitmap.
	 * Returns: A newly created #GArrowFixedSizeBinaryArray.
	 *
	 * Since: 3.0.0
	 *
	 * Throws: ConstructionException GTK+ fails to create the object.
	 */
	public this(FixedSizeBinaryDataType dataType, long length, Buffer data, Buffer nullBitmap, long nNulls)
	{
		auto __p = garrow_fixed_size_binary_array_new((dataType is null) ? null : dataType.getFixedSizeBinaryDataTypeStruct(), length, (data is null) ? null : data.getBufferStruct(), (nullBitmap is null) ? null : nullBitmap.getBufferStruct(), nNulls);

		if(__p is null)
		{
			throw new ConstructionException("null returned by new");
		}

		this(cast(GArrowFixedSizeBinaryArray*) __p, true);
	}

	/**
	 * Returns: The number of bytes of each value.
	 *
	 * Since: 3.0.0
	 */
	public int getByteWidth()
	{
		return garrow_fixed_size_binary_array_get_byte_width(gArrowFixedSizeBinaryArray);
	}

	/**
	 *
	 * Params:
	 *     i = The index of the target value.
	 * Returns: The @i-th value.
	 *
	 * Since: 3.0.0
	 */
	public Bytes getValue(long i)
	{
		auto __p = garrow_fixed_size_binary_array_get_value(gArrowFixedSizeBinaryArray, i);

		if(__p is null)
		{
			return null;
		}

		return new Bytes(cast(GBytes*) __p, true);
	}

	/**
	 * Returns: All values as a #GBytes.
	 *
	 * Since: 3.0.0
	 */
	public Bytes getValuesBytes()
	{
		auto __p = garrow_fixed_size_binary_array_get_values_bytes(gArrowFixedSizeBinaryArray);

		if(__p is null)
		{
			return null;
		}

		return new Bytes(cast(GBytes*) __p, true);
	}
}
