module arrow.UnionScalar;

private import arrow.Scalar;
private import arrow.c.functions;
public  import arrow.c.types;
private import gobject.ObjectG;


/** */
public class UnionScalar : Scalar
{
	/** the main Gtk struct */
	protected GArrowUnionScalar* gArrowUnionScalar;

	/** Get the main Gtk struct */
	public GArrowUnionScalar* getUnionScalarStruct(bool transferOwnership = false)
	{
		if (transferOwnership)
			ownedRef = false;
		return gArrowUnionScalar;
	}

	/** the main Gtk struct as a void* */
	protected override void* getStruct()
	{
		return cast(void*)gArrowUnionScalar;
	}

	/**
	 * Sets our main struct and passes it to the parent class.
	 */
	public this (GArrowUnionScalar* gArrowUnionScalar, bool ownedRef = false)
	{
		this.gArrowUnionScalar = gArrowUnionScalar;
		super(cast(GArrowScalar*)gArrowUnionScalar, ownedRef);
	}


	/** */
	public static GType getType()
	{
		return garrow_union_scalar_get_type();
	}

	/**
	 * Returns: The type code of this scalar.
	 *
	 * Since: 6.0.0
	 */
	public byte getTypeCode()
	{
		return garrow_union_scalar_get_type_code(gArrowUnionScalar);
	}

	/**
	 * Returns: The value of this scalar.
	 *
	 * Since: 5.0.0
	 */
	public Scalar getValue()
	{
		auto __p = garrow_union_scalar_get_value(gArrowUnionScalar);

		if(__p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(Scalar)(cast(GArrowScalar*) __p);
	}
}
