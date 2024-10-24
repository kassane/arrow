module arrow.Decimal256;

private import arrow.c.functions;
public  import arrow.c.types;
private import glib.Bytes;
private import glib.ConstructionException;
private import glib.ErrorG;
private import glib.GException;
private import glib.Str;
private import glib.c.functions;
private import gobject.ObjectG;


/** */
public class Decimal256 : ObjectG
{
	/** the main Gtk struct */
	protected GArrowDecimal256* gArrowDecimal256;

	/** Get the main Gtk struct */
	public GArrowDecimal256* getDecimal256Struct(bool transferOwnership = false)
	{
		if (transferOwnership)
			ownedRef = false;
		return gArrowDecimal256;
	}

	/** the main Gtk struct as a void* */
	protected override void* getStruct()
	{
		return cast(void*)gArrowDecimal256;
	}

	/**
	 * Sets our main struct and passes it to the parent class.
	 */
	public this (GArrowDecimal256* gArrowDecimal256, bool ownedRef = false)
	{
		this.gArrowDecimal256 = gArrowDecimal256;
		super(cast(GObject*)gArrowDecimal256, ownedRef);
	}


	/** */
	public static GType getType()
	{
		return garrow_decimal256_get_type();
	}

	/**
	 *
	 * Params:
	 *     data = The data of the decimal.
	 * Returns: A newly created #GArrowDecimal256.
	 *
	 * Since: 3.0.0
	 *
	 * Throws: ConstructionException GTK+ fails to create the object.
	 */
	public this(long data)
	{
		auto __p = garrow_decimal256_new_integer(data);

		if(__p is null)
		{
			throw new ConstructionException("null returned by new_integer");
		}

		this(cast(GArrowDecimal256*) __p, true);
	}

	/**
	 *
	 * Params:
	 *     data = The data of the decimal.
	 * Returns: A newly created #GArrowDecimal256 on success, %NULL on error.
	 *
	 * Since: 3.0.0
	 *
	 * Throws: GException on failure.
	 * Throws: ConstructionException GTK+ fails to create the object.
	 */
	public this(string data)
	{
		GError* err = null;

		auto __p = garrow_decimal256_new_string(Str.toStringz(data), &err);

		if (err !is null)
		{
			throw new GException( new ErrorG(err) );
		}

		if(__p is null)
		{
			throw new ConstructionException("null returned by new_string");
		}

		this(cast(GArrowDecimal256*) __p, true);
	}

	/**
	 * Computes the absolute value of the @decimal destructively.
	 *
	 * Since: 3.0.0
	 */
	public void abs()
	{
		garrow_decimal256_abs(gArrowDecimal256);
	}

