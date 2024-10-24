module arrowflight.ServableIF;

private import arrowflight.c.functions;
public  import arrowflight.c.types;


/** */
public interface ServableIF{
	/** Get the main Gtk struct */
	public GAFlightServable* getServableStruct(bool transferOwnership = false);

	/** the main Gtk struct as a void* */
	protected void* getStruct();


	/** */
	public static GType getType()
	{
		return gaflight_servable_get_type();
	}
}
