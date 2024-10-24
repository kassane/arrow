module arrowdataset.Scanner;

private import arrow.RecordBatchReader;
private import arrow.Table;
private import arrowdataset.c.functions;
public  import arrowdataset.c.types;
private import glib.ErrorG;
private import glib.GException;
private import gobject.ObjectG;


/** */
public class Scanner : ObjectG
{
	/** the main Gtk struct */
	protected GADatasetScanner* gADatasetScanner;

	/** Get the main Gtk struct */
	public GADatasetScanner* getScannerStruct(bool transferOwnership = false)
	{
		if (transferOwnership)
			ownedRef = false;
		return gADatasetScanner;
	}

	/** the main Gtk struct as a void* */
	protected override void* getStruct()
	{
		return cast(void*)gADatasetScanner;
	}

	/**
	 * Sets our main struct and passes it to the parent class.
	 */
	public this (GADatasetScanner* gADatasetScanner, bool ownedRef = false)
	{
		this.gADatasetScanner = gADatasetScanner;
		super(cast(GObject*)gADatasetScanner, ownedRef);
	}


	/** */
	public static GType getType()
	{
		return gadataset_scanner_get_type();
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

		auto __p = gadataset_scanner_to_record_batch_reader(gADatasetScanner, &err);

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
	 * Returns: A newly created #GArrowTable on success, %NULL on error.
	 *
	 * Since: 5.0.0
	 *
	 * Throws: GException on failure.
	 */
	public Table toTable()
	{
		GError* err = null;

		auto __p = gadataset_scanner_to_table(gADatasetScanner, &err);

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
