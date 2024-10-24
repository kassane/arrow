module arrowdataset.PartitioningFactoryOptions;

private import arrowdataset.c.functions;
public  import arrowdataset.c.types;
private import glib.ConstructionException;
private import gobject.ObjectG;


/** */
public class PartitioningFactoryOptions : ObjectG
{
	/** the main Gtk struct */
	protected GADatasetPartitioningFactoryOptions* gADatasetPartitioningFactoryOptions;

	/** Get the main Gtk struct */
	public GADatasetPartitioningFactoryOptions* getPartitioningFactoryOptionsStruct(bool transferOwnership = false)
	{
		if (transferOwnership)
			ownedRef = false;
		return gADatasetPartitioningFactoryOptions;
	}

	/** the main Gtk struct as a void* */
	protected override void* getStruct()
	{
		return cast(void*)gADatasetPartitioningFactoryOptions;
	}

	/**
	 * Sets our main struct and passes it to the parent class.
	 */
	public this (GADatasetPartitioningFactoryOptions* gADatasetPartitioningFactoryOptions, bool ownedRef = false)
	{
		this.gADatasetPartitioningFactoryOptions = gADatasetPartitioningFactoryOptions;
		super(cast(GObject*)gADatasetPartitioningFactoryOptions, ownedRef);
	}


	/** */
	public static GType getType()
	{
		return gadataset_partitioning_factory_options_get_type();
	}

	/**
	 * Returns: The newly created #GADatasetPartitioningFactoryOptions.
	 *
	 * Since: 11.0.0
	 *
	 * Throws: ConstructionException GTK+ fails to create the object.
	 */
	public this()
	{
		auto __p = gadataset_partitioning_factory_options_new();

		if(__p is null)
		{
			throw new ConstructionException("null returned by new");
		}

		this(cast(GADatasetPartitioningFactoryOptions*) __p, true);
	}
}
