module arrow.ExtensionDataType;

private import arrow.Array;
private import arrow.ChunkedArray;
private import arrow.DataType;
private import arrow.ExtensionArray;
private import arrow.c.functions;
public  import arrow.c.types;
private import glib.Str;
private import glib.c.functions;
private import gobject.ObjectG;


/** */
public class ExtensionDataType : DataType
{
	/** the main Gtk struct */
	protected GArrowExtensionDataType* gArrowExtensionDataType;

	/** Get the main Gtk struct */
	public GArrowExtensionDataType* getExtensionDataTypeStruct(bool transferOwnership = false)
	{
		if (transferOwnership)
			ownedRef = false;
		return gArrowExtensionDataType;
	}

	/** the main Gtk struct as a void* */
	protected override void* getStruct()
	{
		return cast(void*)gArrowExtensionDataType;
	}

	/**
	 * Sets our main struct and passes it to the parent class.
	 */
	public this (GArrowExtensionDataType* gArrowExtensionDataType, bool ownedRef = false)
	{
		this.gArrowExtensionDataType = gArrowExtensionDataType;
		super(cast(GArrowDataType*)gArrowExtensionDataType, ownedRef);
	}


	/** */
	public static GType getType()
	{
		return garrow_extension_data_type_get_type();
	}

	/**
	 * Returns: The extension name of the type.
	 *
	 *     It should be freed with g_free() when no longer needed.
	 *
	 * Since: 3.0.0
	 */
	public string getExtensionName()
	{
		auto retStr = garrow_extension_data_type_get_extension_name(gArrowExtensionDataType);

		scope(exit) Str.freeString(retStr);
		return Str.toString(retStr);
	}

	/**
	 *
	 * Params:
	 *     storage = A #GArrowArray.
	 * Returns: The array that wraps underlying storage array.
	 *
	 * Since: 3.0.0
	 */
	public ExtensionArray wrapArray(Array storage)
	{
		auto __p = garrow_extension_data_type_wrap_array(gArrowExtensionDataType, (storage is null) ? null : storage.getArrayStruct());

		if(__p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(ExtensionArray)(cast(GArrowExtensionArray*) __p, true);
	}

	/**
	 *
	 * Params:
	 *     storage = A #GArrowChunkedArray.
	 * Returns: The chunked array that wraps underlying
	 *     storage chunked array.
	 *
	 * Since: 3.0.0
	 */
	public ChunkedArray wrapChunkedArray(ChunkedArray storage)
	{
		auto __p = garrow_extension_data_type_wrap_chunked_array(gArrowExtensionDataType, (storage is null) ? null : storage.getChunkedArrayStruct());

		if(__p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(ChunkedArray)(cast(GArrowChunkedArray*) __p, true);
	}
}
