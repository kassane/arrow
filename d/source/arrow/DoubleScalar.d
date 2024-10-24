module arrow.DoubleScalar;

private import arrow.Scalar;
private import arrow.c.functions;
public  import arrow.c.types;
private import glib.ConstructionException;
private import gobject.ObjectG;


/** */
public class DoubleScalar : Scalar
{
	/** the main Gtk struct */
	protected GArrowDoubleScalar* gArrowDoubleScalar;

	/** Get the main Gtk struct */
	public GArrowDoubleScalar* getDoubleScalarStruct(bool transferOwnership = false)
	{
		if (transferOwnership)
			ownedRef = false;
		return gArrowDoubleScalar;
	}

	/** the main Gtk struct as a void* */
	protected override void* getStruct()
	{
		return cast(void*)gArrowDoubleScalar;
	}

	/**
	 * Sets our main struct and passes it to the parent class.
	 */
	public this (GArrowDoubleScalar* gArrowDoubleScalar, bool ownedRef = false)
	{
		this.gArrowDoubleScalar = gArrowDoubleScalar;
		super(cast(GArrowScalar*)gArrowDoubleScalar, ownedRef);
	}


	/** */
	public static GType getType()
	{
		return garrow_double_scalar_get_type();
	}

	/**
	 *
	 * Params:
	 *     value = The value of this scalar.
	 * Returns: A newly created #GArrowDoubleScalar.
	 *
	 * Since: 5.0.0
	 *
	 * Throws: ConstructionException GTK+ fails to create the object.
	 */
	public this(double value)
	{
		auto __p = garrow_double_scalar_new(value);

		if(__p is null)
		{
			throw new ConstructionException("null returned by new");
		}

		this(cast(GArrowDoubleScalar*) __p, true);
	}

	/**
	 * Returns: The value of this scalar.
	 *
	 * Since: 5.0.0
	 */
	public double getValue()
	{
		return garrow_double_scalar_get_value(gArrowDoubleScalar);
	}
}
