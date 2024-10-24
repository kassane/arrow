module arrowdataset.Fragment;

private import arrowdataset.c.functions;
public  import arrowdataset.c.types;
private import gobject.ObjectG;


/** */
public class Fragment : ObjectG
{
	/** the main Gtk struct */
	protected GADatasetFragment* gADatasetFragment;

	/** Get the main Gtk struct */
	public GADatasetFragment* getFragmentStruct(bool transferOwnership = false)
	{
		if (transferOwnership)
			ownedRef = false;
		return gADatasetFragment;
	}

	/** the main Gtk struct as a void* */
	protected override void* getStruct()
	{
		return cast(void*)gADatasetFragment;
	}

	/**
	 * Sets our main struct and passes it to the parent class.
	 */
	public this (GADatasetFragment* gADatasetFragment, bool ownedRef = false)
	{
		this.gADatasetFragment = gADatasetFragment;
		super(cast(GObject*)gADatasetFragment, ownedRef);
	}


	/** */
	public static GType getType()
	{
		return gadataset_fragment_get_type();
	}
}
