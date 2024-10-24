module arrow.FileSelector;

private import arrow.c.functions;
public  import arrow.c.types;
private import gobject.ObjectG;


/** */
public class FileSelector : ObjectG
{
	/** the main Gtk struct */
	protected GArrowFileSelector* gArrowFileSelector;

	/** Get the main Gtk struct */
	public GArrowFileSelector* getFileSelectorStruct(bool transferOwnership = false)
	{
		if (transferOwnership)
			ownedRef = false;
		return gArrowFileSelector;
	}

	/** the main Gtk struct as a void* */
	protected override void* getStruct()
	{
		return cast(void*)gArrowFileSelector;
	}

	/**
	 * Sets our main struct and passes it to the parent class.
	 */
	public this (GArrowFileSelector* gArrowFileSelector, bool ownedRef = false)
	{
		this.gArrowFileSelector = gArrowFileSelector;
		super(cast(GObject*)gArrowFileSelector, ownedRef);
	}


	/** */
	public static GType getType()
	{
		return garrow_file_selector_get_type();
	}
}
