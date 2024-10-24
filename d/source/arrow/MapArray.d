module arrow.MapArray;

private import arrow.Array;
private import arrow.ListArray;
private import arrow.c.functions;
public  import arrow.c.types;
private import glib.ConstructionException;
private import glib.ErrorG;
private import glib.GException;
private import gobject.ObjectG;


/** */
public class MapArray : ListArray
{
	/** the main Gtk struct */
	protected GArrowMapArray* gArrowMapArray;

	/** Get the main Gtk struct */
	public GArrowMapArray* getMapArrayStruct(bool transferOwnership = false)
	{
		if (transferOwnership)
			ownedRef = false;
		return gArrowMapArray;
	}

	/** the main Gtk struct as a void* */
	protected override void* getStruct()
	{
		return cast(void*)gArrowMapArray;
	}

	/**
	 * Sets our main struct and passes it to the parent class.
	 */
	public this (GArrowMapArray* gArrowMapArray, bool ownedRef = false)
	{
		this.gArrowMapArray = gArrowMapArray;
		super(cast(GArrowListArray*)gArrowMapArray, ownedRef);
	}


	/** */
	public static GType getType()
	{
		return garrow_map_array_get_type();
	}

	/**
	 *
	 * Params:
	 *     offsets = The offsets Array containing n + 1 offsets encoding length and size.
	 *     keys = The Array containing key values.
	 *     items = The items Array containing item values.
	 * Returns: A newly created #GArrowMapArray
	 *     or %NULL on error.
	 *
	 * Since: 0.17.0
	 *
	 * Throws: GException on failure.
	 * Throws: ConstructionException GTK+ fails to create the object.
	 */
	public this(Array offsets, Array keys, Array items)
	{
		GError* err = null;

		auto __p = garrow_map_array_new((offsets is null) ? null : offsets.getArrayStruct(), (keys is null) ? null : keys.getArrayStruct(), (items is null) ? null : items.getArrayStruct(), &err);

		if (err !is null)
		{
			throw new GException( new ErrorG(err) );
		}

		if(__p is null)
		{
			throw new ConstructionException("null returned by new");
		}

		this(cast(GArrowMapArray*) __p, true);
	}

	/**
	 * Returns: The items Array containing item values.
	 *
	 * Since: 0.17.0
	 */
	public Array getItems()
	{
		auto __p = garrow_map_array_get_items(gArrowMapArray);

		if(__p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(Array)(cast(GArrowArray*) __p, true);
	}

	/**
	 * Returns: The Array containing key values.
	 *
	 * Since: 0.17.0
	 */
	public Array getKeys()
	{
		auto __p = garrow_map_array_get_keys(gArrowMapArray);

		if(__p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(Array)(cast(GArrowArray*) __p, true);
	}
}
