module arrow.UnionArrayBuilder;

private import arrow.ArrayBuilder;
private import arrow.c.functions;
public  import arrow.c.types;
private import glib.ErrorG;
private import glib.GException;
private import glib.Str;


/** */
public class UnionArrayBuilder : ArrayBuilder
{
	/** the main Gtk struct */
	protected GArrowUnionArrayBuilder* gArrowUnionArrayBuilder;

	/** Get the main Gtk struct */
	public GArrowUnionArrayBuilder* getUnionArrayBuilderStruct(bool transferOwnership = false)
	{
		if (transferOwnership)
			ownedRef = false;
		return gArrowUnionArrayBuilder;
	}

	/** the main Gtk struct as a void* */
	protected override void* getStruct()
	{
		return cast(void*)gArrowUnionArrayBuilder;
	}

	/**
	 * Sets our main struct and passes it to the parent class.
	 */
	public this (GArrowUnionArrayBuilder* gArrowUnionArrayBuilder, bool ownedRef = false)
	{
		this.gArrowUnionArrayBuilder = gArrowUnionArrayBuilder;
		super(cast(GArrowArrayBuilder*)gArrowUnionArrayBuilder, ownedRef);
	}


	/** */
	public static GType getType()
	{
		return garrow_union_array_builder_get_type();
	}

	/**
	 *
	 * Params:
	 *     child = A #GArrowArrayBuilder for new child.
	 *     fieldName = A field name for new child.
	 * Returns: The type ID for the appended child.
	 *
	 * Since: 12.0.00
	 */
	public byte appendChild(ArrayBuilder child, string fieldName)
	{
		return garrow_union_array_builder_append_child(gArrowUnionArrayBuilder, (child is null) ? null : child.getArrayBuilderStruct(), Str.toStringz(fieldName));
	}

	/**
	 * Append an element to the union array.
	 *
	 * If @builder is #GArrowDenseUnionArrayBuilder, this must be followed by an
	 * append to the appropriate child builder.
	 *
	 * If @builder is #GArrowSparseUnionArrayBuilder, this must be
	 * followed by appends to all child builders. The corresponding child
	 * builder must be appended to independently after this method is
	 * called, and all other child builders must have null or empty value
	 * appended.
	 *
	 * Params:
	 *     value = A type ID value.
	 *
	 * Returns: %TRUE on success, %FALSE if there was an error.
	 *
	 * Since: 12.0.0
	 *
	 * Throws: GException on failure.
	 */
	public bool appendValue(byte value)
	{
		GError* err = null;

		auto __p = garrow_union_array_builder_append_value(gArrowUnionArrayBuilder, value, &err) != 0;

		if (err !is null)
		{
			throw new GException( new ErrorG(err) );
		}

		return __p;
	}
}
