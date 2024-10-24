module arrow.MonthIntervalArray;

private import arrow.Buffer;
private import arrow.NumericArray;
private import arrow.c.functions;
public  import arrow.c.types;
private import glib.ConstructionException;
private import gobject.ObjectG;


/** */
public class MonthIntervalArray : NumericArray
{
	/** the main Gtk struct */
	protected GArrowMonthIntervalArray* gArrowMonthIntervalArray;

	/** Get the main Gtk struct */
	public GArrowMonthIntervalArray* getMonthIntervalArrayStruct(bool transferOwnership = false)
	{
		if (transferOwnership)
			ownedRef = false;
		return gArrowMonthIntervalArray;
	}

	/** the main Gtk struct as a void* */
	protected override void* getStruct()
	{
		return cast(void*)gArrowMonthIntervalArray;
	}

	/**
	 * Sets our main struct and passes it to the parent class.
	 */
	public this (GArrowMonthIntervalArray* gArrowMonthIntervalArray, bool ownedRef = false)
	{
		this.gArrowMonthIntervalArray = gArrowMonthIntervalArray;
		super(cast(GArrowNumericArray*)gArrowMonthIntervalArray, ownedRef);
	}


	/** */
	public static GType getType()
	{
		return garrow_month_interval_array_get_type();
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
	 * Returns: A newly created #GArrowMonthIntervalArray.
	 *
	 * Since: 8.0.0
	 *
	 * Throws: ConstructionException GTK+ fails to create the object.
	 */
	public this(long length, Buffer data, Buffer nullBitmap, long nNulls)
	{
		auto __p = garrow_month_interval_array_new(length, (data is null) ? null : data.getBufferStruct(), (nullBitmap is null) ? null : nullBitmap.getBufferStruct(), nNulls);

		if(__p is null)
		{
			throw new ConstructionException("null returned by new");
		}

		this(cast(GArrowMonthIntervalArray*) __p, true);
	}

	/**
	 *
	 * Params:
	 *     i = The index of the target value.
	 * Returns: The @i-th value.
	 *
	 * Since: 8.0.0
	 */
	public int getValue(long i)
	{
		return garrow_month_interval_array_get_value(gArrowMonthIntervalArray, i);
	}

	/**
	 * Returns: The raw values.
	 *
	 * Since: 8.0.0
	 */
	public int[] getValues()
	{
		long length;

		auto __p = garrow_month_interval_array_get_values(gArrowMonthIntervalArray, &length);

		return __p[0 .. length];
	}
}
