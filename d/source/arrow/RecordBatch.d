module arrow.RecordBatch;

private import arrow.Array;
private import arrow.BooleanArray;
private import arrow.Buffer;
private import arrow.Field;
private import arrow.FilterOptions;
private import arrow.Schema;
private import arrow.SortOptions;
private import arrow.TakeOptions;
private import arrow.UInt64Array;
private import arrow.WriteOptions;
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
public class RecordBatch : ObjectG
{
	/** the main Gtk struct */
	protected GArrowRecordBatch* gArrowRecordBatch;

	/** Get the main Gtk struct */
	public GArrowRecordBatch* getRecordBatchStruct(bool transferOwnership = false)
	{
		if (transferOwnership)
			ownedRef = false;
		return gArrowRecordBatch;
	}

	/** the main Gtk struct as a void* */
	protected override void* getStruct()
	{
		return cast(void*)gArrowRecordBatch;
	}

	/**
	 * Sets our main struct and passes it to the parent class.
	 */
	public this (GArrowRecordBatch* gArrowRecordBatch, bool ownedRef = false)
	{
		this.gArrowRecordBatch = gArrowRecordBatch;
		super(cast(GObject*)gArrowRecordBatch, ownedRef);
	}


	/** */
	public static GType getType()
	{
		return garrow_record_batch_get_type();
	}

	/**
	 *
	 * Params:
	 *     schema = The schema of the record batch.
	 *     nRows = The number of the rows in the record batch.
	 *     columns = The columns in the record batch.
	 * Returns: A newly created #GArrowRecordBatch or %NULL on error.
	 *
	 * Throws: GException on failure.
	 * Throws: ConstructionException GTK+ fails to create the object.
	 */
	public this(Schema schema, uint nRows, ListG columns)
	{
		GError* err = null;

		auto __p = garrow_record_batch_new((schema is null) ? null : schema.getSchemaStruct(), nRows, (columns is null) ? null : columns.getListGStruct(), &err);

		if (err !is null)
		{
			throw new GException( new ErrorG(err) );
		}

		if(__p is null)
		{
			throw new ConstructionException("null returned by new");
		}

		this(cast(GArrowRecordBatch*) __p, true);
	}

