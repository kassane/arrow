module arrow.FieldExpression;

private import arrow.Expression;
private import arrow.c.functions;
public  import arrow.c.types;
private import glib.ConstructionException;
private import glib.ErrorG;
private import glib.GException;
private import glib.Str;
private import gobject.ObjectG;


/** */
public class FieldExpression : Expression
{
	/** the main Gtk struct */
	protected GArrowFieldExpression* gArrowFieldExpression;

	/** Get the main Gtk struct */
	public GArrowFieldExpression* getFieldExpressionStruct(bool transferOwnership = false)
	{
		if (transferOwnership)
			ownedRef = false;
		return gArrowFieldExpression;
	}

	/** the main Gtk struct as a void* */
	protected override void* getStruct()
	{
		return cast(void*)gArrowFieldExpression;
	}

	/**
	 * Sets our main struct and passes it to the parent class.
	 */
	public this (GArrowFieldExpression* gArrowFieldExpression, bool ownedRef = false)
	{
		this.gArrowFieldExpression = gArrowFieldExpression;
		super(cast(GArrowExpression*)gArrowFieldExpression, ownedRef);
	}


	/** */
	public static GType getType()
	{
		return garrow_field_expression_get_type();
	}

	/**
	 *
	 * Params:
	 *     reference = A field name or dot path.
	 * Returns: A newly created #GArrowFieldExpression on success, %NULL on
	 *     error.
	 *
	 * Since: 6.0.0
	 *
	 * Throws: GException on failure.
	 * Throws: ConstructionException GTK+ fails to create the object.
	 */
	public this(string reference)
	{
		GError* err = null;

		auto __p = garrow_field_expression_new(Str.toStringz(reference), &err);

		if (err !is null)
		{
			throw new GException( new ErrorG(err) );
		}

		if(__p is null)
		{
			throw new ConstructionException("null returned by new");
		}

		this(cast(GArrowFieldExpression*) __p, true);
	}
}
