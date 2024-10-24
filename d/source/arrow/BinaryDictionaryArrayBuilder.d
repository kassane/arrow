module arrow.BinaryDictionaryArrayBuilder;

private import arrow.Array;
private import arrow.ArrayBuilder;
private import arrow.BinaryArray;
private import arrow.c.functions;
public  import arrow.c.types;
private import glib.Bytes;
private import glib.ConstructionException;
private import glib.ErrorG;
private import glib.GException;
private import gobject.ObjectG;


/** */
public class BinaryDictionaryArrayBuilder : ArrayBuilder
{
	/** the main Gtk struct */
	protected GArrowBinaryDictionaryArrayBuilder* gArrowBinaryDictionaryArrayBuilder;

	/** Get the main Gtk struct */
	public GArrowBinaryDictionaryArrayBuilder* getBinaryDictionaryArrayBuilderStruct(bool transferOwnership = false)
	{
		if (transferOwnership)
			ownedRef = false;
		return gArrowBinaryDictionaryArrayBuilder;
	}

	/** the main Gtk struct as a void* */
	protected override void* getStruct()
	{
		return cast(void*)gArrowBinaryDictionaryArrayBuilder;
	}

	/**
	 * Sets our main struct and passes it to the parent class.
	 */
	public this (GArrowBinaryDictionaryArrayBuilder* gArrowBinaryDictionaryArrayBuilder, bool ownedRef = false)
	{
		this.gArrowBinaryDictionaryArrayBuilder = gArrowBinaryDictionaryArrayBuilder;
		super(cast(GArrowArrayBuilder*)gArrowBinaryDictionaryArrayBuilder, ownedRef);
	}


	/** */
	public static GType getType()
	{
		return garrow_binary_dictionary_array_builder_get_type();
	}

	/**
	 * Returns: A newly created #GArrowBinaryDictionaryArrayBuilder.
	 *
	 * Since: 2.0.0
	 *
	 * Throws: ConstructionException GTK+ fails to create the object.
	 */
	public this()
	{
		auto __p = garrow_binary_dictionary_array_builder_new();

		if(__p is null)
		{
			throw new ConstructionException("null returned by new");
		}

		this(cast(GArrowBinaryDictionaryArrayBuilder*) __p, true);
	}

	/**
	 *
	 * Params:
	 *     array = A #GArrowBinaryArray.
	 * Returns: %TRUE on success, %FALSE if there was an error.
	 *
	 * Since: 2.0.0
	 *
	 * Throws: GException on failure.
	 */
	public bool appendArray(BinaryArray array)
	{
		GError* err = null;

		auto __p = garrow_binary_dictionary_array_builder_append_array(gArrowBinaryDictionaryArrayBuilder, (array is null) ? null : array.getBinaryArrayStruct(), &err) != 0;

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

		auto __p = garrow_binary_dictionary_array_builder_append_indices(gArrowBinaryDictionaryArrayBuilder, values.ptr, cast(long)values.length, isValidsArray.ptr, cast(long)isValids.length, &err) != 0;

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

		auto __p = garrow_binary_dictionary_array_builder_append_null(gArrowBinaryDictionaryArrayBuilder, &err) != 0;

		if (err !is null)
		{
			throw new GException( new ErrorG(err) );
		}

		return __p;
	}

	/**
	 *
	 * Params:
	 *     value = A binary value.
	 * Returns: %TRUE on success, %FALSE if there was an error.
	 *
	 * Since: 2.0.0
	 *
	 * Throws: GException on failure.
	 */
	public bool appendValue(ubyte[] value)
	{
		GError* err = null;

		auto __p = garrow_binary_dictionary_array_builder_append_value(gArrowBinaryDictionaryArrayBuilder, value.ptr, cast(int)value.length, &err) != 0;

		if (err !is null)
		{
			throw new GException( new ErrorG(err) );
		}

		return __p;
	}

	/**
	 *
	 * Params:
	 *     value = A binary value.
	 * Returns: %TRUE on success, %FALSE if there was an error.
	 *
	 * Since: 2.0.0
	 *
	 * Throws: GException on failure.
	 */
	public bool appendValueBytes(Bytes value)
	{
		GError* err = null;

		auto __p = garrow_binary_dictionary_array_builder_append_value_bytes(gArrowBinaryDictionaryArrayBuilder, (value is null) ? null : value.getBytesStruct(), &err) != 0;

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

		auto __p = garrow_binary_dictionary_array_builder_finish_delta(gArrowBinaryDictionaryArrayBuilder, &outoutIndices, &outoutDelta, &err) != 0;

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
		return garrow_binary_dictionary_array_builder_get_dictionary_length(gArrowBinaryDictionaryArrayBuilder);
	}

	/**
	 *
	 * Params:
	 *     values = A #GArrowBinaryArray.
	 * Returns: %TRUE on success, %FALSE if there was an error.
	 *
	 * Since: 2.0.0
	 *
	 * Throws: GException on failure.
	 */
	public bool insertMemoValues(BinaryArray values)
	{
		GError* err = null;

		auto __p = garrow_binary_dictionary_array_builder_insert_memo_values(gArrowBinaryDictionaryArrayBuilder, (values is null) ? null : values.getBinaryArrayStruct(), &err) != 0;

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
		garrow_binary_dictionary_array_builder_reset_full(gArrowBinaryDictionaryArrayBuilder);
	}
}
