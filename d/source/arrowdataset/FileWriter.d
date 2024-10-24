module arrowdataset.FileWriter;

private import arrow.RecordBatch;
private import arrow.RecordBatchReader;
private import arrowdataset.c.functions;
public  import arrowdataset.c.types;
private import glib.ErrorG;
private import glib.GException;
private import gobject.ObjectG;


/** */
public class FileWriter : ObjectG
{
	/** the main Gtk struct */
	protected GADatasetFileWriter* gADatasetFileWriter;

	/** Get the main Gtk struct */
	public GADatasetFileWriter* getFileWriterStruct(bool transferOwnership = false)
	{
		if (transferOwnership)
			ownedRef = false;
		return gADatasetFileWriter;
	}

	/** the main Gtk struct as a void* */
	protected override void* getStruct()
	{
		return cast(void*)gADatasetFileWriter;
	}

	/**
	 * Sets our main struct and passes it to the parent class.
	 */
	public this (GADatasetFileWriter* gADatasetFileWriter, bool ownedRef = false)
	{
		this.gADatasetFileWriter = gADatasetFileWriter;
		super(cast(GObject*)gADatasetFileWriter, ownedRef);
	}


	/** */
	public static GType getType()
	{
		return gadataset_file_writer_get_type();
	}

	/**
	 * Returns: %TRUE on success, %FALSE on error.
	 *
	 * Since: 6.0.0
	 *
	 * Throws: GException on failure.
	 */
	public bool finish()
	{
		GError* err = null;

		auto __p = gadataset_file_writer_finish(gADatasetFileWriter, &err) != 0;

		if (err !is null)
		{
			throw new GException( new ErrorG(err) );
		}

		return __p;
	}

	/**
	 *
	 * Params:
	 *     recordBatch = A #GArrowRecordBatch to be written.
	 * Returns: %TRUE on success, %FALSE on error.
	 *
	 * Since: 6.0.0
	 *
	 * Throws: GException on failure.
	 */
	public bool writeRecordBatch(RecordBatch recordBatch)
	{
		GError* err = null;

		auto __p = gadataset_file_writer_write_record_batch(gADatasetFileWriter, (recordBatch is null) ? null : recordBatch.getRecordBatchStruct(), &err) != 0;

		if (err !is null)
		{
			throw new GException( new ErrorG(err) );
		}

		return __p;
	}

	/**
	 *
	 * Params:
	 *     reader = A #GArrowRecordBatchReader to be written.
	 * Returns: %TRUE on success, %FALSE on error.
	 *
	 * Since: 6.0.0
	 *
	 * Throws: GException on failure.
	 */
	public bool writeRecordBatchReader(RecordBatchReader reader)
	{
		GError* err = null;

		auto __p = gadataset_file_writer_write_record_batch_reader(gADatasetFileWriter, (reader is null) ? null : reader.getRecordBatchReaderStruct(), &err) != 0;

		if (err !is null)
		{
			throw new GException( new ErrorG(err) );
		}

		return __p;
	}
}
