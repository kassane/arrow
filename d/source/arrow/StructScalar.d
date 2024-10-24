module arrow.StructScalar;

private import arrow.Scalar;
private import arrow.StructDataType;
private import arrow.c.functions;
public  import arrow.c.types;
private import glib.ConstructionException;
private import glib.ListG;
private import gobject.ObjectG;


/** */
public class StructScalar : Scalar
{
	/** the main Gtk struct */
	protected GArrowStructScalar* gArrowStructScalar;

	/** Get the main Gtk struct */
	public GArrowStructScalar* getStructScalarStruct(bool transferOwnership = false)
	{
		if (transferOwnership)
			ownedRef = false;
		return gArrowStructScalar;
	}

	/** the main Gtk struct as a void* */
	protected override void* getStruct()
	{
		return cast(void*)gArrowStructScalar;
	}

	/**
	 * Sets our main struct and passes it to the parent class.
	 */
	public this (GArrowStructScalar* gArrowStructScalar, bool ownedRef = false)
	{
		this.gArrowStructScalar = gArrowStructScalar;
		super(cast(GArrowScalar*)gArrowStructScalar, ownedRef);
	}


	/** */
	public static GType getType()
	{
		return garrow_struct_scalar_get_type();
	}

	/**
	 *
	 * Params:
	 *     dataType = A #GArrowStructDataType for this scalar.
	 *     value = The value of this scalar.
	 * Returns: A newly created #GArrowDecimal256Scalar.
	 *
	 * Since: 5.0.0
	 *
	 * Throws: ConstructionException GTK+ fails to create the object.
	 */
	public this(StructDataType dataType, ListG value)
	{
		auto __p = garrow_struct_scalar_new((dataType is null) ? null : dataType.getStructDataTypeStruct(), (value is null) ? null : value.getListGStruct());

		if(__p is null)
		{
			throw new ConstructionException("null returned by new");
		}

		this(cast(GArrowStructScalar*) __p, true);
	}

	/**
	 * Returns: The value of this scalar.
	 *
	 * Since: 5.0.0
	 */
	public ListG getValue()
	{
		auto __p = garrow_struct_scalar_get_value(gArrowStructScalar);

		if(__p is null)
		{
			return null;
		}

		return new ListG(cast(GList*) __p);
	}
}
