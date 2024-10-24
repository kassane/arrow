module arrow.UInt32Scalar;

private import arrow.Scalar;
private import arrow.c.functions;
public  import arrow.c.types;
private import glib.ConstructionException;
private import gobject.ObjectG;


/** */
public class UInt32Scalar : Scalar
{
	/** the main Gtk struct */
	protected GArrowUInt32Scalar* gArrowUInt32Scalar;

	/** Get the main Gtk struct */
	public GArrowUInt32Scalar* getUInt32ScalarStruct(bool transferOwnership = false)
	{
		if (transferOwnership)
			ownedRef = false;
		return gArrowUInt32Scalar;
	}

	/** the main Gtk struct as a void* */
	protected override void* getStruct()
	{
		return cast(void*)gArrowUInt32Scalar;
	}

	/**
	 * Sets our main struct and passes it to the parent class.
	 */
	public this (GArrowUInt32Scalar* gArrowUInt32Scalar, bool ownedRef = false)
	{
		this.gArrowUInt32Scalar = gArrowUInt32Scalar;
		super(cast(GArrowScalar*)gArrowUInt32Scalar, ownedRef);
	}


	/** */
	public static GType getType()
	{
		return garrow_uint32_scalar_get_type();
	}

	/**
	 *
	 * Params:
	 *     value = The value of this scalar.
	 * Returns: A newly created #GArrowUInt32Scalar.
	 *
	 * Since: 5.0.0
	 *
	 * Throws: ConstructionException GTK+ fails to create the object.
	 */
	public this(uint value)
	{
		auto __p = garrow_uint32_scalar_new(value);

		if(__p is null)
		{
			throw new ConstructionException("null returned by new");
		}

		this(cast(GArrowUInt32Scalar*) __p, true);
	}

	/**
	 * Returns: The value of this scalar.
	 *
	 * Since: 5.0.0
	 */
	public uint getValue()
	{
		return garrow_uint32_scalar_get_value(gArrowUInt32Scalar);
	}
}
