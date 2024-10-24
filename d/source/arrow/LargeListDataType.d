module arrow.LargeListDataType;

private import arrow.DataType;
private import arrow.Field;
private import arrow.c.functions;
public  import arrow.c.types;
private import glib.ConstructionException;
private import gobject.ObjectG;


/** */
public class LargeListDataType : DataType
{
	/** the main Gtk struct */
	protected GArrowLargeListDataType* gArrowLargeListDataType;

	/** Get the main Gtk struct */
	public GArrowLargeListDataType* getLargeListDataTypeStruct(bool transferOwnership = false)
	{
		if (transferOwnership)
			ownedRef = false;
		return gArrowLargeListDataType;
	}

	/** the main Gtk struct as a void* */
	protected override void* getStruct()
	{
		return cast(void*)gArrowLargeListDataType;
	}

	/**
	 * Sets our main struct and passes it to the parent class.
	 */
	public this (GArrowLargeListDataType* gArrowLargeListDataType, bool ownedRef = false)
	{
		this.gArrowLargeListDataType = gArrowLargeListDataType;
		super(cast(GArrowDataType*)gArrowLargeListDataType, ownedRef);
	}


	/** */
	public static GType getType()
	{
		return garrow_large_list_data_type_get_type();
	}

	/**
	 *
	 * Params:
	 *     field = The field of elements
	 * Returns: The newly created large list data type.
	 *
	 * Since: 0.16.0
	 *
	 * Throws: ConstructionException GTK+ fails to create the object.
	 */
	public this(Field field)
	{
		auto __p = garrow_large_list_data_type_new((field is null) ? null : field.getFieldStruct());

		if(__p is null)
		{
			throw new ConstructionException("null returned by new");
		}

		this(cast(GArrowLargeListDataType*) __p, true);
	}

	/**
	 * Returns: The field of value.
	 *
	 * Since: 0.16.0
	 */
	public Field getField()
	{
		auto __p = garrow_large_list_data_type_get_field(gArrowLargeListDataType);

		if(__p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(Field)(cast(GArrowField*) __p, true);
	}
}
