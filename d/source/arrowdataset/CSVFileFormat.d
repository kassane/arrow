module arrowdataset.CSVFileFormat;

private import arrowdataset.FileFormat;
private import arrowdataset.c.functions;
public  import arrowdataset.c.types;
private import glib.ConstructionException;
private import gobject.ObjectG;


/** */
public class CSVFileFormat : FileFormat
{
	/** the main Gtk struct */
	protected GADatasetCSVFileFormat* gADatasetCSVFileFormat;

	/** Get the main Gtk struct */
	public GADatasetCSVFileFormat* getCSVFileFormatStruct(bool transferOwnership = false)
	{
		if (transferOwnership)
			ownedRef = false;
		return gADatasetCSVFileFormat;
	}

	/** the main Gtk struct as a void* */
	protected override void* getStruct()
	{
		return cast(void*)gADatasetCSVFileFormat;
	}

	/**
	 * Sets our main struct and passes it to the parent class.
	 */
	public this (GADatasetCSVFileFormat* gADatasetCSVFileFormat, bool ownedRef = false)
	{
		this.gADatasetCSVFileFormat = gADatasetCSVFileFormat;
		super(cast(GADatasetFileFormat*)gADatasetCSVFileFormat, ownedRef);
	}


	/** */
	public static GType getType()
	{
		return gadataset_csv_file_format_get_type();
	}

	/**
	 * Returns: The newly created CSV file format.
	 *
	 * Since: 3.0.0
	 *
	 * Throws: ConstructionException GTK+ fails to create the object.
	 */
	public this()
	{
		auto __p = gadataset_csv_file_format_new();

		if(__p is null)
		{
			throw new ConstructionException("null returned by new");
		}

		this(cast(GADatasetCSVFileFormat*) __p, true);
	}
}
