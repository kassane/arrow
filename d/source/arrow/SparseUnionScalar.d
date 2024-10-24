module arrow.SparseUnionScalar;

private import arrow.Scalar;
private import arrow.SparseUnionDataType;
private import arrow.UnionScalar;
private import arrow.c.functions;
public  import arrow.c.types;
private import glib.ConstructionException;
private import gobject.ObjectG;


/** */
public class SparseUnionScalar : UnionScalar
{
	/** the main Gtk struct */
	protected GArrowSparseUnionScalar* gArrowSparseUnionScalar;

	/** Get the main Gtk struct */
	public GArrowSparseUnionScalar* getSparseUnionScalarStruct(bool transferOwnership = false)
	{
		if (transferOwnership)
			ownedRef = false;
		return gArrowSparseUnionScalar;
	}

	/** the main Gtk struct as a void* */
	protected override void* getStruct()
	{
		return cast(void*)gArrowSparseUnionScalar;
	}

	/**
	 * Sets our main struct and passes it to the parent class.
	 */
	public this (GArrowSparseUnionScalar* gArrowSparseUnionScalar, bool ownedRef = false)
	{
		this.gArrowSparseUnionScalar = gArrowSparseUnionScalar;
		super(cast(GArrowUnionScalar*)gArrowSparseUnionScalar, ownedRef);
	}


	/** */
	public static GType getType()
	{
		return garrow_sparse_union_scalar_get_type();
	}

	/**
	 *
	 * Params:
	 *     dataType = A #GArrowSparseUnionDataType for this scalar.
	 *     typeCode = The type code of this scalar.
	 *     value = The value of this scalar.
	 * Returns: A newly created #GArrowSparseUnionScalar.
	 *
	 * Since: 5.0.0
	 *
	 * Throws: ConstructionException GTK+ fails to create the object.
	 */
	public this(SparseUnionDataType dataType, byte typeCode, Scalar value)
	{
		auto __p = garrow_sparse_union_scalar_new((dataType is null) ? null : dataType.getSparseUnionDataTypeStruct(), typeCode, (value is null) ? null : value.getScalarStruct());

		if(__p is null)
		{
			throw new ConstructionException("null returned by new");
		}

		this(cast(GArrowSparseUnionScalar*) __p, true);
	}
}
