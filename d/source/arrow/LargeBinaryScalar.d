module arrow.LargeBinaryScalar;

private import arrow.BaseBinaryScalar;
private import arrow.Buffer;
private import arrow.c.functions;
public  import arrow.c.types;
private import glib.ConstructionException;
private import gobject.ObjectG;


/** */
public class LargeBinaryScalar : BaseBinaryScalar
{
	/** the main Gtk struct */
	protected GArrowLargeBinaryScalar* gArrowLargeBinaryScalar;

	/** Get the main Gtk struct */
	public GArrowLargeBinaryScalar* getLargeBinaryScalarStruct(bool transferOwnership = false)
	{
		if (transferOwnership)
			ownedRef = false;
		return gArrowLargeBinaryScalar;
	}

	/** the main Gtk struct as a void* */
	protected override void* getStruct()
	{
		return cast(void*)gArrowLargeBinaryScalar;
	}

	/**
	 * Sets our main struct and passes it to the parent class.
	 */
	public this (GArrowLargeBinaryScalar* gArrowLargeBinaryScalar, bool ownedRef = false)
	{
		this.gArrowLargeBinaryScalar = gArrowLargeBinaryScalar;
		super(cast(GArrowBaseBinaryScalar*)gArrowLargeBinaryScalar, ownedRef);
	}


	/** */
	public static GType getType()
	{
		return garrow_large_binary_scalar_get_type();
	}

	/**
	 *
	 * Params:
	 *     value = The value of this scalar.
	 * Returns: A newly created #GArrowLargeBinaryScalar.
	 *
	 * Since: 5.0.0
	 *
	 * Throws: ConstructionException GTK+ fails to create the object.
	 */
	public this(Buffer value)
	{
		auto __p = garrow_large_binary_scalar_new((value is null) ? null : value.getBufferStruct());

		if(__p is null)
		{
			throw new ConstructionException("null returned by new");
		}

		this(cast(GArrowLargeBinaryScalar*) __p, true);
	}
}
