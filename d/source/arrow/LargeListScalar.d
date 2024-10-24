module arrow.LargeListScalar;

private import arrow.BaseListScalar;
private import arrow.LargeListArray;
private import arrow.c.functions;
public  import arrow.c.types;
private import glib.ConstructionException;
private import gobject.ObjectG;


/** */
public class LargeListScalar : BaseListScalar
{
	/** the main Gtk struct */
	protected GArrowLargeListScalar* gArrowLargeListScalar;

	/** Get the main Gtk struct */
	public GArrowLargeListScalar* getLargeListScalarStruct(bool transferOwnership = false)
	{
		if (transferOwnership)
			ownedRef = false;
		return gArrowLargeListScalar;
	}

	/** the main Gtk struct as a void* */
	protected override void* getStruct()
	{
		return cast(void*)gArrowLargeListScalar;
	}

	/**
	 * Sets our main struct and passes it to the parent class.
	 */
	public this (GArrowLargeListScalar* gArrowLargeListScalar, bool ownedRef = false)
	{
		this.gArrowLargeListScalar = gArrowLargeListScalar;
		super(cast(GArrowBaseListScalar*)gArrowLargeListScalar, ownedRef);
	}


	/** */
	public static GType getType()
	{
		return garrow_large_list_scalar_get_type();
	}

	/**
	 *
	 * Params:
	 *     value = The value of this scalar.
	 * Returns: A newly created #GArrowLargeListScalar.
	 *
	 * Since: 5.0.0
	 *
	 * Throws: ConstructionException GTK+ fails to create the object.
	 */
	public this(LargeListArray value)
	{
		auto __p = garrow_large_list_scalar_new((value is null) ? null : value.getLargeListArrayStruct());

		if(__p is null)
		{
			throw new ConstructionException("null returned by new");
		}

		this(cast(GArrowLargeListScalar*) __p, true);
	}
}
