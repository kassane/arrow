module arrow.TableBatchReader;

private import arrow.RecordBatchReader;
private import arrow.Table;
private import arrow.c.functions;
public  import arrow.c.types;
private import glib.ConstructionException;
private import gobject.ObjectG;


/** */
public class TableBatchReader : RecordBatchReader
{
	/** the main Gtk struct */
	protected GArrowTableBatchReader* gArrowTableBatchReader;

	/** Get the main Gtk struct */
	public GArrowTableBatchReader* getTableBatchReaderStruct(bool transferOwnership = false)
	{
		if (transferOwnership)
			ownedRef = false;
		return gArrowTableBatchReader;
	}

	/** the main Gtk struct as a void* */
	protected override void* getStruct()
	{
		return cast(void*)gArrowTableBatchReader;
	}

	/**
	 * Sets our main struct and passes it to the parent class.
	 */
	public this (GArrowTableBatchReader* gArrowTableBatchReader, bool ownedRef = false)
	{
		this.gArrowTableBatchReader = gArrowTableBatchReader;
		super(cast(GArrowRecordBatchReader*)gArrowTableBatchReader, ownedRef);
	}


	/** */
	public static GType getType()
	{
		return garrow_table_batch_reader_get_type();
	}

	/**
	 *
	 * Params:
	 *     table = The table to be read.
	 * Returns: A newly created #GArrowTableBatchReader.
	 *
	 * Since: 0.8.0
	 *
	 * Throws: ConstructionException GTK+ fails to create the object.
	 */
	public this(Table table)
	{
		auto __p = garrow_table_batch_reader_new((table is null) ? null : table.getTableStruct());

		if(__p is null)
		{
			throw new ConstructionException("null returned by new");
		}

		this(cast(GArrowTableBatchReader*) __p, true);
	}

	/**
	 * Set the desired maximum chunk size of record batches.
	 *
	 * The actual chunk size of each record batch may be smaller,
	 * depending on actual chunking characteristics of each table column.
	 *
	 * Params:
	 *     maxChunkSize = The maximum chunk size of record batches.
	 *
	 * Since: 12.0.0
	 */
	public void setMaxChunkSize(long maxChunkSize)
	{
		garrow_table_batch_reader_set_max_chunk_size(gArrowTableBatchReader, maxChunkSize);
	}
}
