module arrow.LargeStringDataType;

private import arrow.DataType;
private import arrow.c.functions;
public  import arrow.c.types;
private import glib.ConstructionException;
private import gobject.ObjectG;


/** */
public class LargeStringDataType : DataType
{
	/** the main Gtk struct */
	protected GArrowLargeStringDataType* gArrowLargeStringDataType;

	/** Get the main Gtk struct */
	public GArrowLargeStringDataType* getLargeStringDataTypeStruct(bool transferOwnership = false)
	{
		if (transferOwnership)
			ownedRef = false;
		return gArrowLargeStringDataType;
	}

	/** the main Gtk struct as a void* */
	protected override void* getStruct()
	{
		return cast(void*)gArrowLargeStringDataType;
	}

	/**
	 * Sets our main struct and passes it to the parent class.
	 */
	public this (GArrowLargeStringDataType* gArrowLargeStringDataType, bool ownedRef = false)
	{
		this.gArrowLargeStringDataType = gArrowLargeStringDataType;
		super(cast(GArrowDataType*)gArrowLargeStringDataType, ownedRef);
	}


	/** */
	public static GType getType()
	{
		return garrow_large_string_data_type_get_type();
	}

	/**
	 * Returns: The newly created #GArrowLargeStringDataType.
	 *
	 * Since: 0.17.0
	 *
	 * Throws: ConstructionException GTK+ fails to create the object.
	 */
	public this()
	{
		auto __p = garrow_large_string_data_type_new();

		if(__p is null)
		{
			throw new ConstructionException("null returned by new");
		}

		this(cast(GArrowLargeStringDataType*) __p, true);
	}
}
