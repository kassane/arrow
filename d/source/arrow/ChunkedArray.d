module arrow.ChunkedArray;

private import arrow.Array;
private import arrow.BooleanArray;
private import arrow.DataType;
private import arrow.FilterOptions;
private import arrow.TakeOptions;
private import arrow.UInt64Array;
private import arrow.c.functions;
public  import arrow.c.types;
private import glib.ConstructionException;
private import glib.ErrorG;
private import glib.GException;
private import glib.ListG;
private import glib.Str;
private import glib.c.functions;
private import gobject.ObjectG;


/** */
public class ChunkedArray : ObjectG
{
	/** the main Gtk struct */
	protected GArrowChunkedArray* gArrowChunkedArray;

	/** Get the main Gtk struct */
	public GArrowChunkedArray* getChunkedArrayStruct(bool transferOwnership = false)
	{
		if (transferOwnership)
			ownedRef = false;
		return gArrowChunkedArray;
	}

	/** the main Gtk struct as a void* */
	protected override void* getStruct()
	{
		return cast(void*)gArrowChunkedArray;
	}

	/**
	 * Sets our main struct and passes it to the parent class.
	 */
	public this (GArrowChunkedArray* gArrowChunkedArray, bool ownedRef = false)
	{
		this.gArrowChunkedArray = gArrowChunkedArray;
		super(cast(GObject*)gArrowChunkedArray, ownedRef);
	}


	/** */
	public static GType getType()
	{
		return garrow_chunked_array_get_type();
	}

	/**
	 *
	 * Params:
	 *     chunks = The array chunks.
	 * Returns: A newly created #GArrowChunkedArray or %NULL on error.
	 *
	 * Throws: GException on failure.
	 * Throws: ConstructionException GTK+ fails to create the object.
	 */
	public this(ListG chunks)
	{
		GError* err = null;

		auto __p = garrow_chunked_array_new((chunks is null) ? null : chunks.getListGStruct(), &err);

		if (err !is null)
		{
			throw new GException( new ErrorG(err) );
		}

		if(__p is null)
		{
			throw new ConstructionException("null returned by new");
		}

		this(cast(GArrowChunkedArray*) __p, true);
	}

	/**
	 *
	 * Params:
	 *     dataType = The #GArrowDataType of this chunked array.
	 * Returns: A newly created empty #GArrowChunkedArray or %NULL on error.
	 *
	 * Since: 11.0.0
	 *
	 * Throws: GException on failure.
	 * Throws: ConstructionException GTK+ fails to create the object.
	 */
	public this(DataType dataType)
	{
		GError* err = null;

		auto __p = garrow_chunked_array_new_empty((dataType is null) ? null : dataType.getDataTypeStruct(), &err);

		if (err !is null)
		{
			throw new GException( new ErrorG(err) );
		}

		if(__p is null)
		{
			throw new ConstructionException("null returned by new_empty");
		}

		this(cast(GArrowChunkedArray*) __p, true);
	}

