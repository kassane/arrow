module arrow.BinaryScalar;

private import arrow.BaseBinaryScalar;
private import arrow.Buffer;
private import arrow.c.functions;
public  import arrow.c.types;
private import glib.ConstructionException;
private import gobject.ObjectG;


/** */
public class BinaryScalar : BaseBinaryScalar
{
	/** the main Gtk struct */
	protected GArrowBinaryScalar* gArrowBinaryScalar;

	/** Get the main Gtk struct */
	public GArrowBinaryScalar* getBinaryScalarStruct(bool transferOwnership = false)
	{
		if (transferOwnership)
			ownedRef = false;
		return gArrowBinaryScalar;
	}

	/** the main Gtk struct as a void* */
	protected override void* getStruct()
	{
		return cast(void*)gArrowBinaryScalar;
	}

	/**
	 * Sets our main struct and passes it to the parent class.
	 */
	public this (GArrowBinaryScalar* gArrowBinaryScalar, bool ownedRef = false)
	{
		this.gArrowBinaryScalar = gArrowBinaryScalar;
		super(cast(GArrowBaseBinaryScalar*)gArrowBinaryScalar, ownedRef);
	}


	/** */
	public static GType getType()
	{
		return garrow_binary_scalar_get_type();
	}

	/**
	 *
	 * Params:
	 *     value = The value of this scalar.
	 * Returns: A newly created #GArrowBinaryScalar.
	 *
	 * Since: 5.0.0
	 *
	 * Throws: ConstructionException GTK+ fails to create the object.
	 */
	public this(Buffer value)
	{
		auto __p = garrow_binary_scalar_new((value is null) ? null : value.getBufferStruct());

		if(__p is null)
		{
			throw new ConstructionException("null returned by new");
		}

		this(cast(GArrowBinaryScalar*) __p, true);
	}
}
