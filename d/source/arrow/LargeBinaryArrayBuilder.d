module arrow.LargeBinaryArrayBuilder;

private import arrow.ArrayBuilder;
private import arrow.c.functions;
public  import arrow.c.types;
private import glib.Bytes;
private import glib.ConstructionException;
private import glib.ErrorG;
private import glib.GException;
private import gobject.ObjectG;


/** */
public class LargeBinaryArrayBuilder : ArrayBuilder
{
	/** the main Gtk struct */
	protected GArrowLargeBinaryArrayBuilder* gArrowLargeBinaryArrayBuilder;

	/** Get the main Gtk struct */
	public GArrowLargeBinaryArrayBuilder* getLargeBinaryArrayBuilderStruct(bool transferOwnership = false)
	{
		if (transferOwnership)
			ownedRef = false;
		return gArrowLargeBinaryArrayBuilder;
	}

	/** the main Gtk struct as a void* */
	protected override void* getStruct()
	{
		return cast(void*)gArrowLargeBinaryArrayBuilder;
	}

	/**
	 * Sets our main struct and passes it to the parent class.
	 */
	public this (GArrowLargeBinaryArrayBuilder* gArrowLargeBinaryArrayBuilder, bool ownedRef = false)
	{
		this.gArrowLargeBinaryArrayBuilder = gArrowLargeBinaryArrayBuilder;
		super(cast(GArrowArrayBuilder*)gArrowLargeBinaryArrayBuilder, ownedRef);
	}


	/** */
	public static GType getType()
	{
		return garrow_large_binary_array_builder_get_type();
	}

	/**
	 * Returns: A newly created #GArrowLargeBinaryArrayBuilder.
	 *
	 * Since: 0.16.0
	 *
	 * Throws: ConstructionException GTK+ fails to create the object.
	 */
	public this()
	{
		auto __p = garrow_large_binary_array_builder_new();

		if(__p is null)
		{
			throw new ConstructionException("null returned by new");
		}

		this(cast(GArrowLargeBinaryArrayBuilder*) __p, true);
	}

	/**
	 *
	 *
	 * Deprecated: Use garrow_array_builder_append_null() instead.
	 *
	 * Returns: %TRUE on success, %FALSE if there was an error.
	 *
	 * Since: 0.16.0
	 *
	 * Throws: GException on failure.
	 */
	public override bool appendNull()
	{
		GError* err = null;

		auto __p = garrow_large_binary_array_builder_append_null(gArrowLargeBinaryArrayBuilder, &err) != 0;

		if (err !is null)
		{
			throw new GException( new ErrorG(err) );
		}

		return __p;
	}

	/**
	 *
	 *
	 * Deprecated: Use garrow_array_builder_append_nulls() instead.
	 *
	 * Params:
	 *     n = The number of null values to be appended.
	 *
	 * Returns: %TRUE on success, %FALSE if there was an error.
	 *
	 * Since: 0.16.0
	 *
	 * Throws: GException on failure.
	 */
	public override bool appendNulls(long n)
	{
		GError* err = null;

		auto __p = garrow_large_binary_array_builder_append_nulls(gArrowLargeBinaryArrayBuilder, n, &err) != 0;

		if (err !is null)
		{
			throw new GException( new ErrorG(err) );
		}

		return __p;
	}

	/**
	 *
	 * Params:
	 *     value = A binary value.
	 * Returns: %TRUE on success, %FALSE if there was an error.
	 *
	 * Since: 0.16.0
	 *
	 * Throws: GException on failure.
	 */
	public bool appendValue(ubyte[] value)
	{
		GError* err = null;

		auto __p = garrow_large_binary_array_builder_append_value(gArrowLargeBinaryArrayBuilder, value.ptr, cast(long)value.length, &err) != 0;

		if (err !is null)
		{
			throw new GException( new ErrorG(err) );
		}

		return __p;
	}

	/**
	 *
	 * Params:
	 *     value = A binary value.
	 * Returns: %TRUE on success, %FALSE if there was an error.
	 *
	 * Since: 0.16.0
	 *
	 * Throws: GException on failure.
	 */
	public bool appendValueBytes(Bytes value)
	{
		GError* err = null;

		auto __p = garrow_large_binary_array_builder_append_value_bytes(gArrowLargeBinaryArrayBuilder, (value is null) ? null : value.getBytesStruct(), &err) != 0;

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
	 *     values = The array of #GBytes.
	 *     isValids = The array of
	 *         boolean that shows whether the Nth value is valid or not. If the
	 *         Nth @is_valids is %TRUE, the Nth @values is valid value. Otherwise
	 *         the Nth value is null value.
	 *
	 * Returns: %TRUE on success, %FALSE if there was an error.
	 *
	 * Since: 0.16.0
	 *
	 * Throws: GException on failure.
	 */
	public bool appendValues(Bytes[] values, bool[] isValids)
	{
		GBytes*[] valuesArray = new GBytes*[values.length];
		for ( int i = 0; i < values.length; i++ )
		{
			valuesArray[i] = values[i].getBytesStruct();
		}


		int[] isValidsArray = new int[isValids.length];
		for ( int i = 0; i < isValids.length; i++ )
		{
			isValidsArray[i] = isValids[i] ? 1 : 0;
		}

		GError* err = null;

		auto __p = garrow_large_binary_array_builder_append_values(gArrowLargeBinaryArrayBuilder, valuesArray.ptr, cast(long)values.length, isValidsArray.ptr, cast(long)isValids.length, &err) != 0;

		if (err !is null)
		{
			throw new GException( new ErrorG(err) );
		}

		return __p;
	}
}
