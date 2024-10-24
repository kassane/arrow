module arrow.Expression;

private import arrow.c.functions;
public  import arrow.c.types;
private import glib.Str;
private import glib.c.functions;
private import gobject.ObjectG;


/** */
public class Expression : ObjectG
{
	/** the main Gtk struct */
	protected GArrowExpression* gArrowExpression;

	/** Get the main Gtk struct */
	public GArrowExpression* getExpressionStruct(bool transferOwnership = false)
	{
		if (transferOwnership)
			ownedRef = false;
		return gArrowExpression;
	}

	/** the main Gtk struct as a void* */
	protected override void* getStruct()
	{
		return cast(void*)gArrowExpression;
	}

	/**
	 * Sets our main struct and passes it to the parent class.
	 */
	public this (GArrowExpression* gArrowExpression, bool ownedRef = false)
	{
		this.gArrowExpression = gArrowExpression;
		super(cast(GObject*)gArrowExpression, ownedRef);
	}


	/** */
	public static GType getType()
	{
		return garrow_expression_get_type();
	}

	/**
	 *
	 * Params:
	 *     otherExpression = A #GArrowExpression.
	 * Returns: %TRUE if both of them have the same content, %FALSE
	 *     otherwise.
	 *
	 * Since: 6.0.0
	 */
	public bool equal(Expression otherExpression)
	{
		return garrow_expression_equal(gArrowExpression, (otherExpression is null) ? null : otherExpression.getExpressionStruct()) != 0;
	}

	/**
	 * Returns: The formatted expression.
	 *
	 *     It should be freed with g_free() when no longer needed.
	 *
	 * Since: 6.0.0
	 */
	public override string toString()
	{
		auto retStr = garrow_expression_to_string(gArrowExpression);

		scope(exit) Str.freeString(retStr);
		return Str.toString(retStr);
	}
}
