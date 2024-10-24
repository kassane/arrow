module arrow.UInt8Scalar;

private import arrow.Scalar;
private import arrow.c.functions;
public  import arrow.c.types;
private import glib.ConstructionException;
private import gobject.ObjectG;


/** */
public class UInt8Scalar : Scalar
{
	/** the main Gtk struct */
	protected GArrowUInt8Scalar* gArrowUInt8Scalar;

	/** Get the main Gtk struct */
	public GArrowUInt8Scalar* getUInt8ScalarStruct(bool transferOwnership = false)
	{
		if (transferOwnership)
			ownedRef = false;
		return gArrowUInt8Scalar;
	}

	/** the main Gtk struct as a void* */
	protected override void* getStruct()
	{
		return cast(void*)gArrowUInt8Scalar;
	}

	/**
	 * Sets our main struct and passes it to the parent class.
	 */
	public this (GArrowUInt8Scalar* gArrowUInt8Scalar, bool ownedRef = false)
	{
		this.gArrowUInt8Scalar = gArrowUInt8Scalar;
		super(cast(GArrowScalar*)gArrowUInt8Scalar, ownedRef);
	}


	/** */
	public static GType getType()
	{
		return garrow_uint8_scalar_get_type();
	}

	/**
	 *
	 * Params:
	 *     value = The value of this scalar.
	 * Returns: A newly created #GArrowUInt8Scalar.
	 *
	 * Since: 5.0.0
	 *
	 * Throws: ConstructionException GTK+ fails to create the object.
	 */
	public this(ubyte value)
	{
		auto __p = garrow_uint8_scalar_new(value);

		if(__p is null)
		{
			throw new ConstructionException("null returned by new");
		}

		this(cast(GArrowUInt8Scalar*) __p, true);
	}

	/**
	 * Returns: The value of this scalar.
	 *
	 * Since: 5.0.0
	 */
	public ubyte getValue()
	{
		return garrow_uint8_scalar_get_value(gArrowUInt8Scalar);
	}
}
