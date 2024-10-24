module arrow.MapDataType;

private import arrow.DataType;
private import arrow.ListDataType;
private import arrow.c.functions;
public  import arrow.c.types;
private import glib.ConstructionException;
private import gobject.ObjectG;


/** */
public class MapDataType : ListDataType
{
	/** the main Gtk struct */
	protected GArrowMapDataType* gArrowMapDataType;

	/** Get the main Gtk struct */
	public GArrowMapDataType* getMapDataTypeStruct(bool transferOwnership = false)
	{
		if (transferOwnership)
			ownedRef = false;
		return gArrowMapDataType;
	}

	/** the main Gtk struct as a void* */
	protected override void* getStruct()
	{
		return cast(void*)gArrowMapDataType;
	}

	/**
	 * Sets our main struct and passes it to the parent class.
	 */
	public this (GArrowMapDataType* gArrowMapDataType, bool ownedRef = false)
	{
		this.gArrowMapDataType = gArrowMapDataType;
		super(cast(GArrowListDataType*)gArrowMapDataType, ownedRef);
	}


	/** */
	public static GType getType()
	{
		return garrow_map_data_type_get_type();
	}

	/**
	 *
	 * Params:
	 *     keyType = The key type of the map.
	 *     itemType = The item type of the map.
	 * Returns: The newly created map data type.
	 *
	 * Since: 0.17.0
	 *
	 * Throws: ConstructionException GTK+ fails to create the object.
	 */
	public this(DataType keyType, DataType itemType)
	{
		auto __p = garrow_map_data_type_new((keyType is null) ? null : keyType.getDataTypeStruct(), (itemType is null) ? null : itemType.getDataTypeStruct());

		if(__p is null)
		{
			throw new ConstructionException("null returned by new");
		}

		this(cast(GArrowMapDataType*) __p, true);
	}

	/**
	 * Returns: The item type of the map.
	 *
	 * Since: 0.17.0
	 */
	public DataType getItemType()
	{
		auto __p = garrow_map_data_type_get_item_type(gArrowMapDataType);

		if(__p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(DataType)(cast(GArrowDataType*) __p, true);
	}

	/**
	 * Returns: The key type of the map.
	 *
	 * Since: 0.17.0
	 */
	public DataType getKeyType()
	{
		auto __p = garrow_map_data_type_get_key_type(gArrowMapDataType);

		if(__p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(DataType)(cast(GArrowDataType*) __p, true);
	}
}