	/**
	 *
	 * Params:
	 *     cAbiArray = A `struct ArrowArray *`.
	 *     schema = A #GArrowSchema of the C ABI array.
	 * Returns: An imported #GArrowRecordBatch
	 *     on success, %NULL on error.
	 *
	 *     You don't need to release the passed `struct ArrowArray *`,
	 *     even if this function reports an error.
	 *
	 * Since: 6.0.0
	 *
	 * Throws: GException on failure.
	 */
	public static RecordBatch import_(void* cAbiArray, Schema schema)
	{
		GError* err = null;

		auto __p = garrow_record_batch_import(cAbiArray, (schema is null) ? null : schema.getSchemaStruct(), &err);

		if (err !is null)
		{
			throw new GException( new ErrorG(err) );
		}

		if(__p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(RecordBatch)(cast(GArrowRecordBatch*) __p, true);
	}

	/**
	 *
	 * Params:
	 *     i = The index of the new column.
	 *     field = The field to be added.
	 *     column = The column to be added.
	 * Returns: The newly allocated
	 *     #GArrowRecordBatch that has a new column or %NULL on error.
	 *
	 * Since: 0.9.0
	 *
	 * Throws: GException on failure.
	 */
	public RecordBatch addColumn(uint i, Field field, Array column)
	{
		GError* err = null;

		auto __p = garrow_record_batch_add_column(gArrowRecordBatch, i, (field is null) ? null : field.getFieldStruct(), (column is null) ? null : column.getArrayStruct(), &err);

		if (err !is null)
		{
			throw new GException( new ErrorG(err) );
		}

		if(__p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(RecordBatch)(cast(GArrowRecordBatch*) __p, true);
	}

	/**
	 *
	 * Params:
	 *     otherRecordBatch = A #GArrowRecordBatch to be compared.
	 * Returns: %TRUE if both of them have the same data, %FALSE
	 *     otherwise.
	 *
	 * Since: 0.4.0
	 */
	public bool equal(RecordBatch otherRecordBatch)
	{
		return garrow_record_batch_equal(gArrowRecordBatch, (otherRecordBatch is null) ? null : otherRecordBatch.getRecordBatchStruct()) != 0;
	}

	/**
	 *
	 * Params:
	 *     otherRecordBatch = A #GArrowRecordBatch to be compared.
	 *     checkMetadata = Whether to compare metadata.
	 * Returns: %TRUE if both of them have the same data, %FALSE
	 *     otherwise.
	 *
	 * Since: 0.17.0
	 */
	public bool equalMetadata(RecordBatch otherRecordBatch, bool checkMetadata)
	{
		return garrow_record_batch_equal_metadata(gArrowRecordBatch, (otherRecordBatch is null) ? null : otherRecordBatch.getRecordBatchStruct(), checkMetadata) != 0;
	}

	alias expor = export_;
	/**
	 *
	 * Params:
	 *     cAbiArray = Return location for a `struct ArrowArray *`.
	 *         It should be freed with the `ArrowArray::release` callback then
	 *         g_free() when no longer needed.
	 *     cAbiSchema = Return location for a
	 *         `struct ArrowSchema *` or %NULL.
	 *         It should be freed with the `ArrowSchema::release` callback then
	 *         g_free() when no longer needed.
	 * Returns: %TRUE on success, %FALSE on error.
	 *
	 * Since: 6.0.0
	 *
	 * Throws: GException on failure.
	 */
	public bool export_(out void* cAbiArray, out void* cAbiSchema)
	{
		GError* err = null;

		auto __p = garrow_record_batch_export(gArrowRecordBatch, &cAbiArray, &cAbiSchema, &err) != 0;

		if (err !is null)
		{
			throw new GException( new ErrorG(err) );
		}

		return __p;
	}

	/**
	 *
	 * Params:
	 *     filter = The values indicates which values should be filtered out.
	 *     options = A #GArrowFilterOptions.
	 * Returns: The #GArrowRecordBatch filtered
	 *     with a boolean selection filter. Nulls in the filter will
	 *     result in nulls in the output.
	 *
	 * Since: 0.15.0
	 *
	 * Throws: GException on failure.
	 */
	public RecordBatch filter(BooleanArray filter, FilterOptions options)
	{
		GError* err = null;

		auto __p = garrow_record_batch_filter(gArrowRecordBatch, (filter is null) ? null : filter.getBooleanArrayStruct(), (options is null) ? null : options.getFilterOptionsStruct(), &err);

		if (err !is null)
		{
			throw new GException( new ErrorG(err) );
		}

		if(__p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(RecordBatch)(cast(GArrowRecordBatch*) __p, true);
	}

	/**
	 *
	 * Params:
	 *     i = The index of the target column. If it's negative, index is
	 *         counted backward from the end of the columns. `-1` means the last
	 *         column.
	 * Returns: The i-th column in the record batch
	 *     on success, %NULL on out of index.
	 *
	 * Since: 0.15.0
	 */
	public Array getColumnData(int i)
	{
		auto __p = garrow_record_batch_get_column_data(gArrowRecordBatch, i);

		if(__p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(Array)(cast(GArrowArray*) __p, true);
	}

	/**
	 *
	 * Params:
	 *     i = The index of the target column. If it's negative, index is
	 *         counted backward from the end of the columns. `-1` means the last
	 *         column.
	 * Returns: The name of the i-th column in the record batch
	 *     on success, %NULL on out of index
	 */
	public string getColumnName(int i)
	{
		return Str.toString(garrow_record_batch_get_column_name(gArrowRecordBatch, i));
	}

	/**
	 * Returns: The number of columns in the record batch.
	 */
	public uint getNColumns()
	{
		return garrow_record_batch_get_n_columns(gArrowRecordBatch);
	}

	/**
	 * Returns: The number of rows in the record batch.
	 */
	public long getNRows()
	{
		return garrow_record_batch_get_n_rows(gArrowRecordBatch);
	}

	/**
	 * Returns: The schema of the record batch.
	 */
	public Schema getSchema()
	{
		auto __p = garrow_record_batch_get_schema(gArrowRecordBatch);

		if(__p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(Schema)(cast(GArrowSchema*) __p, true);
	}

	/**
	 *
	 * Params:
	 *     i = The index of the new column.
	 * Returns: The newly allocated
	 *     #GArrowRecordBatch that doesn't have the column or %NULL on error.
	 *
	 * Since: 0.9.0
	 *
	 * Throws: GException on failure.
	 */
	public RecordBatch removeColumn(uint i)
	{
		GError* err = null;

		auto __p = garrow_record_batch_remove_column(gArrowRecordBatch, i, &err);

		if (err !is null)
		{
			throw new GException( new ErrorG(err) );
		}

		if(__p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(RecordBatch)(cast(GArrowRecordBatch*) __p, true);
	}

	/**
	 *
	 * Params:
	 *     options = A #GArrowWriteOptions.
	 * Returns: The newly allocated
	 *     #GArrowBuffer that contains a serialized record batch or %NULL on
	 *     error.
	 *
	 * Since: 1.0.0
	 *
	 * Throws: GException on failure.
	 */
	public Buffer serialize(WriteOptions options)
	{
		GError* err = null;

		auto __p = garrow_record_batch_serialize(gArrowRecordBatch, (options is null) ? null : options.getWriteOptionsStruct(), &err);

		if (err !is null)
		{
			throw new GException( new ErrorG(err) );
		}

		if(__p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(Buffer)(cast(GArrowBuffer*) __p, true);
	}

	/**
	 *
	 * Params:
	 *     offset = The offset of sub #GArrowRecordBatch.
	 *     length = The length of sub #GArrowRecordBatch.
	 * Returns: The sub #GArrowRecordBatch. It covers
	 *     only from `offset` to `offset + length` range. The sub
	 *     #GArrowRecordBatch shares values with the base
	 *     #GArrowRecordBatch.
	 */
	public RecordBatch slice(long offset, long length)
	{
		auto __p = garrow_record_batch_slice(gArrowRecordBatch, offset, length);

		if(__p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(RecordBatch)(cast(GArrowRecordBatch*) __p, true);
	}

	/**
	 *
	 * Params:
	 *     options = The options to be used.
	 * Returns: The indices that would sort
	 *     a record batch with the specified options on success, %NULL on error.
	 *
	 * Since: 3.0.0
	 *
	 * Throws: GException on failure.
	 */
	public UInt64Array sortIndices(SortOptions options)
	{
		GError* err = null;

		auto __p = garrow_record_batch_sort_indices(gArrowRecordBatch, (options is null) ? null : options.getSortOptionsStruct(), &err);

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
	public RecordBatch take(Array indices, TakeOptions options)
	{
		GError* err = null;

		auto __p = garrow_record_batch_take(gArrowRecordBatch, (indices is null) ? null : indices.getArrayStruct(), (options is null) ? null : options.getTakeOptionsStruct(), &err);

		if (err !is null)
		{
			throw new GException( new ErrorG(err) );
		}

		if(__p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(RecordBatch)(cast(GArrowRecordBatch*) __p, true);
	}

	/**
	 * Returns: The formatted record batch content or %NULL on error.
	 *
	 *     It should be freed with g_free() when no longer needed.
	 *
	 * Since: 0.4.0
	 *
	 * Throws: GException on failure.
	 */
	public override string toString()
	{
		GError* err = null;

		auto retStr = garrow_record_batch_to_string(gArrowRecordBatch, &err);

		if (err !is null)
		{
			throw new GException( new ErrorG(err) );
		}

		scope(exit) Str.freeString(retStr);
		return Str.toString(retStr);
	}
}
