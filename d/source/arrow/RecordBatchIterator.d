module arrow.RecordBatchIterator;

private import arrow.RecordBatch;
private import arrow.c.functions;
public  import arrow.c.types;
private import glib.ConstructionException;
private import glib.ErrorG;
private import glib.GException;
private import glib.ListG;
private import gobject.ObjectG;


/** */
public class RecordBatchIterator : ObjectG
{
	/** the main Gtk struct */
	protected GArrowRecordBatchIterator* gArrowRecordBatchIterator;

	/** Get the main Gtk struct */
	public GArrowRecordBatchIterator* getRecordBatchIteratorStruct(bool transferOwnership = false)
	{
		if (transferOwnership)
			ownedRef = false;
		return gArrowRecordBatchIterator;
	}

	/** the main Gtk struct as a void* */
	protected override void* getStruct()
	{
		return cast(void*)gArrowRecordBatchIterator;
	}

	/**
	 * Sets our main struct and passes it to the parent class.
	 */
	public this (GArrowRecordBatchIterator* gArrowRecordBatchIterator, bool ownedRef = false)
	{
		this.gArrowRecordBatchIterator = gArrowRecordBatchIterator;
		super(cast(GObject*)gArrowRecordBatchIterator, ownedRef);
	}


	/** */
	public static GType getType()
	{
		return garrow_record_batch_iterator_get_type();
	}

	/**
	 *
	 * Params:
	 *     recordBatches = The record batches.
	 * Returns: A newly created #GArrowRecordBatchIterator.
	 *
	 * Since: 0.17.0
	 *
	 * Throws: ConstructionException GTK+ fails to create the object.
	 */
	public this(ListG recordBatches)
	{
		auto __p = garrow_record_batch_iterator_new((recordBatches is null) ? null : recordBatches.getListGStruct());

		if(__p is null)
		{
			throw new ConstructionException("null returned by new");
		}

		this(cast(GArrowRecordBatchIterator*) __p, true);
	}

	/**
	 *
	 * Params:
	 *     otherIterator = A #GArrowRecordBatchIterator to be compared.
	 * Returns: %TRUE if both iterators are the same, %FALSE otherwise.
	 *
	 * Since: 0.17.0
	 */
	public bool equal(RecordBatchIterator otherIterator)
	{
		return garrow_record_batch_iterator_equal(gArrowRecordBatchIterator, (otherIterator is null) ? null : otherIterator.getRecordBatchIteratorStruct()) != 0;
	}

	/**
	 * Returns: The next #GArrowRecordBatch, or %NULL when the iterator is completed.
	 *
	 * Since: 0.17.0
	 *
	 * Throws: GException on failure.
	 */
	public RecordBatch next()
	{
		GError* err = null;

		auto __p = garrow_record_batch_iterator_next(gArrowRecordBatchIterator, &err);

		if (err !is null)
		{
			throw new GException( new ErrorG(err) );
		}

		if(__p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(RecordBatch)(cast(GArrowRecordBatch*) __p, true);
	}

	/**
	 * Returns: A #GList contains every moved elements from the iterator.
	 *
	 * Since: 0.17.0
	 *
	 * Throws: GException on failure.
	 */
	public ListG toList()
	{
		GError* err = null;

		auto __p = garrow_record_batch_iterator_to_list(gArrowRecordBatchIterator, &err);

		if (err !is null)
		{
			throw new GException( new ErrorG(err) );
		}

		if(__p is null)
		{
			return null;
		}

		return new ListG(cast(GList*) __p, true);
	}
}
