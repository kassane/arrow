module arrow.CallExpression;

private import arrow.Expression;
private import arrow.FunctionOptions;
private import arrow.c.functions;
public  import arrow.c.types;
private import glib.ConstructionException;
private import glib.ListG;
private import glib.Str;
private import gobject.ObjectG;


/** */
public class CallExpression : Expression
{
	/** the main Gtk struct */
	protected GArrowCallExpression* gArrowCallExpression;

	/** Get the main Gtk struct */
	public GArrowCallExpression* getCallExpressionStruct(bool transferOwnership = false)
	{
		if (transferOwnership)
			ownedRef = false;
		return gArrowCallExpression;
	}

	/** the main Gtk struct as a void* */
	protected override void* getStruct()
	{
		return cast(void*)gArrowCallExpression;
	}

	/**
	 * Sets our main struct and passes it to the parent class.
	 */
	public this (GArrowCallExpression* gArrowCallExpression, bool ownedRef = false)
	{
		this.gArrowCallExpression = gArrowCallExpression;
		super(cast(GArrowExpression*)gArrowCallExpression, ownedRef);
	}


	/** */
	public static GType getType()
	{
		return garrow_call_expression_get_type();
	}

	/**
	 *
	 * Params:
	 *     function_ = A name of function to be called.
	 *     arguments = Arguments of this call.
	 *     options = A #GArrowFunctionOptions for the called function.
	 * Returns: A newly created #GArrowCallExpression.
	 *
	 * Since: 6.0.0
	 *
	 * Throws: ConstructionException GTK+ fails to create the object.
	 */
	public this(string function_, ListG arguments, FunctionOptions options)
	{
		auto __p = garrow_call_expression_new(Str.toStringz(function_), (arguments is null) ? null : arguments.getListGStruct(), (options is null) ? null : options.getFunctionOptionsStruct());

		if(__p is null)
		{
			throw new ConstructionException("null returned by new");
		}

		this(cast(GArrowCallExpression*) __p, true);
	}
}
