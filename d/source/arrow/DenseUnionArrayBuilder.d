module arrow.DenseUnionArrayBuilder;

private import arrow.DenseUnionDataType;
private import arrow.UnionArrayBuilder;
private import arrow.c.functions;
public  import arrow.c.types;
private import glib.ConstructionException;
private import glib.ErrorG;
private import glib.GException;
private import gobject.ObjectG;


/** */
public class DenseUnionArrayBuilder : UnionArrayBuilder
{
	/** the main Gtk struct */
	protected GArrowDenseUnionArrayBuilder* gArrowDenseUnionArrayBuilder;

	/** Get the main Gtk struct */
	public GArrowDenseUnionArrayBuilder* getDenseUnionArrayBuilderStruct(bool transferOwnership = false)
	{
		if (transferOwnership)
			ownedRef = false;
		return gArrowDenseUnionArrayBuilder;
	}

	/** the main Gtk struct as a void* */
	protected override void* getStruct()
	{
		return cast(void*)gArrowDenseUnionArrayBuilder;
	}

	/**
	 * Sets our main struct and passes it to the parent class.
	 */
	public this (GArrowDenseUnionArrayBuilder* gArrowDenseUnionArrayBuilder, bool ownedRef = false)
	{
		this.gArrowDenseUnionArrayBuilder = gArrowDenseUnionArrayBuilder;
		super(cast(GArrowUnionArrayBuilder*)gArrowDenseUnionArrayBuilder, ownedRef);
	}


	/** */
	public static GType getType()
	{
		return garrow_dense_union_array_builder_get_type();
	}

	/**
	 *
	 * Params:
	 *     dataType = #GArrowDenseUnionDataType for the dense
	 *         union. If this is %NULL, you start an empty children dense
	 *         union. You can add children by
	 *         multiple `garrow_union_array_builder_append_child()` calls.
	 * Returns: A newly created #GArrowDenseUnionArrayBuilder
	 *     on success, %NULL on error.
	 *
	 * Since: 12.0.0
	 *
	 * Throws: GException on failure.
	 * Throws: ConstructionException GTK+ fails to create the object.
	 */
	public this(DenseUnionDataType dataType)
	{
		GError* err = null;

		auto __p = garrow_dense_union_array_builder_new((dataType is null) ? null : dataType.getDenseUnionDataTypeStruct(), &err);

		if (err !is null)
		{
			throw new GException( new ErrorG(err) );
		}

		if(__p is null)
		{
			throw new ConstructionException("null returned by new");
		}

		this(cast(GArrowDenseUnionArrayBuilder*) __p, true);
	}
}
