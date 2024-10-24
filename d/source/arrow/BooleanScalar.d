module arrow.BooleanScalar;

private import arrow.Scalar;
private import arrow.c.functions;
public  import arrow.c.types;
private import glib.ConstructionException;
private import gobject.ObjectG;


/** */
public class BooleanScalar : Scalar
{
	/** the main Gtk struct */
	protected GArrowBooleanScalar* gArrowBooleanScalar;

	/** Get the main Gtk struct */
	public GArrowBooleanScalar* getBooleanScalarStruct(bool transferOwnership = false)
	{
		if (transferOwnership)
			ownedRef = false;
		return gArrowBooleanScalar;
	}

	/** the main Gtk struct as a void* */
	protected override void* getStruct()
	{
		return cast(void*)gArrowBooleanScalar;
	}

	/**
	 * Sets our main struct and passes it to the parent class.
	 */
	public this (GArrowBooleanScalar* gArrowBooleanScalar, bool ownedRef = false)
	{
		this.gArrowBooleanScalar = gArrowBooleanScalar;
		super(cast(GArrowScalar*)gArrowBooleanScalar, ownedRef);
	}


	/** */
	public static GType getType()
	{
		return garrow_boolean_scalar_get_type();
	}

	/**
	 *
	 * Params:
	 *     value = The value of this scalar.
	 * Returns: A newly created #GArrowBooleanScalar.
	 *
	 * Since: 5.0.0
	 *
	 * Throws: ConstructionException GTK+ fails to create the object.
	 */
	public this(bool value)
	{
		auto __p = garrow_boolean_scalar_new(value);

		if(__p is null)
		{
			throw new ConstructionException("null returned by new");
		}

		this(cast(GArrowBooleanScalar*) __p, true);
	}

	/**
	 * Returns: The value of this scalar.
	 *
	 * Since: 5.0.0
	 */
	public bool getValue()
	{
		return garrow_boolean_scalar_get_value(gArrowBooleanScalar) != 0;
	}
}
