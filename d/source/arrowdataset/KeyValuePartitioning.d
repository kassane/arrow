module arrowdataset.KeyValuePartitioning;

private import arrowdataset.Partitioning;
private import arrowdataset.c.functions;
public  import arrowdataset.c.types;


/** */
public class KeyValuePartitioning : Partitioning
{
	/** the main Gtk struct */
	protected GADatasetKeyValuePartitioning* gADatasetKeyValuePartitioning;

	/** Get the main Gtk struct */
	public GADatasetKeyValuePartitioning* getKeyValuePartitioningStruct(bool transferOwnership = false)
	{
		if (transferOwnership)
			ownedRef = false;
		return gADatasetKeyValuePartitioning;
	}

	/** the main Gtk struct as a void* */
	protected override void* getStruct()
	{
		return cast(void*)gADatasetKeyValuePartitioning;
	}

	/**
	 * Sets our main struct and passes it to the parent class.
	 */
	public this (GADatasetKeyValuePartitioning* gADatasetKeyValuePartitioning, bool ownedRef = false)
	{
		this.gADatasetKeyValuePartitioning = gADatasetKeyValuePartitioning;
		super(cast(GADatasetPartitioning*)gADatasetKeyValuePartitioning, ownedRef);
	}


	/** */
	public static GType getType()
	{
		return gadataset_key_value_partitioning_get_type();
	}
}
