module arrow.StringDictionaryArrayBuilder;

private import arrow.Array;
private import arrow.ArrayBuilder;
private import arrow.StringArray;
private import arrow.c.functions;
public  import arrow.c.types;
private import glib.ConstructionException;
private import glib.ErrorG;
private import glib.GException;
private import glib.Str;
private import gobject.ObjectG;


/** */
public class StringDictionaryArrayBuilder : ArrayBuilder
{
	/** the main Gtk struct */
	protected GArrowStringDictionaryArrayBuilder* gArrowStringDictionaryArrayBuilder;

	/** Get the main Gtk struct */
	public GArrowStringDictionaryArrayBuilder* getStringDictionaryArrayBuilderStruct(bool transferOwnership = false)
	{
		if (transferOwnership)
			ownedRef = false;
		return gArrowStringDictionaryArrayBuilder;
	}

	/** the main Gtk struct as a void* */
	protected override void* getStruct()
	{
		return cast(void*)gArrowStringDictionaryArrayBuilder;
	}

	/**
	 * Sets our main struct and passes it to the parent class.
	 */
	public this (GArrowStringDictionaryArrayBuilder* gArrowStringDictionaryArrayBuilder, bool ownedRef = false)
	{
		this.gArrowStringDictionaryArrayBuilder = gArrowStringDictionaryArrayBuilder;
		super(cast(GArrowArrayBuilder*)gArrowStringDictionaryArrayBuilder, ownedRef);
	}


	/** */
	public static GType getType()
	{
		return garrow_string_dictionary_array_builder_get_type();
	}

	/**
	 * Returns: A newly created #GArrowStringDictionaryArrayBuilder.
	 *
	 * Since: 2.0.0
	 *
	 * Throws: ConstructionException GTK+ fails to create the object.
	 */
	public this()
	{
		auto __p = garrow_string_dictionary_array_builder_new();

		if(__p is null)
		{
			throw new ConstructionException("null returned by new");
		}

		this(cast(GArrowStringDictionaryArrayBuilder*) __p, true);
	}

	/**
	 *
	 * Params:
	 *     array = A #GArrowStringArray.
	 * Returns: %TRUE on success, %FALSE if there was an error.
	 *
	 * Since: 2.0.0
	 *
	 * Throws: GException on failure.
	 */
	public bool appendArray(StringArray array)
	{
		GError* err = null;

		auto __p = garrow_string_dictionary_array_builder_append_array(gArrowStringDictionaryArrayBuilder, (array is null) ? null : array.getStringArrayStruct(), &err) != 0;

		if (err !is null)
		{
			throw new GException( new ErrorG(err) );
		}

		return __p;
	}

	/**
	 * Append dictionary indices directly without modifying the internal memo.
	 *
	 * Params:
	 *     values = The array of indices.
	 *     isValids = The array of
	 *         %TRUE or %FALSE that shows whether the Nth value is valid or not. If the
	 *         Nth `is_valids` is %TRUE, the Nth `values` is valid value. Otherwise
	 *         the Nth value is null value.
	 *
	 * Returns: %TRUE on success, %FALSE if there was an error.
	 *
	 * Since: 2.0.0
	 *
	 * Throws: GException on failure.
	 */
	public bool appendIndices(long[] values, bool[] isValids)
	{
		int[] isValidsArray = new int[isValids.length];
		for ( int i = 0; i < isValids.length; i++ )
		{
			isValidsArray[i] = isValids[i] ? 1 : 0;
		}

		GError* err = null;

		auto __p = garrow_string_dictionary_array_builder_append_indices(gArrowStringDictionaryArrayBuilder, values.ptr, cast(long)values.length, isValidsArray.ptr, cast(long)isValids.length, &err) != 0;

		if (err !is null)
		{
			throw new GException( new ErrorG(err) );
		}

		return __p;
	}

	/**
	 *
	 *
	 * Deprecated: Use garrow_array_builder_append_null() instead.
	 *
	 * Returns: %TRUE on success, %FALSE if there was an error.
	 *
	 * Since: 2.0.0
	 *
	 * Throws: GException on failure.
	 */
	public override bool appendNull()
	{
		GError* err = null;

		auto __p = garrow_string_dictionary_array_builder_append_null(gArrowStringDictionaryArrayBuilder, &err) != 0;

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
	 * Returns: %TRUE on success, %FALSE if there was an error.
	 *
	 * Since: 2.0.0
	 *
	 * Throws: GException on failure.
	 */
	public bool appendString(string value)
	{
		GError* err = null;

		auto __p = garrow_string_dictionary_array_builder_append_string(gArrowStringDictionaryArrayBuilder, Str.toStringz(value), &err) != 0;

		if (err !is null)
		{
			throw new GException( new ErrorG(err) );
		}

		return __p;
	}

	/**
	 *
	 * Params:
	 *     outIndices = The built #GArrowArray containing indices.
	 *     outDelta = The built #GArrowArray containing dictionary.
	 * Returns: %TRUE on success, %FALSE if there was an error.
	 *
	 * Since: 2.0.0
	 *
	 * Throws: GException on failure.
	 */
	public bool finishDelta(out Array outIndices, out Array outDelta)
	{
		GArrowArray* outoutIndices = null;
		GArrowArray* outoutDelta = null;
		GError* err = null;

		auto __p = garrow_string_dictionary_array_builder_finish_delta(gArrowStringDictionaryArrayBuilder, &outoutIndices, &outoutDelta, &err) != 0;

		if (err !is null)
		{
			throw new GException( new ErrorG(err) );
		}

		outIndices = ObjectG.getDObject!(Array)(outoutIndices);
		outDelta = ObjectG.getDObject!(Array)(outoutDelta);

		return __p;
	}

	/**
	 * Returns: A number of entries in the dictionary.
	 *
	 * Since: 2.0.0
	 */
	public long getDictionaryLength()
	{
		return garrow_string_dictionary_array_builder_get_dictionary_length(gArrowStringDictionaryArrayBuilder);
	}

	/**
	 *
	 * Params:
	 *     values = A #GArrowStringArray.
	 * Returns: %TRUE on success, %FALSE if there was an error.
	 *
	 * Since: 2.0.0
	 *
	 * Throws: GException on failure.
	 */
	public bool insertMemoValues(StringArray values)
	{
		GError* err = null;

		auto __p = garrow_string_dictionary_array_builder_insert_memo_values(gArrowStringDictionaryArrayBuilder, (values is null) ? null : values.getStringArrayStruct(), &err) != 0;

		if (err !is null)
		{
			throw new GException( new ErrorG(err) );
		}

		return __p;
	}

	/**
	 * Reset and also clear accumulated dictionary values in memo table.
	 *
	 * Since: 2.0.0
	 */
	public void resetFull()
	{
		garrow_string_dictionary_array_builder_reset_full(gArrowStringDictionaryArrayBuilder);
	}
}
