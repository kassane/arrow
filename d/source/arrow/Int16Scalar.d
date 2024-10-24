module arrow.Int16Scalar;

private import arrow.Scalar;
private import arrow.c.functions;
public  import arrow.c.types;
private import glib.ConstructionException;
private import gobject.ObjectG;


/** */
public class Int16Scalar : Scalar
{
	/** the main Gtk struct */
	protected GArrowInt16Scalar* gArrowInt16Scalar;

	/** Get the main Gtk struct */
	public GArrowInt16Scalar* getInt16ScalarStruct(bool transferOwnership = false)
	{
		if (transferOwnership)
			ownedRef = false;
		return gArrowInt16Scalar;
	}

	/** the main Gtk struct as a void* */
	protected override void* getStruct()
	{
		return cast(void*)gArrowInt16Scalar;
	}

	/**
	 * Sets our main struct and passes it to the parent class.
	 */
	public this (GArrowInt16Scalar* gArrowInt16Scalar, bool ownedRef = false)
	{
		this.gArrowInt16Scalar = gArrowInt16Scalar;
		super(cast(GArrowScalar*)gArrowInt16Scalar, ownedRef);
	}


	/** */
	public static GType getType()
	{
		return garrow_int16_scalar_get_type();
	}

	/**
	 *
	 * Params:
	 *     value = The value of this scalar.
	 * Returns: A newly created #GArrowInt16Scalar.
	 *
	 * Since: 5.0.0
	 *
	 * Throws: ConstructionException GTK+ fails to create the object.
	 */
	public this(short value)
	{
		auto __p = garrow_int16_scalar_new(value);

		if(__p is null)
		{
			throw new ConstructionException("null returned by new");
		}

		this(cast(GArrowInt16Scalar*) __p, true);
	}

	/**
	 * Returns: The value of this scalar.
	 *
	 * Since: 5.0.0
	 */
	public short getValue()
	{
		return garrow_int16_scalar_get_value(gArrowInt16Scalar);
	}
}
