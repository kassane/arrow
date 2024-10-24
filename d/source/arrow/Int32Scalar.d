module arrow.Int32Scalar;

private import arrow.Scalar;
private import arrow.c.functions;
public  import arrow.c.types;
private import glib.ConstructionException;
private import gobject.ObjectG;


/** */
public class Int32Scalar : Scalar
{
	/** the main Gtk struct */
	protected GArrowInt32Scalar* gArrowInt32Scalar;

	/** Get the main Gtk struct */
	public GArrowInt32Scalar* getInt32ScalarStruct(bool transferOwnership = false)
	{
		if (transferOwnership)
			ownedRef = false;
		return gArrowInt32Scalar;
	}

	/** the main Gtk struct as a void* */
	protected override void* getStruct()
	{
		return cast(void*)gArrowInt32Scalar;
	}

	/**
	 * Sets our main struct and passes it to the parent class.
	 */
	public this (GArrowInt32Scalar* gArrowInt32Scalar, bool ownedRef = false)
	{
		this.gArrowInt32Scalar = gArrowInt32Scalar;
		super(cast(GArrowScalar*)gArrowInt32Scalar, ownedRef);
	}


	/** */
	public static GType getType()
	{
		return garrow_int32_scalar_get_type();
	}

	/**
	 *
	 * Params:
	 *     value = The value of this scalar.
	 * Returns: A newly created #GArrowInt32Scalar.
	 *
	 * Since: 5.0.0
	 *
	 * Throws: ConstructionException GTK+ fails to create the object.
	 */
	public this(int value)
	{
		auto __p = garrow_int32_scalar_new(value);

		if(__p is null)
		{
			throw new ConstructionException("null returned by new");
		}

		this(cast(GArrowInt32Scalar*) __p, true);
	}

	/**
	 * Returns: The value of this scalar.
	 *
	 * Since: 5.0.0
	 */
	public int getValue()
	{
		return garrow_int32_scalar_get_value(gArrowInt32Scalar);
	}
}
