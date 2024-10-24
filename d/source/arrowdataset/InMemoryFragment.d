module arrowdataset.InMemoryFragment;

private import arrow.RecordBatch;
private import arrow.Schema;
private import arrowdataset.Fragment;
private import arrowdataset.c.functions;
public  import arrowdataset.c.types;
private import glib.ConstructionException;
private import gobject.ObjectG;


/** */
public class InMemoryFragment : Fragment
{
	/** the main Gtk struct */
	protected GADatasetInMemoryFragment* gADatasetInMemoryFragment;

	/** Get the main Gtk struct */
	public GADatasetInMemoryFragment* getInMemoryFragmentStruct(bool transferOwnership = false)
	{
		if (transferOwnership)
			ownedRef = false;
		return gADatasetInMemoryFragment;
	}

	/** the main Gtk struct as a void* */
	protected override void* getStruct()
	{
		return cast(void*)gADatasetInMemoryFragment;
	}

	/**
	 * Sets our main struct and passes it to the parent class.
	 */
	public this (GADatasetInMemoryFragment* gADatasetInMemoryFragment, bool ownedRef = false)
	{
		this.gADatasetInMemoryFragment = gADatasetInMemoryFragment;
		super(cast(GADatasetFragment*)gADatasetInMemoryFragment, ownedRef);
	}


	/** */
	public static GType getType()
	{
		return gadataset_in_memory_fragment_get_type();
	}

	/**
	 *
	 * Params:
	 *     schema = A #GArrowSchema.
	 *     recordBatches = The record batches of the table.
	 * Returns: A newly created #GADatasetInMemoryFragment.
	 *
	 * Since: 4.0.0
	 *
	 * Throws: ConstructionException GTK+ fails to create the object.
	 */
	public this(Schema schema, RecordBatch[] recordBatches)
	{
		GArrowRecordBatch*[] recordBatchesArray = new GArrowRecordBatch*[recordBatches.length];
		for ( int i = 0; i < recordBatches.length; i++ )
		{
			recordBatchesArray[i] = recordBatches[i].getRecordBatchStruct();
		}

		auto __p = gadataset_in_memory_fragment_new((schema is null) ? null : schema.getSchemaStruct(), recordBatchesArray.ptr, cast(size_t)recordBatches.length);

		if(__p is null)
		{
			throw new ConstructionException("null returned by new");
		}

		this(cast(GADatasetInMemoryFragment*) __p, true);
	}
}
