module arrowflight.Descriptor;

private import arrowflight.c.functions;
public  import arrowflight.c.types;
private import glib.Str;
private import glib.c.functions;
private import gobject.ObjectG;


/** */
public class Descriptor : ObjectG
{
	/** the main Gtk struct */
	protected GAFlightDescriptor* gAFlightDescriptor;

	/** Get the main Gtk struct */
	public GAFlightDescriptor* getDescriptorStruct(bool transferOwnership = false)
	{
		if (transferOwnership)
			ownedRef = false;
		return gAFlightDescriptor;
	}

	/** the main Gtk struct as a void* */
	protected override void* getStruct()
	{
		return cast(void*)gAFlightDescriptor;
	}

	/**
	 * Sets our main struct and passes it to the parent class.
	 */
	public this (GAFlightDescriptor* gAFlightDescriptor, bool ownedRef = false)
	{
		this.gAFlightDescriptor = gAFlightDescriptor;
		super(cast(GObject*)gAFlightDescriptor, ownedRef);
	}


	/** */
	public static GType getType()
	{
		return gaflight_descriptor_get_type();
	}

	/**
	 *
	 * Params:
	 *     otherDescriptor = A #GAFlightDescriptor to be compared.
	 * Returns: %TRUE if both of them represents the same descriptor,
	 *     %FALSE otherwise.
	 *
	 * Since: 5.0.0
	 */
	public bool equal(Descriptor otherDescriptor)
	{
		return gaflight_descriptor_equal(gAFlightDescriptor, (otherDescriptor is null) ? null : otherDescriptor.getDescriptorStruct()) != 0;
	}

	/**
	 * Returns: A descriptor as a string.
	 *
	 *     It should be freed with g_free() when no longer needed.
	 *
	 * Since: 5.0.0
	 */
	public override string toString()
	{
		auto retStr = gaflight_descriptor_to_string(gAFlightDescriptor);

		scope(exit) Str.freeString(retStr);
		return Str.toString(retStr);
	}
}
