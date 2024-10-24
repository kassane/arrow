module arrow.Int64Scalar;

private import arrow.Scalar;
private import arrow.c.functions;
public  import arrow.c.types;
private import glib.ConstructionException;
private import gobject.ObjectG;


/** */
public class Int64Scalar : Scalar
{
	/** the main Gtk struct */
	protected GArrowInt64Scalar* gArrowInt64Scalar;

	/** Get the main Gtk struct */
	public GArrowInt64Scalar* getInt64ScalarStruct(bool transferOwnership = false)
	{
		if (transferOwnership)
			ownedRef = false;
		return gArrowInt64Scalar;
	}

	/** the main Gtk struct as a void* */
	protected override void* getStruct()
	{
		return cast(void*)gArrowInt64Scalar;
	}

	/**
	 * Sets our main struct and passes it to the parent class.
	 */
	public this (GArrowInt64Scalar* gArrowInt64Scalar, bool ownedRef = false)
	{
		this.gArrowInt64Scalar = gArrowInt64Scalar;
		super(cast(GArrowScalar*)gArrowInt64Scalar, ownedRef);
	}


	/** */
	public static GType getType()
	{
		return garrow_int64_scalar_get_type();
	}

	/**
	 *
	 * Params:
	 *     value = The value of this scalar.
	 * Returns: A newly created #GArrowInt64Scalar.
	 *
	 * Since: 5.0.0
	 *
	 * Throws: ConstructionException GTK+ fails to create the object.
	 */
	public this(long value)
	{
		auto __p = garrow_int64_scalar_new(value);

		if(__p is null)
		{
			throw new ConstructionException("null returned by new");
		}

		this(cast(GArrowInt64Scalar*) __p, true);
	}

	/**
	 * Returns: The value of this scalar.
	 *
	 * Since: 5.0.0
	 */
	public long getValue()
	{
		return garrow_int64_scalar_get_value(gArrowInt64Scalar);
	}
}
