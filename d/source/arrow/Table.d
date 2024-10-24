module arrow.Table;

private import arrow.Array;
private import arrow.BooleanArray;
private import arrow.ChunkedArray;
private import arrow.FeatherWriteProperties;
private import arrow.Field;
private import arrow.FilterOptions;
private import arrow.OutputStream;
private import arrow.RecordBatch;
private import arrow.Schema;
private import arrow.SortOptions;
private import arrow.TableConcatenateOptions;
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
public class Table : ObjectG
{
	/** the main Gtk struct */
	protected GArrowTable* gArrowTable;

	/** Get the main Gtk struct */
	public GArrowTable* getTableStruct(bool transferOwnership = false)
	{
		if (transferOwnership)
			ownedRef = false;
		return gArrowTable;
	}

	/** the main Gtk struct as a void* */
	protected override void* getStruct()
	{
		return cast(void*)gArrowTable;
	}

	/**
	 * Sets our main struct and passes it to the parent class.
	 */
	public this (GArrowTable* gArrowTable, bool ownedRef = false)
	{
		this.gArrowTable = gArrowTable;
		super(cast(GObject*)gArrowTable, ownedRef);
	}


	/** */
	public static GType getType()
	{
		return garrow_table_get_type();
	}

	/**
	 *
	 * Params:
	 *     schema = The schema of the table.
	 *     arrays = The arrays of the table.
	 * Returns: A newly created #GArrowTable or %NULL on error.
	 *
	 * Since: 0.12.0
	 *
	 * Throws: GException on failure.
	 * Throws: ConstructionException GTK+ fails to create the object.
	 */
	public this(Schema schema, Array[] arrays)
	{
		GArrowArray*[] arraysArray = new GArrowArray*[arrays.length];
		for ( int i = 0; i < arrays.length; i++ )
		{
			arraysArray[i] = arrays[i].getArrayStruct();
		}

		GError* err = null;

		auto __p = garrow_table_new_arrays((schema is null) ? null : schema.getSchemaStruct(), arraysArray.ptr, cast(size_t)arrays.length, &err);

		if (err !is null)
		{
			throw new GException( new ErrorG(err) );
		}

		if(__p is null)
		{
			throw new ConstructionException("null returned by new_arrays");
		}

		this(cast(GArrowTable*) __p, true);
	}

	/**
	 *
	 * Params:
	 *     schema = The schema of the table.
	 *     chunkedArrays = The chunked arrays of
	 *         the table.
	 * Returns: A newly created #GArrowTable or %NULL on error.
	 *
	 * Since: 0.15.0
	 *
	 * Throws: GException on failure.
	 * Throws: ConstructionException GTK+ fails to create the object.
	 */
	public this(Schema schema, ChunkedArray[] chunkedArrays)
	{
		GArrowChunkedArray*[] chunkedArraysArray = new GArrowChunkedArray*[chunkedArrays.length];
		for ( int i = 0; i < chunkedArrays.length; i++ )
		{
			chunkedArraysArray[i] = chunkedArrays[i].getChunkedArrayStruct();
		}

		GError* err = null;

		auto __p = garrow_table_new_chunked_arrays((schema is null) ? null : schema.getSchemaStruct(), chunkedArraysArray.ptr, cast(size_t)chunkedArrays.length, &err);

		if (err !is null)
		{
			throw new GException( new ErrorG(err) );
		}

		if(__p is null)
		{
			throw new ConstructionException("null returned by new_chunked_arrays");
		}

		this(cast(GArrowTable*) __p, true);
	}

	/**
	 *
	 * Params:
	 *     schema = The schema of the table.
	 *     recordBatches = The record batches
	 *         that have data for the table.
	 * Returns: A newly created #GArrowTable or %NULL on error.
	 *
	 * Since: 0.12.0
	 *
	 * Throws: GException on failure.
	 * Throws: ConstructionException GTK+ fails to create the object.
	 */
	public this(Schema schema, RecordBatch[] recordBatches)
	{
		GArrowRecordBatch*[] recordBatchesArray = new GArrowRecordBatch*[recordBatches.length];
		for ( int i = 0; i < recordBatches.length; i++ )
		{
			recordBatchesArray[i] = recordBatches[i].getRecordBatchStruct();
		}

		GError* err = null;

		auto __p = garrow_table_new_record_batches((schema is null) ? null : schema.getSchemaStruct(), recordBatchesArray.ptr, cast(size_t)recordBatches.length, &err);

		if (err !is null)
		{
			throw new GException( new ErrorG(err) );
		}

		if(__p is null)
		{
			throw new ConstructionException("null returned by new_record_batches");
		}

		this(cast(GArrowTable*) __p, true);
	}

