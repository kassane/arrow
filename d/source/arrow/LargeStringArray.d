module arrow.LargeStringArray;

private import arrow.Buffer;
private import arrow.LargeBinaryArray;
private import arrow.c.functions;
public  import arrow.c.types;
private import glib.ConstructionException;
private import glib.Str;
private import glib.c.functions;
private import gobject.ObjectG;


/** */
public class LargeStringArray : LargeBinaryArray
{
	/** the main Gtk struct */
	protected GArrowLargeStringArray* gArrowLargeStringArray;

	/** Get the main Gtk struct */
	public GArrowLargeStringArray* getLargeStringArrayStruct(bool transferOwnership = false)
	{
		if (transferOwnership)
			ownedRef = false;
		return gArrowLargeStringArray;
	}

	/** the main Gtk struct as a void* */
	protected override void* getStruct()
	{
		return cast(void*)gArrowLargeStringArray;
	}

	/**
	 * Sets our main struct and passes it to the parent class.
	 */
	public this (GArrowLargeStringArray* gArrowLargeStringArray, bool ownedRef = false)
	{
		this.gArrowLargeStringArray = gArrowLargeStringArray;
		super(cast(GArrowLargeBinaryArray*)gArrowLargeStringArray, ownedRef);
	}


	/** */
	public static GType getType()
	{
		return garrow_large_string_array_get_type();
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
	 * Returns: A newly created #GArrowLargeStringArray.
	 *
	 * Since: 0.16.0
	 *
	 * Throws: ConstructionException GTK+ fails to create the object.
	 */
	public this(long length, Buffer valueOffsets, Buffer valueData, Buffer nullBitmap, long nNulls)
	{
		auto __p = garrow_large_string_array_new(length, (valueOffsets is null) ? null : valueOffsets.getBufferStruct(), (valueData is null) ? null : valueData.getBufferStruct(), (nullBitmap is null) ? null : nullBitmap.getBufferStruct(), nNulls);

		if(__p is null)
		{
			throw new ConstructionException("null returned by new");
		}

		this(cast(GArrowLargeStringArray*) __p, true);
	}

	/**
	 *
	 * Params:
	 *     i = The index of the target value.
	 * Returns: The @i-th UTF-8 encoded string.
	 *
	 * Since: 0.16.0
	 */
	public string getString(long i)
	{
		auto retStr = garrow_large_string_array_get_string(gArrowLargeStringArray, i);

		scope(exit) Str.freeString(retStr);
		return Str.toString(retStr);
	}
}
