module arrow.UInt16Scalar;

private import arrow.Scalar;
private import arrow.c.functions;
public  import arrow.c.types;
private import glib.ConstructionException;
private import gobject.ObjectG;


/** */
public class UInt16Scalar : Scalar
{
	/** the main Gtk struct */
	protected GArrowUInt16Scalar* gArrowUInt16Scalar;

	/** Get the main Gtk struct */
	public GArrowUInt16Scalar* getUInt16ScalarStruct(bool transferOwnership = false)
	{
		if (transferOwnership)
			ownedRef = false;
		return gArrowUInt16Scalar;
	}

	/** the main Gtk struct as a void* */
	protected override void* getStruct()
	{
		return cast(void*)gArrowUInt16Scalar;
	}

	/**
	 * Sets our main struct and passes it to the parent class.
	 */
	public this (GArrowUInt16Scalar* gArrowUInt16Scalar, bool ownedRef = false)
	{
		this.gArrowUInt16Scalar = gArrowUInt16Scalar;
		super(cast(GArrowScalar*)gArrowUInt16Scalar, ownedRef);
	}


	/** */
	public static GType getType()
	{
		return garrow_uint16_scalar_get_type();
	}

	/**
	 *
	 * Params:
	 *     value = The value of this scalar.
	 * Returns: A newly created #GArrowUInt16Scalar.
	 *
	 * Since: 5.0.0
	 *
	 * Throws: ConstructionException GTK+ fails to create the object.
	 */
	public this(ushort value)
	{
		auto __p = garrow_uint16_scalar_new(value);

		if(__p is null)
		{
			throw new ConstructionException("null returned by new");
		}

		this(cast(GArrowUInt16Scalar*) __p, true);
	}

	/**
	 * Returns: The value of this scalar.
	 *
	 * Since: 5.0.0
	 */
	public ushort getValue()
	{
		return garrow_uint16_scalar_get_value(gArrowUInt16Scalar);
	}
}
