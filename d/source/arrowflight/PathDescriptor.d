module arrowflight.PathDescriptor;

private import arrowflight.Descriptor;
private import arrowflight.c.functions;
public  import arrowflight.c.types;
private import glib.ConstructionException;
private import glib.Str;
private import glib.c.functions;
private import gobject.ObjectG;


/** */
public class PathDescriptor : Descriptor
{
	/** the main Gtk struct */
	protected GAFlightPathDescriptor* gAFlightPathDescriptor;

	/** Get the main Gtk struct */
	public GAFlightPathDescriptor* getPathDescriptorStruct(bool transferOwnership = false)
	{
		if (transferOwnership)
			ownedRef = false;
		return gAFlightPathDescriptor;
	}

	/** the main Gtk struct as a void* */
	protected override void* getStruct()
	{
		return cast(void*)gAFlightPathDescriptor;
	}

	/**
	 * Sets our main struct and passes it to the parent class.
	 */
	public this (GAFlightPathDescriptor* gAFlightPathDescriptor, bool ownedRef = false)
	{
		this.gAFlightPathDescriptor = gAFlightPathDescriptor;
		super(cast(GAFlightDescriptor*)gAFlightPathDescriptor, ownedRef);
	}


	/** */
	public static GType getType()
	{
		return gaflight_path_descriptor_get_type();
	}

	/**
	 *
	 * Params:
	 *     paths = List of paths identifying a
	 *         particular dataset.
	 * Returns: The newly created #GAFlightPathDescriptor.
	 *
	 * Since: 5.0.0
	 *
	 * Throws: ConstructionException GTK+ fails to create the object.
	 */
	public this(string[] paths)
	{
		auto __p = gaflight_path_descriptor_new(Str.toStringzArray(paths), cast(size_t)paths.length);

		if(__p is null)
		{
			throw new ConstructionException("null returned by new");
		}

		this(cast(GAFlightPathDescriptor*) __p, true);
	}

	/**
	 * Returns: The paths in this descriptor.
	 *
	 *     It must be freed with g_strfreev() when no longer needed.
	 *
	 * Since: 5.0.0
	 */
	public string[] getPaths()
	{
		auto retStr = gaflight_path_descriptor_get_paths(gAFlightPathDescriptor);

		scope(exit) Str.freeStringArray(retStr);
		return Str.toStringArray(retStr);
	}
}
