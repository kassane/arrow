module arrow.ExtensionArray;

private import arrow.Array;
private import arrow.c.functions;
public  import arrow.c.types;
private import gobject.ObjectG;


/** */
public class ExtensionArray : Array
{
	/** the main Gtk struct */
	protected GArrowExtensionArray* gArrowExtensionArray;

	/** Get the main Gtk struct */
	public GArrowExtensionArray* getExtensionArrayStruct(bool transferOwnership = false)
	{
		if (transferOwnership)
			ownedRef = false;
		return gArrowExtensionArray;
	}

	/** the main Gtk struct as a void* */
	protected override void* getStruct()
	{
		return cast(void*)gArrowExtensionArray;
	}

	/**
	 * Sets our main struct and passes it to the parent class.
	 */
	public this (GArrowExtensionArray* gArrowExtensionArray, bool ownedRef = false)
	{
		this.gArrowExtensionArray = gArrowExtensionArray;
		super(cast(GArrowArray*)gArrowExtensionArray, ownedRef);
	}


	/** */
	public static GType getType()
	{
		return garrow_extension_array_get_type();
	}

	/**
	 * Returns: The underlying storage of the array.
	 *
	 * Since: 3.0.0
	 */
	public Array getStorage()
	{
		auto __p = garrow_extension_array_get_storage(gArrowExtensionArray);

		if(__p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(Array)(cast(GArrowArray*) __p, true);
	}
}
