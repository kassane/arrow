module arrow.Decimal256Array;

private import arrow.Decimal256;
private import arrow.FixedSizeBinaryArray;
private import arrow.c.functions;
public  import arrow.c.types;
private import glib.Str;
private import glib.c.functions;
private import gobject.ObjectG;


/** */
public class Decimal256Array : FixedSizeBinaryArray
{
	/** the main Gtk struct */
	protected GArrowDecimal256Array* gArrowDecimal256Array;

	/** Get the main Gtk struct */
	public GArrowDecimal256Array* getDecimal256ArrayStruct(bool transferOwnership = false)
	{
		if (transferOwnership)
			ownedRef = false;
		return gArrowDecimal256Array;
	}

	/** the main Gtk struct as a void* */
	protected override void* getStruct()
	{
		return cast(void*)gArrowDecimal256Array;
	}

	/**
	 * Sets our main struct and passes it to the parent class.
	 */
	public this (GArrowDecimal256Array* gArrowDecimal256Array, bool ownedRef = false)
	{
		this.gArrowDecimal256Array = gArrowDecimal256Array;
		super(cast(GArrowFixedSizeBinaryArray*)gArrowDecimal256Array, ownedRef);
	}


	/** */
	public static GType getType()
	{
		return garrow_decimal256_array_get_type();
	}

	/**
	 *
	 * Params:
	 *     i = The index of the target value.
	 * Returns: The formatted @i-th value.
	 *
	 *     It should be freed with g_free() when no longer needed.
	 *
	 * Since: 3.0.0
	 */
	public string formatValue(long i)
	{
		auto retStr = garrow_decimal256_array_format_value(gArrowDecimal256Array, i);

		scope(exit) Str.freeString(retStr);
		return Str.toString(retStr);
	}

	/**
	 *
	 * Params:
	 *     i = The index of the target value.
	 * Returns: The @i-th value.
	 *
	 * Since: 3.0.0
	 */
	public override Decimal256 getValue(long i)
	{
		auto __p = garrow_decimal256_array_get_value(gArrowDecimal256Array, i);

		if(__p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(Decimal256)(cast(GArrowDecimal256*) __p, true);
	}
}
