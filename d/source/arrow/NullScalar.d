module arrow.NullScalar;

private import arrow.Scalar;
private import arrow.c.functions;
public  import arrow.c.types;
private import glib.ConstructionException;
private import gobject.ObjectG;


/** */
public class NullScalar : Scalar
{
	/** the main Gtk struct */
	protected GArrowNullScalar* gArrowNullScalar;

	/** Get the main Gtk struct */
	public GArrowNullScalar* getNullScalarStruct(bool transferOwnership = false)
	{
		if (transferOwnership)
			ownedRef = false;
		return gArrowNullScalar;
	}

	/** the main Gtk struct as a void* */
	protected override void* getStruct()
	{
		return cast(void*)gArrowNullScalar;
	}

	/**
	 * Sets our main struct and passes it to the parent class.
	 */
	public this (GArrowNullScalar* gArrowNullScalar, bool ownedRef = false)
	{
		this.gArrowNullScalar = gArrowNullScalar;
		super(cast(GArrowScalar*)gArrowNullScalar, ownedRef);
	}


	/** */
	public static GType getType()
	{
		return garrow_null_scalar_get_type();
	}

	/**
	 * Returns: A newly created #GArrowNullScalar.
	 *
	 * Since: 5.0.0
	 *
	 * Throws: ConstructionException GTK+ fails to create the object.
	 */
	public this()
	{
		auto __p = garrow_null_scalar_new();

		if(__p is null)
		{
			throw new ConstructionException("null returned by new");
		}

		this(cast(GArrowNullScalar*) __p, true);
	}
}
