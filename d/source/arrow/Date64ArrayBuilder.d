module arrow.Date64ArrayBuilder;

private import arrow.ArrayBuilder;
private import arrow.c.functions;
public  import arrow.c.types;
private import glib.ConstructionException;
private import glib.ErrorG;
private import glib.GException;
private import gobject.ObjectG;


/** */
public class Date64ArrayBuilder : ArrayBuilder
{
	/** the main Gtk struct */
	protected GArrowDate64ArrayBuilder* gArrowDate64ArrayBuilder;

	/** Get the main Gtk struct */
	public GArrowDate64ArrayBuilder* getDate64ArrayBuilderStruct(bool transferOwnership = false)
	{
		if (transferOwnership)
			ownedRef = false;
		return gArrowDate64ArrayBuilder;
	}

	/** the main Gtk struct as a void* */
	protected override void* getStruct()
	{
		return cast(void*)gArrowDate64ArrayBuilder;
	}

	/**
	 * Sets our main struct and passes it to the parent class.
	 */
	public this (GArrowDate64ArrayBuilder* gArrowDate64ArrayBuilder, bool ownedRef = false)
	{
		this.gArrowDate64ArrayBuilder = gArrowDate64ArrayBuilder;
		super(cast(GArrowArrayBuilder*)gArrowDate64ArrayBuilder, ownedRef);
	}


	/** */
	public static GType getType()
	{
		return garrow_date64_array_builder_get_type();
	}

	/**
	 * Returns: A newly created #GArrowDate64ArrayBuilder.
	 *
	 * Since: 0.7.0
	 *
	 * Throws: ConstructionException GTK+ fails to create the object.
	 */
	public this()
	{
		auto __p = garrow_date64_array_builder_new();

		if(__p is null)
		{
			throw new ConstructionException("null returned by new");
		}

		this(cast(GArrowDate64ArrayBuilder*) __p, true);
	}

	/**
	 *
	 *
	 * Deprecated: Use garrow_date64_array_builder_append_value() instead.
	 *
	 * Params:
	 *     value = The number of milliseconds since UNIX epoch in signed 64bit integer.
	 *
	 * Returns: %TRUE on success, %FALSE if there was an error.
	 *
	 * Since: 0.7.0
	 *
	 * Throws: GException on failure.
	 */
	public bool append(long value)
	{
		GError* err = null;

		auto __p = garrow_date64_array_builder_append(gArrowDate64ArrayBuilder, value, &err) != 0;

		if (err !is null)
		{
			throw new GException( new ErrorG(err) );
		}

		return __p;
	}

	/**
	 *
	 *
	 * Deprecated: Use garrow_array_builder_append_null() instead.
	 *
	 * Returns: %TRUE on success, %FALSE if there was an error.
	 *
	 * Since: 0.7.0
	 *
	 * Throws: GException on failure.
	 */
	public override bool appendNull()
	{
		GError* err = null;

		auto __p = garrow_date64_array_builder_append_null(gArrowDate64ArrayBuilder, &err) != 0;

		if (err !is null)
		{
			throw new GException( new ErrorG(err) );
		}

		return __p;
	}

	/**
	 * Append multiple nulls at once. It's more efficient than multiple
	 * `append_null` calls.
	 *
	 * Deprecated: Use garrow_array_builder_append_nulls() instead.
	 *
	 * Params:
	 *     n = The number of null values to be appended.
	 *
	 * Returns: %TRUE on success, %FALSE if there was an error.
	 *
	 * Since: 0.8.0
	 *
	 * Throws: GException on failure.
	 */
	public override bool appendNulls(long n)
	{
		GError* err = null;

		auto __p = garrow_date64_array_builder_append_nulls(gArrowDate64ArrayBuilder, n, &err) != 0;

		if (err !is null)
		{
			throw new GException( new ErrorG(err) );
		}

		return __p;
	}

	/**
	 *
	 * Params:
	 *     value = The number of milliseconds since UNIX epoch in signed 64bit integer.
	 * Returns: %TRUE on success, %FALSE if there was an error.
	 *
	 * Since: 0.12.0
	 *
	 * Throws: GException on failure.
	 */
	public bool appendValue(long value)
	{
		GError* err = null;

		auto __p = garrow_date64_array_builder_append_value(gArrowDate64ArrayBuilder, value, &err) != 0;

		if (err !is null)
		{
			throw new GException( new ErrorG(err) );
		}

		return __p;
	}

	/**
	 * Append multiple values at once. It's more efficient than multiple
	 * `append` and `append_null` calls.
	 *
	 * Params:
	 *     values = The array of
	 *         the number of milliseconds since UNIX epoch in signed 64bit integer.
	 *     isValids = The array of
	 *         boolean that shows whether the Nth value is valid or not. If the
	 *         Nth `is_valids` is %TRUE, the Nth `values` is valid value. Otherwise
	 *         the Nth value is null value.
	 *
	 * Returns: %TRUE on success, %FALSE if there was an error.
	 *
	 * Since: 0.8.0
	 *
	 * Throws: GException on failure.
	 */
	public bool appendValues(long[] values, bool[] isValids)
	{
		int[] isValidsArray = new int[isValids.length];
		for ( int i = 0; i < isValids.length; i++ )
		{
			isValidsArray[i] = isValids[i] ? 1 : 0;
		}

		GError* err = null;

		auto __p = garrow_date64_array_builder_append_values(gArrowDate64ArrayBuilder, values.ptr, cast(long)values.length, isValidsArray.ptr, cast(long)isValids.length, &err) != 0;

		if (err !is null)
		{
			throw new GException( new ErrorG(err) );
		}

		return __p;
	}
}
