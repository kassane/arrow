module arrow.UInt64Scalar;

private import arrow.Scalar;
private import arrow.c.functions;
public  import arrow.c.types;
private import glib.ConstructionException;
private import gobject.ObjectG;


/** */
public class UInt64Scalar : Scalar
{
	/** the main Gtk struct */
	protected GArrowUInt64Scalar* gArrowUInt64Scalar;

	/** Get the main Gtk struct */
	public GArrowUInt64Scalar* getUInt64ScalarStruct(bool transferOwnership = false)
	{
		if (transferOwnership)
			ownedRef = false;
		return gArrowUInt64Scalar;
	}

	/** the main Gtk struct as a void* */
	protected override void* getStruct()
	{
		return cast(void*)gArrowUInt64Scalar;
	}

	/**
	 * Sets our main struct and passes it to the parent class.
	 */
	public this (GArrowUInt64Scalar* gArrowUInt64Scalar, bool ownedRef = false)
	{
		this.gArrowUInt64Scalar = gArrowUInt64Scalar;
		super(cast(GArrowScalar*)gArrowUInt64Scalar, ownedRef);
	}


	/** */
	public static GType getType()
	{
		return garrow_uint64_scalar_get_type();
	}

	/**
	 *
	 * Params:
	 *     value = The value of this scalar.
	 * Returns: A newly created #GArrowUInt64Scalar.
	 *
	 * Since: 5.0.0
	 *
	 * Throws: ConstructionException GTK+ fails to create the object.
	 */
	public this(ulong value)
	{
		auto __p = garrow_uint64_scalar_new(value);

		if(__p is null)
		{
			throw new ConstructionException("null returned by new");
		}

		this(cast(GArrowUInt64Scalar*) __p, true);
	}

	/**
	 * Returns: The value of this scalar.
	 *
	 * Since: 5.0.0
	 */
	public ulong getValue()
	{
		return garrow_uint64_scalar_get_value(gArrowUInt64Scalar);
	}
}
