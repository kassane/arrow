module arrowdataset.DirectoryPartitioning;

private import arrow.Array;
private import arrow.Schema;
private import arrowdataset.KeyValuePartitioning;
private import arrowdataset.KeyValuePartitioningOptions;
private import arrowdataset.c.functions;
public  import arrowdataset.c.types;
private import glib.ConstructionException;
private import glib.ErrorG;
private import glib.GException;
private import glib.ListG;
private import gobject.ObjectG;


/** */
public class DirectoryPartitioning : KeyValuePartitioning
{
	/** the main Gtk struct */
	protected GADatasetDirectoryPartitioning* gADatasetDirectoryPartitioning;

	/** Get the main Gtk struct */
	public GADatasetDirectoryPartitioning* getDirectoryPartitioningStruct(bool transferOwnership = false)
	{
		if (transferOwnership)
			ownedRef = false;
		return gADatasetDirectoryPartitioning;
	}

	/** the main Gtk struct as a void* */
	protected override void* getStruct()
	{
		return cast(void*)gADatasetDirectoryPartitioning;
	}

	/**
	 * Sets our main struct and passes it to the parent class.
	 */
	public this (GADatasetDirectoryPartitioning* gADatasetDirectoryPartitioning, bool ownedRef = false)
	{
		this.gADatasetDirectoryPartitioning = gADatasetDirectoryPartitioning;
		super(cast(GADatasetKeyValuePartitioning*)gADatasetDirectoryPartitioning, ownedRef);
	}


	/** */
	public static GType getType()
	{
		return gadataset_directory_partitioning_get_type();
	}

	/**
	 *
	 * Params:
	 *     schema = A #GArrowSchema that describes all partitioned segments.
	 *     dictionaries = A list of #GArrowArray
	 *         for dictionary data types in @schema.
	 *     options = A #GADatasetKeyValuePartitioningOptions.
	 * Returns: The newly created #GADatasetDirectoryPartitioning on success,
	 *     %NULL on error.
	 *
	 * Since: 6.0.0
	 *
	 * Throws: GException on failure.
	 * Throws: ConstructionException GTK+ fails to create the object.
	 */
	public this(Schema schema, ListG dictionaries, KeyValuePartitioningOptions options)
	{
		GError* err = null;

		auto __p = gadataset_directory_partitioning_new((schema is null) ? null : schema.getSchemaStruct(), (dictionaries is null) ? null : dictionaries.getListGStruct(), (options is null) ? null : options.getKeyValuePartitioningOptionsStruct(), &err);

		if (err !is null)
		{
			throw new GException( new ErrorG(err) );
		}

		if(__p is null)
		{
			throw new ConstructionException("null returned by new");
		}

		this(cast(GADatasetDirectoryPartitioning*) __p, true);
	}
}
