module arrow.TimestampScalar;

private import arrow.Scalar;
private import arrow.TimestampDataType;
private import arrow.c.functions;
public  import arrow.c.types;
private import glib.ConstructionException;
private import gobject.ObjectG;


/** */
public class TimestampScalar : Scalar
{
	/** the main Gtk struct */
	protected GArrowTimestampScalar* gArrowTimestampScalar;

	/** Get the main Gtk struct */
	public GArrowTimestampScalar* getTimestampScalarStruct(bool transferOwnership = false)
	{
		if (transferOwnership)
			ownedRef = false;
		return gArrowTimestampScalar;
	}

	/** the main Gtk struct as a void* */
	protected override void* getStruct()
	{
		return cast(void*)gArrowTimestampScalar;
	}

	/**
	 * Sets our main struct and passes it to the parent class.
	 */
	public this (GArrowTimestampScalar* gArrowTimestampScalar, bool ownedRef = false)
	{
		this.gArrowTimestampScalar = gArrowTimestampScalar;
		super(cast(GArrowScalar*)gArrowTimestampScalar, ownedRef);
	}


	/** */
	public static GType getType()
	{
		return garrow_timestamp_scalar_get_type();
	}

	/**
	 *
	 * Params:
	 *     dataType = A #GArrowTimestampDataType for this scalar.
	 *     value = The value of this scalar.
	 * Returns: A newly created #GArrowTimestampScalar.
	 *
	 * Since: 5.0.0
	 *
	 * Throws: ConstructionException GTK+ fails to create the object.
	 */
	public this(TimestampDataType dataType, long value)
	{
		auto __p = garrow_timestamp_scalar_new((dataType is null) ? null : dataType.getTimestampDataTypeStruct(), value);

		if(__p is null)
		{
			throw new ConstructionException("null returned by new");
		}

		this(cast(GArrowTimestampScalar*) __p, true);
	}

	/**
	 * Returns: The value of this scalar.
	 *
	 * Since: 5.0.0
	 */
	public long getValue()
	{
		return garrow_timestamp_scalar_get_value(gArrowTimestampScalar);
	}
}
