module arrow.FixedSizeBinaryScalar;

private import arrow.BaseBinaryScalar;
private import arrow.Buffer;
private import arrow.FixedSizeBinaryDataType;
private import arrow.c.functions;
public  import arrow.c.types;
private import glib.ConstructionException;
private import gobject.ObjectG;


/** */
public class FixedSizeBinaryScalar : BaseBinaryScalar
{
	/** the main Gtk struct */
	protected GArrowFixedSizeBinaryScalar* gArrowFixedSizeBinaryScalar;

	/** Get the main Gtk struct */
	public GArrowFixedSizeBinaryScalar* getFixedSizeBinaryScalarStruct(bool transferOwnership = false)
	{
		if (transferOwnership)
			ownedRef = false;
		return gArrowFixedSizeBinaryScalar;
	}

	/** the main Gtk struct as a void* */
	protected override void* getStruct()
	{
		return cast(void*)gArrowFixedSizeBinaryScalar;
	}

	/**
	 * Sets our main struct and passes it to the parent class.
	 */
	public this (GArrowFixedSizeBinaryScalar* gArrowFixedSizeBinaryScalar, bool ownedRef = false)
	{
		this.gArrowFixedSizeBinaryScalar = gArrowFixedSizeBinaryScalar;
		super(cast(GArrowBaseBinaryScalar*)gArrowFixedSizeBinaryScalar, ownedRef);
	}


	/** */
	public static GType getType()
	{
		return garrow_fixed_size_binary_scalar_get_type();
	}

	/**
	 *
	 * Params:
	 *     dataType = A #GArrowFixedSizeBinaryDataType for this scalar.
	 *     value = The value of this scalar.
	 * Returns: A newly created #GArrowFixedSizeBinaryScalar.
	 *
	 * Since: 5.0.0
	 *
	 * Throws: ConstructionException GTK+ fails to create the object.
	 */
	public this(FixedSizeBinaryDataType dataType, Buffer value)
	{
		auto __p = garrow_fixed_size_binary_scalar_new((dataType is null) ? null : dataType.getFixedSizeBinaryDataTypeStruct(), (value is null) ? null : value.getBufferStruct());

		if(__p is null)
		{
			throw new ConstructionException("null returned by new");
		}

		this(cast(GArrowFixedSizeBinaryScalar*) __p, true);
	}
}