	/**
	 *
	 * Params:
	 *     schema = The schema of the table.
	 *     values = The values of the table. All values must be instance of
	 *         the same class. Available classes are #GArrowChunkedArray,
	 *         #GArrowArray and #GArrowRecordBatch.
	 * Returns: A newly created #GArrowTable or %NULL on error.
	 *
	 * Since: 0.12.0
	 *
	 * Throws: GException on failure.
	 * Throws: ConstructionException GTK+ fails to create the object.
	 */
	public this(Schema schema, ListG values)
	{
		GError* err = null;

		auto __p = garrow_table_new_values((schema is null) ? null : schema.getSchemaStruct(), (values is null) ? null : values.getListGStruct(), &err);

		if (err !is null)
		{
			throw new GException( new ErrorG(err) );
		}

		if(__p is null)
		{
			throw new ConstructionException("null returned by new_values");
		}

		this(cast(GArrowTable*) __p, true);
	}

	/**
	 *
	 * Params:
	 *     i = The index of the new column.
	 *     field = The field for the column to be added.
	 *     chunkedArray = The column data to be added.
	 * Returns: The newly allocated
	 *     #GArrowTable that has a new column or %NULL on error.
	 *
	 * Since: 0.15.0
	 *
	 * Throws: GException on failure.
	 */
	public Table addColumn(uint i, Field field, ChunkedArray chunkedArray)
	{
		GError* err = null;

		auto __p = garrow_table_add_column(gArrowTable, i, (field is null) ? null : field.getFieldStruct(), (chunkedArray is null) ? null : chunkedArray.getChunkedArrayStruct(), &err);

		if (err !is null)
		{
			throw new GException( new ErrorG(err) );
		}

		if(__p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(Table)(cast(GArrowTable*) __p, true);
	}

	/**
	 * Returns: The #GArrowTable with
	 *     chunks combined, or %NULL on error.
	 *
	 * Since: 0.16.0
	 *
	 * Throws: GException on failure.
	 */
	public Table combineChunks()
	{
		GError* err = null;

		auto __p = garrow_table_combine_chunks(gArrowTable, &err);

		if (err !is null)
		{
			throw new GException( new ErrorG(err) );
		}

		if(__p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(Table)(cast(GArrowTable*) __p, true);
	}

	/**
	 *
	 * Params:
	 *     otherTables = The tables to be concatenated.
	 *     options = The options to customize concatenation.
	 * Returns: The table concatenated vertically.
	 *
	 * Since: 0.14.0
	 *
	 * Throws: GException on failure.
	 */
	public Table concatenate(ListG otherTables, TableConcatenateOptions options)
	{
		GError* err = null;

		auto __p = garrow_table_concatenate(gArrowTable, (otherTables is null) ? null : otherTables.getListGStruct(), (options is null) ? null : options.getTableConcatenateOptionsStruct(), &err);

		if (err !is null)
		{
			throw new GException( new ErrorG(err) );
		}

		if(__p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(Table)(cast(GArrowTable*) __p, true);
	}

	/**
	 *
	 * Params:
	 *     otherTable = A #GArrowTable to be compared.
	 * Returns: %TRUE if both of them have the same data, %FALSE
	 *     otherwise.
	 *
	 * Since: 0.4.0
	 */
	public bool equal(Table otherTable)
	{
		return garrow_table_equal(gArrowTable, (otherTable is null) ? null : otherTable.getTableStruct()) != 0;
	}

	/**
	 *
	 * Params:
	 *     otherTable = A #GArrowTable to be compared.
	 *     checkMetadata = Whether to compare metadata.
	 * Returns: %TRUE if both of them have the same data, %FALSE
	 *     otherwise.
	 *
	 * Since: 0.17.0
	 */
	public bool equalMetadata(Table otherTable, bool checkMetadata)
	{
		return garrow_table_equal_metadata(gArrowTable, (otherTable is null) ? null : otherTable.getTableStruct(), checkMetadata) != 0;
	}

	/**
	 *
	 * Params:
	 *     filter = The values indicates which values should be filtered out.
	 *     options = A #GArrowFilterOptions.
	 * Returns: The #GArrowTable filtered
	 *     with a boolean selection filter. Nulls in the filter will
	 *     result in nulls in the output.
	 *
	 * Since: 0.15.0
	 *
	 * Throws: GException on failure.
	 */
	public Table filter(BooleanArray filter, FilterOptions options)
	{
		GError* err = null;

		auto __p = garrow_table_filter(gArrowTable, (filter is null) ? null : filter.getBooleanArrayStruct(), (options is null) ? null : options.getFilterOptionsStruct(), &err);

		if (err !is null)
		{
			throw new GException( new ErrorG(err) );
		}

		if(__p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(Table)(cast(GArrowTable*) __p, true);
	}

	/**
	 *
	 * Params:
	 *     filter = The values indicates which values should be filtered out.
	 *     options = A #GArrowFilterOptions.
	 * Returns: The #GArrowTable filtered
	 *     with a chunked array filter. Nulls in the filter will
	 *     result in nulls in the output.
	 *
	 * Since: 0.15.0
	 *
	 * Throws: GException on failure.
	 */
	public Table filterChunkedArray(ChunkedArray filter, FilterOptions options)
	{
		GError* err = null;

		auto __p = garrow_table_filter_chunked_array(gArrowTable, (filter is null) ? null : filter.getChunkedArrayStruct(), (options is null) ? null : options.getFilterOptionsStruct(), &err);

		if (err !is null)
		{
			throw new GException( new ErrorG(err) );
		}

		if(__p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(Table)(cast(GArrowTable*) __p, true);
	}

	/**
	 *
	 * Params:
	 *     i = The index of the target column. If it's negative, index is
	 *         counted backward from the end of the columns. `-1` means the last
	 *         column.
	 * Returns: The i-th column's data in the table.
	 *
	 * Since: 0.15.0
	 */
	public ChunkedArray getColumnData(int i)
	{
		auto __p = garrow_table_get_column_data(gArrowTable, i);

		if(__p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(ChunkedArray)(cast(GArrowChunkedArray*) __p, true);
	}

	/**
	 * Returns: The number of columns in the table.
	 */
	public uint getNColumns()
	{
		return garrow_table_get_n_columns(gArrowTable);
	}

	/**
	 * Returns: The number of rows in the table.
	 */
	public ulong getNRows()
	{
		return garrow_table_get_n_rows(gArrowTable);
	}

	/**
	 * Returns: The schema of the table.
	 */
	public Schema getSchema()
	{
		auto __p = garrow_table_get_schema(gArrowTable);

		if(__p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(Schema)(cast(GArrowSchema*) __p, true);
	}

	/**
	 *
	 * Params:
	 *     i = The index of the column to be removed.
	 * Returns: The newly allocated
	 *     #GArrowTable that doesn't have the column or %NULL on error.
	 *
	 * Since: 0.3.0
	 *
	 * Throws: GException on failure.
	 */
	public Table removeColumn(uint i)
	{
		GError* err = null;

		auto __p = garrow_table_remove_column(gArrowTable, i, &err);

		if (err !is null)
		{
			throw new GException( new ErrorG(err) );
		}

		if(__p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(Table)(cast(GArrowTable*) __p, true);
	}

	/**
	 *
	 * Params:
	 *     i = The index of the column to be replaced.
	 *     field = The field for the new column.
	 *     chunkedArray = The newly added column data.
	 * Returns: The newly allocated
	 *     #GArrowTable that has @column as the @i-th column or %NULL on
	 *     error.
	 *
	 * Since: 0.15.0
	 *
	 * Throws: GException on failure.
	 */
	public Table replaceColumn(uint i, Field field, ChunkedArray chunkedArray)
	{
		GError* err = null;

		auto __p = garrow_table_replace_column(gArrowTable, i, (field is null) ? null : field.getFieldStruct(), (chunkedArray is null) ? null : chunkedArray.getChunkedArrayStruct(), &err);

		if (err !is null)
		{
			throw new GException( new ErrorG(err) );
		}

		if(__p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(Table)(cast(GArrowTable*) __p, true);
	}

	/**
	 *
	 * Params:
	 *     offset = The offset of sub #GArrowTable. If the offset is negative,
	 *         the offset is counted from the last.
	 *     length = The length of sub #GArrowTable.
	 * Returns: The sub #GArrowTable. It covers
	 *     only from `offset` to `offset + length` range. The sub
	 *     #GArrowTable shares values with the base
	 *     #GArrowTable.
	 *
	 * Since: 0.14.0
	 */
	public Table slice(long offset, long length)
	{
		auto __p = garrow_table_slice(gArrowTable, offset, length);

		if(__p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(Table)(cast(GArrowTable*) __p, true);
	}

	/**
	 *
	 * Params:
	 *     options = The options to be used.
	 * Returns: The indices that would sort
	 *     a table with the specified options on success, %NULL on error.
	 *
	 * Since: 3.0.0
	 *
	 * Throws: GException on failure.
	 */
	public UInt64Array sortIndices(SortOptions options)
	{
		GError* err = null;

		auto __p = garrow_table_sort_indices(gArrowTable, (options is null) ? null : options.getSortOptionsStruct(), &err);

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
	 * Returns: The #GArrowTable taken from
	 *     an array of values at indices in input array or %NULL on error.
	 *
	 * Since: 0.16.0
	 *
	 * Throws: GException on failure.
	 */
	public Table take(Array indices, TakeOptions options)
	{
		GError* err = null;

		auto __p = garrow_table_take(gArrowTable, (indices is null) ? null : indices.getArrayStruct(), (options is null) ? null : options.getTakeOptionsStruct(), &err);

		if (err !is null)
		{
			throw new GException( new ErrorG(err) );
		}

		if(__p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(Table)(cast(GArrowTable*) __p, true);
	}

	/**
	 *
	 * Params:
	 *     indices = The indices of values to take.
	 *     options = A #GArrowTakeOptions.
	 * Returns: The #GArrowTable taken from
	 *     an array of values at indices in chunked array or %NULL on error.
	 *
	 * Since: 0.16.0
	 *
	 * Throws: GException on failure.
	 */
	public Table takeChunkedArray(ChunkedArray indices, TakeOptions options)
	{
		GError* err = null;

		auto __p = garrow_table_take_chunked_array(gArrowTable, (indices is null) ? null : indices.getChunkedArrayStruct(), (options is null) ? null : options.getTakeOptionsStruct(), &err);

		if (err !is null)
		{
			throw new GException( new ErrorG(err) );
		}

		if(__p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(Table)(cast(GArrowTable*) __p, true);
	}

	/**
	 * Returns: The formatted table content or %NULL on error.
	 *
	 *     It should be freed with g_free() when no longer needed.
	 *
	 * Since: 0.12.0
	 *
	 * Throws: GException on failure.
	 */
	public override string toString()
	{
		GError* err = null;

		auto retStr = garrow_table_to_string(gArrowTable, &err);

		if (err !is null)
		{
			throw new GException( new ErrorG(err) );
		}

		scope(exit) Str.freeString(retStr);
		return Str.toString(retStr);
	}

	/**
	 * Writes the @table as Feather format data to the @sink.
	 *
	 * Params:
	 *     sink = The output.
	 *     properties = The properties for this write.
	 *
	 * Returns: %TRUE on success, %FALSE if there was an error.
	 *
	 * Since: 0.17.0
	 *
	 * Throws: GException on failure.
	 */
	public bool writeAsFeather(OutputStream sink, FeatherWriteProperties properties)
	{
		GError* err = null;

		auto __p = garrow_table_write_as_feather(gArrowTable, (sink is null) ? null : sink.getOutputStreamStruct(), (properties is null) ? null : properties.getFeatherWritePropertiesStruct(), &err) != 0;

		if (err !is null)
		{
			throw new GException( new ErrorG(err) );
		}

		return __p;
	}
}
