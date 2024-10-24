module arrow.Date64Scalar;

private import arrow.Scalar;
private import arrow.c.functions;
public  import arrow.c.types;
private import glib.ConstructionException;
private import gobject.ObjectG;


/** */
public class Date64Scalar : Scalar
{
	/** the main Gtk struct */
	protected GArrowDate64Scalar* gArrowDate64Scalar;

	/** Get the main Gtk struct */
	public GArrowDate64Scalar* getDate64ScalarStruct(bool transferOwnership = false)
	{
		if (transferOwnership)
			ownedRef = false;
		return gArrowDate64Scalar;
	}

	/** the main Gtk struct as a void* */
	protected override void* getStruct()
	{
		return cast(void*)gArrowDate64Scalar;
	}

	/**
	 * Sets our main struct and passes it to the parent class.
	 */
	public this (GArrowDate64Scalar* gArrowDate64Scalar, bool ownedRef = false)
	{
		this.gArrowDate64Scalar = gArrowDate64Scalar;
		super(cast(GArrowScalar*)gArrowDate64Scalar, ownedRef);
	}


	/** */
	public static GType getType()
	{
		return garrow_date64_scalar_get_type();
	}

	/**
	 *
	 * Params:
	 *     value = The value of this scalar.
	 * Returns: A newly created #GArrowDate64Scalar.
	 *
	 * Since: 5.0.0
	 *
	 * Throws: ConstructionException GTK+ fails to create the object.
	 */
	public this(long value)
	{
		auto __p = garrow_date64_scalar_new(value);

		if(__p is null)
		{
			throw new ConstructionException("null returned by new");
		}

		this(cast(GArrowDate64Scalar*) __p, true);
	}

	/**
	 * Returns: The value of this scalar.
	 *
	 * Since: 5.0.0
	 */
	public long getValue()
	{
		return garrow_date64_scalar_get_value(gArrowDate64Scalar);
	}
}
