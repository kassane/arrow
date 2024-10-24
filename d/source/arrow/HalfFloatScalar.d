module arrow.HalfFloatScalar;

private import arrow.Scalar;
private import arrow.c.functions;
public  import arrow.c.types;
private import glib.ConstructionException;
private import gobject.ObjectG;


/** */
public class HalfFloatScalar : Scalar
{
	/** the main Gtk struct */
	protected GArrowHalfFloatScalar* gArrowHalfFloatScalar;

	/** Get the main Gtk struct */
	public GArrowHalfFloatScalar* getHalfFloatScalarStruct(bool transferOwnership = false)
	{
		if (transferOwnership)
			ownedRef = false;
		return gArrowHalfFloatScalar;
	}

	/** the main Gtk struct as a void* */
	protected override void* getStruct()
	{
		return cast(void*)gArrowHalfFloatScalar;
	}

	/**
	 * Sets our main struct and passes it to the parent class.
	 */
	public this (GArrowHalfFloatScalar* gArrowHalfFloatScalar, bool ownedRef = false)
	{
		this.gArrowHalfFloatScalar = gArrowHalfFloatScalar;
		super(cast(GArrowScalar*)gArrowHalfFloatScalar, ownedRef);
	}


	/** */
	public static GType getType()
	{
		return garrow_half_float_scalar_get_type();
	}

	/**
	 *
	 * Params:
	 *     value = The value of this scalar.
	 * Returns: A newly created #GArrowHalfFloatScalar.
	 *
	 * Since: 11.0.0
	 *
	 * Throws: ConstructionException GTK+ fails to create the object.
	 */
	public this(ushort value)
	{
		auto __p = garrow_half_float_scalar_new(value);

		if(__p is null)
		{
			throw new ConstructionException("null returned by new");
		}

		this(cast(GArrowHalfFloatScalar*) __p, true);
	}

	/**
	 * Returns: The value of this scalar.
	 *
	 * Since: 11.0.0
	 */
	public ushort getValue()
	{
		return garrow_half_float_scalar_get_value(gArrowHalfFloatScalar);
	}
}
