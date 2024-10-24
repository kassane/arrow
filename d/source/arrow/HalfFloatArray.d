module arrow.HalfFloatArray;

private import arrow.Buffer;
private import arrow.NumericArray;
private import arrow.c.functions;
public  import arrow.c.types;
private import glib.ConstructionException;
private import gobject.ObjectG;


/** */
public class HalfFloatArray : NumericArray
{
	/** the main Gtk struct */
	protected GArrowHalfFloatArray* gArrowHalfFloatArray;

	/** Get the main Gtk struct */
	public GArrowHalfFloatArray* getHalfFloatArrayStruct(bool transferOwnership = false)
	{
		if (transferOwnership)
			ownedRef = false;
		return gArrowHalfFloatArray;
	}

	/** the main Gtk struct as a void* */
	protected override void* getStruct()
	{
		return cast(void*)gArrowHalfFloatArray;
	}

	/**
	 * Sets our main struct and passes it to the parent class.
	 */
	public this (GArrowHalfFloatArray* gArrowHalfFloatArray, bool ownedRef = false)
	{
		this.gArrowHalfFloatArray = gArrowHalfFloatArray;
		super(cast(GArrowNumericArray*)gArrowHalfFloatArray, ownedRef);
	}


	/** */
	public static GType getType()
	{
		return garrow_half_float_array_get_type();
	}

	/**
	 *
	 * Params:
	 *     length = The number of elements.
	 *     data = The binary data in Arrow format of the array.
	 *     nullBitmap = The bitmap that shows null elements. The
	 *         N-th element is null when the N-th bit is 0, not null otherwise.
	 *         If the array has no null elements, the bitmap must be %NULL and
	 *         @n_nulls is 0.
	 *     nNulls = The number of null elements. If -1 is specified, the
	 *         number of nulls are computed from @null_bitmap.
	 * Returns: A newly created #GArrowHalfFloatArray.
	 *
	 * Since: 11.0.0
	 *
	 * Throws: ConstructionException GTK+ fails to create the object.
	 */
	public this(long length, Buffer data, Buffer nullBitmap, long nNulls)
	{
		auto __p = garrow_half_float_array_new(length, (data is null) ? null : data.getBufferStruct(), (nullBitmap is null) ? null : nullBitmap.getBufferStruct(), nNulls);

		if(__p is null)
		{
			throw new ConstructionException("null returned by new");
		}

		this(cast(GArrowHalfFloatArray*) __p, true);
	}

	/**
	 *
	 * Params:
	 *     i = The index of the target value.
	 * Returns: The @i-th value.
	 *
	 * Since: 11.0.0
	 */
	public ushort getValue(long i)
	{
		return garrow_half_float_array_get_value(gArrowHalfFloatArray, i);
	}

	/**
	 * Returns: The raw values.
	 *
	 * Since: 11.0.0
	 */
	public ushort[] getValues()
	{
		long length;

		auto __p = garrow_half_float_array_get_values(gArrowHalfFloatArray, &length);

		return __p[0 .. length];
	}
}
