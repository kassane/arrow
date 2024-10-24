module arrow.Decimal256ArrayBuilder;

private import arrow.Decimal256;
private import arrow.Decimal256DataType;
private import arrow.FixedSizeBinaryArrayBuilder;
private import arrow.c.functions;
public  import arrow.c.types;
private import glib.ConstructionException;
private import glib.ErrorG;
private import glib.GException;
private import gobject.ObjectG;


/** */
public class Decimal256ArrayBuilder : FixedSizeBinaryArrayBuilder
{
	/** the main Gtk struct */
	protected GArrowDecimal256ArrayBuilder* gArrowDecimal256ArrayBuilder;

	/** Get the main Gtk struct */
	public GArrowDecimal256ArrayBuilder* getDecimal256ArrayBuilderStruct(bool transferOwnership = false)
	{
		if (transferOwnership)
			ownedRef = false;
		return gArrowDecimal256ArrayBuilder;
	}

	/** the main Gtk struct as a void* */
	protected override void* getStruct()
	{
		return cast(void*)gArrowDecimal256ArrayBuilder;
	}

	/**
	 * Sets our main struct and passes it to the parent class.
	 */
	public this (GArrowDecimal256ArrayBuilder* gArrowDecimal256ArrayBuilder, bool ownedRef = false)
	{
		this.gArrowDecimal256ArrayBuilder = gArrowDecimal256ArrayBuilder;
		super(cast(GArrowFixedSizeBinaryArrayBuilder*)gArrowDecimal256ArrayBuilder, ownedRef);
	}


	/** */
	public static GType getType()
	{
		return garrow_decimal256_array_builder_get_type();
	}

	/**
	 *
	 * Params:
	 *     dataType = #GArrowDecimal256DataType for the decimal.
	 * Returns: A newly created #GArrowDecimal256ArrayBuilder.
	 *
	 * Since: 3.0.0
	 *
	 * Throws: ConstructionException GTK+ fails to create the object.
	 */
	public this(Decimal256DataType dataType)
	{
		auto __p = garrow_decimal256_array_builder_new((dataType is null) ? null : dataType.getDecimal256DataTypeStruct());

		if(__p is null)
		{
			throw new ConstructionException("null returned by new");
		}

		this(cast(GArrowDecimal256ArrayBuilder*) __p, true);
	}

	/**
	 *
	 * Params:
	 *     value = A decimal value.
	 * Returns: %TRUE on success, %FALSE if there was an error.
	 *
	 * Since: 3.0.0
	 *
	 * Throws: GException on failure.
	 */
	public bool appendValue(Decimal256 value)
	{
		GError* err = null;

		auto __p = garrow_decimal256_array_builder_append_value(gArrowDecimal256ArrayBuilder, (value is null) ? null : value.getDecimal256Struct(), &err) != 0;

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
	 *     values = The array of #GArrowDecimal256.
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
	public bool appendValues(Decimal256[] values, bool[] isValids)
	{
		GArrowDecimal256*[] valuesArray = new GArrowDecimal256*[values.length];
		for ( int i = 0; i < values.length; i++ )
		{
			valuesArray[i] = values[i].getDecimal256Struct();
		}


		int[] isValidsArray = new int[isValids.length];
		for ( int i = 0; i < isValids.length; i++ )
		{
			isValidsArray[i] = isValids[i] ? 1 : 0;
		}

		GError* err = null;

		auto __p = garrow_decimal256_array_builder_append_values(gArrowDecimal256ArrayBuilder, valuesArray.ptr, cast(long)values.length, isValidsArray.ptr, cast(long)isValids.length, &err) != 0;

		if (err !is null)
		{
			throw new GException( new ErrorG(err) );
		}

		return __p;
	}
}
