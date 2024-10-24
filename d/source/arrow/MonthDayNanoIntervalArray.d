module arrow.MonthDayNanoIntervalArray;

private import arrow.Buffer;
private import arrow.MonthDayNano;
private import arrow.PrimitiveArray;
private import arrow.c.functions;
public  import arrow.c.types;
private import glib.ConstructionException;
private import glib.ListG;
private import gobject.ObjectG;


/** */
public class MonthDayNanoIntervalArray : PrimitiveArray
{
	/** the main Gtk struct */
	protected GArrowMonthDayNanoIntervalArray* gArrowMonthDayNanoIntervalArray;

	/** Get the main Gtk struct */
	public GArrowMonthDayNanoIntervalArray* getMonthDayNanoIntervalArrayStruct(bool transferOwnership = false)
	{
		if (transferOwnership)
			ownedRef = false;
		return gArrowMonthDayNanoIntervalArray;
	}

	/** the main Gtk struct as a void* */
	protected override void* getStruct()
	{
		return cast(void*)gArrowMonthDayNanoIntervalArray;
	}

	/**
	 * Sets our main struct and passes it to the parent class.
	 */
	public this (GArrowMonthDayNanoIntervalArray* gArrowMonthDayNanoIntervalArray, bool ownedRef = false)
	{
		this.gArrowMonthDayNanoIntervalArray = gArrowMonthDayNanoIntervalArray;
		super(cast(GArrowPrimitiveArray*)gArrowMonthDayNanoIntervalArray, ownedRef);
	}


	/** */
	public static GType getType()
	{
		return garrow_month_day_nano_interval_array_get_type();
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
	 * Returns: A newly created #GArrowMonthDayNanoIntervalArray.
	 *
	 * Since: 8.0.0
	 *
	 * Throws: ConstructionException GTK+ fails to create the object.
	 */
	public this(long length, Buffer data, Buffer nullBitmap, long nNulls)
	{
		auto __p = garrow_month_day_nano_interval_array_new(length, (data is null) ? null : data.getBufferStruct(), (nullBitmap is null) ? null : nullBitmap.getBufferStruct(), nNulls);

		if(__p is null)
		{
			throw new ConstructionException("null returned by new");
		}

		this(cast(GArrowMonthDayNanoIntervalArray*) __p, true);
	}

	/**
	 *
	 * Params:
	 *     i = The index of the target value.
	 * Returns: The @i-th value.
	 *
	 * Since: 8.0.0
	 */
	public MonthDayNano getValue(long i)
	{
		auto __p = garrow_month_day_nano_interval_array_get_value(gArrowMonthDayNanoIntervalArray, i);

		if(__p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(MonthDayNano)(cast(GArrowMonthDayNano*) __p, true);
	}

	/**
	 * Returns: The list of #GArrowMonthDayNano.
	 *
	 * Since: 8.0.0
	 */
	public ListG getValues()
	{
		auto __p = garrow_month_day_nano_interval_array_get_values(gArrowMonthDayNanoIntervalArray);

		if(__p is null)
		{
			return null;
		}

		return new ListG(cast(GList*) __p, true);
	}
}
