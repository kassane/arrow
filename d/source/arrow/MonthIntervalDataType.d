module arrow.MonthIntervalDataType;

private import arrow.IntervalDataType;
private import arrow.c.functions;
public  import arrow.c.types;
private import glib.ConstructionException;
private import gobject.ObjectG;


/** */
public class MonthIntervalDataType : IntervalDataType
{
	/** the main Gtk struct */
	protected GArrowMonthIntervalDataType* gArrowMonthIntervalDataType;

	/** Get the main Gtk struct */
	public GArrowMonthIntervalDataType* getMonthIntervalDataTypeStruct(bool transferOwnership = false)
	{
		if (transferOwnership)
			ownedRef = false;
		return gArrowMonthIntervalDataType;
	}

	/** the main Gtk struct as a void* */
	protected override void* getStruct()
	{
		return cast(void*)gArrowMonthIntervalDataType;
	}

	/**
	 * Sets our main struct and passes it to the parent class.
	 */
	public this (GArrowMonthIntervalDataType* gArrowMonthIntervalDataType, bool ownedRef = false)
	{
		this.gArrowMonthIntervalDataType = gArrowMonthIntervalDataType;
		super(cast(GArrowIntervalDataType*)gArrowMonthIntervalDataType, ownedRef);
	}


	/** */
	public static GType getType()
	{
		return garrow_month_interval_data_type_get_type();
	}

	/**
	 * Returns: The newly created month interval data type.
	 *
	 * Since: 7.0.0
	 *
	 * Throws: ConstructionException GTK+ fails to create the object.
	 */
	public this()
	{
		auto __p = garrow_month_interval_data_type_new();

		if(__p is null)
		{
			throw new ConstructionException("null returned by new");
		}

		this(cast(GArrowMonthIntervalDataType*) __p, true);
	}
}
