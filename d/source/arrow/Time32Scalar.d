module arrow.Time32Scalar;

private import arrow.Scalar;
private import arrow.Time32DataType;
private import arrow.c.functions;
public  import arrow.c.types;
private import glib.ConstructionException;
private import gobject.ObjectG;


/** */
public class Time32Scalar : Scalar
{
	/** the main Gtk struct */
	protected GArrowTime32Scalar* gArrowTime32Scalar;

	/** Get the main Gtk struct */
	public GArrowTime32Scalar* getTime32ScalarStruct(bool transferOwnership = false)
	{
		if (transferOwnership)
			ownedRef = false;
		return gArrowTime32Scalar;
	}

	/** the main Gtk struct as a void* */
	protected override void* getStruct()
	{
		return cast(void*)gArrowTime32Scalar;
	}

	/**
	 * Sets our main struct and passes it to the parent class.
	 */
	public this (GArrowTime32Scalar* gArrowTime32Scalar, bool ownedRef = false)
	{
		this.gArrowTime32Scalar = gArrowTime32Scalar;
		super(cast(GArrowScalar*)gArrowTime32Scalar, ownedRef);
	}


	/** */
	public static GType getType()
	{
		return garrow_time32_scalar_get_type();
	}

	/**
	 *
	 * Params:
	 *     dataType = A #GArrowTime32DataType for this scalar.
	 *     value = The value of this scalar.
	 * Returns: A newly created #GArrowTime32Scalar.
	 *
	 * Since: 5.0.0
	 *
	 * Throws: ConstructionException GTK+ fails to create the object.
	 */
	public this(Time32DataType dataType, int value)
	{
		auto __p = garrow_time32_scalar_new((dataType is null) ? null : dataType.getTime32DataTypeStruct(), value);

		if(__p is null)
		{
			throw new ConstructionException("null returned by new");
		}

		this(cast(GArrowTime32Scalar*) __p, true);
	}

	/**
	 * Returns: The value of this scalar.
	 *
	 * Since: 5.0.0
	 */
	public int getValue()
	{
		return garrow_time32_scalar_get_value(gArrowTime32Scalar);
	}
}
