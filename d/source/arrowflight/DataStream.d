module arrowflight.DataStream;

private import arrowflight.c.functions;
public  import arrowflight.c.types;
private import gobject.ObjectG;


/** */
public class DataStream : ObjectG
{
	/** the main Gtk struct */
	protected GAFlightDataStream* gAFlightDataStream;

	/** Get the main Gtk struct */
	public GAFlightDataStream* getDataStreamStruct(bool transferOwnership = false)
	{
		if (transferOwnership)
			ownedRef = false;
		return gAFlightDataStream;
	}

	/** the main Gtk struct as a void* */
	protected override void* getStruct()
	{
		return cast(void*)gAFlightDataStream;
	}

	/**
	 * Sets our main struct and passes it to the parent class.
	 */
	public this (GAFlightDataStream* gAFlightDataStream, bool ownedRef = false)
	{
		this.gAFlightDataStream = gAFlightDataStream;
		super(cast(GObject*)gAFlightDataStream, ownedRef);
	}


	/** */
	public static GType getType()
	{
		return gaflight_data_stream_get_type();
	}
}
