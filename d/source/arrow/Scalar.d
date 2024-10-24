module arrow.Scalar;

private import arrow.CastOptions;
private import arrow.DataType;
private import arrow.EqualOptions;
private import arrow.c.functions;
public  import arrow.c.types;
private import glib.ErrorG;
private import glib.GException;
private import glib.Str;
private import glib.c.functions;
private import gobject.ObjectG;


/** */
public class Scalar : ObjectG
{
	/** the main Gtk struct */
	protected GArrowScalar* gArrowScalar;

	/** Get the main Gtk struct */
	public GArrowScalar* getScalarStruct(bool transferOwnership = false)
	{
		if (transferOwnership)
			ownedRef = false;
		return gArrowScalar;
	}

	/** the main Gtk struct as a void* */
	protected override void* getStruct()
	{
		return cast(void*)gArrowScalar;
	}

	/**
	 * Sets our main struct and passes it to the parent class.
	 */
	public this (GArrowScalar* gArrowScalar, bool ownedRef = false)
	{
		this.gArrowScalar = gArrowScalar;
		super(cast(GObject*)gArrowScalar, ownedRef);
	}


	/** */
	public static GType getType()
	{
		return garrow_scalar_get_type();
	}

	/**
	 *
	 * Params:
	 *     dataType = A #GArrowDataType for the parsed scalar.
	 *     data = Data to be parsed.
	 * Returns: A newly created #GArrowScalar if the data is parsed successfully,
	 *     %NULL otherwise.
	 *
	 * Since: 5.0.0
	 *
	 * Throws: GException on failure.
	 */
	public static Scalar parse(DataType dataType, ubyte[] data)
	{
		GError* err = null;

		auto __p = garrow_scalar_parse((dataType is null) ? null : dataType.getDataTypeStruct(), data.ptr, cast(size_t)data.length, &err);

		if (err !is null)
		{
			throw new GException( new ErrorG(err) );
		}

		if(__p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(Scalar)(cast(GArrowScalar*) __p, true);
	}

	/**
	 *
	 * Params:
	 *     dataType = A #GArrowDataType of the casted scalar.
	 *     options = A #GArrowCastOptions.
	 * Returns: A newly created casted scalar on success, %NULL on error.
	 *
	 * Since: 5.0.0
	 *
	 * Throws: GException on failure.
	 */
	public Scalar cast_(DataType dataType, CastOptions options)
	{
		GError* err = null;

		auto __p = garrow_scalar_cast(gArrowScalar, (dataType is null) ? null : dataType.getDataTypeStruct(), (options is null) ? null : options.getCastOptionsStruct(), &err);

		if (err !is null)
		{
			throw new GException( new ErrorG(err) );
		}

		if(__p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(Scalar)(cast(GArrowScalar*) __p, true);
	}

	/**
	 *
	 * Params:
	 *     otherScalar = A #GArrowScalar to be compared.
	 * Returns: %TRUE if both of them have the same data, %FALSE
	 *     otherwise.
	 *
	 * Since: 5.0.0
	 */
	public bool equal(Scalar otherScalar)
	{
		return garrow_scalar_equal(gArrowScalar, (otherScalar is null) ? null : otherScalar.getScalarStruct()) != 0;
	}

	/**
	 *
	 * Params:
	 *     otherScalar = A #GArrowScalar to be compared.
	 *     options = A #GArrowEqualOptions.
	 * Returns: %TRUE if both of them have the same data, %FALSE
	 *     otherwise.
	 *
	 * Since: 5.0.0
	 */
	public bool equalOptions(Scalar otherScalar, EqualOptions options)
	{
		return garrow_scalar_equal_options(gArrowScalar, (otherScalar is null) ? null : otherScalar.getScalarStruct(), (options is null) ? null : options.getEqualOptionsStruct()) != 0;
	}

	/**
	 * Returns: The #GArrowDataType for the scalar.
	 *
	 * Since: 5.0.0
	 */
	public DataType getDataType()
	{
		auto __p = garrow_scalar_get_data_type(gArrowScalar);

		if(__p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(DataType)(cast(GArrowDataType*) __p);
	}

	/**
	 * Returns: %TRUE if the scalar is valid, %FALSE otherwise.
	 *
	 * Since: 5.0.0
	 */
	public bool isValid()
	{
		return garrow_scalar_is_valid(gArrowScalar) != 0;
	}

	/**
	 * Returns: The string representation of the scalar.
	 *
	 *     It should be freed with g_free() when no longer needed.
	 *
	 * Since: 5.0.0
	 */
	public override string toString()
	{
		auto retStr = garrow_scalar_to_string(gArrowScalar);

		scope(exit) Str.freeString(retStr);
		return Str.toString(retStr);
	}
}
