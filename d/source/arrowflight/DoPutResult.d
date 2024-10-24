module arrowflight.DoPutResult;

private import arrowflight.c.functions;
public  import arrowflight.c.types;
private import gobject.ObjectG;


/** */
public class DoPutResult : ObjectG
{
	/** the main Gtk struct */
	protected GAFlightDoPutResult* gAFlightDoPutResult;

	/** Get the main Gtk struct */
	public GAFlightDoPutResult* getDoPutResultStruct(bool transferOwnership = false)
	{
		if (transferOwnership)
			ownedRef = false;
		return gAFlightDoPutResult;
	}

	/** the main Gtk struct as a void* */
	protected override void* getStruct()
	{
		return cast(void*)gAFlightDoPutResult;
	}

	/**
	 * Sets our main struct and passes it to the parent class.
	 */
	public this (GAFlightDoPutResult* gAFlightDoPutResult, bool ownedRef = false)
	{
		this.gAFlightDoPutResult = gAFlightDoPutResult;
		super(cast(GObject*)gAFlightDoPutResult, ownedRef);
	}


	/** */
	public static GType getType()
	{
		return gaflight_do_put_result_get_type();
	}
}
