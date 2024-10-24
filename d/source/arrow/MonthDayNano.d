module arrow.MonthDayNano;

private import arrow.c.functions;
public  import arrow.c.types;
private import glib.ConstructionException;
private import gobject.ObjectG;


/** */
public class MonthDayNano : ObjectG
{
	/** the main Gtk struct */
	protected GArrowMonthDayNano* gArrowMonthDayNano;

	/** Get the main Gtk struct */
	public GArrowMonthDayNano* getMonthDayNanoStruct(bool transferOwnership = false)
	{
		if (transferOwnership)
			ownedRef = false;
		return gArrowMonthDayNano;
	}

	/** the main Gtk struct as a void* */
	protected override void* getStruct()
	{
		return cast(void*)gArrowMonthDayNano;
	}

	/**
	 * Sets our main struct and passes it to the parent class.
	 */
	public this (GArrowMonthDayNano* gArrowMonthDayNano, bool ownedRef = false)
	{
		this.gArrowMonthDayNano = gArrowMonthDayNano;
		super(cast(GObject*)gArrowMonthDayNano, ownedRef);
	}


	/** */
	public static GType getType()
	{
		return garrow_month_day_nano_get_type();
	}

	/**
	 *
	 * Params:
	 *     month = A month part value.
	 *     day = A day part value.
	 *     nanosecond = The nanosecond value.
	 * Returns: A newly created #GArrowMonthDayNano.
	 *
	 * Since: 8.0.0
	 *
	 * Throws: ConstructionException GTK+ fails to create the object.
	 */
	public this(int month, int day, long nanosecond)
	{
		auto __p = garrow_month_day_nano_new(month, day, nanosecond);

		if(__p is null)
		{
			throw new ConstructionException("null returned by new");
		}

		this(cast(GArrowMonthDayNano*) __p, true);
	}

	/**
	 *
	 * Params:
	 *     otherMonthNanoDay = A #GArrowMonthDayNano to be compared.
	 * Returns: %TRUE if both of them have the same data, %FALSE
	 *     otherwise.
	 *
	 * Since: 8.0.0
	 */
	public bool equal(MonthDayNano otherMonthNanoDay)
	{
		return garrow_month_day_nano_equal(gArrowMonthDayNano, (otherMonthNanoDay is null) ? null : otherMonthNanoDay.getMonthDayNanoStruct()) != 0;
	}
}
