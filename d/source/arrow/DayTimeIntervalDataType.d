module arrow.DayTimeIntervalDataType;

private import arrow.IntervalDataType;
private import arrow.c.functions;
public  import arrow.c.types;
private import glib.ConstructionException;
private import gobject.ObjectG;


/** */
public class DayTimeIntervalDataType : IntervalDataType
{
	/** the main Gtk struct */
	protected GArrowDayTimeIntervalDataType* gArrowDayTimeIntervalDataType;

	/** Get the main Gtk struct */
	public GArrowDayTimeIntervalDataType* getDayTimeIntervalDataTypeStruct(bool transferOwnership = false)
	{
		if (transferOwnership)
			ownedRef = false;
		return gArrowDayTimeIntervalDataType;
	}

	/** the main Gtk struct as a void* */
	protected override void* getStruct()
	{
		return cast(void*)gArrowDayTimeIntervalDataType;
	}

	/**
	 * Sets our main struct and passes it to the parent class.
	 */
	public this (GArrowDayTimeIntervalDataType* gArrowDayTimeIntervalDataType, bool ownedRef = false)
	{
		this.gArrowDayTimeIntervalDataType = gArrowDayTimeIntervalDataType;
		super(cast(GArrowIntervalDataType*)gArrowDayTimeIntervalDataType, ownedRef);
	}


	/** */
	public static GType getType()
	{
		return garrow_day_time_interval_data_type_get_type();
	}

	/**
	 * Returns: The newly created day time interval data type.
	 *
	 * Since: 7.0.0
	 *
	 * Throws: ConstructionException GTK+ fails to create the object.
	 */
	public this()
	{
		auto __p = garrow_day_time_interval_data_type_new();

		if(__p is null)
		{
			throw new ConstructionException("null returned by new");
		}

		this(cast(GArrowDayTimeIntervalDataType*) __p, true);
	}
}
