module arrow.FixedSizeBinaryArrayBuilder;

private import arrow.ArrayBuilder;
private import arrow.FixedSizeBinaryDataType;
private import arrow.c.functions;
public  import arrow.c.types;
private import glib.Bytes;
private import glib.ConstructionException;
private import glib.ErrorG;
private import glib.GException;
private import gobject.ObjectG;


/** */
public class FixedSizeBinaryArrayBuilder : ArrayBuilder
{
	/** the main Gtk struct */
	protected GArrowFixedSizeBinaryArrayBuilder* gArrowFixedSizeBinaryArrayBuilder;

	/** Get the main Gtk struct */
	public GArrowFixedSizeBinaryArrayBuilder* getFixedSizeBinaryArrayBuilderStruct(bool transferOwnership = false)
	{
		if (transferOwnership)
			ownedRef = false;
		return gArrowFixedSizeBinaryArrayBuilder;
	}

	/** the main Gtk struct as a void* */
	protected override void* getStruct()
	{
		return cast(void*)gArrowFixedSizeBinaryArrayBuilder;
	}

	/**
	 * Sets our main struct and passes it to the parent class.
	 */
	public this (GArrowFixedSizeBinaryArrayBuilder* gArrowFixedSizeBinaryArrayBuilder, bool ownedRef = false)
	{
		this.gArrowFixedSizeBinaryArrayBuilder = gArrowFixedSizeBinaryArrayBuilder;
		super(cast(GArrowArrayBuilder*)gArrowFixedSizeBinaryArrayBuilder, ownedRef);
	}


	/** */
	public static GType getType()
	{
		return garrow_fixed_size_binary_array_builder_get_type();
	}

	/**
	 *
	 * Params:
	 *     dataType = A #GArrowFixedSizeBinaryDataType for created array.
	 * Returns: A newly created #GArrowFixedSizeBinaryArrayBuilder.
	 *
	 * Throws: ConstructionException GTK+ fails to create the object.
	 */
	public this(FixedSizeBinaryDataType dataType)
	{
		auto __p = garrow_fixed_size_binary_array_builder_new((dataType is null) ? null : dataType.getFixedSizeBinaryDataTypeStruct());

		if(__p is null)
		{
			throw new ConstructionException("null returned by new");
		}

		this(cast(GArrowFixedSizeBinaryArrayBuilder*) __p, true);
	}

	/**
	 *
	 * Params:
	 *     value = A binary value.
	 * Returns: %TRUE on success, %FALSE if there was an error.
	 *
	 * Since: 3.0.0
	 *
	 * Throws: GException on failure.
	 */
	public bool appendValue(ubyte[] value)
	{
		GError* err = null;

		auto __p = garrow_fixed_size_binary_array_builder_append_value(gArrowFixedSizeBinaryArrayBuilder, value.ptr, cast(int)value.length, &err) != 0;

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
	 * Since: 3.0.0
	 *
	 * Throws: GException on failure.
	 */
	public bool appendValueBytes(Bytes value)
	{
		GError* err = null;

		auto __p = garrow_fixed_size_binary_array_builder_append_value_bytes(gArrowFixedSizeBinaryArrayBuilder, (value is null) ? null : value.getBytesStruct(), &err) != 0;

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
	 * Since: 3.0.0
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

		auto __p = garrow_fixed_size_binary_array_builder_append_values(gArrowFixedSizeBinaryArrayBuilder, valuesArray.ptr, cast(long)values.length, isValidsArray.ptr, cast(long)isValids.length, &err) != 0;

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
	 * This is more efficient than
	 * garrow_fixed_size_binary_array_builder_append_values().
	 *
	 * Params:
	 *     values = A #GBytes that contains multiple values.
	 *     isValids = The array of
	 *         boolean that shows whether the Nth value is valid or not. If the
	 *         Nth @is_valids is %TRUE, the Nth @values is valid value. Otherwise
	 *         the Nth value is null value.
	 *
	 * Returns: %TRUE on success, %FALSE if there was an error.
	 *
	 * Since: 3.0.0
	 *
	 * Throws: GException on failure.
	 */
	public bool appendValuesPacked(Bytes values, bool[] isValids)
	{
		int[] isValidsArray = new int[isValids.length];
		for ( int i = 0; i < isValids.length; i++ )
		{
			isValidsArray[i] = isValids[i] ? 1 : 0;
		}

		GError* err = null;

		auto __p = garrow_fixed_size_binary_array_builder_append_values_packed(gArrowFixedSizeBinaryArrayBuilder, (values is null) ? null : values.getBytesStruct(), isValidsArray.ptr, cast(long)isValids.length, &err) != 0;

		if (err !is null)
		{
			throw new GException( new ErrorG(err) );
		}

		return __p;
	}
}
