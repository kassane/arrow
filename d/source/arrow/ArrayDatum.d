module arrow.ArrayDatum;

private import arrow.Array;
private import arrow.Datum;
private import arrow.c.functions;
public  import arrow.c.types;
private import glib.ConstructionException;
private import gobject.ObjectG;


/** */
public class ArrayDatum : Datum
{
	/** the main Gtk struct */
	protected GArrowArrayDatum* gArrowArrayDatum;

	/** Get the main Gtk struct */
	public GArrowArrayDatum* getArrayDatumStruct(bool transferOwnership = false)
	{
		if (transferOwnership)
			ownedRef = false;
		return gArrowArrayDatum;
	}

	/** the main Gtk struct as a void* */
	protected override void* getStruct()
	{
		return cast(void*)gArrowArrayDatum;
	}

	/**
	 * Sets our main struct and passes it to the parent class.
	 */
	public this (GArrowArrayDatum* gArrowArrayDatum, bool ownedRef = false)
	{
		this.gArrowArrayDatum = gArrowArrayDatum;
		super(cast(GArrowDatum*)gArrowArrayDatum, ownedRef);
	}


	/** */
	public static GType getType()
	{
		return garrow_array_datum_get_type();
	}

	/**
	 *
	 * Params:
	 *     value = A #GArrowArray.
	 * Returns: A newly created #GArrowArrayDatum.
	 *
	 * Since: 1.0.0
	 *
	 * Throws: ConstructionException GTK+ fails to create the object.
	 */
	public this(Array value)
	{
		auto __p = garrow_array_datum_new((value is null) ? null : value.getArrayStruct());

		if(__p is null)
		{
			throw new ConstructionException("null returned by new");
		}

		this(cast(GArrowArrayDatum*) __p, true);
	}
}
