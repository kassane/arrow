module arrow.ListScalar;

private import arrow.BaseListScalar;
private import arrow.ListArray;
private import arrow.c.functions;
public  import arrow.c.types;
private import glib.ConstructionException;
private import gobject.ObjectG;


/** */
public class ListScalar : BaseListScalar
{
	/** the main Gtk struct */
	protected GArrowListScalar* gArrowListScalar;

	/** Get the main Gtk struct */
	public GArrowListScalar* getListScalarStruct(bool transferOwnership = false)
	{
		if (transferOwnership)
			ownedRef = false;
		return gArrowListScalar;
	}

	/** the main Gtk struct as a void* */
	protected override void* getStruct()
	{
		return cast(void*)gArrowListScalar;
	}

	/**
	 * Sets our main struct and passes it to the parent class.
	 */
	public this (GArrowListScalar* gArrowListScalar, bool ownedRef = false)
	{
		this.gArrowListScalar = gArrowListScalar;
		super(cast(GArrowBaseListScalar*)gArrowListScalar, ownedRef);
	}


	/** */
	public static GType getType()
	{
		return garrow_list_scalar_get_type();
	}

	/**
	 *
	 * Params:
	 *     value = The value of this scalar.
	 * Returns: A newly created #GArrowListScalar.
	 *
	 * Since: 5.0.0
	 *
	 * Throws: ConstructionException GTK+ fails to create the object.
	 */
	public this(ListArray value)
	{
		auto __p = garrow_list_scalar_new((value is null) ? null : value.getListArrayStruct());

		if(__p is null)
		{
			throw new ConstructionException("null returned by new");
		}

		this(cast(GArrowListScalar*) __p, true);
	}
}
