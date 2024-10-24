module arrow.ExtensionDataTypeRegistry;

private import arrow.ExtensionDataType;
private import arrow.c.functions;
public  import arrow.c.types;
private import glib.ErrorG;
private import glib.GException;
private import glib.Str;
private import gobject.ObjectG;


/** */
public class ExtensionDataTypeRegistry : ObjectG
{
	/** the main Gtk struct */
	protected GArrowExtensionDataTypeRegistry* gArrowExtensionDataTypeRegistry;

	/** Get the main Gtk struct */
	public GArrowExtensionDataTypeRegistry* getExtensionDataTypeRegistryStruct(bool transferOwnership = false)
	{
		if (transferOwnership)
			ownedRef = false;
		return gArrowExtensionDataTypeRegistry;
	}

	/** the main Gtk struct as a void* */
	protected override void* getStruct()
	{
		return cast(void*)gArrowExtensionDataTypeRegistry;
	}

	/**
	 * Sets our main struct and passes it to the parent class.
	 */
	public this (GArrowExtensionDataTypeRegistry* gArrowExtensionDataTypeRegistry, bool ownedRef = false)
	{
		this.gArrowExtensionDataTypeRegistry = gArrowExtensionDataTypeRegistry;
		super(cast(GObject*)gArrowExtensionDataTypeRegistry, ownedRef);
	}


	/** */
	public static GType getType()
	{
		return garrow_extension_data_type_registry_get_type();
	}

	/**
	 * Returns: The default global extension data type registry.
	 *
	 * Since: 3.0.0
	 */
	public static ExtensionDataTypeRegistry default_()
	{
		auto __p = garrow_extension_data_type_registry_default();

		if(__p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(ExtensionDataTypeRegistry)(cast(GArrowExtensionDataTypeRegistry*) __p, true);
	}

	/**
	 *
	 * Params:
	 *     name = An extension data type name to be looked up.
	 * Returns: A found #GArrowExtensionDataType on
	 *     found, %NULL on not found.
	 *
	 * Since: 3.0.0
	 */
	public ExtensionDataType lookup(string name)
	{
		auto __p = garrow_extension_data_type_registry_lookup(gArrowExtensionDataTypeRegistry, Str.toStringz(name));

		if(__p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(ExtensionDataType)(cast(GArrowExtensionDataType*) __p, true);
	}

	/**
	 * Register the given @data_type to the @registry.
	 *
	 * Params:
	 *     dataType = A #GArrowExtensionDataType to be registered.
	 *
	 * Returns: %TRUE on success, %FALSE on error.
	 *
	 * Since: 3.0.0
	 *
	 * Throws: GException on failure.
	 */
	public bool register(ExtensionDataType dataType)
	{
		GError* err = null;

		auto __p = garrow_extension_data_type_registry_register(gArrowExtensionDataTypeRegistry, (dataType is null) ? null : dataType.getExtensionDataTypeStruct(), &err) != 0;

		if (err !is null)
		{
			throw new GException( new ErrorG(err) );
		}

		return __p;
	}

	/**
	 * Unregister an extension data type that has the given @name from the
	 * @registry.
	 *
	 * Params:
	 *     name = An extension data type name to be unregistered.
	 *
	 * Returns: %TRUE on success, %FALSE on error.
	 *
	 * Since: 3.0.0
	 *
	 * Throws: GException on failure.
	 */
	public bool unregister(string name)
	{
		GError* err = null;

		auto __p = garrow_extension_data_type_registry_unregister(gArrowExtensionDataTypeRegistry, Str.toStringz(name), &err) != 0;

		if (err !is null)
		{
			throw new GException( new ErrorG(err) );
		}

		return __p;
	}
}
