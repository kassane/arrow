module arrow.ExecuteContext;

private import arrow.c.functions;
public  import arrow.c.types;
private import glib.ConstructionException;
private import gobject.ObjectG;


/** */
public class ExecuteContext : ObjectG
{
	/** the main Gtk struct */
	protected GArrowExecuteContext* gArrowExecuteContext;

	/** Get the main Gtk struct */
	public GArrowExecuteContext* getExecuteContextStruct(bool transferOwnership = false)
	{
		if (transferOwnership)
			ownedRef = false;
		return gArrowExecuteContext;
	}

	/** the main Gtk struct as a void* */
	protected override void* getStruct()
	{
		return cast(void*)gArrowExecuteContext;
	}

	/**
	 * Sets our main struct and passes it to the parent class.
	 */
	public this (GArrowExecuteContext* gArrowExecuteContext, bool ownedRef = false)
	{
		this.gArrowExecuteContext = gArrowExecuteContext;
		super(cast(GObject*)gArrowExecuteContext, ownedRef);
	}


	/** */
	public static GType getType()
	{
		return garrow_execute_context_get_type();
	}

	/**
	 * Returns: A newly created #GArrowExecuteContext.
	 *
	 * Since: 1.0.0
	 *
	 * Throws: ConstructionException GTK+ fails to create the object.
	 */
	public this()
	{
		auto __p = garrow_execute_context_new();

		if(__p is null)
		{
			throw new ConstructionException("null returned by new");
		}

		this(cast(GArrowExecuteContext*) __p, true);
	}
}
