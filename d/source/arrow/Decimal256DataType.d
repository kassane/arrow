module arrow.Decimal256DataType;

private import arrow.DecimalDataType;
private import arrow.c.functions;
public  import arrow.c.types;
private import glib.ConstructionException;
private import glib.ErrorG;
private import glib.GException;
private import gobject.ObjectG;


/** */
public class Decimal256DataType : DecimalDataType
{
	/** the main Gtk struct */
	protected GArrowDecimal256DataType* gArrowDecimal256DataType;

	/** Get the main Gtk struct */
	public GArrowDecimal256DataType* getDecimal256DataTypeStruct(bool transferOwnership = false)
	{
		if (transferOwnership)
			ownedRef = false;
		return gArrowDecimal256DataType;
	}

	/** the main Gtk struct as a void* */
	protected override void* getStruct()
	{
		return cast(void*)gArrowDecimal256DataType;
	}

	/**
	 * Sets our main struct and passes it to the parent class.
	 */
	public this (GArrowDecimal256DataType* gArrowDecimal256DataType, bool ownedRef = false)
	{
		this.gArrowDecimal256DataType = gArrowDecimal256DataType;
		super(cast(GArrowDecimalDataType*)gArrowDecimal256DataType, ownedRef);
	}


	/** */
	public static GType getType()
	{
		return garrow_decimal256_data_type_get_type();
	}

	/**
	 *
	 * Params:
	 *     precision = The precision of decimal data.
	 *     scale = The scale of decimal data.
	 * Returns: The newly created 256-bit decimal data type on success, %NULL on error.
	 *
	 * Since: 3.0.0
	 *
	 * Throws: GException on failure.
	 * Throws: ConstructionException GTK+ fails to create the object.
	 */
	public this(int precision, int scale)
	{
		GError* err = null;

		auto __p = garrow_decimal256_data_type_new(precision, scale, &err);

		if (err !is null)
		{
			throw new GException( new ErrorG(err) );
		}

		if(__p is null)
		{
			throw new ConstructionException("null returned by new");
		}

		this(cast(GArrowDecimal256DataType*) __p, true);
	}

	/**
	 * Returns: The max precision of 256-bit decimal data type.
	 *
	 * Since: 3.0.0
	 */
	public static int maxPrecision()
	{
		return garrow_decimal256_data_type_max_precision();
	}
}
