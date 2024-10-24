module arrow.MonthDayNanoIntervalArrayBuilder;

private import arrow.ArrayBuilder;
private import arrow.MonthDayNano;
private import arrow.c.functions;
public  import arrow.c.types;
private import glib.ConstructionException;
private import glib.ErrorG;
private import glib.GException;
private import gobject.ObjectG;


/** */
public class MonthDayNanoIntervalArrayBuilder : ArrayBuilder
{
	/** the main Gtk struct */
	protected GArrowMonthDayNanoIntervalArrayBuilder* gArrowMonthDayNanoIntervalArrayBuilder;

	/** Get the main Gtk struct */
	public GArrowMonthDayNanoIntervalArrayBuilder* getMonthDayNanoIntervalArrayBuilderStruct(bool transferOwnership = false)
	{
		if (transferOwnership)
			ownedRef = false;
		return gArrowMonthDayNanoIntervalArrayBuilder;
	}

	/** the main Gtk struct as a void* */
	protected override void* getStruct()
	{
		return cast(void*)gArrowMonthDayNanoIntervalArrayBuilder;
	}

	/**
	 * Sets our main struct and passes it to the parent class.
	 */
	public this (GArrowMonthDayNanoIntervalArrayBuilder* gArrowMonthDayNanoIntervalArrayBuilder, bool ownedRef = false)
	{
		this.gArrowMonthDayNanoIntervalArrayBuilder = gArrowMonthDayNanoIntervalArrayBuilder;
		super(cast(GArrowArrayBuilder*)gArrowMonthDayNanoIntervalArrayBuilder, ownedRef);
	}


	/** */
	public static GType getType()
	{
		return garrow_month_day_nano_interval_array_builder_get_type();
	}

	/**
	 * Returns: A newly created #GArrowMonthDayNanoIntervalArrayBuilder.
	 *
	 * Since: 8.0.0
	 *
	 * Throws: ConstructionException GTK+ fails to create the object.
	 */
	public this()
	{
		auto __p = garrow_month_day_nano_interval_array_builder_new();

		if(__p is null)
		{
			throw new ConstructionException("null returned by new");
		}

		this(cast(GArrowMonthDayNanoIntervalArrayBuilder*) __p, true);
	}

	/**
	 *
	 * Params:
	 *     value = A #GArrowMonthDayNano.
	 * Returns: %TRUE on success, %FALSE if there was an error.
	 *
	 * Since: 8.0.0
	 *
	 * Throws: GException on failure.
	 */
	public bool appendValue(MonthDayNano value)
	{
		GError* err = null;

		auto __p = garrow_month_day_nano_interval_array_builder_append_value(gArrowMonthDayNanoIntervalArrayBuilder, (value is null) ? null : value.getMonthDayNanoStruct(), &err) != 0;

		if (err !is null)
		{
			throw new GException( new ErrorG(err) );
		}

		return __p;
	}

	/**
	 * Append multiple values at once. It's more efficient than multiple
	 * `append` calls.
	 *
	 * Params:
	 *     values = The array of a #GArrowMonthDayNano.
	 *     isValids = The array of
	 *         boolean that shows whether the Nth value is valid or not. If the
	 *         Nth `is_valids` is %TRUE, the Nth `values` is valid value. Otherwise
	 *         the Nth value is null value.
	 *
	 * Returns: %TRUE on success, %FALSE if there was an error.
	 *
	 * Since: 8.0.0
	 *
	 * Throws: GException on failure.
	 */
	public bool appendValues(MonthDayNano[] values, bool[] isValids)
	{
		GArrowMonthDayNano*[] valuesArray = new GArrowMonthDayNano*[values.length];
		for ( int i = 0; i < values.length; i++ )
		{
			valuesArray[i] = values[i].getMonthDayNanoStruct();
		}


		int[] isValidsArray = new int[isValids.length];
		for ( int i = 0; i < isValids.length; i++ )
		{
			isValidsArray[i] = isValids[i] ? 1 : 0;
		}

		GError* err = null;

		auto __p = garrow_month_day_nano_interval_array_builder_append_values(gArrowMonthDayNanoIntervalArrayBuilder, valuesArray.ptr, cast(long)values.length, isValidsArray.ptr, cast(long)isValids.length, &err) != 0;

		if (err !is null)
		{
			throw new GException( new ErrorG(err) );
		}

		return __p;
	}
}
