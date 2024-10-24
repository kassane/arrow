module arrowflight.MessageReader;

private import arrowflight.Descriptor;
private import arrowflight.RecordBatchReader;
private import arrowflight.c.functions;
public  import arrowflight.c.types;
private import gobject.ObjectG;


/** */
public class MessageReader : RecordBatchReader
{
	/** the main Gtk struct */
	protected GAFlightMessageReader* gAFlightMessageReader;

	/** Get the main Gtk struct */
	public GAFlightMessageReader* getMessageReaderStruct(bool transferOwnership = false)
	{
		if (transferOwnership)
			ownedRef = false;
		return gAFlightMessageReader;
	}

	/** the main Gtk struct as a void* */
	protected override void* getStruct()
	{
		return cast(void*)gAFlightMessageReader;
	}

	/**
	 * Sets our main struct and passes it to the parent class.
	 */
	public this (GAFlightMessageReader* gAFlightMessageReader, bool ownedRef = false)
	{
		this.gAFlightMessageReader = gAFlightMessageReader;
		super(cast(GAFlightRecordBatchReader*)gAFlightMessageReader, ownedRef);
	}


	/** */
	public static GType getType()
	{
		return gaflight_message_reader_get_type();
	}

	/**
	 * Returns: The descriptor for this upload.
	 *
	 * Since: 14.0.0
	 */
	public Descriptor getDescriptor()
	{
		auto __p = gaflight_message_reader_get_descriptor(gAFlightMessageReader);

		if(__p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(Descriptor)(cast(GAFlightDescriptor*) __p, true);
	}
}