	/**
	 * Returns: The combined array that has
	 *     all data in all chunks.
	 *
	 * Since: 4.0.0
	 *
	 * Throws: GException on failure.
	 */
	public Array combine()
	{
		GError* err = null;

		auto __p = garrow_chunked_array_combine(gArrowChunkedArray, &err);

		if (err !is null)
		{
			throw new GException( new ErrorG(err) );
		}

		if(__p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(Array)(cast(GArrowArray*) __p, true);
	}

	/**
	 *
	 * Params:
	 *     otherChunkedArray = A #GArrowChunkedArray to be compared.
	 * Returns: %TRUE if both of them have the same data, %FALSE
	 *     otherwise.
	 *
	 * Since: 0.4.0
	 */
	public bool equal(ChunkedArray otherChunkedArray)
	{
		return garrow_chunked_array_equal(gArrowChunkedArray, (otherChunkedArray is null) ? null : otherChunkedArray.getChunkedArrayStruct()) != 0;
	}

	/**
	 *
	 * Params:
	 *     filter = The values indicates which values should be filtered out.
	 *     options = A #GArrowFilterOptions.
	 * Returns: The #GArrowChunkedArray filtered
	 *     with a boolean selection filter. Nulls in the filter will
	 *     result in nulls in the output.
	 *
	 * Since: 0.15.0
	 *
	 * Throws: GException on failure.
	 */
	public ChunkedArray filter(BooleanArray filter, FilterOptions options)
	{
		GError* err = null;

		auto __p = garrow_chunked_array_filter(gArrowChunkedArray, (filter is null) ? null : filter.getBooleanArrayStruct(), (options is null) ? null : options.getFilterOptionsStruct(), &err);

		if (err !is null)
		{
			throw new GException( new ErrorG(err) );
		}

		if(__p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(ChunkedArray)(cast(GArrowChunkedArray*) __p, true);
	}

	/**
	 *
	 * Params:
	 *     filter = The values indicates which values should be filtered out.
	 *     options = A #GArrowFilterOptions.
	 * Returns: The #GArrowChunkedArray filtered
	 *     with a chunked array filter. Nulls in the filter will
	 *     result in nulls in the output.
	 *
	 * Since: 0.15.0
	 *
	 * Throws: GException on failure.
	 */
	public ChunkedArray filterChunkedArray(ChunkedArray filter, FilterOptions options)
	{
		GError* err = null;

		auto __p = garrow_chunked_array_filter_chunked_array(gArrowChunkedArray, (filter is null) ? null : filter.getChunkedArrayStruct(), (options is null) ? null : options.getFilterOptionsStruct(), &err);

		if (err !is null)
		{
			throw new GException( new ErrorG(err) );
		}

		if(__p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(ChunkedArray)(cast(GArrowChunkedArray*) __p, true);
	}

	/**
	 *
	 * Params:
	 *     i = The index of the target chunk.
	 * Returns: The i-th chunk of the chunked array.
	 */
	public Array getChunk(uint i)
	{
		auto __p = garrow_chunked_array_get_chunk(gArrowChunkedArray, i);

		if(__p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(Array)(cast(GArrowArray*) __p, true);
	}

	/**
	 * Returns: The chunks in the chunked array.
	 */
	public ListG getChunks()
	{
		auto __p = garrow_chunked_array_get_chunks(gArrowChunkedArray);

		if(__p is null)
		{
			return null;
		}

		return new ListG(cast(GList*) __p, true);
	}

	/**
	 *
	 *
	 * Deprecated: Use garrow_chunked_array_get_n_rows() instead.
	 *
	 * Returns: The total number of rows in the chunked array.
	 */
	public ulong getLength()
	{
		return garrow_chunked_array_get_length(gArrowChunkedArray);
	}

	/**
	 * Returns: The total number of chunks in the chunked array.
	 */
	public uint getNChunks()
	{
		return garrow_chunked_array_get_n_chunks(gArrowChunkedArray);
	}

	/**
	 * Returns: The total number of NULL in the chunked array.
	 */
	public ulong getNNulls()
	{
		return garrow_chunked_array_get_n_nulls(gArrowChunkedArray);
	}

	/**
	 * Returns: The total number of rows in the chunked array.
	 *
	 * Since: 0.15.0
	 */
	public ulong getNRows()
	{
		return garrow_chunked_array_get_n_rows(gArrowChunkedArray);
	}

	/**
	 * Returns: The #GArrowDataType of the value of
	 *     the chunked array.
	 *
	 * Since: 0.9.0
	 */
	public DataType getValueDataType()
	{
		auto __p = garrow_chunked_array_get_value_data_type(gArrowChunkedArray);

		if(__p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(DataType)(cast(GArrowDataType*) __p, true);
	}

	/**
	 * Returns: The #GArrowType of the value of the chunked array.
	 *
	 * Since: 0.9.0
	 */
	public GArrowType getValueType()
	{
		return garrow_chunked_array_get_value_type(gArrowChunkedArray);
	}

	/**
	 *
	 * Params:
	 *     offset = The offset of sub #GArrowChunkedArray.
	 *     length = The length of sub #GArrowChunkedArray.
	 * Returns: The sub #GArrowChunkedArray. It covers only from
	 *     `offset` to `offset + length` range. The sub #GArrowChunkedArray shares
	 *     values with the base #GArrowChunkedArray.
	 */
	public ChunkedArray slice(ulong offset, ulong length)
	{
		auto __p = garrow_chunked_array_slice(gArrowChunkedArray, offset, length);

		if(__p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(ChunkedArray)(cast(GArrowChunkedArray*) __p, true);
	}

	/**
	 *
	 * Params:
	 *     order = The order for sort.
	 * Returns: The indices that would sort
	 *     a chunked array in the specified order on success, %NULL on error.
	 *
	 * Since: 3.0.0
	 *
	 * Throws: GException on failure.
	 */
	public UInt64Array sortIndices(GArrowSortOrder order)
	{
		GError* err = null;

		auto __p = garrow_chunked_array_sort_indices(gArrowChunkedArray, order, &err);

		if (err !is null)
		{
			throw new GException( new ErrorG(err) );
		}

		if(__p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(UInt64Array)(cast(GArrowUInt64Array*) __p, true);
	}

	/**
	 *
	 * Params:
	 *     indices = The indices of values to take.
	 *     options = A #GArrowTakeOptions.
	 * Returns: The #GArrowChunkedArray taken from
	 *     an array of values at indices in input array or %NULL on error.
	 *
	 * Since: 0.16.0
	 *
	 * Throws: GException on failure.
	 */
	public ChunkedArray take(Array indices, TakeOptions options)
	{
		GError* err = null;

		auto __p = garrow_chunked_array_take(gArrowChunkedArray, (indices is null) ? null : indices.getArrayStruct(), (options is null) ? null : options.getTakeOptionsStruct(), &err);

		if (err !is null)
		{
			throw new GException( new ErrorG(err) );
		}

		if(__p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(ChunkedArray)(cast(GArrowChunkedArray*) __p, true);
	}

	/**
	 *
	 * Params:
	 *     indices = The indices of values to take.
	 *     options = A #GArrowTakeOptions.
	 * Returns: The #GArrowChunkedArray taken from
	 *     an array of values at indices in chunked array or %NULL on error.
	 *
	 * Since: 0.16.0
	 *
	 * Throws: GException on failure.
	 */
	public ChunkedArray takeChunkedArray(ChunkedArray indices, TakeOptions options)
	{
		GError* err = null;

		auto __p = garrow_chunked_array_take_chunked_array(gArrowChunkedArray, (indices is null) ? null : indices.getChunkedArrayStruct(), (options is null) ? null : options.getTakeOptionsStruct(), &err);

		if (err !is null)
		{
			throw new GException( new ErrorG(err) );
		}

		if(__p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(ChunkedArray)(cast(GArrowChunkedArray*) __p, true);
	}

	/**
	 * Returns: The formatted chunked array content or %NULL on error.
	 *
	 *     It should be freed with g_free() when no longer needed.
	 *
	 * Since: 0.11.0
	 *
	 * Throws: GException on failure.
	 */
	public override string toString()
	{
		GError* err = null;

		auto retStr = garrow_chunked_array_to_string(gArrowChunkedArray, &err);

		if (err !is null)
		{
			throw new GException( new ErrorG(err) );
		}

		scope(exit) Str.freeString(retStr);
		return Str.toString(retStr);
	}
}
