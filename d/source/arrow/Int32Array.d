module arrow.Int32Array;

private import arrow.Buffer;
private import arrow.NumericArray;
private import arrow.c.functions;
public  import arrow.c.types;
private import glib.ConstructionException;
private import glib.ErrorG;
private import glib.GException;
private import gobject.ObjectG;


/** */
public class Int32Array : NumericArray
{
	/** the main Gtk struct */
	protected GArrowInt32Array* gArrowInt32Array;

	/** Get the main Gtk struct */
	public GArrowInt32Array* getInt32ArrayStruct(bool transferOwnership = false)
	{
		if (transferOwnership)
			ownedRef = false;
		return gArrowInt32Array;
	}

	/** the main Gtk struct as a void* */
	protected override void* getStruct()
	{
		return cast(void*)gArrowInt32Array;
	}

	/**
	 * Sets our main struct and passes it to the parent class.
	 */
	public this (GArrowInt32Array* gArrowInt32Array, bool ownedRef = false)
	{
		this.gArrowInt32Array = gArrowInt32Array;
		super(cast(GArrowNumericArray*)gArrowInt32Array, ownedRef);
	}


	/** */
	public static GType getType()
	{
		return garrow_int32_array_get_type();
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
	 * Returns: A newly created #GArrowInt32Array.
	 *
	 * Since: 0.4.0
	 *
	 * Throws: ConstructionException GTK+ fails to create the object.
	 */
	public this(long length, Buffer data, Buffer nullBitmap, long nNulls)
	{
		auto __p = garrow_int32_array_new(length, (data is null) ? null : data.getBufferStruct(), (nullBitmap is null) ? null : nullBitmap.getBufferStruct(), nNulls);

		if(__p is null)
		{
			throw new ConstructionException("null returned by new");
		}

		this(cast(GArrowInt32Array*) __p, true);
	}

	/**
	 *
	 * Params:
	 *     i = The index of the target value.
	 * Returns: The @i-th value.
	 */
	public int getValue(long i)
	{
		return garrow_int32_array_get_value(gArrowInt32Array, i);
	}

	/**
	 * Returns: The raw values.
	 */
	public int[] getValues()
	{
		long length;

		auto __p = garrow_int32_array_get_values(gArrowInt32Array, &length);

		return __p[0 .. length];
	}

	/**
	 * Returns: The value of the computed sum on success,
	 *     If an error is occurred, the returned value is untrustful value.
	 *
	 * Since: 0.13.0
	 *
	 * Throws: GException on failure.
	 */
	public long sum()
	{
		GError* err = null;

		auto __p = garrow_int32_array_sum(gArrowInt32Array, &err);

		if (err !is null)
		{
			throw new GException( new ErrorG(err) );
		}

		return __p;
	}
}