module arrowdataset.HivePartitioning;

private import arrow.Array;
private import arrow.Schema;
private import arrowdataset.HivePartitioningOptions;
private import arrowdataset.KeyValuePartitioning;
private import arrowdataset.c.functions;
public  import arrowdataset.c.types;
private import glib.ConstructionException;
private import glib.ErrorG;
private import glib.GException;
private import glib.ListG;
private import glib.Str;
private import glib.c.functions;
private import gobject.ObjectG;


/** */
public class HivePartitioning : KeyValuePartitioning
{
	/** the main Gtk struct */
	protected GADatasetHivePartitioning* gADatasetHivePartitioning;

	/** Get the main Gtk struct */
	public GADatasetHivePartitioning* getHivePartitioningStruct(bool transferOwnership = false)
	{
		if (transferOwnership)
			ownedRef = false;
		return gADatasetHivePartitioning;
	}

	/** the main Gtk struct as a void* */
	protected override void* getStruct()
	{
		return cast(void*)gADatasetHivePartitioning;
	}

	/**
	 * Sets our main struct and passes it to the parent class.
	 */
	public this (GADatasetHivePartitioning* gADatasetHivePartitioning, bool ownedRef = false)
	{
		this.gADatasetHivePartitioning = gADatasetHivePartitioning;
		super(cast(GADatasetKeyValuePartitioning*)gADatasetHivePartitioning, ownedRef);
	}


	/** */
	public static GType getType()
	{
		return gadataset_hive_partitioning_get_type();
	}

	/**
	 *
	 * Params:
	 *     schema = A #GArrowSchema that describes all partitioned segments.
	 *     dictionaries = A list of #GArrowArray
	 *         for dictionary data types in @schema.
	 *     options = A #GADatasetHivePartitioningOptions.
	 * Returns: The newly created #GADatasetHivePartitioning on success,
	 *     %NULL on error.
	 *
	 * Since: 11.0.0
	 *
	 * Throws: GException on failure.
	 * Throws: ConstructionException GTK+ fails to create the object.
	 */
	public this(Schema schema, ListG dictionaries, HivePartitioningOptions options)
	{
		GError* err = null;

		auto __p = gadataset_hive_partitioning_new((schema is null) ? null : schema.getSchemaStruct(), (dictionaries is null) ? null : dictionaries.getListGStruct(), (options is null) ? null : options.getHivePartitioningOptionsStruct(), &err);

		if (err !is null)
		{
			throw new GException( new ErrorG(err) );
		}

		if(__p is null)
		{
			throw new ConstructionException("null returned by new");
		}

		this(cast(GADatasetHivePartitioning*) __p, true);
	}

	/**
	 * Returns: The fallback string for null.
	 *
	 *     It should be freed with g_free() when no longer needed.
	 *
	 * Since: 11.0.0
	 */
	public string getNullFallback()
	{
		auto retStr = gadataset_hive_partitioning_get_null_fallback(gADatasetHivePartitioning);

		scope(exit) Str.freeString(retStr);
		return Str.toString(retStr);
	}
}
