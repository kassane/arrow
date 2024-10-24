module arrow.Int8Scalar;

private import arrow.Scalar;
private import arrow.c.functions;
public  import arrow.c.types;
private import glib.ConstructionException;
private import gobject.ObjectG;


/** */
public class Int8Scalar : Scalar
{
	/** the main Gtk struct */
	protected GArrowInt8Scalar* gArrowInt8Scalar;

	/** Get the main Gtk struct */
	public GArrowInt8Scalar* getInt8ScalarStruct(bool transferOwnership = false)
	{
		if (transferOwnership)
			ownedRef = false;
		return gArrowInt8Scalar;
	}

	/** the main Gtk struct as a void* */
	protected override void* getStruct()
	{
		return cast(void*)gArrowInt8Scalar;
	}

	/**
	 * Sets our main struct and passes it to the parent class.
	 */
	public this (GArrowInt8Scalar* gArrowInt8Scalar, bool ownedRef = false)
	{
		this.gArrowInt8Scalar = gArrowInt8Scalar;
		super(cast(GArrowScalar*)gArrowInt8Scalar, ownedRef);
	}


	/** */
	public static GType getType()
	{
		return garrow_int8_scalar_get_type();
	}

	/**
	 *
	 * Params:
	 *     value = The value of this scalar.
	 * Returns: A newly created #GArrowInt8Scalar.
	 *
	 * Since: 5.0.0
	 *
	 * Throws: ConstructionException GTK+ fails to create the object.
	 */
	public this(byte value)
	{
		auto __p = garrow_int8_scalar_new(value);

		if(__p is null)
		{
			throw new ConstructionException("null returned by new");
		}

		this(cast(GArrowInt8Scalar*) __p, true);
	}

	/**
	 * Returns: The value of this scalar.
	 *
	 * Since: 5.0.0
	 */
	public byte getValue()
	{
		return garrow_int8_scalar_get_value(gArrowInt8Scalar);
	}
}
