module arrow.MapScalar;

private import arrow.BaseListScalar;
private import arrow.StructArray;
private import arrow.c.functions;
public  import arrow.c.types;
private import glib.ConstructionException;
private import gobject.ObjectG;


/** */
public class MapScalar : BaseListScalar
{
	/** the main Gtk struct */
	protected GArrowMapScalar* gArrowMapScalar;

	/** Get the main Gtk struct */
	public GArrowMapScalar* getMapScalarStruct(bool transferOwnership = false)
	{
		if (transferOwnership)
			ownedRef = false;
		return gArrowMapScalar;
	}

	/** the main Gtk struct as a void* */
	protected override void* getStruct()
	{
		return cast(void*)gArrowMapScalar;
	}

	/**
	 * Sets our main struct and passes it to the parent class.
	 */
	public this (GArrowMapScalar* gArrowMapScalar, bool ownedRef = false)
	{
		this.gArrowMapScalar = gArrowMapScalar;
		super(cast(GArrowBaseListScalar*)gArrowMapScalar, ownedRef);
	}


	/** */
	public static GType getType()
	{
		return garrow_map_scalar_get_type();
	}

	/**
	 *
	 * Params:
	 *     value = The value of this scalar.
	 * Returns: A newly created #GArrowMapScalar.
	 *
	 * Since: 5.0.0
	 *
	 * Throws: ConstructionException GTK+ fails to create the object.
	 */
	public this(StructArray value)
	{
		auto __p = garrow_map_scalar_new((value is null) ? null : value.getStructArrayStruct());

		if(__p is null)
		{
			throw new ConstructionException("null returned by new");
		}

		this(cast(GArrowMapScalar*) __p, true);
	}
}
