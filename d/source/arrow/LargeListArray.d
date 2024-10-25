module arrow.LargeListArray;

private import arrow.Array;
private import arrow.Buffer;
private import arrow.DataType;
private import arrow.c.functions;
public  import arrow.c.types;
private import glib.ConstructionException;
private import gobject.ObjectG;


/** */
public class LargeListArray : ObjectG
{
	/** the main Gtk struct */
	protected GArrowLargeListArray* gArrowLargeListArray;

	/** Get the main Gtk struct */
	public GArrowLargeListArray* getLargeListArrayStruct(bool transferOwnership = false)
	{
		if (transferOwnership)
			ownedRef = false;
		return gArrowLargeListArray;
	}

	/** the main Gtk struct as a void* */
	protected override void* getStruct()
	{
		return cast(void*)gArrowLargeListArray;
	}

	/**
	 * Sets our main struct and passes it to the parent class.
	 */
	public this (GArrowLargeListArray* gArrowLargeListArray, bool ownedRef = false)
	{
		this.gArrowLargeListArray = gArrowLargeListArray;
		super(cast(GObject*)gArrowLargeListArray, ownedRef);
	}


	/** */
	public static GType getType()
	{
		return garrow_large_list_array_get_type();
	}

	/**
	 *
	 * Params:
	 *     dataType = The data type of the list.
	 *     length = The number of elements.
	 *     valueOffsets = The offsets of @values in Arrow format.
	 *     values = The values as #GArrowArray.
	 *     nullBitmap = The bitmap that shows null elements. The
	 *         N-th element is null when the N-th bit is 0, not null otherwise.
	 *         If the array has no null elements, the bitmap must be %NULL and
	 *         @n_nulls is 0.
	 *     nNulls = The number of null elements. If -1 is specified, the
	 *         number of nulls are computed from @null_bitmap.
	 * Returns: A newly created #GArrowLargeListArray.
	 *
	 * Since: 0.16.0
	 *
	 * Throws: ConstructionException GTK+ fails to create the object.
	 */
	public this(DataType dataType, long length, Buffer valueOffsets, Array values, Buffer nullBitmap, long nNulls)
	{
		auto __p = garrow_large_list_array_new((dataType is null) ? null : dataType.getDataTypeStruct(), length, (valueOffsets is null) ? null : valueOffsets.getBufferStruct(), (values is null) ? null : values.getArrayStruct(), (nullBitmap is null) ? null : nullBitmap.getBufferStruct(), nNulls);

		if(__p is null)
		{
			throw new ConstructionException("null returned by new");
		}

		this(cast(GArrowLargeListArray*) __p, true);
	}

	/**
	 *
	 * Params:
	 *     i = The index of the target value.
	 * Returns: The @i-th list.
	 *
	 * Since: 0.16.0
	 */
	public Array getValue(long i)
	{
		auto __p = garrow_large_list_array_get_value(gArrowLargeListArray, i);

		if(__p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(Array)(cast(GArrowArray*) __p, true);
	}

	/** */
	public long getValueLength(long i)
	{
		return garrow_large_list_array_get_value_length(gArrowLargeListArray, i);
	}

	/**
	 *
	 * Params:
	 *     i = The index of the offset of the target value.
	 * Returns: The target offset in the array containing the list's values.
	 *
	 * Since: 2.0.0
	 */
	public long getValueOffset(long i)
	{
		return garrow_large_list_array_get_value_offset(gArrowLargeListArray, i);
	}

	/**
	 * Returns: The target offsets in the array
	 *     containing the list's values.
	 *
	 * Since: 2.0.0
	 */
	public long[] getValueOffsets()
	{
		long nOffsets;

		auto __p = garrow_large_list_array_get_value_offsets(gArrowLargeListArray, &nOffsets);

		return __p[0 .. nOffsets];
	}

	/**
	 * Returns: The data type of value in each list.
	 *
	 * Since: 0.16.0
	 */
	public DataType getValueType()
	{
		auto __p = garrow_large_list_array_get_value_type(gArrowLargeListArray);

		if(__p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(DataType)(cast(GArrowDataType*) __p, true);
	}

	/**
	 * Returns: The array containing the list's values.
	 *
	 * Since: 2.0.0
	 */
	public Array getValues()
	{
		auto __p = garrow_large_list_array_get_values(gArrowLargeListArray);

		if(__p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(Array)(cast(GArrowArray*) __p, true);
	}
}
