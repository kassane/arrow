module arrowdataset.FileSystemDatasetFactory;

private import arrow.FileSystem;
private import arrowdataset.DatasetFactory;
private import arrowdataset.FileFormat;
private import arrowdataset.FileSystemDataset;
private import arrowdataset.FinishOptions;
private import arrowdataset.c.functions;
public  import arrowdataset.c.types;
private import glib.ConstructionException;
private import glib.ErrorG;
private import glib.GException;
private import glib.Str;
private import gobject.ObjectG;


/** */
public class FileSystemDatasetFactory : DatasetFactory
{
	/** the main Gtk struct */
	protected GADatasetFileSystemDatasetFactory* gADatasetFileSystemDatasetFactory;

	/** Get the main Gtk struct */
	public GADatasetFileSystemDatasetFactory* getFileSystemDatasetFactoryStruct(bool transferOwnership = false)
	{
		if (transferOwnership)
			ownedRef = false;
		return gADatasetFileSystemDatasetFactory;
	}

	/** the main Gtk struct as a void* */
	protected override void* getStruct()
	{
		return cast(void*)gADatasetFileSystemDatasetFactory;
	}

	/**
	 * Sets our main struct and passes it to the parent class.
	 */
	public this (GADatasetFileSystemDatasetFactory* gADatasetFileSystemDatasetFactory, bool ownedRef = false)
	{
		this.gADatasetFileSystemDatasetFactory = gADatasetFileSystemDatasetFactory;
		super(cast(GADatasetDatasetFactory*)gADatasetFileSystemDatasetFactory, ownedRef);
	}


	/** */
	public static GType getType()
	{
		return gadataset_file_system_dataset_factory_get_type();
	}

	/** */
	public this(FileFormat fileFormat)
	{
		auto __p = gadataset_file_system_dataset_factory_new((fileFormat is null) ? null : fileFormat.getFileFormatStruct());

		if(__p is null)
		{
			throw new ConstructionException("null returned by new");
		}

		this(cast(GADatasetFileSystemDatasetFactory*) __p, true);
	}

	/**
	 *
	 * Params:
	 *     path = A path to be added.
	 * Returns: %TRUE on success, %FALSE otherwise.
	 *
	 * Since: 5.0.0
	 *
	 * Throws: GException on failure.
	 */
	public bool addPath(string path)
	{
		GError* err = null;

		auto __p = gadataset_file_system_dataset_factory_add_path(gADatasetFileSystemDatasetFactory, Str.toStringz(path), &err) != 0;

		if (err !is null)
		{
			throw new GException( new ErrorG(err) );
		}

		return __p;
	}

	/**
	 *
	 * Params:
	 *     options = A #GADatasetFinishOptions.
	 * Returns: A newly created #GADatasetFileSystemDataset on success, %NULL on error.
	 *
	 * Since: 5.0.0
	 *
	 * Throws: GException on failure.
	 */
	public override FileSystemDataset finish(FinishOptions options)
	{
		GError* err = null;

		auto __p = gadataset_file_system_dataset_factory_finish(gADatasetFileSystemDatasetFactory, (options is null) ? null : options.getFinishOptionsStruct(), &err);

		if (err !is null)
		{
			throw new GException( new ErrorG(err) );
		}

		if(__p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(FileSystemDataset)(cast(GADatasetFileSystemDataset*) __p, true);
	}

	/**
	 *
	 * Params:
	 *     fileSystem = A #GArrowFileSystem.
	 * Returns: %TRUE on success, %FALSE otherwise.
	 *
	 * Since: 5.0.0
	 *
	 * Throws: GException on failure.
	 */
	public bool setFileSystem(FileSystem fileSystem)
	{
		GError* err = null;

		auto __p = gadataset_file_system_dataset_factory_set_file_system(gADatasetFileSystemDatasetFactory, (fileSystem is null) ? null : fileSystem.getFileSystemStruct(), &err) != 0;

		if (err !is null)
		{
			throw new GException( new ErrorG(err) );
		}

		return __p;
	}

	/**
	 *
	 * Params:
	 *     uri = An URI for file system.
	 * Returns: %TRUE on success, %FALSE otherwise.
	 *
	 * Since: 5.0.0
	 *
	 * Throws: GException on failure.
	 */
	public bool setFileSystemUri(string uri)
	{
		GError* err = null;

		auto __p = gadataset_file_system_dataset_factory_set_file_system_uri(gADatasetFileSystemDatasetFactory, Str.toStringz(uri), &err) != 0;

		if (err !is null)
		{
			throw new GException( new ErrorG(err) );
		}

		return __p;
	}
}
