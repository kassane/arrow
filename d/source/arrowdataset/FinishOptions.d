module arrowdataset.FinishOptions;

private import arrowdataset.c.functions;
public  import arrowdataset.c.types;
private import glib.ConstructionException;
private import gobject.ObjectG;


/** */
public class FinishOptions : ObjectG
{
	/** the main Gtk struct */
	protected GADatasetFinishOptions* gADatasetFinishOptions;

	/** Get the main Gtk struct */
	public GADatasetFinishOptions* getFinishOptionsStruct(bool transferOwnership = false)
	{
		if (transferOwnership)
			ownedRef = false;
		return gADatasetFinishOptions;
	}

	/** the main Gtk struct as a void* */
	protected override void* getStruct()
	{
		return cast(void*)gADatasetFinishOptions;
	}

	/**
	 * Sets our main struct and passes it to the parent class.
	 */
	public this (GADatasetFinishOptions* gADatasetFinishOptions, bool ownedRef = false)
	{
		this.gADatasetFinishOptions = gADatasetFinishOptions;
		super(cast(GObject*)gADatasetFinishOptions, ownedRef);
	}


	/** */
	public static GType getType()
	{
		return gadataset_finish_options_get_type();
	}

	/**
	 * Returns: A newly created #GADatasetDataset.
	 *
	 * Since: 11.0.0
	 *
	 * Throws: ConstructionException GTK+ fails to create the object.
	 */
	public this()
	{
		auto __p = gadataset_finish_options_new();

		if(__p is null)
		{
			throw new ConstructionException("null returned by new");
		}

		this(cast(GADatasetFinishOptions*) __p, true);
	}
}
