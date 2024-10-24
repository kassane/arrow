module arrow.DayTimeIntervalScalar;

private import arrow.DayMillisecond;
private import arrow.Scalar;
private import arrow.c.functions;
public  import arrow.c.types;
private import glib.ConstructionException;
private import gobject.ObjectG;


/** */
public class DayTimeIntervalScalar : Scalar
{
	/** the main Gtk struct */
	protected GArrowDayTimeIntervalScalar* gArrowDayTimeIntervalScalar;

	/** Get the main Gtk struct */
	public GArrowDayTimeIntervalScalar* getDayTimeIntervalScalarStruct(bool transferOwnership = false)
	{
		if (transferOwnership)
			ownedRef = false;
		return gArrowDayTimeIntervalScalar;
	}

	/** the main Gtk struct as a void* */
	protected override void* getStruct()
	{
		return cast(void*)gArrowDayTimeIntervalScalar;
	}

	/**
	 * Sets our main struct and passes it to the parent class.
	 */
	public this (GArrowDayTimeIntervalScalar* gArrowDayTimeIntervalScalar, bool ownedRef = false)
	{
		this.gArrowDayTimeIntervalScalar = gArrowDayTimeIntervalScalar;
		super(cast(GArrowScalar*)gArrowDayTimeIntervalScalar, ownedRef);
	}


	/** */
	public static GType getType()
	{
		return garrow_day_time_interval_scalar_get_type();
	}

	/**
	 *
	 * Params:
	 *     value = The value of GArrowDayMillisecond.
	 * Returns: A newly created #GArrowDayTimeIntervalScalar.
	 *
	 * Since: 8.0.0
	 *
	 * Throws: ConstructionException GTK+ fails to create the object.
	 */
	public this(DayMillisecond value)
	{
		auto __p = garrow_day_time_interval_scalar_new((value is null) ? null : value.getDayMillisecondStruct());

		if(__p is null)
		{
			throw new ConstructionException("null returned by new");
		}

		this(cast(GArrowDayTimeIntervalScalar*) __p, true);
	}

	/**
	 * Returns: The value of this scalar.
	 *
	 * Since: 8.0.0
	 */
	public DayMillisecond getValue()
	{
		auto __p = garrow_day_time_interval_scalar_get_value(gArrowDayTimeIntervalScalar);

		if(__p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(DayMillisecond)(cast(GArrowDayMillisecond*) __p);
	}
}