	/**
	 * Returns: A copied #GArrowDecimal256.
	 *
	 * Since: 3.0.0
	 */
	public Decimal256 copy()
	{
		auto __p = garrow_decimal256_copy(gArrowDecimal256);

		if(__p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(Decimal256)(cast(GArrowDecimal256*) __p, true);
	}

	/**
	 *
	 * Params:
	 *     right = A #GArrowDecimal256.
	 *     remainder = A return location for the remainder
	 *         value of these decimals. The returned #GArrowDecimal256 be
	 *         unreferred with g_object_unref() when no longer needed.
	 * Returns: The divided value of
	 *     these decimals or %NULL on error.
	 *
	 * Since: 3.0.0
	 *
	 * Throws: GException on failure.
	 */
	public Decimal256 divide(Decimal256 right, out Decimal256 remainder)
	{
		GArrowDecimal256* outremainder = null;
		GError* err = null;

		auto __p = garrow_decimal256_divide(gArrowDecimal256, (right is null) ? null : right.getDecimal256Struct(), &outremainder, &err);

		if (err !is null)
		{
			throw new GException( new ErrorG(err) );
		}

		remainder = ObjectG.getDObject!(Decimal256)(outremainder);

		if(__p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(Decimal256)(cast(GArrowDecimal256*) __p, true);
	}

	/**
	 *
	 * Params:
	 *     otherDecimal = A #GArrowDecimal256 to be compared.
	 * Returns: %TRUE if the decimal is equal to the other decimal, %FALSE
	 *     otherwise.
	 *
	 * Since: 3.0.0
	 */
	public bool equal(Decimal256 otherDecimal)
	{
		return garrow_decimal256_equal(gArrowDecimal256, (otherDecimal is null) ? null : otherDecimal.getDecimal256Struct()) != 0;
	}

	/**
	 *
	 * Params:
	 *     otherDecimal = A #GArrowDecimal256 to be compared.
	 * Returns: %TRUE if the decimal is greater than the other decimal,
	 *     %FALSE otherwise.
	 *
	 * Since: 3.0.0
	 */
	public bool greaterThan(Decimal256 otherDecimal)
	{
		return garrow_decimal256_greater_than(gArrowDecimal256, (otherDecimal is null) ? null : otherDecimal.getDecimal256Struct()) != 0;
	}

	/**
	 *
	 * Params:
	 *     otherDecimal = A #GArrowDecimal256 to be compared.
	 * Returns: %TRUE if the decimal is greater than the other decimal
	 *     or equal to the other decimal, %FALSE otherwise.
	 *
	 * Since: 3.0.0
	 */
	public bool greaterThanOrEqual(Decimal256 otherDecimal)
	{
		return garrow_decimal256_greater_than_or_equal(gArrowDecimal256, (otherDecimal is null) ? null : otherDecimal.getDecimal256Struct()) != 0;
	}

	/**
	 *
	 * Params:
	 *     otherDecimal = A #GArrowDecimal256 to be compared.
	 * Returns: %TRUE if the decimal is less than the other decimal,
	 *     %FALSE otherwise.
	 *
	 * Since: 3.0.0
	 */
	public bool lessThan(Decimal256 otherDecimal)
	{
		return garrow_decimal256_less_than(gArrowDecimal256, (otherDecimal is null) ? null : otherDecimal.getDecimal256Struct()) != 0;
	}

	/**
	 *
	 * Params:
	 *     otherDecimal = A #GArrowDecimal256 to be compared.
	 * Returns: %TRUE if the decimal is less than the other decimal
	 *     or equal to the other decimal, %FALSE otherwise.
	 *
	 * Since: 3.0.0
	 */
	public bool lessThanOrEqual(Decimal256 otherDecimal)
	{
		return garrow_decimal256_less_than_or_equal(gArrowDecimal256, (otherDecimal is null) ? null : otherDecimal.getDecimal256Struct()) != 0;
	}

	/**
	 *
	 * Params:
	 *     right = A #GArrowDecimal256.
	 * Returns: The multiplied value of these decimals.
	 *
	 * Since: 3.0.0
	 */
	public Decimal256 multiply(Decimal256 right)
	{
		auto __p = garrow_decimal256_multiply(gArrowDecimal256, (right is null) ? null : right.getDecimal256Struct());

		if(__p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(Decimal256)(cast(GArrowDecimal256*) __p, true);
	}

	/**
	 * Negate the current value of the @decimal destructively.
	 *
	 * Since: 3.0.0
	 */
	public void negate()
	{
		garrow_decimal256_negate(gArrowDecimal256);
	}

	/**
	 *
	 * Params:
	 *     otherDecimal = A #GArrowDecimal256 to be compared.
	 * Returns: %TRUE if the decimal isn't equal to the other decimal,
	 *     %FALSE otherwise.
	 *
	 * Since: 3.0.0
	 */
	public bool notEqual(Decimal256 otherDecimal)
	{
		return garrow_decimal256_not_equal(gArrowDecimal256, (otherDecimal is null) ? null : otherDecimal.getDecimal256Struct()) != 0;
	}

	/**
	 *
	 * Params:
	 *     right = A #GArrowDecimal256.
	 * Returns: The added value of these decimals.
	 *
	 * Since: 3.0.0
	 */
	public Decimal256 plus(Decimal256 right)
	{
		auto __p = garrow_decimal256_plus(gArrowDecimal256, (right is null) ? null : right.getDecimal256Struct());

		if(__p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(Decimal256)(cast(GArrowDecimal256*) __p, true);
	}

	/**
	 *
	 * Params:
	 *     originalScale = A scale to be converted from.
	 *     newScale = A scale to be converted to.
	 * Returns: The rescaled decimal or %NULL on error.
	 *
	 * Since: 3.0.0
	 *
	 * Throws: GException on failure.
	 */
	public Decimal256 rescale(int originalScale, int newScale)
	{
		GError* err = null;

		auto __p = garrow_decimal256_rescale(gArrowDecimal256, originalScale, newScale, &err);

		if (err !is null)
		{
			throw new GException( new ErrorG(err) );
		}

		if(__p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(Decimal256)(cast(GArrowDecimal256*) __p, true);
	}

	/**
	 * Returns: The binary representation of the decimal.
	 *
	 * Since: 3.0.0
	 */
	public Bytes toBytes()
	{
		auto __p = garrow_decimal256_to_bytes(gArrowDecimal256);

		if(__p is null)
		{
			return null;
		}

		return new Bytes(cast(GBytes*) __p, true);
	}

	/**
	 * Returns: The string representation of the decimal.
	 *
	 *     It should be freed with g_free() when no longer needed.
	 *
	 * Since: 3.0.0
	 */
	public override string toString()
	{
		auto retStr = garrow_decimal256_to_string(gArrowDecimal256);

		scope(exit) Str.freeString(retStr);
		return Str.toString(retStr);
	}

	/**
	 *
	 * Params:
	 *     scale = The scale of the decimal.
	 * Returns: The string representation of the decimal.
	 *
	 *     It should be freed with g_free() when no longer needed.
	 *
	 * Since: 3.0.0
	 */
	public string toStringScale(int scale)
	{
		auto retStr = garrow_decimal256_to_string_scale(gArrowDecimal256, scale);

		scope(exit) Str.freeString(retStr);
		return Str.toString(retStr);
	}
}
