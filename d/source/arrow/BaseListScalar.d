module arrow.BaseListScalar;

private import arrow.Array;
private import arrow.Scalar;
private import arrow.c.functions;
public  import arrow.c.types;
private import gobject.ObjectG;


/** */
public class BaseListScalar : Scalar
{
	/** the main Gtk struct */
	protected GArrowBaseListScalar* gArrowBaseListScalar;

	/** Get the main Gtk struct */
	public GArrowBaseListScalar* getBaseListScalarStruct(bool transferOwnership = false)
	{
		if (transferOwnership)
			ownedRef = false;
		return gArrowBaseListScalar;
	}

	/** the main Gtk struct as a void* */
	protected override void* getStruct()
	{
		return cast(void*)gArrowBaseListScalar;
	}

	/**
	 * Sets our main struct and passes it to the parent class.
	 */
	public this (GArrowBaseListScalar* gArrowBaseListScalar, bool ownedRef = false)
	{
		this.gArrowBaseListScalar = gArrowBaseListScalar;
		super(cast(GArrowScalar*)gArrowBaseListScalar, ownedRef);
	}


	/** */
	public static GType getType()
	{
		return garrow_base_list_scalar_get_type();
	}

	/**
	 * Returns: The value of this scalar.
	 *
	 * Since: 5.0.0
	 */
	public Array getValue()
	{
		auto __p = garrow_base_list_scalar_get_value(gArrowBaseListScalar);

		if(__p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(Array)(cast(GArrowArray*) __p);
	}
}
