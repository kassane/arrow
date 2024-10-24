module arrowdataset.DatasetFactory;

private import arrowdataset.Dataset;
private import arrowdataset.FinishOptions;
private import arrowdataset.c.functions;
public  import arrowdataset.c.types;
private import glib.ErrorG;
private import glib.GException;
private import gobject.ObjectG;


/** */
public class DatasetFactory : ObjectG
{
	/** the main Gtk struct */
	protected GADatasetDatasetFactory* gADatasetDatasetFactory;

	/** Get the main Gtk struct */
	public GADatasetDatasetFactory* getDatasetFactoryStruct(bool transferOwnership = false)
	{
		if (transferOwnership)
			ownedRef = false;
		return gADatasetDatasetFactory;
	}

	/** the main Gtk struct as a void* */
	protected override void* getStruct()
	{
		return cast(void*)gADatasetDatasetFactory;
	}

	/**
	 * Sets our main struct and passes it to the parent class.
	 */
	public this (GADatasetDatasetFactory* gADatasetDatasetFactory, bool ownedRef = false)
	{
		this.gADatasetDatasetFactory = gADatasetDatasetFactory;
		super(cast(GObject*)gADatasetDatasetFactory, ownedRef);
	}


	/** */
	public static GType getType()
	{
		return gadataset_dataset_factory_get_type();
	}

	/**
	 *
	 * Params:
	 *     options = A #GADatasetFinishOptions.
	 * Returns: A newly created #GADatasetDataset on success, %NULL on error.
	 *
	 * Since: 5.0.0
	 *
	 * Throws: GException on failure.
	 */
	public Dataset finish(FinishOptions options)
	{
		GError* err = null;

		auto __p = gadataset_dataset_factory_finish(gADatasetDatasetFactory, (options is null) ? null : options.getFinishOptionsStruct(), &err);

		if (err !is null)
		{
			throw new GException( new ErrorG(err) );
		}

		if(__p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(Dataset)(cast(GADatasetDataset*) __p, true);
	}
}
