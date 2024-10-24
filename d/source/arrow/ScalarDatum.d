module arrow.ScalarDatum;

private import arrow.Datum;
private import arrow.Scalar;
private import arrow.c.functions;
public  import arrow.c.types;
private import glib.ConstructionException;
private import gobject.ObjectG;


/** */
public class ScalarDatum : Datum
{
	/** the main Gtk struct */
	protected GArrowScalarDatum* gArrowScalarDatum;

	/** Get the main Gtk struct */
	public GArrowScalarDatum* getScalarDatumStruct(bool transferOwnership = false)
	{
		if (transferOwnership)
			ownedRef = false;
		return gArrowScalarDatum;
	}

	/** the main Gtk struct as a void* */
	protected override void* getStruct()
	{
		return cast(void*)gArrowScalarDatum;
	}

	/**
	 * Sets our main struct and passes it to the parent class.
	 */
	public this (GArrowScalarDatum* gArrowScalarDatum, bool ownedRef = false)
	{
		this.gArrowScalarDatum = gArrowScalarDatum;
		super(cast(GArrowDatum*)gArrowScalarDatum, ownedRef);
	}


	/** */
	public static GType getType()
	{
		return garrow_scalar_datum_get_type();
	}

	/**
	 *
	 * Params:
	 *     value = A #GArrowScalar.
	 * Returns: A newly created #GArrowScalarDatum.
	 *
	 * Since: 5.0.0
	 *
	 * Throws: ConstructionException GTK+ fails to create the object.
	 */
	public this(Scalar value)
	{
		auto __p = garrow_scalar_datum_new((value is null) ? null : value.getScalarStruct());

		if(__p is null)
		{
			throw new ConstructionException("null returned by new");
		}

		this(cast(GArrowScalarDatum*) __p, true);
	}
}
