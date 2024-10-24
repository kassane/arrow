module arrow.LargeStringArrayBuilder;

private import arrow.LargeBinaryArrayBuilder;
private import arrow.c.functions;
public  import arrow.c.types;
private import glib.ConstructionException;
private import glib.ErrorG;
private import glib.GException;
private import glib.Str;
private import gobject.ObjectG;


/** */
public class LargeStringArrayBuilder : LargeBinaryArrayBuilder
{
	/** the main Gtk struct */
	protected GArrowLargeStringArrayBuilder* gArrowLargeStringArrayBuilder;

	/** Get the main Gtk struct */
	public GArrowLargeStringArrayBuilder* getLargeStringArrayBuilderStruct(bool transferOwnership = false)
	{
		if (transferOwnership)
			ownedRef = false;
		return gArrowLargeStringArrayBuilder;
	}

	/** the main Gtk struct as a void* */
	protected override void* getStruct()
	{
		return cast(void*)gArrowLargeStringArrayBuilder;
	}

	/**
	 * Sets our main struct and passes it to the parent class.
	 */
	public this (GArrowLargeStringArrayBuilder* gArrowLargeStringArrayBuilder, bool ownedRef = false)
	{
		this.gArrowLargeStringArrayBuilder = gArrowLargeStringArrayBuilder;
		super(cast(GArrowLargeBinaryArrayBuilder*)gArrowLargeStringArrayBuilder, ownedRef);
	}


	/** */
	public static GType getType()
	{
		return garrow_large_string_array_builder_get_type();
	}

	/**
	 * Returns: A newly created #GArrowLargeStringArrayBuilder.
	 *
	 * Since: 0.16.0
	 *
	 * Throws: ConstructionException GTK+ fails to create the object.
	 */
	public this()
	{
		auto __p = garrow_large_string_array_builder_new();

		if(__p is null)
		{
			throw new ConstructionException("null returned by new");
		}

		this(cast(GArrowLargeStringArrayBuilder*) __p, true);
	}

	/**
	 *
	 * Params:
	 *     value = A string value.
	 * Returns: %TRUE on success, %FALSE if there was an error.
	 *
	 * Since: 0.16.0
	 *
	 * Throws: GException on failure.
	 */
	public bool appendString(string value)
	{
		GError* err = null;

		auto __p = garrow_large_string_array_builder_append_string(gArrowLargeStringArrayBuilder, Str.toStringz(value), &err) != 0;

		if (err !is null)
		{
			throw new GException( new ErrorG(err) );
		}

		return __p;
	}

	/**
	 *
	 * Params:
	 *     value = A string value.
	 *     length = The length of @value.
	 * Returns: %TRUE on success, %FALSE if there was an error.
	 *
	 * Since: 8.0.0
	 *
	 * Throws: GException on failure.
	 */
	public bool appendStringLen(string value, long length)
	{
		GError* err = null;

		auto __p = garrow_large_string_array_builder_append_string_len(gArrowLargeStringArrayBuilder, Str.toStringz(value), length, &err) != 0;

		if (err !is null)
		{
			throw new GException( new ErrorG(err) );
		}

		return __p;
	}

	/**
	 * Append multiple values at once. It's more efficient than multiple
	 * `append` and `append_null` calls.
	 *
	 * Params:
	 *     values = The array of strings.
	 *     isValids = The array of
	 *         boolean that shows whether the Nth value is valid or not. If the
	 *         Nth @is_valids is %TRUE, the Nth @values is valid value. Otherwise
	 *         the Nth value is null value.
	 *
	 * Returns: %TRUE on success, %FALSE if there was an error.
	 *
	 * Since: 0.16.0
	 *
	 * Throws: GException on failure.
	 */
	public bool appendStrings(string[] values, bool[] isValids)
	{
		int[] isValidsArray = new int[isValids.length];
		for ( int i = 0; i < isValids.length; i++ )
		{
			isValidsArray[i] = isValids[i] ? 1 : 0;
		}

		GError* err = null;

		auto __p = garrow_large_string_array_builder_append_strings(gArrowLargeStringArrayBuilder, Str.toStringzArray(values), cast(long)values.length, isValidsArray.ptr, cast(long)isValids.length, &err) != 0;

		if (err !is null)
		{
			throw new GException( new ErrorG(err) );
		}

		return __p;
	}
}
