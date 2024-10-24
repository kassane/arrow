module arrow.MonthDayNanoIntervalDataType;

private import arrow.IntervalDataType;
private import arrow.c.functions;
public  import arrow.c.types;
private import glib.ConstructionException;
private import gobject.ObjectG;


/** */
public class MonthDayNanoIntervalDataType : IntervalDataType
{
	/** the main Gtk struct */
	protected GArrowMonthDayNanoIntervalDataType* gArrowMonthDayNanoIntervalDataType;

	/** Get the main Gtk struct */
	public GArrowMonthDayNanoIntervalDataType* getMonthDayNanoIntervalDataTypeStruct(bool transferOwnership = false)
	{
		if (transferOwnership)
			ownedRef = false;
		return gArrowMonthDayNanoIntervalDataType;
	}

	/** the main Gtk struct as a void* */
	protected override void* getStruct()
	{
		return cast(void*)gArrowMonthDayNanoIntervalDataType;
	}

	/**
	 * Sets our main struct and passes it to the parent class.
	 */
	public this (GArrowMonthDayNanoIntervalDataType* gArrowMonthDayNanoIntervalDataType, bool ownedRef = false)
	{
		this.gArrowMonthDayNanoIntervalDataType = gArrowMonthDayNanoIntervalDataType;
		super(cast(GArrowIntervalDataType*)gArrowMonthDayNanoIntervalDataType, ownedRef);
	}


	/** */
	public static GType getType()
	{
		return garrow_month_day_nano_interval_data_type_get_type();
	}

	/**
	 * Returns: The newly created month day nano interval data type.
	 *
	 * Since: 7.0.0
	 *
	 * Throws: ConstructionException GTK+ fails to create the object.
	 */
	public this()
	{
		auto __p = garrow_month_day_nano_interval_data_type_new();

		if(__p is null)
		{
			throw new ConstructionException("null returned by new");
		}

		this(cast(GArrowMonthDayNanoIntervalDataType*) __p, true);
	}
}
