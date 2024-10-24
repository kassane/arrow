module arrowflight.CommandDescriptor;

private import arrowflight.Descriptor;
private import arrowflight.c.functions;
public  import arrowflight.c.types;
private import glib.ConstructionException;
private import glib.Str;
private import glib.c.functions;
private import gobject.ObjectG;


/** */
public class CommandDescriptor : Descriptor
{
	/** the main Gtk struct */
	protected GAFlightCommandDescriptor* gAFlightCommandDescriptor;

	/** Get the main Gtk struct */
	public GAFlightCommandDescriptor* getCommandDescriptorStruct(bool transferOwnership = false)
	{
		if (transferOwnership)
			ownedRef = false;
		return gAFlightCommandDescriptor;
	}

	/** the main Gtk struct as a void* */
	protected override void* getStruct()
	{
		return cast(void*)gAFlightCommandDescriptor;
	}

	/**
	 * Sets our main struct and passes it to the parent class.
	 */
	public this (GAFlightCommandDescriptor* gAFlightCommandDescriptor, bool ownedRef = false)
	{
		this.gAFlightCommandDescriptor = gAFlightCommandDescriptor;
		super(cast(GAFlightDescriptor*)gAFlightCommandDescriptor, ownedRef);
	}


	/** */
	public static GType getType()
	{
		return gaflight_command_descriptor_get_type();
	}

	/**
	 *
	 * Params:
	 *     command = Opaque value used to express a command.
	 * Returns: The newly created #GAFlightCommandDescriptor.
	 *
	 * Since: 5.0.0
	 *
	 * Throws: ConstructionException GTK+ fails to create the object.
	 */
	public this(string command)
	{
		auto __p = gaflight_command_descriptor_new(Str.toStringz(command));

		if(__p is null)
		{
			throw new ConstructionException("null returned by new");
		}

		this(cast(GAFlightCommandDescriptor*) __p, true);
	}

	/**
	 * Returns: The opaque value used to express a command.
	 *
	 *     It should be freed with g_free() when no longer needed.
	 *
	 * Since: 5.0.0
	 */
	public string getCommand()
	{
		auto retStr = gaflight_command_descriptor_get_command(gAFlightCommandDescriptor);

		scope(exit) Str.freeString(retStr);
		return Str.toString(retStr);
	}
}
