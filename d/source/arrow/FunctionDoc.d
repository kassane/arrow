module arrow.FunctionDoc;

private import arrow.c.functions;
public  import arrow.c.types;
private import glib.Str;
private import glib.c.functions;
private import gobject.ObjectG;


/** */
public class FunctionDoc : ObjectG
{
	/** the main Gtk struct */
	protected GArrowFunctionDoc* gArrowFunctionDoc;

	/** Get the main Gtk struct */
	public GArrowFunctionDoc* getFunctionDocStruct(bool transferOwnership = false)
	{
		if (transferOwnership)
			ownedRef = false;
		return gArrowFunctionDoc;
	}

	/** the main Gtk struct as a void* */
	protected override void* getStruct()
	{
		return cast(void*)gArrowFunctionDoc;
	}

	/**
	 * Sets our main struct and passes it to the parent class.
	 */
	public this (GArrowFunctionDoc* gArrowFunctionDoc, bool ownedRef = false)
	{
		this.gArrowFunctionDoc = gArrowFunctionDoc;
		super(cast(GObject*)gArrowFunctionDoc, ownedRef);
	}


	/** */
	public static GType getType()
	{
		return garrow_function_doc_get_type();
	}

	/**
	 * Returns: Symbolic names (identifiers) for the function arguments.
	 *
	 *     It's a %NULL-terminated string array. It must be freed with
	 *     g_strfreev() when no longer needed.
	 *
	 * Since: 6.0.0
	 */
	public string[] getArgNames()
	{
		auto retStr = garrow_function_doc_get_arg_names(gArrowFunctionDoc);

		scope(exit) Str.freeStringArray(retStr);
		return Str.toStringArray(retStr);
	}

	/**
	 * Returns: A detailed description of the function, meant to follow
	 *     the summary.
	 *
	 *     It should be freed with g_free() when no longer needed.
	 *
	 * Since: 6.0.0
	 */
	public string getDescription()
	{
		auto retStr = garrow_function_doc_get_description(gArrowFunctionDoc);

		scope(exit) Str.freeString(retStr);
		return Str.toString(retStr);
	}

	/**
	 * Returns: Name of the options class, if any.
	 *
	 *     It should be freed with g_free() when no longer needed.
	 *
	 * Since: 6.0.0
	 */
	public string getOptionsClassName()
	{
		auto retStr = garrow_function_doc_get_options_class_name(gArrowFunctionDoc);

		scope(exit) Str.freeString(retStr);
		return Str.toString(retStr);
	}

	/**
	 * Returns: A one-line summary of the function, using a verb.
	 *
	 *     It should be freed with g_free() when no longer needed.
	 *
	 * Since: 6.0.0
	 */
	public string getSummary()
	{
		auto retStr = garrow_function_doc_get_summary(gArrowFunctionDoc);

		scope(exit) Str.freeString(retStr);
		return Str.toString(retStr);
	}
}
