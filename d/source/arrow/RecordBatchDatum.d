module arrow.RecordBatchDatum;

private import arrow.Datum;
private import arrow.RecordBatch;
private import arrow.c.functions;
public  import arrow.c.types;
private import glib.ConstructionException;
private import gobject.ObjectG;


/** */
public class RecordBatchDatum : Datum
{
	/** the main Gtk struct */
	protected GArrowRecordBatchDatum* gArrowRecordBatchDatum;

	/** Get the main Gtk struct */
	public GArrowRecordBatchDatum* getRecordBatchDatumStruct(bool transferOwnership = false)
	{
		if (transferOwnership)
			ownedRef = false;
		return gArrowRecordBatchDatum;
	}

	/** the main Gtk struct as a void* */
	protected override void* getStruct()
	{
		return cast(void*)gArrowRecordBatchDatum;
	}

	/**
	 * Sets our main struct and passes it to the parent class.
	 */
	public this (GArrowRecordBatchDatum* gArrowRecordBatchDatum, bool ownedRef = false)
	{
		this.gArrowRecordBatchDatum = gArrowRecordBatchDatum;
		super(cast(GArrowDatum*)gArrowRecordBatchDatum, ownedRef);
	}


	/** */
	public static GType getType()
	{
		return garrow_record_batch_datum_get_type();
	}

	/**
	 *
	 * Params:
	 *     value = A #GArrowRecordBatch.
	 * Returns: A newly created #GArrowRecordBatchDatum.
	 *
	 * Since: 1.0.0
	 *
	 * Throws: ConstructionException GTK+ fails to create the object.
	 */
	public this(RecordBatch value)
	{
		auto __p = garrow_record_batch_datum_new((value is null) ? null : value.getRecordBatchStruct());

		if(__p is null)
		{
			throw new ConstructionException("null returned by new");
		}

		this(cast(GArrowRecordBatchDatum*) __p, true);
	}
}
