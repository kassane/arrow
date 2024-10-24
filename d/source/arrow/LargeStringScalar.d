module arrow.LargeStringScalar;

private import arrow.BaseBinaryScalar;
private import arrow.Buffer;
private import arrow.c.functions;
public  import arrow.c.types;
private import glib.ConstructionException;
private import gobject.ObjectG;


/** */
public class LargeStringScalar : BaseBinaryScalar
{
	/** the main Gtk struct */
	protected GArrowLargeStringScalar* gArrowLargeStringScalar;

	/** Get the main Gtk struct */
	public GArrowLargeStringScalar* getLargeStringScalarStruct(bool transferOwnership = false)
	{
		if (transferOwnership)
			ownedRef = false;
		return gArrowLargeStringScalar;
	}

	/** the main Gtk struct as a void* */
	protected override void* getStruct()
	{
		return cast(void*)gArrowLargeStringScalar;
	}

	/**
	 * Sets our main struct and passes it to the parent class.
	 */
	public this (GArrowLargeStringScalar* gArrowLargeStringScalar, bool ownedRef = false)
	{
		this.gArrowLargeStringScalar = gArrowLargeStringScalar;
		super(cast(GArrowBaseBinaryScalar*)gArrowLargeStringScalar, ownedRef);
	}


	/** */
	public static GType getType()
	{
		return garrow_large_string_scalar_get_type();
	}

	/**
	 *
	 * Params:
	 *     value = The value of this scalar.
	 * Returns: A newly created #GArrowLargeStringScalar.
	 *
	 * Since: 5.0.0
	 *
	 * Throws: ConstructionException GTK+ fails to create the object.
	 */
	public this(Buffer value)
	{
		auto __p = garrow_large_string_scalar_new((value is null) ? null : value.getBufferStruct());

		if(__p is null)
		{
			throw new ConstructionException("null returned by new");
		}

		this(cast(GArrowLargeStringScalar*) __p, true);
	}
}
