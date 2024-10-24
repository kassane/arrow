module arrowdataset.ScannerBuilder;

private import arrow.Expression;
private import arrow.RecordBatchReader;
private import arrowdataset.Dataset;
private import arrowdataset.Scanner;
private import arrowdataset.c.functions;
public  import arrowdataset.c.types;
private import glib.ConstructionException;
private import glib.ErrorG;
private import glib.GException;
private import gobject.ObjectG;


/** */
public class ScannerBuilder : ObjectG
{
	/** the main Gtk struct */
	protected GADatasetScannerBuilder* gADatasetScannerBuilder;

	/** Get the main Gtk struct */
	public GADatasetScannerBuilder* getScannerBuilderStruct(bool transferOwnership = false)
	{
		if (transferOwnership)
			ownedRef = false;
		return gADatasetScannerBuilder;
	}

	/** the main Gtk struct as a void* */
	protected override void* getStruct()
	{
		return cast(void*)gADatasetScannerBuilder;
	}

	/**
	 * Sets our main struct and passes it to the parent class.
	 */
	public this (GADatasetScannerBuilder* gADatasetScannerBuilder, bool ownedRef = false)
	{
		this.gADatasetScannerBuilder = gADatasetScannerBuilder;
		super(cast(GObject*)gADatasetScannerBuilder, ownedRef);
	}


	/** */
	public static GType getType()
	{
		return gadataset_scanner_builder_get_type();
	}

	/**
	 *
	 * Params:
	 *     dataset = A #GADatasetDataset to be scanned.
	 * Returns: A newly created #GADatasetScannerBuilder on success,
	 *     %NULL on error.
	 *
	 * Since: 5.0.0
	 *
	 * Throws: GException on failure.
	 * Throws: ConstructionException GTK+ fails to create the object.
	 */
	public this(Dataset dataset)
	{
		GError* err = null;

		auto __p = gadataset_scanner_builder_new((dataset is null) ? null : dataset.getDatasetStruct(), &err);

		if (err !is null)
		{
			throw new GException( new ErrorG(err) );
		}

		if(__p is null)
		{
			throw new ConstructionException("null returned by new");
		}

		this(cast(GADatasetScannerBuilder*) __p, true);
	}

	/**
	 *
	 * Params:
	 *     reader = A #GArrowRecordBatchReader that produces record batches.
	 * Returns: A newly created #GADatasetScannerBuilder.
	 *
	 * Since: 6.0.0
	 *
	 * Throws: ConstructionException GTK+ fails to create the object.
	 */
	public this(RecordBatchReader reader)
	{
		auto __p = gadataset_scanner_builder_new_record_batch_reader((reader is null) ? null : reader.getRecordBatchReaderStruct());

		if(__p is null)
		{
			throw new ConstructionException("null returned by new_record_batch_reader");
		}

		this(cast(GADatasetScannerBuilder*) __p, true);
	}

	/**
	 * Returns: A newly created #GADatasetScanner on success, %NULL on error.
	 *
	 * Since: 5.0.0
	 *
	 * Throws: GException on failure.
	 */
	public Scanner finish()
	{
		GError* err = null;

		auto __p = gadataset_scanner_builder_finish(gADatasetScannerBuilder, &err);

		if (err !is null)
		{
			throw new GException( new ErrorG(err) );
		}

		if(__p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(Scanner)(cast(GADatasetScanner*) __p, true);
	}

	/**
	 *
	 * Params:
	 *     expression = A #GArrowExpression to filter rows with.
	 * Returns: %TRUE on success, %FALSE on error.
	 *
	 * Since: 6.0.0
	 *
	 * Throws: GException on failure.
	 */
	public bool setFilter(Expression expression)
	{
		GError* err = null;

		auto __p = gadataset_scanner_builder_set_filter(gADatasetScannerBuilder, (expression is null) ? null : expression.getExpressionStruct(), &err) != 0;

		if (err !is null)
		{
			throw new GException( new ErrorG(err) );
		}

		return __p;
	}
}
