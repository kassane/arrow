module arrow.Datum;

private import arrow.c.functions;
public  import arrow.c.types;
private import glib.Str;
private import glib.c.functions;
private import gobject.ObjectG;


/** */
public class Datum : ObjectG
{
	/** the main Gtk struct */
	protected GArrowDatum* gArrowDatum;

	/** Get the main Gtk struct */
	public GArrowDatum* getDatumStruct(bool transferOwnership = false)
	{
		if (transferOwnership)
			ownedRef = false;
		return gArrowDatum;
	}

	/** the main Gtk struct as a void* */
	protected override void* getStruct()
	{
		return cast(void*)gArrowDatum;
	}

	/**
	 * Sets our main struct and passes it to the parent class.
	 */
	public this (GArrowDatum* gArrowDatum, bool ownedRef = false)
	{
		this.gArrowDatum = gArrowDatum;
		super(cast(GObject*)gArrowDatum, ownedRef);
	}


	/** */
	public static GType getType()
	{
		return garrow_datum_get_type();
	}

	/**
	 *
	 * Params:
	 *     otherDatum = A #GArrowDatum to be compared.
	 * Returns: %TRUE if both of them have the same datum, %FALSE
	 *     otherwise.
	 *
	 * Since: 1.0.0
	 */
	public bool equal(Datum otherDatum)
	{
		return garrow_datum_equal(gArrowDatum, (otherDatum is null) ? null : otherDatum.getDatumStruct()) != 0;
	}

	/**
	 * Returns: %TRUE if the datum holds a #GArrowArray, %FALSE
	 *     otherwise.
	 *
	 * Since: 1.0.0
	 */
	public bool isArray()
	{
		return garrow_datum_is_array(gArrowDatum) != 0;
	}

	/**
	 * Returns: %TRUE if the datum holds a #GArrowArray or
	 *     #GArrowChunkedArray, %FALSE otherwise.
	 *
	 * Since: 1.0.0
	 */
	public bool isArrayLike()
	{
		return garrow_datum_is_array_like(gArrowDatum) != 0;
	}

	/**
	 * Returns: %TRUE if the datum holds a #GArrowScalar, %FALSE otherwise.
	 *
	 * Since: 5.0.0
	 */
	public bool isScalar()
	{
		return garrow_datum_is_scalar(gArrowDatum) != 0;
	}

	/**
	 * Returns: %TRUE if the datum holds a #GArrowArray, #GArrowChunkedArray or
	 *     #GArrowScalar, %FALSE otherwise.
	 *
	 * Since: 5.0.0
	 */
	public bool isValue()
	{
		return garrow_datum_is_value(gArrowDatum) != 0;
	}

	/**
	 * Returns: The formatted datum content.
	 *
	 *     It should be freed with g_free() when no longer needed.
	 *
	 * Since: 1.0.0
	 */
	public override string toString()
	{
		auto retStr = garrow_datum_to_string(gArrowDatum);

		scope(exit) Str.freeString(retStr);
		return Str.toString(retStr);
	}
}
