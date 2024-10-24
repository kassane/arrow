module arrow.Function;

private import arrow.Datum;
private import arrow.ExecuteContext;
private import arrow.FunctionDoc;
private import arrow.FunctionOptions;
private import arrow.c.functions;
public  import arrow.c.types;
private import glib.ErrorG;
private import glib.GException;
private import glib.ListG;
private import glib.Str;
private import glib.c.functions;
private import gobject.ObjectG;


/** */
public class Function : ObjectG
{
	/** the main Gtk struct */
	protected GArrowFunction* gArrowFunction;

	/** Get the main Gtk struct */
	public GArrowFunction* getFunctionStruct(bool transferOwnership = false)
	{
		if (transferOwnership)
			ownedRef = false;
		return gArrowFunction;
	}

	/** the main Gtk struct as a void* */
	protected override void* getStruct()
	{
		return cast(void*)gArrowFunction;
	}

	/**
	 * Sets our main struct and passes it to the parent class.
	 */
	public this (GArrowFunction* gArrowFunction, bool ownedRef = false)
	{
		this.gArrowFunction = gArrowFunction;
		super(cast(GObject*)gArrowFunction, ownedRef);
	}


	/** */
	public static GType getType()
	{
		return garrow_function_get_type();
	}

	/**
	 * Returns: The all available functions.
	 *
	 *     It should be freed with g_list_free_full() and g_object_unref()
	 *     when no longer needed.
	 *
	 * Since: 7.0.0
	 */
	public static ListG all()
	{
		auto __p = garrow_function_all();

		if(__p is null)
		{
			return null;
		}

		return new ListG(cast(GList*) __p, true);
	}

	/**
	 *
	 * Params:
	 *     name = A function name to be found.
	 * Returns: The found #GArrowFunction or %NULL on not found.
	 *
	 * Since: 1.0.0
	 */
	public static Function find(string name)
	{
		auto __p = garrow_function_find(Str.toStringz(name));

		if(__p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(Function)(cast(GArrowFunction*) __p, true);
	}

	/**
	 *
	 * Params:
	 *     otherFunction = A #GArrowFunction to be compared.
	 * Returns: %TRUE if both of them have the same name, %FALSE
	 *     otherwise.
	 *
	 * Since: 7.0.0
	 */
	public bool equal(Function otherFunction)
	{
		return garrow_function_equal(gArrowFunction, (otherFunction is null) ? null : otherFunction.getFunctionStruct()) != 0;
	}

	/**
	 *
	 * Params:
	 *     args = A list of #GArrowDatum.
	 *     options = Options for the execution as an object that
	 *         implements  #GArrowFunctionOptions.
	 *     context = A #GArrowExecuteContext for the execution.
	 * Returns: A return value of the execution as #GArrowDatum on success, %NULL on error.
	 *
	 * Since: 1.0.0
	 *
	 * Throws: GException on failure.
	 */
	public Datum execute(ListG args, FunctionOptions options, ExecuteContext context)
	{
		GError* err = null;

		auto __p = garrow_function_execute(gArrowFunction, (args is null) ? null : args.getListGStruct(), (options is null) ? null : options.getFunctionOptionsStruct(), (context is null) ? null : context.getExecuteContextStruct(), &err);

		if (err !is null)
		{
			throw new GException( new ErrorG(err) );
		}

		if(__p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(Datum)(cast(GArrowDatum*) __p, true);
	}

	/**
	 * Returns: The default options of this
	 *     function if exists, %NULL otherwise.
	 *
	 * Since: 7.0.0
	 */
	public FunctionOptions getDefaultOptions()
	{
		auto __p = garrow_function_get_default_options(gArrowFunction);

		if(__p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(FunctionOptions)(cast(GArrowFunctionOptions*) __p, true);
	}

	/**
	 * Returns: The function documentation.
	 *
	 * Since: 6.0.0
	 */
	public FunctionDoc getDoc()
	{
		auto __p = garrow_function_get_doc(gArrowFunction);

		if(__p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(FunctionDoc)(cast(GArrowFunctionDoc*) __p, true);
	}

	/**
	 * Returns: The function name.
	 *
	 * Since: 7.0.0
	 */
	public string getName()
	{
		return Str.toString(garrow_function_get_name(gArrowFunction));
	}

	/**
	 * Returns: %G_TYPE_NONE if this function doesn't have options, the
	 *     #GType of options of this function if it exists and Apache Arrow
	 *     GLib bindings of it also exist, %G_TYPE_INVALID if options of this
	 *     function exists but Apache Arrow GLib bindings of it don't exist.
	 *
	 * Since: 7.0.0
	 */
	public GType getOptionsType()
	{
		return garrow_function_get_options_type(gArrowFunction);
	}

	/**
	 * Returns: The formatted function.
	 *
	 *     It should be freed with g_free() when no longer needed.
	 *
	 * Since: 7.0.0
	 */
	public override string toString()
	{
		auto retStr = garrow_function_to_string(gArrowFunction);

		scope(exit) Str.freeString(retStr);
		return Str.toString(retStr);
	}
}
