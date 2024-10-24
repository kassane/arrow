module arrowflight.Criteria;

private import arrowflight.c.functions;
public  import arrowflight.c.types;
private import glib.Bytes;
private import glib.ConstructionException;
private import gobject.ObjectG;


/** */
public class Criteria : ObjectG
{
	/** the main Gtk struct */
	protected GAFlightCriteria* gAFlightCriteria;

	/** Get the main Gtk struct */
	public GAFlightCriteria* getCriteriaStruct(bool transferOwnership = false)
	{
		if (transferOwnership)
			ownedRef = false;
		return gAFlightCriteria;
	}

	/** the main Gtk struct as a void* */
	protected override void* getStruct()
	{
		return cast(void*)gAFlightCriteria;
	}

	/**
	 * Sets our main struct and passes it to the parent class.
	 */
	public this (GAFlightCriteria* gAFlightCriteria, bool ownedRef = false)
	{
		this.gAFlightCriteria = gAFlightCriteria;
		super(cast(GObject*)gAFlightCriteria, ownedRef);
	}


	/** */
	public static GType getType()
	{
		return gaflight_criteria_get_type();
	}

	/**
	 *
	 * Params:
	 *     expression = A #GBytes.
	 * Returns: The newly created #GAFlightCriteria, %NULL on error.
	 *
	 * Since: 5.0.0
	 *
	 * Throws: ConstructionException GTK+ fails to create the object.
	 */
	public this(Bytes expression)
	{
		auto __p = gaflight_criteria_new((expression is null) ? null : expression.getBytesStruct());

		if(__p is null)
		{
			throw new ConstructionException("null returned by new");
		}

		this(cast(GAFlightCriteria*) __p, true);
	}
}
