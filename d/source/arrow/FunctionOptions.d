module arrow.FunctionOptions;

private import arrow.c.functions;
public  import arrow.c.types;
private import glib.Str;
private import glib.c.functions;
private import gobject.ObjectG;


/** */
public class FunctionOptions : ObjectG
{
	/** the main Gtk struct */
	protected GArrowFunctionOptions* gArrowFunctionOptions;

	/** Get the main Gtk struct */
	public GArrowFunctionOptions* getFunctionOptionsStruct(bool transferOwnership = false)
	{
		if (transferOwnership)
			ownedRef = false;
		return gArrowFunctionOptions;
	}

	/** the main Gtk struct as a void* */
	protected override void* getStruct()
	{
		return cast(void*)gArrowFunctionOptions;
	}

	/**
	 * Sets our main struct and passes it to the parent class.
	 */
	public this (GArrowFunctionOptions* gArrowFunctionOptions, bool ownedRef = false)
	{
		this.gArrowFunctionOptions = gArrowFunctionOptions;
		super(cast(GObject*)gArrowFunctionOptions, ownedRef);
	}


	/** */
	public static GType getType()
	{
		return garrow_function_options_get_type();
	}

	/**
	 *
	 * Params:
	 *     otherOptions = A #GArrowFunctionOptions to be compared.
	 * Returns: %TRUE if both of them have the same values, %FALSE
	 *     otherwise.
	 *
	 * Since: 7.0.0
	 */
	public bool equal(FunctionOptions otherOptions)
	{
		return garrow_function_options_equal(gArrowFunctionOptions, (otherOptions is null) ? null : otherOptions.getFunctionOptionsStruct()) != 0;
	}

	/**
	 * Returns: The formatted options.
	 *
	 *     It should be freed with g_free() when no longer needed.
	 *
	 * Since: 7.0.0
	 */
	public override string toString()
	{
		auto retStr = garrow_function_options_to_string(gArrowFunctionOptions);

		scope(exit) Str.freeString(retStr);
		return Str.toString(retStr);
	}
}
