module arrow.HalfFloatArrayBuilder;

private import arrow.ArrayBuilder;
private import arrow.c.functions;
public  import arrow.c.types;
private import glib.ConstructionException;
private import glib.ErrorG;
private import glib.GException;
private import gobject.ObjectG;


/** */
public class HalfFloatArrayBuilder : ArrayBuilder
{
	/** the main Gtk struct */
	protected GArrowHalfFloatArrayBuilder* gArrowHalfFloatArrayBuilder;

	/** Get the main Gtk struct */
	public GArrowHalfFloatArrayBuilder* getHalfFloatArrayBuilderStruct(bool transferOwnership = false)
	{
		if (transferOwnership)
			ownedRef = false;
		return gArrowHalfFloatArrayBuilder;
	}

	/** the main Gtk struct as a void* */
	protected override void* getStruct()
	{
		return cast(void*)gArrowHalfFloatArrayBuilder;
	}

	/**
	 * Sets our main struct and passes it to the parent class.
	 */
	public this (GArrowHalfFloatArrayBuilder* gArrowHalfFloatArrayBuilder, bool ownedRef = false)
	{
		this.gArrowHalfFloatArrayBuilder = gArrowHalfFloatArrayBuilder;
		super(cast(GArrowArrayBuilder*)gArrowHalfFloatArrayBuilder, ownedRef);
	}


	/** */
	public static GType getType()
	{
		return garrow_half_float_array_builder_get_type();
	}

	/**
	 * Returns: A newly created #GArrowHalfFloatArrayBuilder.
	 *
	 * Since: 11.0.0
	 *
	 * Throws: ConstructionException GTK+ fails to create the object.
	 */
	public this()
	{
		auto __p = garrow_half_float_array_builder_new();

		if(__p is null)
		{
			throw new ConstructionException("null returned by new");
		}

		this(cast(GArrowHalfFloatArrayBuilder*) __p, true);
	}

	/**
	 *
	 * Params:
	 *     value = A 16-bit float value.
	 * Returns: %TRUE on success, %FALSE if there was an error.
	 *
	 * Since: 11.0.0
	 *
	 * Throws: GException on failure.
	 */
	public bool appendValue(ushort value)
	{
		GError* err = null;

		auto __p = garrow_half_float_array_builder_append_value(gArrowHalfFloatArrayBuilder, value, &err) != 0;

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
	 *     values = The array of 16-bit float.
	 *     isValids = The array of
	 *         boolean that shows whether the Nth value is valid or not. If the
	 *         Nth `is_valids` is %TRUE, the Nth `values` is valid value. Otherwise
	 *         the Nth value is null value.
	 *
	 * Returns: %TRUE on success, %FALSE if there was an error.
	 *
	 * Since: 11.0.0
	 *
	 * Throws: GException on failure.
	 */
	public bool appendValues(ushort[] values, bool[] isValids)
	{
		int[] isValidsArray = new int[isValids.length];
		for ( int i = 0; i < isValids.length; i++ )
		{
			isValidsArray[i] = isValids[i] ? 1 : 0;
		}

		GError* err = null;

		auto __p = garrow_half_float_array_builder_append_values(gArrowHalfFloatArrayBuilder, values.ptr, cast(long)values.length, isValidsArray.ptr, cast(long)isValids.length, &err) != 0;

		if (err !is null)
		{
			throw new GException( new ErrorG(err) );
		}

		return __p;
	}
}
