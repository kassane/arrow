module arrow.MonthIntervalScalar;

private import arrow.Scalar;
private import arrow.c.functions;
public  import arrow.c.types;
private import glib.ConstructionException;
private import gobject.ObjectG;


/** */
public class MonthIntervalScalar : Scalar
{
	/** the main Gtk struct */
	protected GArrowMonthIntervalScalar* gArrowMonthIntervalScalar;

	/** Get the main Gtk struct */
	public GArrowMonthIntervalScalar* getMonthIntervalScalarStruct(bool transferOwnership = false)
	{
		if (transferOwnership)
			ownedRef = false;
		return gArrowMonthIntervalScalar;
	}

	/** the main Gtk struct as a void* */
	protected override void* getStruct()
	{
		return cast(void*)gArrowMonthIntervalScalar;
	}

	/**
	 * Sets our main struct and passes it to the parent class.
	 */
	public this (GArrowMonthIntervalScalar* gArrowMonthIntervalScalar, bool ownedRef = false)
	{
		this.gArrowMonthIntervalScalar = gArrowMonthIntervalScalar;
		super(cast(GArrowScalar*)gArrowMonthIntervalScalar, ownedRef);
	}


	/** */
	public static GType getType()
	{
		return garrow_month_interval_scalar_get_type();
	}

	/**
	 *
	 * Params:
	 *     value = The value of this scalar.
	 * Returns: A newly created #GArrowMonthIntervalScalar.
	 *
	 * Since: 8.0.0
	 *
	 * Throws: ConstructionException GTK+ fails to create the object.
	 */
	public this(int value)
	{
		auto __p = garrow_month_interval_scalar_new(value);

		if(__p is null)
		{
			throw new ConstructionException("null returned by new");
		}

		this(cast(GArrowMonthIntervalScalar*) __p, true);
	}

	/**
	 * Returns: The value of this scalar.
	 *
	 * Since: 8.0.0
	 */
	public int getValue()
	{
		return garrow_month_interval_scalar_get_value(gArrowMonthIntervalScalar);
	}
}
