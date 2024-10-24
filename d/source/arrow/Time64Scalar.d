module arrow.Time64Scalar;

private import arrow.Scalar;
private import arrow.Time64DataType;
private import arrow.c.functions;
public  import arrow.c.types;
private import glib.ConstructionException;
private import gobject.ObjectG;


/** */
public class Time64Scalar : Scalar
{
	/** the main Gtk struct */
	protected GArrowTime64Scalar* gArrowTime64Scalar;

	/** Get the main Gtk struct */
	public GArrowTime64Scalar* getTime64ScalarStruct(bool transferOwnership = false)
	{
		if (transferOwnership)
			ownedRef = false;
		return gArrowTime64Scalar;
	}

	/** the main Gtk struct as a void* */
	protected override void* getStruct()
	{
		return cast(void*)gArrowTime64Scalar;
	}

	/**
	 * Sets our main struct and passes it to the parent class.
	 */
	public this (GArrowTime64Scalar* gArrowTime64Scalar, bool ownedRef = false)
	{
		this.gArrowTime64Scalar = gArrowTime64Scalar;
		super(cast(GArrowScalar*)gArrowTime64Scalar, ownedRef);
	}


	/** */
	public static GType getType()
	{
		return garrow_time64_scalar_get_type();
	}

	/**
	 *
	 * Params:
	 *     dataType = A #GArrowTime64DataType for this scalar.
	 *     value = The value of this scalar.
	 * Returns: A newly created #GArrowTime64Scalar.
	 *
	 * Since: 5.0.0
	 *
	 * Throws: ConstructionException GTK+ fails to create the object.
	 */
	public this(Time64DataType dataType, long value)
	{
		auto __p = garrow_time64_scalar_new((dataType is null) ? null : dataType.getTime64DataTypeStruct(), value);

		if(__p is null)
		{
			throw new ConstructionException("null returned by new");
		}

		this(cast(GArrowTime64Scalar*) __p, true);
	}

	/**
	 * Returns: The value of this scalar.
	 *
	 * Since: 5.0.0
	 */
	public long getValue()
	{
		return garrow_time64_scalar_get_value(gArrowTime64Scalar);
	}
}
