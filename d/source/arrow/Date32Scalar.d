module arrow.Date32Scalar;

private import arrow.Scalar;
private import arrow.c.functions;
public  import arrow.c.types;
private import glib.ConstructionException;
private import gobject.ObjectG;


/** */
public class Date32Scalar : Scalar
{
	/** the main Gtk struct */
	protected GArrowDate32Scalar* gArrowDate32Scalar;

	/** Get the main Gtk struct */
	public GArrowDate32Scalar* getDate32ScalarStruct(bool transferOwnership = false)
	{
		if (transferOwnership)
			ownedRef = false;
		return gArrowDate32Scalar;
	}

	/** the main Gtk struct as a void* */
	protected override void* getStruct()
	{
		return cast(void*)gArrowDate32Scalar;
	}

	/**
	 * Sets our main struct and passes it to the parent class.
	 */
	public this (GArrowDate32Scalar* gArrowDate32Scalar, bool ownedRef = false)
	{
		this.gArrowDate32Scalar = gArrowDate32Scalar;
		super(cast(GArrowScalar*)gArrowDate32Scalar, ownedRef);
	}


	/** */
	public static GType getType()
	{
		return garrow_date32_scalar_get_type();
	}

	/**
	 *
	 * Params:
	 *     value = The value of this scalar.
	 * Returns: A newly created #GArrowDate32Scalar.
	 *
	 * Since: 5.0.0
	 *
	 * Throws: ConstructionException GTK+ fails to create the object.
	 */
	public this(int value)
	{
		auto __p = garrow_date32_scalar_new(value);

		if(__p is null)
		{
			throw new ConstructionException("null returned by new");
		}

		this(cast(GArrowDate32Scalar*) __p, true);
	}

	/**
	 * Returns: The value of this scalar.
	 *
	 * Since: 5.0.0
	 */
	public int getValue()
	{
		return garrow_date32_scalar_get_value(gArrowDate32Scalar);
	}
}
