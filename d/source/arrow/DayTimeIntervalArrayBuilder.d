module arrow.DayTimeIntervalArrayBuilder;

private import arrow.ArrayBuilder;
private import arrow.DayMillisecond;
private import arrow.c.functions;
public  import arrow.c.types;
private import glib.ConstructionException;
private import glib.ErrorG;
private import glib.GException;
private import gobject.ObjectG;


/** */
public class DayTimeIntervalArrayBuilder : ArrayBuilder
{
	/** the main Gtk struct */
	protected GArrowDayTimeIntervalArrayBuilder* gArrowDayTimeIntervalArrayBuilder;

	/** Get the main Gtk struct */
	public GArrowDayTimeIntervalArrayBuilder* getDayTimeIntervalArrayBuilderStruct(bool transferOwnership = false)
	{
		if (transferOwnership)
			ownedRef = false;
		return gArrowDayTimeIntervalArrayBuilder;
	}

	/** the main Gtk struct as a void* */
	protected override void* getStruct()
	{
		return cast(void*)gArrowDayTimeIntervalArrayBuilder;
	}

	/**
	 * Sets our main struct and passes it to the parent class.
	 */
	public this (GArrowDayTimeIntervalArrayBuilder* gArrowDayTimeIntervalArrayBuilder, bool ownedRef = false)
	{
		this.gArrowDayTimeIntervalArrayBuilder = gArrowDayTimeIntervalArrayBuilder;
		super(cast(GArrowArrayBuilder*)gArrowDayTimeIntervalArrayBuilder, ownedRef);
	}


	/** */
	public static GType getType()
	{
		return garrow_day_time_interval_array_builder_get_type();
	}

	/**
	 * Returns: A newly created #GArrowDayTimeIntervalArrayBuilder.
	 *
	 * Since: 8.0.0
	 *
	 * Throws: ConstructionException GTK+ fails to create the object.
	 */
	public this()
	{
		auto __p = garrow_day_time_interval_array_builder_new();

		if(__p is null)
		{
			throw new ConstructionException("null returned by new");
		}

		this(cast(GArrowDayTimeIntervalArrayBuilder*) __p, true);
	}

	/**
	 *
	 * Params:
	 *     value = A #GArrowDayMillisecond.
	 * Returns: %TRUE on success, %FALSE if there was an error.
	 *
	 * Since: 8.0.0
	 *
	 * Throws: GException on failure.
	 */
	public bool appendValue(DayMillisecond value)
	{
		GError* err = null;

		auto __p = garrow_day_time_interval_array_builder_append_value(gArrowDayTimeIntervalArrayBuilder, (value is null) ? null : value.getDayMillisecondStruct(), &err) != 0;

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
	 *     values = The array of a #GArrowDayMillisecond.
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
	public bool appendValues(DayMillisecond[] values, bool[] isValids)
	{
		GArrowDayMillisecond*[] valuesArray = new GArrowDayMillisecond*[values.length];
		for ( int i = 0; i < values.length; i++ )
		{
			valuesArray[i] = values[i].getDayMillisecondStruct();
		}


		int[] isValidsArray = new int[isValids.length];
		for ( int i = 0; i < isValids.length; i++ )
		{
			isValidsArray[i] = isValids[i] ? 1 : 0;
		}

		GError* err = null;

		auto __p = garrow_day_time_interval_array_builder_append_values(gArrowDayTimeIntervalArrayBuilder, valuesArray.ptr, cast(long)values.length, isValidsArray.ptr, cast(long)isValids.length, &err) != 0;

		if (err !is null)
		{
			throw new GException( new ErrorG(err) );
		}

		return __p;
	}
}
