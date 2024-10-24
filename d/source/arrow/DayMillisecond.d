module arrow.DayMillisecond;

private import arrow.c.functions;
public  import arrow.c.types;
private import glib.ConstructionException;
private import gobject.ObjectG;


/** */
public class DayMillisecond : ObjectG
{
	/** the main Gtk struct */
	protected GArrowDayMillisecond* gArrowDayMillisecond;

	/** Get the main Gtk struct */
	public GArrowDayMillisecond* getDayMillisecondStruct(bool transferOwnership = false)
	{
		if (transferOwnership)
			ownedRef = false;
		return gArrowDayMillisecond;
	}

	/** the main Gtk struct as a void* */
	protected override void* getStruct()
	{
		return cast(void*)gArrowDayMillisecond;
	}

	/**
	 * Sets our main struct and passes it to the parent class.
	 */
	public this (GArrowDayMillisecond* gArrowDayMillisecond, bool ownedRef = false)
	{
		this.gArrowDayMillisecond = gArrowDayMillisecond;
		super(cast(GObject*)gArrowDayMillisecond, ownedRef);
	}


	/** */
	public static GType getType()
	{
		return garrow_day_millisecond_get_type();
	}

	/**
	 *
	 * Params:
	 *     day = A day part value.
	 *     millisecond = A millisecond part value.
	 * Returns: A newly created #GArrowDayMillisecond.
	 *
	 * Since: 8.0.0
	 *
	 * Throws: ConstructionException GTK+ fails to create the object.
	 */
	public this(int day, int millisecond)
	{
		auto __p = garrow_day_millisecond_new(day, millisecond);

		if(__p is null)
		{
			throw new ConstructionException("null returned by new");
		}

		this(cast(GArrowDayMillisecond*) __p, true);
	}

	/**
	 *
	 * Params:
	 *     otherDayMillisecond = A #GArrowDayMillisecond to be compared.
	 * Returns: %TRUE if both of them have the same data, %FALSE
	 *     otherwise.
	 *
	 * Since: 8.0.0
	 */
	public bool equal(DayMillisecond otherDayMillisecond)
	{
		return garrow_day_millisecond_equal(gArrowDayMillisecond, (otherDayMillisecond is null) ? null : otherDayMillisecond.getDayMillisecondStruct()) != 0;
	}

	/**
	 *
	 * Params:
	 *     otherDayMillisecond = A #GArrowDayMillisecond to be compared.
	 * Returns: %TRUE if the value is less than the other value,
	 *     %FALSE otherwise.
	 *
	 * Since: 8.0.0
	 */
	public bool lessThan(DayMillisecond otherDayMillisecond)
	{
		return garrow_day_millisecond_less_than(gArrowDayMillisecond, (otherDayMillisecond is null) ? null : otherDayMillisecond.getDayMillisecondStruct()) != 0;
	}
}
