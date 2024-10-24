module arrowdataset.ParquetFileFormat;

private import arrowdataset.FileFormat;
private import arrowdataset.c.functions;
public  import arrowdataset.c.types;
private import glib.ConstructionException;
private import gobject.ObjectG;


/** */
public class ParquetFileFormat : FileFormat
{
	/** the main Gtk struct */
	protected GADatasetParquetFileFormat* gADatasetParquetFileFormat;

	/** Get the main Gtk struct */
	public GADatasetParquetFileFormat* getParquetFileFormatStruct(bool transferOwnership = false)
	{
		if (transferOwnership)
			ownedRef = false;
		return gADatasetParquetFileFormat;
	}

	/** the main Gtk struct as a void* */
	protected override void* getStruct()
	{
		return cast(void*)gADatasetParquetFileFormat;
	}

	/**
	 * Sets our main struct and passes it to the parent class.
	 */
	public this (GADatasetParquetFileFormat* gADatasetParquetFileFormat, bool ownedRef = false)
	{
		this.gADatasetParquetFileFormat = gADatasetParquetFileFormat;
		super(cast(GADatasetFileFormat*)gADatasetParquetFileFormat, ownedRef);
	}


	/** */
	public static GType getType()
	{
		return gadataset_parquet_file_format_get_type();
	}

	/**
	 * Returns: The newly created Parquet file format.
	 *
	 * Since: 3.0.0
	 *
	 * Throws: ConstructionException GTK+ fails to create the object.
	 */
	public this()
	{
		auto __p = gadataset_parquet_file_format_new();

		if(__p is null)
		{
			throw new ConstructionException("null returned by new");
		}

		this(cast(GADatasetParquetFileFormat*) __p, true);
	}
}
