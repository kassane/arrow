module arrow.StringScalar;

private import arrow.BaseBinaryScalar;
private import arrow.Buffer;
private import arrow.c.functions;
public  import arrow.c.types;
private import glib.ConstructionException;
private import gobject.ObjectG;


/** */
public class StringScalar : BaseBinaryScalar
{
	/** the main Gtk struct */
	protected GArrowStringScalar* gArrowStringScalar;

	/** Get the main Gtk struct */
	public GArrowStringScalar* getStringScalarStruct(bool transferOwnership = false)
	{
		if (transferOwnership)
			ownedRef = false;
		return gArrowStringScalar;
	}

	/** the main Gtk struct as a void* */
	protected override void* getStruct()
	{
		return cast(void*)gArrowStringScalar;
	}

	/**
	 * Sets our main struct and passes it to the parent class.
	 */
	public this (GArrowStringScalar* gArrowStringScalar, bool ownedRef = false)
	{
		this.gArrowStringScalar = gArrowStringScalar;
		super(cast(GArrowBaseBinaryScalar*)gArrowStringScalar, ownedRef);
	}


	/** */
	public static GType getType()
	{
		return garrow_string_scalar_get_type();
	}

	/**
	 *
	 * Params:
	 *     value = The value of this scalar.
	 * Returns: A newly created #GArrowStringScalar.
	 *
	 * Since: 5.0.0
	 *
	 * Throws: ConstructionException GTK+ fails to create the object.
	 */
	public this(Buffer value)
	{
		auto __p = garrow_string_scalar_new((value is null) ? null : value.getBufferStruct());

		if(__p is null)
		{
			throw new ConstructionException("null returned by new");
		}

		this(cast(GArrowStringScalar*) __p, true);
	}
}
