module arrow.TableDatum;

private import arrow.Datum;
private import arrow.Table;
private import arrow.c.functions;
public  import arrow.c.types;
private import glib.ConstructionException;
private import gobject.ObjectG;


/** */
public class TableDatum : Datum
{
	/** the main Gtk struct */
	protected GArrowTableDatum* gArrowTableDatum;

	/** Get the main Gtk struct */
	public GArrowTableDatum* getTableDatumStruct(bool transferOwnership = false)
	{
		if (transferOwnership)
			ownedRef = false;
		return gArrowTableDatum;
	}

	/** the main Gtk struct as a void* */
	protected override void* getStruct()
	{
		return cast(void*)gArrowTableDatum;
	}

	/**
	 * Sets our main struct and passes it to the parent class.
	 */
	public this (GArrowTableDatum* gArrowTableDatum, bool ownedRef = false)
	{
		this.gArrowTableDatum = gArrowTableDatum;
		super(cast(GArrowDatum*)gArrowTableDatum, ownedRef);
	}


	/** */
	public static GType getType()
	{
		return garrow_table_datum_get_type();
	}

	/**
	 *
	 * Params:
	 *     value = A #GArrowTable.
	 * Returns: A newly created #GArrowTableDatum.
	 *
	 * Since: 1.0.0
	 *
	 * Throws: ConstructionException GTK+ fails to create the object.
	 */
	public this(Table value)
	{
		auto __p = garrow_table_datum_new((value is null) ? null : value.getTableStruct());

		if(__p is null)
		{
			throw new ConstructionException("null returned by new");
		}

		this(cast(GArrowTableDatum*) __p, true);
	}
}
