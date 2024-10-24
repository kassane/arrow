module arrow.StructFieldOptions;

private import arrow.FunctionOptions;
private import arrow.c.functions;
public  import arrow.c.types;
private import glib.ConstructionException;
private import glib.ErrorG;
private import glib.GException;
private import glib.Str;
private import gobject.ObjectG;


/** */
public class StructFieldOptions : FunctionOptions
{
	/** the main Gtk struct */
	protected GArrowStructFieldOptions* gArrowStructFieldOptions;

	/** Get the main Gtk struct */
	public GArrowStructFieldOptions* getStructFieldOptionsStruct(bool transferOwnership = false)
	{
		if (transferOwnership)
			ownedRef = false;
		return gArrowStructFieldOptions;
	}

	/** the main Gtk struct as a void* */
	protected override void* getStruct()
	{
		return cast(void*)gArrowStructFieldOptions;
	}

	/**
	 * Sets our main struct and passes it to the parent class.
	 */
	public this (GArrowStructFieldOptions* gArrowStructFieldOptions, bool ownedRef = false)
	{
		this.gArrowStructFieldOptions = gArrowStructFieldOptions;
		super(cast(GArrowFunctionOptions*)gArrowStructFieldOptions, ownedRef);
	}


	/** */
	public static GType getType()
	{
		return garrow_struct_field_options_get_type();
	}

	/**
	 * Returns: A newly created #GArrowStructFieldOptions.
	 *
	 * Since: 16.0.0
	 *
	 * Throws: ConstructionException GTK+ fails to create the object.
	 */
	public this()
	{
		auto __p = garrow_struct_field_options_new();

		if(__p is null)
		{
			throw new ConstructionException("null returned by new");
		}

		this(cast(GArrowStructFieldOptions*) __p, true);
	}

	/** */
	public void setFieldRef(string fieldRef)
	{
		GError* err = null;

		garrow_struct_field_options_set_field_ref(gArrowStructFieldOptions, Str.toStringz(fieldRef), &err);

		if (err !is null)
		{
			throw new GException( new ErrorG(err) );
		}
	}
}
