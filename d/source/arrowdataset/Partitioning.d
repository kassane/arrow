module arrowdataset.Partitioning;

private import arrowdataset.c.functions;
public  import arrowdataset.c.types;
private import glib.Str;
private import glib.c.functions;
private import gobject.ObjectG;


/** */
public class Partitioning : ObjectG
{
	/** the main Gtk struct */
	protected GADatasetPartitioning* gADatasetPartitioning;

	/** Get the main Gtk struct */
	public GADatasetPartitioning* getPartitioningStruct(bool transferOwnership = false)
	{
		if (transferOwnership)
			ownedRef = false;
		return gADatasetPartitioning;
	}

	/** the main Gtk struct as a void* */
	protected override void* getStruct()
	{
		return cast(void*)gADatasetPartitioning;
	}

	/**
	 * Sets our main struct and passes it to the parent class.
	 */
	public this (GADatasetPartitioning* gADatasetPartitioning, bool ownedRef = false)
	{
		this.gADatasetPartitioning = gADatasetPartitioning;
		super(cast(GObject*)gADatasetPartitioning, ownedRef);
	}


	/** */
	public static GType getType()
	{
		return gadataset_partitioning_get_type();
	}

	/**
	 * Returns: The newly created #GADatasetPartitioning
	 *     that doesn't partition.
	 *
	 * Since: 12.0.0
	 */
	public static Partitioning createDefault()
	{
		auto __p = gadataset_partitioning_create_default();

		if(__p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(Partitioning)(cast(GADatasetPartitioning*) __p, true);
	}

	/**
	 * Returns: The type name of @partitioning.
	 *
	 *     It should be freed with g_free() when no longer needed.
	 *
	 * Since: 6.0.0
	 */
	public string getTypeName()
	{
		auto retStr = gadataset_partitioning_get_type_name(gADatasetPartitioning);

		scope(exit) Str.freeString(retStr);
		return Str.toString(retStr);
	}
}
