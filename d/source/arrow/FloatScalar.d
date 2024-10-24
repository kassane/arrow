module arrow.FloatScalar;

private import arrow.Scalar;
private import arrow.c.functions;
public  import arrow.c.types;
private import glib.ConstructionException;
private import gobject.ObjectG;


/** */
public class FloatScalar : Scalar
{
	/** the main Gtk struct */
	protected GArrowFloatScalar* gArrowFloatScalar;

	/** Get the main Gtk struct */
	public GArrowFloatScalar* getFloatScalarStruct(bool transferOwnership = false)
	{
		if (transferOwnership)
			ownedRef = false;
		return gArrowFloatScalar;
	}

	/** the main Gtk struct as a void* */
	protected override void* getStruct()
	{
		return cast(void*)gArrowFloatScalar;
	}

	/**
	 * Sets our main struct and passes it to the parent class.
	 */
	public this (GArrowFloatScalar* gArrowFloatScalar, bool ownedRef = false)
	{
		this.gArrowFloatScalar = gArrowFloatScalar;
		super(cast(GArrowScalar*)gArrowFloatScalar, ownedRef);
	}


	/** */
	public static GType getType()
	{
		return garrow_float_scalar_get_type();
	}

	/**
	 *
	 * Params:
	 *     value = The value of this scalar.
	 * Returns: A newly created #GArrowFloatScalar.
	 *
	 * Since: 5.0.0
	 *
	 * Throws: ConstructionException GTK+ fails to create the object.
	 */
	public this(float value)
	{
		auto __p = garrow_float_scalar_new(value);

		if(__p is null)
		{
			throw new ConstructionException("null returned by new");
		}

		this(cast(GArrowFloatScalar*) __p, true);
	}

	/**
	 * Returns: The value of this scalar.
	 *
	 * Since: 5.0.0
	 */
	public float getValue()
	{
		return garrow_float_scalar_get_value(gArrowFloatScalar);
	}
}
