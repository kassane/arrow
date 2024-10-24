module arrowdataset.Dataset;

private import arrow.RecordBatchReader;
private import arrow.Table;
private import arrowdataset.ScannerBuilder;
private import arrowdataset.c.functions;
public  import arrowdataset.c.types;
private import glib.ErrorG;
private import glib.GException;
private import glib.Str;
private import glib.c.functions;
private import gobject.ObjectG;


/** */
public class Dataset : ObjectG
{
	/** the main Gtk struct */
	protected GADatasetDataset* gADatasetDataset;

	/** Get the main Gtk struct */
	public GADatasetDataset* getDatasetStruct(bool transferOwnership = false)
	{
		if (transferOwnership)
			ownedRef = false;
		return gADatasetDataset;
	}

	/** the main Gtk struct as a void* */
	protected override void* getStruct()
	{
		return cast(void*)gADatasetDataset;
	}

	/**
	 * Sets our main struct and passes it to the parent class.
	 */
	public this (GADatasetDataset* gADatasetDataset, bool ownedRef = false)
	{
		this.gADatasetDataset = gADatasetDataset;
		super(cast(GObject*)gADatasetDataset, ownedRef);
	}


	/** */
	public static GType getType()
	{
		return gadataset_dataset_get_type();
	}

	/**
	 * Returns: A newly created #GADatasetScannerBuilder on success, %NULL on error.
	 *
	 * Since: 5.0.0
	 *
	 * Throws: GException on failure.
	 */
	public ScannerBuilder beginScan()
	{
		GError* err = null;

		auto __p = gadataset_dataset_begin_scan(gADatasetDataset, &err);

		if (err !is null)
		{
			throw new GException( new ErrorG(err) );
		}

		if(__p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(ScannerBuilder)(cast(GADatasetScannerBuilder*) __p, true);
	}

	/**
	 * Returns: The type name of @dataset.
	 *
	 *     It should be freed with g_free() when no longer needed.
	 *
	 * Since: 5.0.0
	 */
	public string getTypeName()
	{
		auto retStr = gadataset_dataset_get_type_name(gADatasetDataset);

		scope(exit) Str.freeString(retStr);
		return Str.toString(retStr);
	}

	/**
	 * Returns: A #GArrowRecordBatchReader on success, %NULL on error.
	 *
	 * Since: 17.0.0
	 *
	 * Throws: GException on failure.
	 */
	public RecordBatchReader toRecordBatchReader()
	{
		GError* err = null;

		auto __p = gadataset_dataset_to_record_batch_reader(gADatasetDataset, &err);

		if (err !is null)
		{
			throw new GException( new ErrorG(err) );
		}

		if(__p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(RecordBatchReader)(cast(GArrowRecordBatchReader*) __p, true);
	}

	/**
	 * Returns: A loaded #GArrowTable on success, %NULL on error.
	 *
	 * Since: 5.0.0
	 *
	 * Throws: GException on failure.
	 */
	public Table toTable()
	{
		GError* err = null;

		auto __p = gadataset_dataset_to_table(gADatasetDataset, &err);

		if (err !is null)
		{
			throw new GException( new ErrorG(err) );
		}

		if(__p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(Table)(cast(GArrowTable*) __p, true);
	}
}
