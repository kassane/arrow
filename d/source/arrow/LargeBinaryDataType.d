module arrow.LargeBinaryDataType;

private import arrow.DataType;
private import arrow.c.functions;
public  import arrow.c.types;
private import glib.ConstructionException;
private import gobject.ObjectG;


/** */
public class LargeBinaryDataType : DataType
{
	/** the main Gtk struct */
	protected GArrowLargeBinaryDataType* gArrowLargeBinaryDataType;

	/** Get the main Gtk struct */
	public GArrowLargeBinaryDataType* getLargeBinaryDataTypeStruct(bool transferOwnership = false)
	{
		if (transferOwnership)
			ownedRef = false;
		return gArrowLargeBinaryDataType;
	}

	/** the main Gtk struct as a void* */
	protected override void* getStruct()
	{
		return cast(void*)gArrowLargeBinaryDataType;
	}

	/**
	 * Sets our main struct and passes it to the parent class.
	 */
	public this (GArrowLargeBinaryDataType* gArrowLargeBinaryDataType, bool ownedRef = false)
	{
		this.gArrowLargeBinaryDataType = gArrowLargeBinaryDataType;
		super(cast(GArrowDataType*)gArrowLargeBinaryDataType, ownedRef);
	}


	/** */
	public static GType getType()
	{
		return garrow_large_binary_data_type_get_type();
	}

	/**
	 * Returns: The newly created #GArrowLargeBinaryDataType.
	 *
	 * Since: 0.17.0
	 *
	 * Throws: ConstructionException GTK+ fails to create the object.
	 */
	public this()
	{
		auto __p = garrow_large_binary_data_type_new();

		if(__p is null)
		{
			throw new ConstructionException("null returned by new");
		}

		this(cast(GArrowLargeBinaryDataType*) __p, true);
	}
}
