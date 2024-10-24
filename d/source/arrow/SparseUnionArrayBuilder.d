module arrow.SparseUnionArrayBuilder;

private import arrow.SparseUnionDataType;
private import arrow.UnionArrayBuilder;
private import arrow.c.functions;
public  import arrow.c.types;
private import glib.ConstructionException;
private import glib.ErrorG;
private import glib.GException;
private import gobject.ObjectG;


/** */
public class SparseUnionArrayBuilder : UnionArrayBuilder
{
	/** the main Gtk struct */
	protected GArrowSparseUnionArrayBuilder* gArrowSparseUnionArrayBuilder;

	/** Get the main Gtk struct */
	public GArrowSparseUnionArrayBuilder* getSparseUnionArrayBuilderStruct(bool transferOwnership = false)
	{
		if (transferOwnership)
			ownedRef = false;
		return gArrowSparseUnionArrayBuilder;
	}

	/** the main Gtk struct as a void* */
	protected override void* getStruct()
	{
		return cast(void*)gArrowSparseUnionArrayBuilder;
	}

	/**
	 * Sets our main struct and passes it to the parent class.
	 */
	public this (GArrowSparseUnionArrayBuilder* gArrowSparseUnionArrayBuilder, bool ownedRef = false)
	{
		this.gArrowSparseUnionArrayBuilder = gArrowSparseUnionArrayBuilder;
		super(cast(GArrowUnionArrayBuilder*)gArrowSparseUnionArrayBuilder, ownedRef);
	}


	/** */
	public static GType getType()
	{
		return garrow_sparse_union_array_builder_get_type();
	}

	/**
	 *
	 * Params:
	 *     dataType = #GArrowSparseUnionDataType for the sparse
	 *         union. If this is %NULL, you start an empty children sparse
	 *         union. You can add children by
	 *         multiple `garrow_union_array_builder_append_child()` calls.
	 * Returns: A newly created #GArrowSparseUnionArrayBuilder
	 *     on success, %NULL on error.
	 *
	 * Since: 12.0.0
	 *
	 * Throws: GException on failure.
	 * Throws: ConstructionException GTK+ fails to create the object.
	 */
	public this(SparseUnionDataType dataType)
	{
		GError* err = null;

		auto __p = garrow_sparse_union_array_builder_new((dataType is null) ? null : dataType.getSparseUnionDataTypeStruct(), &err);

		if (err !is null)
		{
			throw new GException( new ErrorG(err) );
		}

		if(__p is null)
		{
			throw new ConstructionException("null returned by new");
		}

		this(cast(GArrowSparseUnionArrayBuilder*) __p, true);
	}
}
