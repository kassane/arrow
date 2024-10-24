module arrow.BaseBinaryScalar;

private import arrow.Buffer;
private import arrow.Scalar;
private import arrow.c.functions;
public  import arrow.c.types;
private import gobject.ObjectG;


/** */
public class BaseBinaryScalar : Scalar
{
	/** the main Gtk struct */
	protected GArrowBaseBinaryScalar* gArrowBaseBinaryScalar;

	/** Get the main Gtk struct */
	public GArrowBaseBinaryScalar* getBaseBinaryScalarStruct(bool transferOwnership = false)
	{
		if (transferOwnership)
			ownedRef = false;
		return gArrowBaseBinaryScalar;
	}

	/** the main Gtk struct as a void* */
	protected override void* getStruct()
	{
		return cast(void*)gArrowBaseBinaryScalar;
	}

	/**
	 * Sets our main struct and passes it to the parent class.
	 */
	public this (GArrowBaseBinaryScalar* gArrowBaseBinaryScalar, bool ownedRef = false)
	{
		this.gArrowBaseBinaryScalar = gArrowBaseBinaryScalar;
		super(cast(GArrowScalar*)gArrowBaseBinaryScalar, ownedRef);
	}


	/** */
	public static GType getType()
	{
		return garrow_base_binary_scalar_get_type();
	}

	/**
	 * Returns: The value of this scalar.
	 *
	 * Since: 5.0.0
	 */
	public Buffer getValue()
	{
		auto __p = garrow_base_binary_scalar_get_value(gArrowBaseBinaryScalar);

		if(__p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(Buffer)(cast(GArrowBuffer*) __p);
	}
}
