module arrow.Decimal256Scalar;

private import arrow.Decimal256;
private import arrow.Decimal256DataType;
private import arrow.Scalar;
private import arrow.c.functions;
public  import arrow.c.types;
private import glib.ConstructionException;
private import gobject.ObjectG;


/** */
public class Decimal256Scalar : Scalar
{
	/** the main Gtk struct */
	protected GArrowDecimal256Scalar* gArrowDecimal256Scalar;

	/** Get the main Gtk struct */
	public GArrowDecimal256Scalar* getDecimal256ScalarStruct(bool transferOwnership = false)
	{
		if (transferOwnership)
			ownedRef = false;
		return gArrowDecimal256Scalar;
	}

	/** the main Gtk struct as a void* */
	protected override void* getStruct()
	{
		return cast(void*)gArrowDecimal256Scalar;
	}

	/**
	 * Sets our main struct and passes it to the parent class.
	 */
	public this (GArrowDecimal256Scalar* gArrowDecimal256Scalar, bool ownedRef = false)
	{
		this.gArrowDecimal256Scalar = gArrowDecimal256Scalar;
		super(cast(GArrowScalar*)gArrowDecimal256Scalar, ownedRef);
	}


	/** */
	public static GType getType()
	{
		return garrow_decimal256_scalar_get_type();
	}

	/**
	 *
	 * Params:
	 *     dataType = A #GArrowDecimal256DataType for this scalar.
	 *     value = The value of this scalar.
	 * Returns: A newly created #GArrowDecimal256Scalar.
	 *
	 * Since: 5.0.0
	 *
	 * Throws: ConstructionException GTK+ fails to create the object.
	 */
	public this(Decimal256DataType dataType, Decimal256 value)
	{
		auto __p = garrow_decimal256_scalar_new((dataType is null) ? null : dataType.getDecimal256DataTypeStruct(), (value is null) ? null : value.getDecimal256Struct());

		if(__p is null)
		{
			throw new ConstructionException("null returned by new");
		}

		this(cast(GArrowDecimal256Scalar*) __p, true);
	}

	/**
	 * Returns: The value of this scalar.
	 *
	 * Since: 5.0.0
	 */
	public Decimal256 getValue()
	{
		auto __p = garrow_decimal256_scalar_get_value(gArrowDecimal256Scalar);

		if(__p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(Decimal256)(cast(GArrowDecimal256*) __p);
	}
}
