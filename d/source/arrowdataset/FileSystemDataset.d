module arrowdataset.FileSystemDataset;

private import arrowdataset.Dataset;
private import arrowdataset.FileSystemDatasetWriteOptions;
private import arrowdataset.Scanner;
private import arrowdataset.c.functions;
public  import arrowdataset.c.types;
private import glib.ErrorG;
private import glib.GException;


/** */
public class FileSystemDataset : Dataset
{
	/** the main Gtk struct */
	protected GADatasetFileSystemDataset* gADatasetFileSystemDataset;

	/** Get the main Gtk struct */
	public GADatasetFileSystemDataset* getFileSystemDatasetStruct(bool transferOwnership = false)
	{
		if (transferOwnership)
			ownedRef = false;
		return gADatasetFileSystemDataset;
	}

	/** the main Gtk struct as a void* */
	protected override void* getStruct()
	{
		return cast(void*)gADatasetFileSystemDataset;
	}

	/**
	 * Sets our main struct and passes it to the parent class.
	 */
	public this (GADatasetFileSystemDataset* gADatasetFileSystemDataset, bool ownedRef = false)
	{
		this.gADatasetFileSystemDataset = gADatasetFileSystemDataset;
		super(cast(GADatasetDataset*)gADatasetFileSystemDataset, ownedRef);
	}


	/** */
	public static GType getType()
	{
		return gadataset_file_system_dataset_get_type();
	}

	/**
	 *
	 * Params:
	 *     scanner = A #GADatasetScanner that produces data to be written.
	 *     options = A #GADatasetFileSystemDatasetWriteOptions.
	 * Returns: %TRUE on success, %FALSE on error.
	 *
	 * Since: 6.0.0
	 *
	 * Throws: GException on failure.
	 */
	public static bool writeScanner(Scanner scanner, FileSystemDatasetWriteOptions options)
	{
		GError* err = null;

		auto __p = gadataset_file_system_dataset_write_scanner((scanner is null) ? null : scanner.getScannerStruct(), (options is null) ? null : options.getFileSystemDatasetWriteOptionsStruct(), &err) != 0;

		if (err !is null)
		{
			throw new GException( new ErrorG(err) );
		}

		return __p;
	}
}
