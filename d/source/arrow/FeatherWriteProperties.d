module arrow.FeatherWriteProperties;

private import arrow.c.functions;
public  import arrow.c.types;
private import glib.ConstructionException;
private import gobject.ObjectG;


/** */
public class FeatherWriteProperties : ObjectG
{
	/** the main Gtk struct */
	protected GArrowFeatherWriteProperties* gArrowFeatherWriteProperties;

	/** Get the main Gtk struct */
	public GArrowFeatherWriteProperties* getFeatherWritePropertiesStruct(bool transferOwnership = false)
	{
		if (transferOwnership)
			ownedRef = false;
		return gArrowFeatherWriteProperties;
	}

	/** the main Gtk struct as a void* */
	protected override void* getStruct()
	{
		return cast(void*)gArrowFeatherWriteProperties;
	}

	/**
	 * Sets our main struct and passes it to the parent class.
	 */
	public this (GArrowFeatherWriteProperties* gArrowFeatherWriteProperties, bool ownedRef = false)
	{
		this.gArrowFeatherWriteProperties = gArrowFeatherWriteProperties;
		super(cast(GObject*)gArrowFeatherWriteProperties, ownedRef);
	}


	/** */
	public static GType getType()
	{
		return garrow_feather_write_properties_get_type();
	}

	/**
	 * Returns: A newly created #GArrowFeatherWriteProperties.
	 *
	 * Since: 0.17.0
	 *
	 * Throws: ConstructionException GTK+ fails to create the object.
	 */
	public this()
	{
		auto __p = garrow_feather_write_properties_new();

		if(__p is null)
		{
			throw new ConstructionException("null returned by new");
		}

		this(cast(GArrowFeatherWriteProperties*) __p, true);
	}
}
