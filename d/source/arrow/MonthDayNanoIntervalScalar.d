module arrow.MonthDayNanoIntervalScalar;

private import arrow.MonthDayNano;
private import arrow.Scalar;
private import arrow.c.functions;
public  import arrow.c.types;
private import glib.ConstructionException;
private import gobject.ObjectG;


/** */
public class MonthDayNanoIntervalScalar : Scalar
{
	/** the main Gtk struct */
	protected GArrowMonthDayNanoIntervalScalar* gArrowMonthDayNanoIntervalScalar;

	/** Get the main Gtk struct */
	public GArrowMonthDayNanoIntervalScalar* getMonthDayNanoIntervalScalarStruct(bool transferOwnership = false)
	{
		if (transferOwnership)
			ownedRef = false;
		return gArrowMonthDayNanoIntervalScalar;
	}

	/** the main Gtk struct as a void* */
	protected override void* getStruct()
	{
		return cast(void*)gArrowMonthDayNanoIntervalScalar;
	}

	/**
	 * Sets our main struct and passes it to the parent class.
	 */
	public this (GArrowMonthDayNanoIntervalScalar* gArrowMonthDayNanoIntervalScalar, bool ownedRef = false)
	{
		this.gArrowMonthDayNanoIntervalScalar = gArrowMonthDayNanoIntervalScalar;
		super(cast(GArrowScalar*)gArrowMonthDayNanoIntervalScalar, ownedRef);
	}


	/** */
	public static GType getType()
	{
		return garrow_month_day_nano_interval_scalar_get_type();
	}

	/**
	 *
	 * Params:
	 *     value = The value of GArrowMonthDayNano.
	 * Returns: A newly created #GArrowMonthDayNanoIntervalScalar.
	 *
	 * Since: 8.0.0
	 *
	 * Throws: ConstructionException GTK+ fails to create the object.
	 */
	public this(MonthDayNano value)
	{
		auto __p = garrow_month_day_nano_interval_scalar_new((value is null) ? null : value.getMonthDayNanoStruct());

		if(__p is null)
		{
			throw new ConstructionException("null returned by new");
		}

		this(cast(GArrowMonthDayNanoIntervalScalar*) __p, true);
	}

	/**
	 * Returns: The value of this scalar.
	 *
	 * Since: 8.0.0
	 */
	public MonthDayNano getValue()
	{
		auto __p = garrow_month_day_nano_interval_scalar_get_value(gArrowMonthDayNanoIntervalScalar);

		if(__p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(MonthDayNano)(cast(GArrowMonthDayNano*) __p);
	}
}
