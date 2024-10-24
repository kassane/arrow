module arrow.DayTimeIntervalArray;

private import arrow.Buffer;
private import arrow.DayMillisecond;
private import arrow.PrimitiveArray;
private import arrow.c.functions;
public  import arrow.c.types;
private import glib.ConstructionException;
private import glib.ListG;
private import gobject.ObjectG;


/** */
public class DayTimeIntervalArray : PrimitiveArray
{
	/** the main Gtk struct */
	protected GArrowDayTimeIntervalArray* gArrowDayTimeIntervalArray;

	/** Get the main Gtk struct */
	public GArrowDayTimeIntervalArray* getDayTimeIntervalArrayStruct(bool transferOwnership = false)
	{
		if (transferOwnership)
			ownedRef = false;
		return gArrowDayTimeIntervalArray;
	}

	/** the main Gtk struct as a void* */
	protected override void* getStruct()
	{
		return cast(void*)gArrowDayTimeIntervalArray;
	}

	/**
	 * Sets our main struct and passes it to the parent class.
	 */
	public this (GArrowDayTimeIntervalArray* gArrowDayTimeIntervalArray, bool ownedRef = false)
	{
		this.gArrowDayTimeIntervalArray = gArrowDayTimeIntervalArray;
		super(cast(GArrowPrimitiveArray*)gArrowDayTimeIntervalArray, ownedRef);
	}


	/** */
	public static GType getType()
	{
		return garrow_day_time_interval_array_get_type();
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
	 * Returns: A newly created #GArrowDayTimeIntervalArray.
	 *
	 * Since: 8.0.0
	 *
	 * Throws: ConstructionException GTK+ fails to create the object.
	 */
	public this(long length, Buffer data, Buffer nullBitmap, long nNulls)
	{
		auto __p = garrow_day_time_interval_array_new(length, (data is null) ? null : data.getBufferStruct(), (nullBitmap is null) ? null : nullBitmap.getBufferStruct(), nNulls);

		if(__p is null)
		{
			throw new ConstructionException("null returned by new");
		}

		this(cast(GArrowDayTimeIntervalArray*) __p, true);
	}

	/**
	 *
	 * Params:
	 *     i = The index of the target value.
	 * Returns: The @i-th value.
	 *
	 * Since: 8.0.0
	 */
	public DayMillisecond getValue(long i)
	{
		auto __p = garrow_day_time_interval_array_get_value(gArrowDayTimeIntervalArray, i);

		if(__p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(DayMillisecond)(cast(GArrowDayMillisecond*) __p, true);
	}

	/**
	 * Returns: The list of #GArrowDayMillisecond.
	 *
	 * Since: 8.0.0
	 */
	public ListG getValues()
	{
		auto __p = garrow_day_time_interval_array_get_values(gArrowDayTimeIntervalArray);

		if(__p is null)
		{
			return null;
		}

		return new ListG(cast(GList*) __p, true);
	}
}
