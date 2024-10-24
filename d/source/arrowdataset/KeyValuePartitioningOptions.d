module arrowdataset.KeyValuePartitioningOptions;

private import arrowdataset.c.functions;
public  import arrowdataset.c.types;
private import glib.ConstructionException;
private import gobject.ObjectG;


/** */
public class KeyValuePartitioningOptions : ObjectG
{
	/** the main Gtk struct */
	protected GADatasetKeyValuePartitioningOptions* gADatasetKeyValuePartitioningOptions;

	/** Get the main Gtk struct */
	public GADatasetKeyValuePartitioningOptions* getKeyValuePartitioningOptionsStruct(bool transferOwnership = false)
	{
		if (transferOwnership)
			ownedRef = false;
		return gADatasetKeyValuePartitioningOptions;
	}

	/** the main Gtk struct as a void* */
	protected override void* getStruct()
	{
		return cast(void*)gADatasetKeyValuePartitioningOptions;
	}

	/**
	 * Sets our main struct and passes it to the parent class.
	 */
	public this (GADatasetKeyValuePartitioningOptions* gADatasetKeyValuePartitioningOptions, bool ownedRef = false)
	{
		this.gADatasetKeyValuePartitioningOptions = gADatasetKeyValuePartitioningOptions;
		super(cast(GObject*)gADatasetKeyValuePartitioningOptions, ownedRef);
	}


	/** */
	public static GType getType()
	{
		return gadataset_key_value_partitioning_options_get_type();
	}

	/**
	 * Returns: The newly created #GADatasetKeyValuePartitioningOptions.
	 *
	 * Since: 11.0.0
	 *
	 * Throws: ConstructionException GTK+ fails to create the object.
	 */
	public this()
	{
		auto __p = gadataset_key_value_partitioning_options_new();

		if(__p is null)
		{
			throw new ConstructionException("null returned by new");
		}

		this(cast(GADatasetKeyValuePartitioningOptions*) __p, true);
	}
}
