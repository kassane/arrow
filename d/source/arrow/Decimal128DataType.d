module arrow.Decimal128DataType;

private import arrow.DecimalDataType;
private import arrow.c.functions;
public  import arrow.c.types;
private import glib.ConstructionException;
private import glib.ErrorG;
private import glib.GException;
private import gobject.ObjectG;


/** */
public class Decimal128DataType : DecimalDataType
{
	/** the main Gtk struct */
	protected GArrowDecimal128DataType* gArrowDecimal128DataType;

	/** Get the main Gtk struct */
	public GArrowDecimal128DataType* getDecimal128DataTypeStruct(bool transferOwnership = false)
	{
		if (transferOwnership)
			ownedRef = false;
		return gArrowDecimal128DataType;
	}

	/** the main Gtk struct as a void* */
	protected override void* getStruct()
	{
		return cast(void*)gArrowDecimal128DataType;
	}

	/**
	 * Sets our main struct and passes it to the parent class.
	 */
	public this (GArrowDecimal128DataType* gArrowDecimal128DataType, bool ownedRef = false)
	{
		this.gArrowDecimal128DataType = gArrowDecimal128DataType;
		super(cast(GArrowDecimalDataType*)gArrowDecimal128DataType, ownedRef);
	}


	/** */
	public static GType getType()
	{
		return garrow_decimal128_data_type_get_type();
	}

	/**
	 *
	 * Params:
	 *     precision = The precision of decimal data.
	 *     scale = The scale of decimal data.
	 * Returns: The newly created 128-bit decimal data type on success, %NULL on error.
	 *
	 * Since: 0.12.0
	 *
	 * Throws: GException on failure.
	 * Throws: ConstructionException GTK+ fails to create the object.
	 */
	public this(int precision, int scale)
	{
		GError* err = null;

		auto __p = garrow_decimal128_data_type_new(precision, scale, &err);

		if (err !is null)
		{
			throw new GException( new ErrorG(err) );
		}

		if(__p is null)
		{
			throw new ConstructionException("null returned by new");
		}

		this(cast(GArrowDecimal128DataType*) __p, true);
	}

	/**
	 * Returns: The max precision of 128-bit decimal data type.
	 *
	 * Since: 3.0.0
	 */
	public static int maxPrecision()
	{
		return garrow_decimal128_data_type_max_precision();
	}
}
