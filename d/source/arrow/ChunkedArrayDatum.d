module arrow.ChunkedArrayDatum;

private import arrow.ChunkedArray;
private import arrow.Datum;
private import arrow.c.functions;
public  import arrow.c.types;
private import glib.ConstructionException;
private import gobject.ObjectG;


/** */
public class ChunkedArrayDatum : Datum
{
	/** the main Gtk struct */
	protected GArrowChunkedArrayDatum* gArrowChunkedArrayDatum;

	/** Get the main Gtk struct */
	public GArrowChunkedArrayDatum* getChunkedArrayDatumStruct(bool transferOwnership = false)
	{
		if (transferOwnership)
			ownedRef = false;
		return gArrowChunkedArrayDatum;
	}

	/** the main Gtk struct as a void* */
	protected override void* getStruct()
	{
		return cast(void*)gArrowChunkedArrayDatum;
	}

	/**
	 * Sets our main struct and passes it to the parent class.
	 */
	public this (GArrowChunkedArrayDatum* gArrowChunkedArrayDatum, bool ownedRef = false)
	{
		this.gArrowChunkedArrayDatum = gArrowChunkedArrayDatum;
		super(cast(GArrowDatum*)gArrowChunkedArrayDatum, ownedRef);
	}


	/** */
	public static GType getType()
	{
		return garrow_chunked_array_datum_get_type();
	}

	/**
	 *
	 * Params:
	 *     value = A #GArrowChunkedArray.
	 * Returns: A newly created #GArrowChunkedArrayDatum.
	 *
	 * Since: 1.0.0
	 *
	 * Throws: ConstructionException GTK+ fails to create the object.
	 */
	public this(ChunkedArray value)
	{
		auto __p = garrow_chunked_array_datum_new((value is null) ? null : value.getChunkedArrayStruct());

		if(__p is null)
		{
			throw new ConstructionException("null returned by new");
		}

		this(cast(GArrowChunkedArrayDatum*) __p, true);
	}
}
