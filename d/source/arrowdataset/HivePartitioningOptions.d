module arrowdataset.HivePartitioningOptions;

private import arrowdataset.KeyValuePartitioningOptions;
private import arrowdataset.c.functions;
public  import arrowdataset.c.types;
private import glib.ConstructionException;
private import gobject.ObjectG;


/** */
public class HivePartitioningOptions : KeyValuePartitioningOptions
{
	/** the main Gtk struct */
	protected GADatasetHivePartitioningOptions* gADatasetHivePartitioningOptions;

	/** Get the main Gtk struct */
	public GADatasetHivePartitioningOptions* getHivePartitioningOptionsStruct(bool transferOwnership = false)
	{
		if (transferOwnership)
			ownedRef = false;
		return gADatasetHivePartitioningOptions;
	}

	/** the main Gtk struct as a void* */
	protected override void* getStruct()
	{
		return cast(void*)gADatasetHivePartitioningOptions;
	}

	/**
	 * Sets our main struct and passes it to the parent class.
	 */
	public this (GADatasetHivePartitioningOptions* gADatasetHivePartitioningOptions, bool ownedRef = false)
	{
		this.gADatasetHivePartitioningOptions = gADatasetHivePartitioningOptions;
		super(cast(GADatasetKeyValuePartitioningOptions*)gADatasetHivePartitioningOptions, ownedRef);
	}


	/** */
	public static GType getType()
	{
		return gadataset_hive_partitioning_options_get_type();
	}

	/**
	 * Returns: The newly created #GADatasetHivePartitioningOptions.
	 *
	 * Since: 11.0.0
	 *
	 * Throws: ConstructionException GTK+ fails to create the object.
	 */
	public this()
	{
		auto __p = gadataset_hive_partitioning_options_new();

		if(__p is null)
		{
			throw new ConstructionException("null returned by new");
		}

		this(cast(GADatasetHivePartitioningOptions*) __p, true);
	}
}
