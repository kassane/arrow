module arrow.Decimal128Scalar;

private import arrow.Decimal128;
private import arrow.Decimal128DataType;
private import arrow.Scalar;
private import arrow.c.functions;
public  import arrow.c.types;
private import glib.ConstructionException;
private import gobject.ObjectG;


/** */
public class Decimal128Scalar : Scalar
{
	/** the main Gtk struct */
	protected GArrowDecimal128Scalar* gArrowDecimal128Scalar;

	/** Get the main Gtk struct */
	public GArrowDecimal128Scalar* getDecimal128ScalarStruct(bool transferOwnership = false)
	{
		if (transferOwnership)
			ownedRef = false;
		return gArrowDecimal128Scalar;
	}

	/** the main Gtk struct as a void* */
	protected override void* getStruct()
	{
		return cast(void*)gArrowDecimal128Scalar;
	}

	/**
	 * Sets our main struct and passes it to the parent class.
	 */
	public this (GArrowDecimal128Scalar* gArrowDecimal128Scalar, bool ownedRef = false)
	{
		this.gArrowDecimal128Scalar = gArrowDecimal128Scalar;
		super(cast(GArrowScalar*)gArrowDecimal128Scalar, ownedRef);
	}


	/** */
	public static GType getType()
	{
		return garrow_decimal128_scalar_get_type();
	}

	/**
	 *
	 * Params:
	 *     dataType = A #GArrowDecimal128DataType for this scalar.
	 *     value = The value of this scalar.
	 * Returns: A newly created #GArrowDecimal128Scalar.
	 *
	 * Since: 5.0.0
	 *
	 * Throws: ConstructionException GTK+ fails to create the object.
	 */
	public this(Decimal128DataType dataType, Decimal128 value)
	{
		auto __p = garrow_decimal128_scalar_new((dataType is null) ? null : dataType.getDecimal128DataTypeStruct(), (value is null) ? null : value.getDecimal128Struct());

		if(__p is null)
		{
			throw new ConstructionException("null returned by new");
		}

		this(cast(GArrowDecimal128Scalar*) __p, true);
	}

	/**
	 * Returns: The value of this scalar.
	 *
	 * Since: 5.0.0
	 */
	public Decimal128 getValue()
	{
		auto __p = garrow_decimal128_scalar_get_value(gArrowDecimal128Scalar);

		if(__p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(Decimal128)(cast(GArrowDecimal128*) __p);
	}
}
