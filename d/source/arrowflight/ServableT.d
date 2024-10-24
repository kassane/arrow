module arrowflight.ServableT;

public  import arrowflight.c.functions;
public  import arrowflight.c.types;


/** */
public template ServableT(TStruct)
{
	/** Get the main Gtk struct */
	public GAFlightServable* getServableStruct(bool transferOwnership = false)
	{
		if (transferOwnership)
			ownedRef = false;
		return cast(GAFlightServable*)getStruct();
	}

}
