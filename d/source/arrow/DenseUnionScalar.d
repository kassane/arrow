module arrow.DenseUnionScalar;

private import arrow.DenseUnionDataType;
private import arrow.Scalar;
private import arrow.UnionScalar;
private import arrow.c.functions;
public  import arrow.c.types;
private import glib.ConstructionException;
private import gobject.ObjectG;


/** */
public class DenseUnionScalar : UnionScalar
{
	/** the main Gtk struct */
	protected GArrowDenseUnionScalar* gArrowDenseUnionScalar;

	/** Get the main Gtk struct */
	public GArrowDenseUnionScalar* getDenseUnionScalarStruct(bool transferOwnership = false)
	{
		if (transferOwnership)
			ownedRef = false;
		return gArrowDenseUnionScalar;
	}

	/** the main Gtk struct as a void* */
	protected override void* getStruct()
	{
		return cast(void*)gArrowDenseUnionScalar;
	}

	/**
	 * Sets our main struct and passes it to the parent class.
	 */
	public this (GArrowDenseUnionScalar* gArrowDenseUnionScalar, bool ownedRef = false)
	{
		this.gArrowDenseUnionScalar = gArrowDenseUnionScalar;
		super(cast(GArrowUnionScalar*)gArrowDenseUnionScalar, ownedRef);
	}


	/** */
	public static GType getType()
	{
		return garrow_dense_union_scalar_get_type();
	}

	/**
	 *
	 * Params:
	 *     dataType = A #GArrowDenseUnionDataType for this scalar.
	 *     typeCode = The type code of this scalar.
	 *     value = The value of this scalar.
	 * Returns: A newly created #GArrowDenseUnionScalar.
	 *
	 * Since: 5.0.0
	 *
	 * Throws: ConstructionException GTK+ fails to create the object.
	 */
	public this(DenseUnionDataType dataType, byte typeCode, Scalar value)
	{
		auto __p = garrow_dense_union_scalar_new((dataType is null) ? null : dataType.getDenseUnionDataTypeStruct(), typeCode, (value is null) ? null : value.getScalarStruct());

		if(__p is null)
		{
			throw new ConstructionException("null returned by new");
		}

		this(cast(GArrowDenseUnionScalar*) __p, true);
	}
}
