module arrow.LiteralExpression;

private import arrow.Datum;
private import arrow.Expression;
private import arrow.c.functions;
public  import arrow.c.types;
private import glib.ConstructionException;
private import gobject.ObjectG;


/** */
public class LiteralExpression : Expression
{
	/** the main Gtk struct */
	protected GArrowLiteralExpression* gArrowLiteralExpression;

	/** Get the main Gtk struct */
	public GArrowLiteralExpression* getLiteralExpressionStruct(bool transferOwnership = false)
	{
		if (transferOwnership)
			ownedRef = false;
		return gArrowLiteralExpression;
	}

	/** the main Gtk struct as a void* */
	protected override void* getStruct()
	{
		return cast(void*)gArrowLiteralExpression;
	}

	/**
	 * Sets our main struct and passes it to the parent class.
	 */
	public this (GArrowLiteralExpression* gArrowLiteralExpression, bool ownedRef = false)
	{
		this.gArrowLiteralExpression = gArrowLiteralExpression;
		super(cast(GArrowExpression*)gArrowLiteralExpression, ownedRef);
	}


	/** */
	public static GType getType()
	{
		return garrow_literal_expression_get_type();
	}

	/**
	 *
	 * Params:
	 *     datum = A #GArrowDatum.
	 * Returns: A newly created #GArrowLiteralExpression.
	 *
	 * Since: 6.0.0
	 *
	 * Throws: ConstructionException GTK+ fails to create the object.
	 */
	public this(Datum datum)
	{
		auto __p = garrow_literal_expression_new((datum is null) ? null : datum.getDatumStruct());

		if(__p is null)
		{
			throw new ConstructionException("null returned by new");
		}

		this(cast(GArrowLiteralExpression*) __p, true);
	}
}
