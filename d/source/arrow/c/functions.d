module arrow.c.functions;

import std.stdio;
import arrow.c.types;
version (Windows)
	static immutable LIBRARY_ARROW = ["glib-1800.dll;g.dll;g.dll"];
else version (OSX)
	static immutable LIBRARY_ARROW = ["glib.1800.dylib"];
else
	static immutable LIBRARY_ARROW = ["libarrow-glib.so.1800"];

__gshared extern(C)
{

	// arrow.AggregateNodeOptions

	GType garrow_aggregate_node_options_get_type();
	GArrowAggregateNodeOptions* garrow_aggregate_node_options_new(GList* aggregations, char** keys, size_t nKeys, GError** err);

	// arrow.Aggregation

	GType garrow_aggregation_get_type();
	GArrowAggregation* garrow_aggregation_new(const(char)* function_, GArrowFunctionOptions* options, const(char)* input, const(char)* output);

	// arrow.Array

	GType garrow_array_get_type();
	GArrowArray* garrow_array_import(void* cAbiArray, GArrowDataType* dataType, GError** err);
	GArrowArray* garrow_array_cast(GArrowArray* array, GArrowDataType* targetDataType, GArrowCastOptions* options, GError** err);
	GArrowArray* garrow_array_concatenate(GArrowArray* array, GList* otherArrays, GError** err);
	long garrow_array_count(GArrowArray* array, GArrowCountOptions* options, GError** err);
	GArrowStructArray* garrow_array_count_values(GArrowArray* array, GError** err);
	GArrowDictionaryArray* garrow_array_dictionary_encode(GArrowArray* array, GError** err);
	char* garrow_array_diff_unified(GArrowArray* array, GArrowArray* otherArray);
	int garrow_array_equal(GArrowArray* array, GArrowArray* otherArray);
	int garrow_array_equal_approx(GArrowArray* array, GArrowArray* otherArray);
	int garrow_array_equal_options(GArrowArray* array, GArrowArray* otherArray, GArrowEqualOptions* options);
	int garrow_array_equal_range(GArrowArray* array, long startIndex, GArrowArray* otherArray, long otherStartIndex, long endIndex, GArrowEqualOptions* options);
	int garrow_array_export(GArrowArray* array, void** cAbiArray, void** cAbiSchema, GError** err);
	GArrowArray* garrow_array_filter(GArrowArray* array, GArrowBooleanArray* filter, GArrowFilterOptions* options, GError** err);
	long garrow_array_get_length(GArrowArray* array);
	long garrow_array_get_n_nulls(GArrowArray* array);
	GArrowBuffer* garrow_array_get_null_bitmap(GArrowArray* array);
	long garrow_array_get_offset(GArrowArray* array);
	GArrowDataType* garrow_array_get_value_data_type(GArrowArray* array);
	GArrowType garrow_array_get_value_type(GArrowArray* array);
	GArrowBooleanArray* garrow_array_is_in(GArrowArray* left, GArrowArray* right, GError** err);
	GArrowBooleanArray* garrow_array_is_in_chunked_array(GArrowArray* left, GArrowChunkedArray* right, GError** err);
	int garrow_array_is_null(GArrowArray* array, long i);
	int garrow_array_is_valid(GArrowArray* array, long i);
	GArrowRunEndEncodedArray* garrow_array_run_end_encode(GArrowArray* array, GArrowRunEndEncodeOptions* options, GError** err);
	GArrowArray* garrow_array_slice(GArrowArray* array, long offset, long length);
	GArrowUInt64Array* garrow_array_sort_indices(GArrowArray* array, GArrowSortOrder order, GError** err);
	GArrowUInt64Array* garrow_array_sort_to_indices(GArrowArray* array, GError** err);
	GArrowArray* garrow_array_take(GArrowArray* array, GArrowArray* indices, GArrowTakeOptions* options, GError** err);
	GArrowChunkedArray* garrow_array_take_chunked_array(GArrowArray* array, GArrowChunkedArray* indices, GArrowTakeOptions* options, GError** err);
	char* garrow_array_to_string(GArrowArray* array, GError** err);
	GArrowArray* garrow_array_unique(GArrowArray* array, GError** err);
	GArrowArray* garrow_array_view(GArrowArray* array, GArrowDataType* returnType, GError** err);

	// arrow.ArrayBuilder

	GType garrow_array_builder_get_type();
	int garrow_array_builder_append_empty_value(GArrowArrayBuilder* builder, GError** err);
	int garrow_array_builder_append_empty_values(GArrowArrayBuilder* builder, long n, GError** err);
	int garrow_array_builder_append_null(GArrowArrayBuilder* builder, GError** err);
	int garrow_array_builder_append_nulls(GArrowArrayBuilder* builder, long n, GError** err);
	GArrowArray* garrow_array_builder_finish(GArrowArrayBuilder* builder, GError** err);
	long garrow_array_builder_get_capacity(GArrowArrayBuilder* builder);
	GArrowArrayBuilder* garrow_array_builder_get_child(GArrowArrayBuilder* builder, int i);
	GList* garrow_array_builder_get_children(GArrowArrayBuilder* builder);
	long garrow_array_builder_get_length(GArrowArrayBuilder* builder);
	long garrow_array_builder_get_n_nulls(GArrowArrayBuilder* builder);
	GArrowDataType* garrow_array_builder_get_value_data_type(GArrowArrayBuilder* builder);
	GArrowType garrow_array_builder_get_value_type(GArrowArrayBuilder* builder);
	int garrow_array_builder_reserve(GArrowArrayBuilder* builder, long additionalCapacity, GError** err);
	void garrow_array_builder_reset(GArrowArrayBuilder* builder);
	int garrow_array_builder_resize(GArrowArrayBuilder* builder, long capacity, GError** err);

	// arrow.ArrayDatum

	GType garrow_array_datum_get_type();
	GArrowArrayDatum* garrow_array_datum_new(GArrowArray* value);

	// arrow.ArraySortOptions

	GType garrow_array_sort_options_get_type();
	GArrowArraySortOptions* garrow_array_sort_options_new(GArrowSortOrder order);
	int garrow_array_sort_options_equal(GArrowArraySortOptions* options, GArrowArraySortOptions* otherOptions);

	// arrow.AzureFileSystem

	GType garrow_azure_file_system_get_type();

	// arrow.BaseBinaryScalar

	GType garrow_base_binary_scalar_get_type();
	GArrowBuffer* garrow_base_binary_scalar_get_value(GArrowBaseBinaryScalar* scalar);

	// arrow.BaseListScalar

	GType garrow_base_list_scalar_get_type();
	GArrowArray* garrow_base_list_scalar_get_value(GArrowBaseListScalar* scalar);

	// arrow.BinaryArray

	GType garrow_binary_array_get_type();
	GArrowBinaryArray* garrow_binary_array_new(long length, GArrowBuffer* valueOffsets, GArrowBuffer* valueData, GArrowBuffer* nullBitmap, long nNulls);
	GArrowBuffer* garrow_binary_array_get_buffer(GArrowBinaryArray* array);
	GArrowBuffer* garrow_binary_array_get_data_buffer(GArrowBinaryArray* array);
	GArrowBuffer* garrow_binary_array_get_offsets_buffer(GArrowBinaryArray* array);
	GBytes* garrow_binary_array_get_value(GArrowBinaryArray* array, long i);

	// arrow.BinaryArrayBuilder

	GType garrow_binary_array_builder_get_type();
	GArrowBinaryArrayBuilder* garrow_binary_array_builder_new();
	int garrow_binary_array_builder_append(GArrowBinaryArrayBuilder* builder, ubyte* value, int length, GError** err);
	int garrow_binary_array_builder_append_null(GArrowBinaryArrayBuilder* builder, GError** err);
	int garrow_binary_array_builder_append_nulls(GArrowBinaryArrayBuilder* builder, long n, GError** err);
	int garrow_binary_array_builder_append_value(GArrowBinaryArrayBuilder* builder, ubyte* value, int length, GError** err);
	int garrow_binary_array_builder_append_value_bytes(GArrowBinaryArrayBuilder* builder, GBytes* value, GError** err);
	int garrow_binary_array_builder_append_values(GArrowBinaryArrayBuilder* builder, GBytes** values, long valuesLength, int* isValids, long isValidsLength, GError** err);

	// arrow.BinaryDataType

	GType garrow_binary_data_type_get_type();
	GArrowBinaryDataType* garrow_binary_data_type_new();

	// arrow.BinaryDictionaryArrayBuilder

	GType garrow_binary_dictionary_array_builder_get_type();
	GArrowBinaryDictionaryArrayBuilder* garrow_binary_dictionary_array_builder_new();
	int garrow_binary_dictionary_array_builder_append_array(GArrowBinaryDictionaryArrayBuilder* builder, GArrowBinaryArray* array, GError** err);
	int garrow_binary_dictionary_array_builder_append_indices(GArrowBinaryDictionaryArrayBuilder* builder, long* values, long valuesLength, int* isValids, long isValidsLength, GError** err);
	int garrow_binary_dictionary_array_builder_append_null(GArrowBinaryDictionaryArrayBuilder* builder, GError** err);
	int garrow_binary_dictionary_array_builder_append_value(GArrowBinaryDictionaryArrayBuilder* builder, ubyte* value, int length, GError** err);
	int garrow_binary_dictionary_array_builder_append_value_bytes(GArrowBinaryDictionaryArrayBuilder* builder, GBytes* value, GError** err);
	int garrow_binary_dictionary_array_builder_finish_delta(GArrowBinaryDictionaryArrayBuilder* builder, GArrowArray** outIndices, GArrowArray** outDelta, GError** err);
	long garrow_binary_dictionary_array_builder_get_dictionary_length(GArrowBinaryDictionaryArrayBuilder* builder);
	int garrow_binary_dictionary_array_builder_insert_memo_values(GArrowBinaryDictionaryArrayBuilder* builder, GArrowBinaryArray* values, GError** err);
	void garrow_binary_dictionary_array_builder_reset_full(GArrowBinaryDictionaryArrayBuilder* builder);

	// arrow.BinaryScalar

	GType garrow_binary_scalar_get_type();
	GArrowBinaryScalar* garrow_binary_scalar_new(GArrowBuffer* value);

	// arrow.BooleanArray

	GType garrow_boolean_array_get_type();
	GArrowBooleanArray* garrow_boolean_array_new(long length, GArrowBuffer* data, GArrowBuffer* nullBitmap, long nNulls);
	GArrowBooleanArray* garrow_boolean_array_and(GArrowBooleanArray* left, GArrowBooleanArray* right, GError** err);
	int garrow_boolean_array_get_value(GArrowBooleanArray* array, long i);
	int* garrow_boolean_array_get_values(GArrowBooleanArray* array, long* length);
	GArrowBooleanArray* garrow_boolean_array_invert(GArrowBooleanArray* array, GError** err);
	GArrowBooleanArray* garrow_boolean_array_or(GArrowBooleanArray* left, GArrowBooleanArray* right, GError** err);
	GArrowBooleanArray* garrow_boolean_array_xor(GArrowBooleanArray* left, GArrowBooleanArray* right, GError** err);

	// arrow.BooleanArrayBuilder

	GType garrow_boolean_array_builder_get_type();
	GArrowBooleanArrayBuilder* garrow_boolean_array_builder_new();
	int garrow_boolean_array_builder_append(GArrowBooleanArrayBuilder* builder, int value, GError** err);
	int garrow_boolean_array_builder_append_null(GArrowBooleanArrayBuilder* builder, GError** err);
	int garrow_boolean_array_builder_append_nulls(GArrowBooleanArrayBuilder* builder, long n, GError** err);
	int garrow_boolean_array_builder_append_value(GArrowBooleanArrayBuilder* builder, int value, GError** err);
	int garrow_boolean_array_builder_append_values(GArrowBooleanArrayBuilder* builder, int* values, long valuesLength, int* isValids, long isValidsLength, GError** err);

	// arrow.BooleanDataType

	GType garrow_boolean_data_type_get_type();
	GArrowBooleanDataType* garrow_boolean_data_type_new();

	// arrow.BooleanScalar

	GType garrow_boolean_scalar_get_type();
	GArrowBooleanScalar* garrow_boolean_scalar_new(int value);
	int garrow_boolean_scalar_get_value(GArrowBooleanScalar* scalar);

	// arrow.Buffer

	GType garrow_buffer_get_type();
	GArrowBuffer* garrow_buffer_new(ubyte* data, long size);
	GArrowBuffer* garrow_buffer_new_bytes(GBytes* data);
	GArrowBuffer* garrow_buffer_copy(GArrowBuffer* buffer, long start, long size, GError** err);
	int garrow_buffer_equal(GArrowBuffer* buffer, GArrowBuffer* otherBuffer);
	int garrow_buffer_equal_n_bytes(GArrowBuffer* buffer, GArrowBuffer* otherBuffer, long nBytes);
	long garrow_buffer_get_capacity(GArrowBuffer* buffer);
	GBytes* garrow_buffer_get_data(GArrowBuffer* buffer);
	GBytes* garrow_buffer_get_mutable_data(GArrowBuffer* buffer);
	GArrowBuffer* garrow_buffer_get_parent(GArrowBuffer* buffer);
	long garrow_buffer_get_size(GArrowBuffer* buffer);
	int garrow_buffer_is_mutable(GArrowBuffer* buffer);
	GArrowBuffer* garrow_buffer_slice(GArrowBuffer* buffer, long offset, long size);

	// arrow.BufferInputStream

	GType garrow_buffer_input_stream_get_type();
	GArrowBufferInputStream* garrow_buffer_input_stream_new(GArrowBuffer* buffer);
	GArrowBuffer* garrow_buffer_input_stream_get_buffer(GArrowBufferInputStream* inputStream);

	// arrow.BufferOutputStream

	GType garrow_buffer_output_stream_get_type();
	GArrowBufferOutputStream* garrow_buffer_output_stream_new(GArrowResizableBuffer* buffer);

	// arrow.CSVReadOptions

	GType garrow_csv_read_options_get_type();
	GArrowCSVReadOptions* garrow_csv_read_options_new();
	void garrow_csv_read_options_add_column_name(GArrowCSVReadOptions* options, const(char)* columnName);
	void garrow_csv_read_options_add_column_type(GArrowCSVReadOptions* options, const(char)* name, GArrowDataType* dataType);
	void garrow_csv_read_options_add_false_value(GArrowCSVReadOptions* options, const(char)* falseValue);
	void garrow_csv_read_options_add_null_value(GArrowCSVReadOptions* options, const(char)* nullValue);
	void garrow_csv_read_options_add_schema(GArrowCSVReadOptions* options, GArrowSchema* schema);
	void garrow_csv_read_options_add_timestamp_parser(GArrowCSVReadOptions* options, GArrowTimestampParser* parser);
	void garrow_csv_read_options_add_true_value(GArrowCSVReadOptions* options, const(char)* trueValue);
	char** garrow_csv_read_options_get_column_names(GArrowCSVReadOptions* options);
	GHashTable* garrow_csv_read_options_get_column_types(GArrowCSVReadOptions* options);
	char** garrow_csv_read_options_get_false_values(GArrowCSVReadOptions* options);
	char** garrow_csv_read_options_get_null_values(GArrowCSVReadOptions* options);
	GList* garrow_csv_read_options_get_timestamp_parsers(GArrowCSVReadOptions* options);
	char** garrow_csv_read_options_get_true_values(GArrowCSVReadOptions* options);
	void garrow_csv_read_options_set_column_names(GArrowCSVReadOptions* options, char** columnNames, size_t nColumnNames);
	void garrow_csv_read_options_set_false_values(GArrowCSVReadOptions* options, char** falseValues, size_t nFalseValues);
	void garrow_csv_read_options_set_null_values(GArrowCSVReadOptions* options, char** nullValues, size_t nNullValues);
	void garrow_csv_read_options_set_timestamp_parsers(GArrowCSVReadOptions* options, GList* parsers);
	void garrow_csv_read_options_set_true_values(GArrowCSVReadOptions* options, char** trueValues, size_t nTrueValues);

	// arrow.CSVReader

	GType garrow_csv_reader_get_type();
	GArrowCSVReader* garrow_csv_reader_new(GArrowInputStream* input, GArrowCSVReadOptions* options, GError** err);
	GArrowTable* garrow_csv_reader_read(GArrowCSVReader* reader, GError** err);

	// arrow.CallExpression

	GType garrow_call_expression_get_type();
	GArrowCallExpression* garrow_call_expression_new(const(char)* function_, GList* arguments, GArrowFunctionOptions* options);

	// arrow.CastOptions

	GType garrow_cast_options_get_type();
	GArrowCastOptions* garrow_cast_options_new();

	// arrow.ChunkedArray

	GType garrow_chunked_array_get_type();
	GArrowChunkedArray* garrow_chunked_array_new(GList* chunks, GError** err);
	GArrowChunkedArray* garrow_chunked_array_new_empty(GArrowDataType* dataType, GError** err);
	GArrowArray* garrow_chunked_array_combine(GArrowChunkedArray* chunkedArray, GError** err);
	int garrow_chunked_array_equal(GArrowChunkedArray* chunkedArray, GArrowChunkedArray* otherChunkedArray);
	GArrowChunkedArray* garrow_chunked_array_filter(GArrowChunkedArray* chunkedArray, GArrowBooleanArray* filter, GArrowFilterOptions* options, GError** err);
	GArrowChunkedArray* garrow_chunked_array_filter_chunked_array(GArrowChunkedArray* chunkedArray, GArrowChunkedArray* filter, GArrowFilterOptions* options, GError** err);
	GArrowArray* garrow_chunked_array_get_chunk(GArrowChunkedArray* chunkedArray, uint i);
	GList* garrow_chunked_array_get_chunks(GArrowChunkedArray* chunkedArray);
	ulong garrow_chunked_array_get_length(GArrowChunkedArray* chunkedArray);
	uint garrow_chunked_array_get_n_chunks(GArrowChunkedArray* chunkedArray);
	ulong garrow_chunked_array_get_n_nulls(GArrowChunkedArray* chunkedArray);
	ulong garrow_chunked_array_get_n_rows(GArrowChunkedArray* chunkedArray);
	GArrowDataType* garrow_chunked_array_get_value_data_type(GArrowChunkedArray* chunkedArray);
	GArrowType garrow_chunked_array_get_value_type(GArrowChunkedArray* chunkedArray);
	GArrowChunkedArray* garrow_chunked_array_slice(GArrowChunkedArray* chunkedArray, ulong offset, ulong length);
	GArrowUInt64Array* garrow_chunked_array_sort_indices(GArrowChunkedArray* chunkedArray, GArrowSortOrder order, GError** err);
	GArrowChunkedArray* garrow_chunked_array_take(GArrowChunkedArray* chunkedArray, GArrowArray* indices, GArrowTakeOptions* options, GError** err);
	GArrowChunkedArray* garrow_chunked_array_take_chunked_array(GArrowChunkedArray* chunkedArray, GArrowChunkedArray* indices, GArrowTakeOptions* options, GError** err);
	char* garrow_chunked_array_to_string(GArrowChunkedArray* chunkedArray, GError** err);

	// arrow.ChunkedArrayDatum

	GType garrow_chunked_array_datum_get_type();
	GArrowChunkedArrayDatum* garrow_chunked_array_datum_new(GArrowChunkedArray* value);

	// arrow.Codec

	GType garrow_codec_get_type();
	GArrowCodec* garrow_codec_new(GArrowCompressionType type, GError** err);
	int garrow_codec_get_compression_level(GArrowCodec* codec);
	GArrowCompressionType garrow_codec_get_compression_type(GArrowCodec* codec);
	const(char)* garrow_codec_get_name(GArrowCodec* codec);

	// arrow.CompressedInputStream

	GType garrow_compressed_input_stream_get_type();
	GArrowCompressedInputStream* garrow_compressed_input_stream_new(GArrowCodec* codec, GArrowInputStream* raw, GError** err);

	// arrow.CompressedOutputStream

	GType garrow_compressed_output_stream_get_type();
	GArrowCompressedOutputStream* garrow_compressed_output_stream_new(GArrowCodec* codec, GArrowOutputStream* raw, GError** err);

	// arrow.CountOptions

	GType garrow_count_options_get_type();
	GArrowCountOptions* garrow_count_options_new();

	// arrow.DataType

	GType garrow_data_type_get_type();
	GArrowDataType* garrow_data_type_import(void* cAbiSchema, GError** err);
	int garrow_data_type_equal(GArrowDataType* dataType, GArrowDataType* otherDataType);
	void* garrow_data_type_export(GArrowDataType* dataType, GError** err);
	GArrowType garrow_data_type_get_id(GArrowDataType* dataType);
	char* garrow_data_type_get_name(GArrowDataType* dataType);
	char* garrow_data_type_to_string(GArrowDataType* dataType);

	// arrow.Date32Array

	GType garrow_date32_array_get_type();
	GArrowDate32Array* garrow_date32_array_new(long length, GArrowBuffer* data, GArrowBuffer* nullBitmap, long nNulls);
	int garrow_date32_array_get_value(GArrowDate32Array* array, long i);
	int* garrow_date32_array_get_values(GArrowDate32Array* array, long* length);

	// arrow.Date32ArrayBuilder

	GType garrow_date32_array_builder_get_type();
	GArrowDate32ArrayBuilder* garrow_date32_array_builder_new();
	int garrow_date32_array_builder_append(GArrowDate32ArrayBuilder* builder, int value, GError** err);
	int garrow_date32_array_builder_append_null(GArrowDate32ArrayBuilder* builder, GError** err);
	int garrow_date32_array_builder_append_nulls(GArrowDate32ArrayBuilder* builder, long n, GError** err);
	int garrow_date32_array_builder_append_value(GArrowDate32ArrayBuilder* builder, int value, GError** err);
	int garrow_date32_array_builder_append_values(GArrowDate32ArrayBuilder* builder, int* values, long valuesLength, int* isValids, long isValidsLength, GError** err);

	// arrow.Date32DataType

	GType garrow_date32_data_type_get_type();
	GArrowDate32DataType* garrow_date32_data_type_new();

	// arrow.Date32Scalar

	GType garrow_date32_scalar_get_type();
	GArrowDate32Scalar* garrow_date32_scalar_new(int value);
	int garrow_date32_scalar_get_value(GArrowDate32Scalar* scalar);

	// arrow.Date64Array

	GType garrow_date64_array_get_type();
	GArrowDate64Array* garrow_date64_array_new(long length, GArrowBuffer* data, GArrowBuffer* nullBitmap, long nNulls);
	long garrow_date64_array_get_value(GArrowDate64Array* array, long i);
	long* garrow_date64_array_get_values(GArrowDate64Array* array, long* length);

	// arrow.Date64ArrayBuilder

	GType garrow_date64_array_builder_get_type();
	GArrowDate64ArrayBuilder* garrow_date64_array_builder_new();
	int garrow_date64_array_builder_append(GArrowDate64ArrayBuilder* builder, long value, GError** err);
	int garrow_date64_array_builder_append_null(GArrowDate64ArrayBuilder* builder, GError** err);
	int garrow_date64_array_builder_append_nulls(GArrowDate64ArrayBuilder* builder, long n, GError** err);
	int garrow_date64_array_builder_append_value(GArrowDate64ArrayBuilder* builder, long value, GError** err);
	int garrow_date64_array_builder_append_values(GArrowDate64ArrayBuilder* builder, long* values, long valuesLength, int* isValids, long isValidsLength, GError** err);

	// arrow.Date64DataType

	GType garrow_date64_data_type_get_type();
	GArrowDate64DataType* garrow_date64_data_type_new();

	// arrow.Date64Scalar

	GType garrow_date64_scalar_get_type();
	GArrowDate64Scalar* garrow_date64_scalar_new(long value);
	long garrow_date64_scalar_get_value(GArrowDate64Scalar* scalar);

	// arrow.Datum

	GType garrow_datum_get_type();
	int garrow_datum_equal(GArrowDatum* datum, GArrowDatum* otherDatum);
	int garrow_datum_is_array(GArrowDatum* datum);
	int garrow_datum_is_array_like(GArrowDatum* datum);
	int garrow_datum_is_scalar(GArrowDatum* datum);
	int garrow_datum_is_value(GArrowDatum* datum);
	char* garrow_datum_to_string(GArrowDatum* datum);

	// arrow.DayMillisecond

	GType garrow_day_millisecond_get_type();
	GArrowDayMillisecond* garrow_day_millisecond_new(int day, int millisecond);
	int garrow_day_millisecond_equal(GArrowDayMillisecond* dayMillisecond, GArrowDayMillisecond* otherDayMillisecond);
	int garrow_day_millisecond_less_than(GArrowDayMillisecond* dayMillisecond, GArrowDayMillisecond* otherDayMillisecond);

	// arrow.DayTimeIntervalArray

	GType garrow_day_time_interval_array_get_type();
	GArrowDayTimeIntervalArray* garrow_day_time_interval_array_new(long length, GArrowBuffer* data, GArrowBuffer* nullBitmap, long nNulls);
	GArrowDayMillisecond* garrow_day_time_interval_array_get_value(GArrowDayTimeIntervalArray* array, long i);
	GList* garrow_day_time_interval_array_get_values(GArrowDayTimeIntervalArray* array);

	// arrow.DayTimeIntervalArrayBuilder

	GType garrow_day_time_interval_array_builder_get_type();
	GArrowDayTimeIntervalArrayBuilder* garrow_day_time_interval_array_builder_new();
	int garrow_day_time_interval_array_builder_append_value(GArrowDayTimeIntervalArrayBuilder* builder, GArrowDayMillisecond* value, GError** err);
	int garrow_day_time_interval_array_builder_append_values(GArrowDayTimeIntervalArrayBuilder* builder, GArrowDayMillisecond** values, long valuesLength, int* isValids, long isValidsLength, GError** err);

	// arrow.DayTimeIntervalDataType

	GType garrow_day_time_interval_data_type_get_type();
	GArrowDayTimeIntervalDataType* garrow_day_time_interval_data_type_new();

	// arrow.DayTimeIntervalScalar

	GType garrow_day_time_interval_scalar_get_type();
	GArrowDayTimeIntervalScalar* garrow_day_time_interval_scalar_new(GArrowDayMillisecond* value);
	GArrowDayMillisecond* garrow_day_time_interval_scalar_get_value(GArrowDayTimeIntervalScalar* scalar);

	// arrow.Decimal128

	GType garrow_decimal128_get_type();
	GArrowDecimal128* garrow_decimal128_new_integer(long data);
	GArrowDecimal128* garrow_decimal128_new_string(const(char)* data, GError** err);
	void garrow_decimal128_abs(GArrowDecimal128* decimal);
	GArrowDecimal128* garrow_decimal128_copy(GArrowDecimal128* decimal);
	GArrowDecimal128* garrow_decimal128_divide(GArrowDecimal128* left, GArrowDecimal128* right, GArrowDecimal128** remainder, GError** err);
	int garrow_decimal128_equal(GArrowDecimal128* decimal, GArrowDecimal128* otherDecimal);
	int garrow_decimal128_greater_than(GArrowDecimal128* decimal, GArrowDecimal128* otherDecimal);
	int garrow_decimal128_greater_than_or_equal(GArrowDecimal128* decimal, GArrowDecimal128* otherDecimal);
	int garrow_decimal128_less_than(GArrowDecimal128* decimal, GArrowDecimal128* otherDecimal);
	int garrow_decimal128_less_than_or_equal(GArrowDecimal128* decimal, GArrowDecimal128* otherDecimal);
	GArrowDecimal128* garrow_decimal128_minus(GArrowDecimal128* left, GArrowDecimal128* right);
	GArrowDecimal128* garrow_decimal128_multiply(GArrowDecimal128* left, GArrowDecimal128* right);
	void garrow_decimal128_negate(GArrowDecimal128* decimal);
	int garrow_decimal128_not_equal(GArrowDecimal128* decimal, GArrowDecimal128* otherDecimal);
	GArrowDecimal128* garrow_decimal128_plus(GArrowDecimal128* left, GArrowDecimal128* right);
	GArrowDecimal128* garrow_decimal128_rescale(GArrowDecimal128* decimal, int originalScale, int newScale, GError** err);
	GBytes* garrow_decimal128_to_bytes(GArrowDecimal128* decimal);
	long garrow_decimal128_to_integer(GArrowDecimal128* decimal);
	char* garrow_decimal128_to_string(GArrowDecimal128* decimal);
	char* garrow_decimal128_to_string_scale(GArrowDecimal128* decimal, int scale);

	// arrow.Decimal128Array

	GType garrow_decimal128_array_get_type();
	char* garrow_decimal128_array_format_value(GArrowDecimal128Array* array, long i);
	GArrowDecimal128* garrow_decimal128_array_get_value(GArrowDecimal128Array* array, long i);

	// arrow.Decimal128ArrayBuilder

	GType garrow_decimal128_array_builder_get_type();
	GArrowDecimal128ArrayBuilder* garrow_decimal128_array_builder_new(GArrowDecimal128DataType* dataType);
	int garrow_decimal128_array_builder_append(GArrowDecimal128ArrayBuilder* builder, GArrowDecimal128* value, GError** err);
	int garrow_decimal128_array_builder_append_null(GArrowDecimal128ArrayBuilder* builder, GError** err);
	int garrow_decimal128_array_builder_append_value(GArrowDecimal128ArrayBuilder* builder, GArrowDecimal128* value, GError** err);
	int garrow_decimal128_array_builder_append_values(GArrowDecimal128ArrayBuilder* builder, GArrowDecimal128** values, long valuesLength, int* isValids, long isValidsLength, GError** err);

	// arrow.Decimal128DataType

	GType garrow_decimal128_data_type_get_type();
	GArrowDecimal128DataType* garrow_decimal128_data_type_new(int precision, int scale, GError** err);
	int garrow_decimal128_data_type_max_precision();

	// arrow.Decimal128Scalar

	GType garrow_decimal128_scalar_get_type();
	GArrowDecimal128Scalar* garrow_decimal128_scalar_new(GArrowDecimal128DataType* dataType, GArrowDecimal128* value);
	GArrowDecimal128* garrow_decimal128_scalar_get_value(GArrowDecimal128Scalar* scalar);

	// arrow.Decimal256

	GType garrow_decimal256_get_type();
	GArrowDecimal256* garrow_decimal256_new_integer(long data);
	GArrowDecimal256* garrow_decimal256_new_string(const(char)* data, GError** err);
	void garrow_decimal256_abs(GArrowDecimal256* decimal);
	GArrowDecimal256* garrow_decimal256_copy(GArrowDecimal256* decimal);
	GArrowDecimal256* garrow_decimal256_divide(GArrowDecimal256* left, GArrowDecimal256* right, GArrowDecimal256** remainder, GError** err);
	int garrow_decimal256_equal(GArrowDecimal256* decimal, GArrowDecimal256* otherDecimal);
	int garrow_decimal256_greater_than(GArrowDecimal256* decimal, GArrowDecimal256* otherDecimal);
	int garrow_decimal256_greater_than_or_equal(GArrowDecimal256* decimal, GArrowDecimal256* otherDecimal);
	int garrow_decimal256_less_than(GArrowDecimal256* decimal, GArrowDecimal256* otherDecimal);
	int garrow_decimal256_less_than_or_equal(GArrowDecimal256* decimal, GArrowDecimal256* otherDecimal);
	GArrowDecimal256* garrow_decimal256_multiply(GArrowDecimal256* left, GArrowDecimal256* right);
	void garrow_decimal256_negate(GArrowDecimal256* decimal);
	int garrow_decimal256_not_equal(GArrowDecimal256* decimal, GArrowDecimal256* otherDecimal);
	GArrowDecimal256* garrow_decimal256_plus(GArrowDecimal256* left, GArrowDecimal256* right);
	GArrowDecimal256* garrow_decimal256_rescale(GArrowDecimal256* decimal, int originalScale, int newScale, GError** err);
	GBytes* garrow_decimal256_to_bytes(GArrowDecimal256* decimal);
	char* garrow_decimal256_to_string(GArrowDecimal256* decimal);
	char* garrow_decimal256_to_string_scale(GArrowDecimal256* decimal, int scale);

	// arrow.Decimal256Array

	GType garrow_decimal256_array_get_type();
	char* garrow_decimal256_array_format_value(GArrowDecimal256Array* array, long i);
	GArrowDecimal256* garrow_decimal256_array_get_value(GArrowDecimal256Array* array, long i);

	// arrow.Decimal256ArrayBuilder

	GType garrow_decimal256_array_builder_get_type();
	GArrowDecimal256ArrayBuilder* garrow_decimal256_array_builder_new(GArrowDecimal256DataType* dataType);
	int garrow_decimal256_array_builder_append_value(GArrowDecimal256ArrayBuilder* builder, GArrowDecimal256* value, GError** err);
	int garrow_decimal256_array_builder_append_values(GArrowDecimal256ArrayBuilder* builder, GArrowDecimal256** values, long valuesLength, int* isValids, long isValidsLength, GError** err);

	// arrow.Decimal256DataType

	GType garrow_decimal256_data_type_get_type();
	GArrowDecimal256DataType* garrow_decimal256_data_type_new(int precision, int scale, GError** err);
	int garrow_decimal256_data_type_max_precision();

	// arrow.Decimal256Scalar

	GType garrow_decimal256_scalar_get_type();
	GArrowDecimal256Scalar* garrow_decimal256_scalar_new(GArrowDecimal256DataType* dataType, GArrowDecimal256* value);
	GArrowDecimal256* garrow_decimal256_scalar_get_value(GArrowDecimal256Scalar* scalar);

	// arrow.DecimalDataType

	GType garrow_decimal_data_type_get_type();
	GArrowDecimalDataType* garrow_decimal_data_type_new(int precision, int scale, GError** err);
	int garrow_decimal_data_type_get_precision(GArrowDecimalDataType* decimalDataType);
	int garrow_decimal_data_type_get_scale(GArrowDecimalDataType* decimalDataType);

	// arrow.DenseUnionArray

	GType garrow_dense_union_array_get_type();
	GArrowDenseUnionArray* garrow_dense_union_array_new(GArrowInt8Array* typeIds, GArrowInt32Array* valueOffsets, GList* fields, GError** err);
	GArrowDenseUnionArray* garrow_dense_union_array_new_data_type(GArrowDenseUnionDataType* dataType, GArrowInt8Array* typeIds, GArrowInt32Array* valueOffsets, GList* fields, GError** err);
	int garrow_dense_union_array_get_value_offset(GArrowDenseUnionArray* array, long i);

	// arrow.DenseUnionArrayBuilder

	GType garrow_dense_union_array_builder_get_type();
	GArrowDenseUnionArrayBuilder* garrow_dense_union_array_builder_new(GArrowDenseUnionDataType* dataType, GError** err);

	// arrow.DenseUnionDataType

	GType garrow_dense_union_data_type_get_type();
	GArrowDenseUnionDataType* garrow_dense_union_data_type_new(GList* fields, byte* typeCodes, size_t nTypeCodes);

	// arrow.DenseUnionScalar

	GType garrow_dense_union_scalar_get_type();
	GArrowDenseUnionScalar* garrow_dense_union_scalar_new(GArrowDenseUnionDataType* dataType, byte typeCode, GArrowScalar* value);

	// arrow.DictionaryArray

	GType garrow_dictionary_array_get_type();
	GArrowDictionaryArray* garrow_dictionary_array_new(GArrowDataType* dataType, GArrowArray* indices, GArrowArray* dictionary, GError** err);
	GArrowArray* garrow_dictionary_array_get_dictionary(GArrowDictionaryArray* array);
	GArrowDictionaryDataType* garrow_dictionary_array_get_dictionary_data_type(GArrowDictionaryArray* array);
	GArrowArray* garrow_dictionary_array_get_indices(GArrowDictionaryArray* array);

	// arrow.DictionaryDataType

	GType garrow_dictionary_data_type_get_type();
	GArrowDictionaryDataType* garrow_dictionary_data_type_new(GArrowDataType* indexDataType, GArrowDataType* valueDataType, int ordered);
	GArrowDataType* garrow_dictionary_data_type_get_index_data_type(GArrowDictionaryDataType* dictionaryDataType);
	GArrowDataType* garrow_dictionary_data_type_get_value_data_type(GArrowDictionaryDataType* dictionaryDataType);
	int garrow_dictionary_data_type_is_ordered(GArrowDictionaryDataType* dictionaryDataType);

	// arrow.DoubleArray

	GType garrow_double_array_get_type();
	GArrowDoubleArray* garrow_double_array_new(long length, GArrowBuffer* data, GArrowBuffer* nullBitmap, long nNulls);
	double garrow_double_array_get_value(GArrowDoubleArray* array, long i);
	double* garrow_double_array_get_values(GArrowDoubleArray* array, long* length);
	double garrow_double_array_sum(GArrowDoubleArray* array, GError** err);

	// arrow.DoubleArrayBuilder

	GType garrow_double_array_builder_get_type();
	GArrowDoubleArrayBuilder* garrow_double_array_builder_new();
	int garrow_double_array_builder_append(GArrowDoubleArrayBuilder* builder, double value, GError** err);
	int garrow_double_array_builder_append_null(GArrowDoubleArrayBuilder* builder, GError** err);
	int garrow_double_array_builder_append_nulls(GArrowDoubleArrayBuilder* builder, long n, GError** err);
	int garrow_double_array_builder_append_value(GArrowDoubleArrayBuilder* builder, double value, GError** err);
	int garrow_double_array_builder_append_values(GArrowDoubleArrayBuilder* builder, double* values, long valuesLength, int* isValids, long isValidsLength, GError** err);

	// arrow.DoubleDataType

	GType garrow_double_data_type_get_type();
	GArrowDoubleDataType* garrow_double_data_type_new();

	// arrow.DoubleScalar

	GType garrow_double_scalar_get_type();
	GArrowDoubleScalar* garrow_double_scalar_new(double value);
	double garrow_double_scalar_get_value(GArrowDoubleScalar* scalar);

	// arrow.EqualOptions

	GType garrow_equal_options_get_type();
	GArrowEqualOptions* garrow_equal_options_new();
	int garrow_equal_options_is_approx(GArrowEqualOptions* options);

	// arrow.ExecuteContext

	GType garrow_execute_context_get_type();
	GArrowExecuteContext* garrow_execute_context_new();

	// arrow.ExecuteNode

	GType garrow_execute_node_get_type();
	const(char)* garrow_execute_node_get_kind_name(GArrowExecuteNode* node);
	GArrowSchema* garrow_execute_node_get_output_schema(GArrowExecuteNode* node);

	// arrow.ExecuteNodeOptions

	GType garrow_execute_node_options_get_type();

	// arrow.ExecutePlan

	GType garrow_execute_plan_get_type();
	GArrowExecutePlan* garrow_execute_plan_new(, GError** err);
	GArrowExecuteNode* garrow_execute_plan_build_aggregate_node(GArrowExecutePlan* plan, GArrowExecuteNode* input, GArrowAggregateNodeOptions* options, GError** err);
	GArrowExecuteNode* garrow_execute_plan_build_filter_node(GArrowExecutePlan* plan, GArrowExecuteNode* input, GArrowFilterNodeOptions* options, GError** err);
	GArrowExecuteNode* garrow_execute_plan_build_hash_join_node(GArrowExecutePlan* plan, GArrowExecuteNode* left, GArrowExecuteNode* right, GArrowHashJoinNodeOptions* options, GError** err);
	GArrowExecuteNode* garrow_execute_plan_build_node(GArrowExecutePlan* plan, const(char)* factoryName, GList* inputs, GArrowExecuteNodeOptions* options, GError** err);
	GArrowExecuteNode* garrow_execute_plan_build_project_node(GArrowExecutePlan* plan, GArrowExecuteNode* input, GArrowProjectNodeOptions* options, GError** err);
	GArrowExecuteNode* garrow_execute_plan_build_sink_node(GArrowExecutePlan* plan, GArrowExecuteNode* input, GArrowSinkNodeOptions* options, GError** err);
	GArrowExecuteNode* garrow_execute_plan_build_source_node(GArrowExecutePlan* plan, GArrowSourceNodeOptions* options, GError** err);
	GList* garrow_execute_plan_get_nodes(GArrowExecutePlan* plan);
	void garrow_execute_plan_start(GArrowExecutePlan* plan);
	void garrow_execute_plan_stop(GArrowExecutePlan* plan);
	int garrow_execute_plan_validate(GArrowExecutePlan* plan, GError** err);
	int garrow_execute_plan_wait(GArrowExecutePlan* plan, GError** err);

	// arrow.Expression

	GType garrow_expression_get_type();
	int garrow_expression_equal(GArrowExpression* expression, GArrowExpression* otherExpression);
	char* garrow_expression_to_string(GArrowExpression* expression);

	// arrow.ExtensionArray

	GType garrow_extension_array_get_type();
	GArrowArray* garrow_extension_array_get_storage(GArrowExtensionArray* array);

	// arrow.ExtensionDataType

	GType garrow_extension_data_type_get_type();
	char* garrow_extension_data_type_get_extension_name(GArrowExtensionDataType* dataType);
	GArrowExtensionArray* garrow_extension_data_type_wrap_array(GArrowExtensionDataType* dataType, GArrowArray* storage);
	GArrowChunkedArray* garrow_extension_data_type_wrap_chunked_array(GArrowExtensionDataType* dataType, GArrowChunkedArray* storage);

	// arrow.ExtensionDataTypeRegistry

	GType garrow_extension_data_type_registry_get_type();
	GArrowExtensionDataTypeRegistry* garrow_extension_data_type_registry_default();
	GArrowExtensionDataType* garrow_extension_data_type_registry_lookup(GArrowExtensionDataTypeRegistry* registry, const(char)* name);
	int garrow_extension_data_type_registry_register(GArrowExtensionDataTypeRegistry* registry, GArrowExtensionDataType* dataType, GError** err);
	int garrow_extension_data_type_registry_unregister(GArrowExtensionDataTypeRegistry* registry, const(char)* name, GError** err);

	// arrow.ExtensionScalar

	GType garrow_extension_scalar_get_type();

	// arrow.FeatherFileReader

	GType garrow_feather_file_reader_get_type();
	GArrowFeatherFileReader* garrow_feather_file_reader_new(GArrowSeekableInputStream* file, GError** err);
	int garrow_feather_file_reader_get_version(GArrowFeatherFileReader* reader);
	GArrowTable* garrow_feather_file_reader_read(GArrowFeatherFileReader* reader, GError** err);
	GArrowTable* garrow_feather_file_reader_read_indices(GArrowFeatherFileReader* reader, int* indices, uint nIndices, GError** err);
	GArrowTable* garrow_feather_file_reader_read_names(GArrowFeatherFileReader* reader, char** names, uint nNames, GError** err);

	// arrow.FeatherWriteProperties

	GType garrow_feather_write_properties_get_type();
	GArrowFeatherWriteProperties* garrow_feather_write_properties_new();

	// arrow.Field

	GType garrow_field_get_type();
	GArrowField* garrow_field_new(const(char)* name, GArrowDataType* dataType);
	GArrowField* garrow_field_new_full(const(char)* name, GArrowDataType* dataType, int nullable);
	GArrowField* garrow_field_import(void* cAbiSchema, GError** err);
	int garrow_field_equal(GArrowField* field, GArrowField* otherField);
	void* garrow_field_export(GArrowField* field, GError** err);
	GArrowDataType* garrow_field_get_data_type(GArrowField* field);
	GHashTable* garrow_field_get_metadata(GArrowField* field);
	const(char)* garrow_field_get_name(GArrowField* field);
	int garrow_field_has_metadata(GArrowField* field);
	int garrow_field_is_nullable(GArrowField* field);
	GArrowField* garrow_field_remove_metadata(GArrowField* field);
	char* garrow_field_to_string(GArrowField* field);
	char* garrow_field_to_string_metadata(GArrowField* field, int showMetadata);
	GArrowField* garrow_field_with_merged_metadata(GArrowField* field, GHashTable* metadata);
	GArrowField* garrow_field_with_metadata(GArrowField* field, GHashTable* metadata);

	// arrow.FieldExpression

	GType garrow_field_expression_get_type();
	GArrowFieldExpression* garrow_field_expression_new(const(char)* reference, GError** err);

	// arrow.File

	GType garrow_file_get_type();
	int garrow_file_close(GArrowFile* file, GError** err);
	GArrowFileMode garrow_file_get_mode(GArrowFile* file);
	int garrow_file_is_closed(GArrowFile* file);
	long garrow_file_tell(GArrowFile* file, GError** err);

	// arrow.FileInfo

	GType garrow_file_info_get_type();
	GArrowFileInfo* garrow_file_info_new();
	int garrow_file_info_equal(GArrowFileInfo* fileInfo, GArrowFileInfo* otherFileInfo);
	int garrow_file_info_is_dir(GArrowFileInfo* fileInfo);
	int garrow_file_info_is_file(GArrowFileInfo* fileInfo);
	char* garrow_file_info_to_string(GArrowFileInfo* fileInfo);

	// arrow.FileInputStream

	GType garrow_file_input_stream_get_type();
	GArrowFileInputStream* garrow_file_input_stream_new(const(char)* path, GError** err);
	GArrowFileInputStream* garrow_file_input_stream_new_file_descriptor(int fileDescriptor, GError** err);
	int garrow_file_input_stream_get_file_descriptor(GArrowFileInputStream* stream);

	// arrow.FileOutputStream

	GType garrow_file_output_stream_get_type();
	GArrowFileOutputStream* garrow_file_output_stream_new(const(char)* path, int append, GError** err);

	// arrow.FileSelector

	GType garrow_file_selector_get_type();

	// arrow.FileSystem

	GType garrow_file_system_get_type();
	GArrowFileSystem* garrow_file_system_create(const(char)* uri, GError** err);
	int garrow_file_system_copy_file(GArrowFileSystem* fileSystem, const(char)* src, const(char)* dest, GError** err);
	int garrow_file_system_create_dir(GArrowFileSystem* fileSystem, const(char)* path, int recursive, GError** err);
	int garrow_file_system_delete_dir(GArrowFileSystem* fileSystem, const(char)* path, GError** err);
	int garrow_file_system_delete_dir_contents(GArrowFileSystem* fileSystem, const(char)* path, GError** err);
	int garrow_file_system_delete_file(GArrowFileSystem* fileSystem, const(char)* path, GError** err);
	int garrow_file_system_delete_files(GArrowFileSystem* fileSystem, char** paths, size_t nPaths, GError** err);
	GArrowFileInfo* garrow_file_system_get_file_info(GArrowFileSystem* fileSystem, const(char)* path, GError** err);
	GList* garrow_file_system_get_file_infos_paths(GArrowFileSystem* fileSystem, char** paths, size_t nPaths, GError** err);
	GList* garrow_file_system_get_file_infos_selector(GArrowFileSystem* fileSystem, GArrowFileSelector* fileSelector, GError** err);
	char* garrow_file_system_get_type_name(GArrowFileSystem* fileSystem);
	int garrow_file_system_move(GArrowFileSystem* fileSystem, const(char)* src, const(char)* dest, GError** err);
	GArrowOutputStream* garrow_file_system_open_append_stream(GArrowFileSystem* fileSystem, const(char)* path, GError** err);
	GArrowSeekableInputStream* garrow_file_system_open_input_file(GArrowFileSystem* fileSystem, const(char)* path, GError** err);
	GArrowInputStream* garrow_file_system_open_input_stream(GArrowFileSystem* fileSystem, const(char)* path, GError** err);
	GArrowOutputStream* garrow_file_system_open_output_stream(GArrowFileSystem* fileSystem, const(char)* path, GError** err);

	// arrow.FilterNodeOptions

	GType garrow_filter_node_options_get_type();
	GArrowFilterNodeOptions* garrow_filter_node_options_new(GArrowExpression* expression);

	// arrow.FilterOptions

	GType garrow_filter_options_get_type();
	GArrowFilterOptions* garrow_filter_options_new();

	// arrow.FixedSizeBinaryArray

	GType garrow_fixed_size_binary_array_get_type();
	GArrowFixedSizeBinaryArray* garrow_fixed_size_binary_array_new(GArrowFixedSizeBinaryDataType* dataType, long length, GArrowBuffer* data, GArrowBuffer* nullBitmap, long nNulls);
	int garrow_fixed_size_binary_array_get_byte_width(GArrowFixedSizeBinaryArray* array);
	GBytes* garrow_fixed_size_binary_array_get_value(GArrowFixedSizeBinaryArray* array, long i);
	GBytes* garrow_fixed_size_binary_array_get_values_bytes(GArrowFixedSizeBinaryArray* array);

	// arrow.FixedSizeBinaryArrayBuilder

	GType garrow_fixed_size_binary_array_builder_get_type();
	GArrowFixedSizeBinaryArrayBuilder* garrow_fixed_size_binary_array_builder_new(GArrowFixedSizeBinaryDataType* dataType);
	int garrow_fixed_size_binary_array_builder_append_value(GArrowFixedSizeBinaryArrayBuilder* builder, ubyte* value, int length, GError** err);
	int garrow_fixed_size_binary_array_builder_append_value_bytes(GArrowFixedSizeBinaryArrayBuilder* builder, GBytes* value, GError** err);
	int garrow_fixed_size_binary_array_builder_append_values(GArrowFixedSizeBinaryArrayBuilder* builder, GBytes** values, long valuesLength, int* isValids, long isValidsLength, GError** err);
	int garrow_fixed_size_binary_array_builder_append_values_packed(GArrowFixedSizeBinaryArrayBuilder* builder, GBytes* values, int* isValids, long isValidsLength, GError** err);

	// arrow.FixedSizeBinaryDataType

	GType garrow_fixed_size_binary_data_type_get_type();
	GArrowFixedSizeBinaryDataType* garrow_fixed_size_binary_data_type_new(int byteWidth);
	int garrow_fixed_size_binary_data_type_get_byte_width(GArrowFixedSizeBinaryDataType* dataType);

	// arrow.FixedSizeBinaryScalar

	GType garrow_fixed_size_binary_scalar_get_type();
	GArrowFixedSizeBinaryScalar* garrow_fixed_size_binary_scalar_new(GArrowFixedSizeBinaryDataType* dataType, GArrowBuffer* value);

	// arrow.FixedWidthDataType

	GType garrow_fixed_width_data_type_get_type();
	int garrow_fixed_width_data_type_get_bit_width(GArrowFixedWidthDataType* dataType);

	// arrow.FloatArray

	GType garrow_float_array_get_type();
	GArrowFloatArray* garrow_float_array_new(long length, GArrowBuffer* data, GArrowBuffer* nullBitmap, long nNulls);
	float garrow_float_array_get_value(GArrowFloatArray* array, long i);
	float* garrow_float_array_get_values(GArrowFloatArray* array, long* length);
	double garrow_float_array_sum(GArrowFloatArray* array, GError** err);

	// arrow.FloatArrayBuilder

	GType garrow_float_array_builder_get_type();
	GArrowFloatArrayBuilder* garrow_float_array_builder_new();
	int garrow_float_array_builder_append(GArrowFloatArrayBuilder* builder, float value, GError** err);
	int garrow_float_array_builder_append_null(GArrowFloatArrayBuilder* builder, GError** err);
	int garrow_float_array_builder_append_nulls(GArrowFloatArrayBuilder* builder, long n, GError** err);
	int garrow_float_array_builder_append_value(GArrowFloatArrayBuilder* builder, float value, GError** err);
	int garrow_float_array_builder_append_values(GArrowFloatArrayBuilder* builder, float* values, long valuesLength, int* isValids, long isValidsLength, GError** err);

	// arrow.FloatDataType

	GType garrow_float_data_type_get_type();
	GArrowFloatDataType* garrow_float_data_type_new();

	// arrow.FloatScalar

	GType garrow_float_scalar_get_type();
	GArrowFloatScalar* garrow_float_scalar_new(float value);
	float garrow_float_scalar_get_value(GArrowFloatScalar* scalar);

	// arrow.FloatingPointDataType

	GType garrow_floating_point_data_type_get_type();

	// arrow.Function

	GType garrow_function_get_type();
	GList* garrow_function_all();
	GArrowFunction* garrow_function_find(const(char)* name);
	int garrow_function_equal(GArrowFunction* function_, GArrowFunction* otherFunction);
	GArrowDatum* garrow_function_execute(GArrowFunction* function_, GList* args, GArrowFunctionOptions* options, GArrowExecuteContext* context, GError** err);
	GArrowFunctionOptions* garrow_function_get_default_options(GArrowFunction* function_);
	GArrowFunctionDoc* garrow_function_get_doc(GArrowFunction* function_);
	const(char)* garrow_function_get_name(GArrowFunction* function_);
	GType garrow_function_get_options_type(GArrowFunction* function_);
	char* garrow_function_to_string(GArrowFunction* function_);

	// arrow.FunctionDoc

	GType garrow_function_doc_get_type();
	char** garrow_function_doc_get_arg_names(GArrowFunctionDoc* doc);
	char* garrow_function_doc_get_description(GArrowFunctionDoc* doc);
	char* garrow_function_doc_get_options_class_name(GArrowFunctionDoc* doc);
	char* garrow_function_doc_get_summary(GArrowFunctionDoc* doc);

	// arrow.FunctionOptions

	GType garrow_function_options_get_type();
	int garrow_function_options_equal(GArrowFunctionOptions* options, GArrowFunctionOptions* otherOptions);
	char* garrow_function_options_to_string(GArrowFunctionOptions* options);

	// arrow.GCSFileSystem

	GType garrow_gcs_file_system_get_type();

	// arrow.GIOInputStream

	GType garrow_gio_input_stream_get_type();
	GArrowGIOInputStream* garrow_gio_input_stream_new(GInputStream* gioInputStream);
	GInputStream* garrow_gio_input_stream_get_raw(GArrowGIOInputStream* inputStream);

	// arrow.GIOOutputStream

	GType garrow_gio_output_stream_get_type();
	GArrowGIOOutputStream* garrow_gio_output_stream_new(GOutputStream* gioOutputStream);
	GOutputStream* garrow_gio_output_stream_get_raw(GArrowGIOOutputStream* outputStream);

	// arrow.HDFSFileSystem

	GType garrow_hdfs_file_system_get_type();

	// arrow.HalfFloatArray

	GType garrow_half_float_array_get_type();
	GArrowHalfFloatArray* garrow_half_float_array_new(long length, GArrowBuffer* data, GArrowBuffer* nullBitmap, long nNulls);
	ushort garrow_half_float_array_get_value(GArrowHalfFloatArray* array, long i);
	ushort* garrow_half_float_array_get_values(GArrowHalfFloatArray* array, long* length);

	// arrow.HalfFloatArrayBuilder

	GType garrow_half_float_array_builder_get_type();
	GArrowHalfFloatArrayBuilder* garrow_half_float_array_builder_new();
	int garrow_half_float_array_builder_append_value(GArrowHalfFloatArrayBuilder* builder, ushort value, GError** err);
	int garrow_half_float_array_builder_append_values(GArrowHalfFloatArrayBuilder* builder, ushort* values, long valuesLength, int* isValids, long isValidsLength, GError** err);

	// arrow.HalfFloatDataType

	GType garrow_half_float_data_type_get_type();
	GArrowHalfFloatDataType* garrow_half_float_data_type_new();

	// arrow.HalfFloatScalar

	GType garrow_half_float_scalar_get_type();
	GArrowHalfFloatScalar* garrow_half_float_scalar_new(ushort value);
	ushort garrow_half_float_scalar_get_value(GArrowHalfFloatScalar* scalar);

	// arrow.HashJoinNodeOptions

	GType garrow_hash_join_node_options_get_type();
	GArrowHashJoinNodeOptions* garrow_hash_join_node_options_new(GArrowJoinType type, char** leftKeys, size_t nLeftKeys, char** rightKeys, size_t nRightKeys, GError** err);
	int garrow_hash_join_node_options_set_left_outputs(GArrowHashJoinNodeOptions* options, char** outputs, size_t nOutputs, GError** err);
	int garrow_hash_join_node_options_set_right_outputs(GArrowHashJoinNodeOptions* options, char** outputs, size_t nOutputs, GError** err);

	// arrow.ISO8601TimestampParser

	GType garrow_iso8601_timestamp_parser_get_type();
	GArrowISO8601TimestampParser* garrow_iso8601_timestamp_parser_new();

	// arrow.IndexOptions

	GType garrow_index_options_get_type();
	GArrowIndexOptions* garrow_index_options_new();

	// arrow.InputStream

	GType garrow_input_stream_get_type();
	int garrow_input_stream_advance(GArrowInputStream* inputStream, long nBytes, GError** err);
	int garrow_input_stream_align(GArrowInputStream* inputStream, int alignment, GError** err);
	GArrowRecordBatch* garrow_input_stream_read_record_batch(GArrowInputStream* inputStream, GArrowSchema* schema, GArrowReadOptions* options, GError** err);
	GArrowTensor* garrow_input_stream_read_tensor(GArrowInputStream* inputStream, GError** err);

	// arrow.Int16Array

	GType garrow_int16_array_get_type();
	GArrowInt16Array* garrow_int16_array_new(long length, GArrowBuffer* data, GArrowBuffer* nullBitmap, long nNulls);
	short garrow_int16_array_get_value(GArrowInt16Array* array, long i);
	short* garrow_int16_array_get_values(GArrowInt16Array* array, long* length);
	long garrow_int16_array_sum(GArrowInt16Array* array, GError** err);

	// arrow.Int16ArrayBuilder

	GType garrow_int16_array_builder_get_type();
	GArrowInt16ArrayBuilder* garrow_int16_array_builder_new();
	int garrow_int16_array_builder_append(GArrowInt16ArrayBuilder* builder, short value, GError** err);
	int garrow_int16_array_builder_append_null(GArrowInt16ArrayBuilder* builder, GError** err);
	int garrow_int16_array_builder_append_nulls(GArrowInt16ArrayBuilder* builder, long n, GError** err);
	int garrow_int16_array_builder_append_value(GArrowInt16ArrayBuilder* builder, short value, GError** err);
	int garrow_int16_array_builder_append_values(GArrowInt16ArrayBuilder* builder, short* values, long valuesLength, int* isValids, long isValidsLength, GError** err);

	// arrow.Int16DataType

	GType garrow_int16_data_type_get_type();
	GArrowInt16DataType* garrow_int16_data_type_new();

	// arrow.Int16Scalar

	GType garrow_int16_scalar_get_type();
	GArrowInt16Scalar* garrow_int16_scalar_new(short value);
	short garrow_int16_scalar_get_value(GArrowInt16Scalar* scalar);

	// arrow.Int32Array

	GType garrow_int32_array_get_type();
	GArrowInt32Array* garrow_int32_array_new(long length, GArrowBuffer* data, GArrowBuffer* nullBitmap, long nNulls);
	int garrow_int32_array_get_value(GArrowInt32Array* array, long i);
	int* garrow_int32_array_get_values(GArrowInt32Array* array, long* length);
	long garrow_int32_array_sum(GArrowInt32Array* array, GError** err);

	// arrow.Int32ArrayBuilder

	GType garrow_int32_array_builder_get_type();
	GArrowInt32ArrayBuilder* garrow_int32_array_builder_new();
	int garrow_int32_array_builder_append(GArrowInt32ArrayBuilder* builder, int value, GError** err);
	int garrow_int32_array_builder_append_null(GArrowInt32ArrayBuilder* builder, GError** err);
	int garrow_int32_array_builder_append_nulls(GArrowInt32ArrayBuilder* builder, long n, GError** err);
	int garrow_int32_array_builder_append_value(GArrowInt32ArrayBuilder* builder, int value, GError** err);
	int garrow_int32_array_builder_append_values(GArrowInt32ArrayBuilder* builder, int* values, long valuesLength, int* isValids, long isValidsLength, GError** err);

	// arrow.Int32DataType

	GType garrow_int32_data_type_get_type();
	GArrowInt32DataType* garrow_int32_data_type_new();

	// arrow.Int32Scalar

	GType garrow_int32_scalar_get_type();
	GArrowInt32Scalar* garrow_int32_scalar_new(int value);
	int garrow_int32_scalar_get_value(GArrowInt32Scalar* scalar);

	// arrow.Int64Array

	GType garrow_int64_array_get_type();
	GArrowInt64Array* garrow_int64_array_new(long length, GArrowBuffer* data, GArrowBuffer* nullBitmap, long nNulls);
	long garrow_int64_array_get_value(GArrowInt64Array* array, long i);
	long* garrow_int64_array_get_values(GArrowInt64Array* array, long* length);
	long garrow_int64_array_sum(GArrowInt64Array* array, GError** err);

	// arrow.Int64ArrayBuilder

	GType garrow_int64_array_builder_get_type();
	GArrowInt64ArrayBuilder* garrow_int64_array_builder_new();
	int garrow_int64_array_builder_append(GArrowInt64ArrayBuilder* builder, long value, GError** err);
	int garrow_int64_array_builder_append_null(GArrowInt64ArrayBuilder* builder, GError** err);
	int garrow_int64_array_builder_append_nulls(GArrowInt64ArrayBuilder* builder, long n, GError** err);
	int garrow_int64_array_builder_append_value(GArrowInt64ArrayBuilder* builder, long value, GError** err);
	int garrow_int64_array_builder_append_values(GArrowInt64ArrayBuilder* builder, long* values, long valuesLength, int* isValids, long isValidsLength, GError** err);

	// arrow.Int64DataType

	GType garrow_int64_data_type_get_type();
	GArrowInt64DataType* garrow_int64_data_type_new();

	// arrow.Int64Scalar

	GType garrow_int64_scalar_get_type();
	GArrowInt64Scalar* garrow_int64_scalar_new(long value);
	long garrow_int64_scalar_get_value(GArrowInt64Scalar* scalar);

	// arrow.Int8Array

	GType garrow_int8_array_get_type();
	GArrowInt8Array* garrow_int8_array_new(long length, GArrowBuffer* data, GArrowBuffer* nullBitmap, long nNulls);
	byte garrow_int8_array_get_value(GArrowInt8Array* array, long i);
	byte* garrow_int8_array_get_values(GArrowInt8Array* array, long* length);
	long garrow_int8_array_sum(GArrowInt8Array* array, GError** err);

	// arrow.Int8ArrayBuilder

	GType garrow_int8_array_builder_get_type();
	GArrowInt8ArrayBuilder* garrow_int8_array_builder_new();
	int garrow_int8_array_builder_append(GArrowInt8ArrayBuilder* builder, byte value, GError** err);
	int garrow_int8_array_builder_append_null(GArrowInt8ArrayBuilder* builder, GError** err);
	int garrow_int8_array_builder_append_nulls(GArrowInt8ArrayBuilder* builder, long n, GError** err);
	int garrow_int8_array_builder_append_value(GArrowInt8ArrayBuilder* builder, byte value, GError** err);
	int garrow_int8_array_builder_append_values(GArrowInt8ArrayBuilder* builder, byte* values, long valuesLength, int* isValids, long isValidsLength, GError** err);

	// arrow.Int8DataType

	GType garrow_int8_data_type_get_type();
	GArrowInt8DataType* garrow_int8_data_type_new();

	// arrow.Int8Scalar

	GType garrow_int8_scalar_get_type();
	GArrowInt8Scalar* garrow_int8_scalar_new(byte value);
	byte garrow_int8_scalar_get_value(GArrowInt8Scalar* scalar);

	// arrow.IntArrayBuilder

	GType garrow_int_array_builder_get_type();
	GArrowIntArrayBuilder* garrow_int_array_builder_new();
	int garrow_int_array_builder_append(GArrowIntArrayBuilder* builder, long value, GError** err);
	int garrow_int_array_builder_append_null(GArrowIntArrayBuilder* builder, GError** err);
	int garrow_int_array_builder_append_nulls(GArrowIntArrayBuilder* builder, long n, GError** err);
	int garrow_int_array_builder_append_value(GArrowIntArrayBuilder* builder, long value, GError** err);
	int garrow_int_array_builder_append_values(GArrowIntArrayBuilder* builder, long* values, long valuesLength, int* isValids, long isValidsLength, GError** err);

	// arrow.IntegerDataType

	GType garrow_integer_data_type_get_type();
	int garrow_integer_data_type_is_signed(GArrowIntegerDataType* dataType);

	// arrow.IntervalDataType

	GType garrow_interval_data_type_get_type();
	GArrowIntervalType garrow_interval_data_type_get_interval_type(GArrowIntervalDataType* type);

	// arrow.JSONReadOptions

	GType garrow_json_read_options_get_type();
	GArrowJSONReadOptions* garrow_json_read_options_new();

	// arrow.JSONReader

	GType garrow_json_reader_get_type();
	GArrowJSONReader* garrow_json_reader_new(GArrowInputStream* input, GArrowJSONReadOptions* options, GError** err);
	GArrowTable* garrow_json_reader_read(GArrowJSONReader* reader, GError** err);

	// arrow.LargeBinaryArray

	GType garrow_large_binary_array_get_type();
	GArrowLargeBinaryArray* garrow_large_binary_array_new(long length, GArrowBuffer* valueOffsets, GArrowBuffer* valueData, GArrowBuffer* nullBitmap, long nNulls);
	GArrowBuffer* garrow_large_binary_array_get_buffer(GArrowLargeBinaryArray* array);
	GArrowBuffer* garrow_large_binary_array_get_data_buffer(GArrowLargeBinaryArray* array);
	GArrowBuffer* garrow_large_binary_array_get_offsets_buffer(GArrowLargeBinaryArray* array);
	GBytes* garrow_large_binary_array_get_value(GArrowLargeBinaryArray* array, long i);

	// arrow.LargeBinaryArrayBuilder

	GType garrow_large_binary_array_builder_get_type();
	GArrowLargeBinaryArrayBuilder* garrow_large_binary_array_builder_new();
	int garrow_large_binary_array_builder_append_null(GArrowLargeBinaryArrayBuilder* builder, GError** err);
	int garrow_large_binary_array_builder_append_nulls(GArrowLargeBinaryArrayBuilder* builder, long n, GError** err);
	int garrow_large_binary_array_builder_append_value(GArrowLargeBinaryArrayBuilder* builder, ubyte* value, long length, GError** err);
	int garrow_large_binary_array_builder_append_value_bytes(GArrowLargeBinaryArrayBuilder* builder, GBytes* value, GError** err);
	int garrow_large_binary_array_builder_append_values(GArrowLargeBinaryArrayBuilder* builder, GBytes** values, long valuesLength, int* isValids, long isValidsLength, GError** err);

	// arrow.LargeBinaryDataType

	GType garrow_large_binary_data_type_get_type();
	GArrowLargeBinaryDataType* garrow_large_binary_data_type_new();

	// arrow.LargeBinaryScalar

	GType garrow_large_binary_scalar_get_type();
	GArrowLargeBinaryScalar* garrow_large_binary_scalar_new(GArrowBuffer* value);

	// arrow.LargeListArray

	GType garrow_large_list_array_get_type();
	GArrowLargeListArray* garrow_large_list_array_new(GArrowDataType* dataType, long length, GArrowBuffer* valueOffsets, GArrowArray* values, GArrowBuffer* nullBitmap, long nNulls);
	GArrowArray* garrow_large_list_array_get_value(GArrowLargeListArray* array, long i);
	long garrow_large_list_array_get_value_length(GArrowLargeListArray* array, long i);
	long garrow_large_list_array_get_value_offset(GArrowLargeListArray* array, long i);
	long* garrow_large_list_array_get_value_offsets(GArrowLargeListArray* array, long* nOffsets);
	GArrowDataType* garrow_large_list_array_get_value_type(GArrowLargeListArray* array);
	GArrowArray* garrow_large_list_array_get_values(GArrowLargeListArray* array);

	// arrow.LargeListArrayBuilder

	GType garrow_large_list_array_builder_get_type();
	GArrowLargeListArrayBuilder* garrow_large_list_array_builder_new(GArrowLargeListDataType* dataType, GError** err);
	int garrow_large_list_array_builder_append_null(GArrowLargeListArrayBuilder* builder, GError** err);
	int garrow_large_list_array_builder_append_value(GArrowLargeListArrayBuilder* builder, GError** err);
	GArrowArrayBuilder* garrow_large_list_array_builder_get_value_builder(GArrowLargeListArrayBuilder* builder);

	// arrow.LargeListDataType

	GType garrow_large_list_data_type_get_type();
	GArrowLargeListDataType* garrow_large_list_data_type_new(GArrowField* field);
	GArrowField* garrow_large_list_data_type_get_field(GArrowLargeListDataType* largeListDataType);

	// arrow.LargeListScalar

	GType garrow_large_list_scalar_get_type();
	GArrowLargeListScalar* garrow_large_list_scalar_new(GArrowLargeListArray* value);

	// arrow.LargeStringArray

	GType garrow_large_string_array_get_type();
	GArrowLargeStringArray* garrow_large_string_array_new(long length, GArrowBuffer* valueOffsets, GArrowBuffer* valueData, GArrowBuffer* nullBitmap, long nNulls);
	char* garrow_large_string_array_get_string(GArrowLargeStringArray* array, long i);

	// arrow.LargeStringArrayBuilder

	GType garrow_large_string_array_builder_get_type();
	GArrowLargeStringArrayBuilder* garrow_large_string_array_builder_new();
	int garrow_large_string_array_builder_append_string(GArrowLargeStringArrayBuilder* builder, const(char)* value, GError** err);
	int garrow_large_string_array_builder_append_string_len(GArrowLargeStringArrayBuilder* builder, const(char)* value, long length, GError** err);
	int garrow_large_string_array_builder_append_strings(GArrowLargeStringArrayBuilder* builder, char** values, long valuesLength, int* isValids, long isValidsLength, GError** err);

	// arrow.LargeStringDataType

	GType garrow_large_string_data_type_get_type();
	GArrowLargeStringDataType* garrow_large_string_data_type_new();

	// arrow.LargeStringScalar

	GType garrow_large_string_scalar_get_type();
	GArrowLargeStringScalar* garrow_large_string_scalar_new(GArrowBuffer* value);

	// arrow.ListArray

	GType garrow_list_array_get_type();
	GArrowListArray* garrow_list_array_new(GArrowDataType* dataType, long length, GArrowBuffer* valueOffsets, GArrowArray* values, GArrowBuffer* nullBitmap, long nNulls);
	GArrowArray* garrow_list_array_get_value(GArrowListArray* array, long i);
	int garrow_list_array_get_value_length(GArrowListArray* array, long i);
	int garrow_list_array_get_value_offset(GArrowListArray* array, long i);
	int* garrow_list_array_get_value_offsets(GArrowListArray* array, long* nOffsets);
	GArrowDataType* garrow_list_array_get_value_type(GArrowListArray* array);
	GArrowArray* garrow_list_array_get_values(GArrowListArray* array);

	// arrow.ListArrayBuilder

	GType garrow_list_array_builder_get_type();
	GArrowListArrayBuilder* garrow_list_array_builder_new(GArrowListDataType* dataType, GError** err);
	int garrow_list_array_builder_append(GArrowListArrayBuilder* builder, GError** err);
	int garrow_list_array_builder_append_null(GArrowListArrayBuilder* builder, GError** err);
	int garrow_list_array_builder_append_value(GArrowListArrayBuilder* builder, GError** err);
	GArrowArrayBuilder* garrow_list_array_builder_get_value_builder(GArrowListArrayBuilder* builder);

	// arrow.ListDataType

	GType garrow_list_data_type_get_type();
	GArrowListDataType* garrow_list_data_type_new(GArrowField* field);
	GArrowField* garrow_list_data_type_get_field(GArrowListDataType* listDataType);
	GArrowField* garrow_list_data_type_get_value_field(GArrowListDataType* listDataType);

	// arrow.ListScalar

	GType garrow_list_scalar_get_type();
	GArrowListScalar* garrow_list_scalar_new(GArrowListArray* value);

	// arrow.LiteralExpression

	GType garrow_literal_expression_get_type();
	GArrowLiteralExpression* garrow_literal_expression_new(GArrowDatum* datum);

	// arrow.LocalFileSystem

	GType garrow_local_file_system_get_type();
	GArrowLocalFileSystem* garrow_local_file_system_new(GArrowLocalFileSystemOptions* options);

	// arrow.LocalFileSystemOptions

	GType garrow_local_file_system_options_get_type();
	GArrowLocalFileSystemOptions* garrow_local_file_system_options_new();

	// arrow.MapArray

	GType garrow_map_array_get_type();
	GArrowMapArray* garrow_map_array_new(GArrowArray* offsets, GArrowArray* keys, GArrowArray* items, GError** err);
	GArrowArray* garrow_map_array_get_items(GArrowMapArray* array);
	GArrowArray* garrow_map_array_get_keys(GArrowMapArray* array);

	// arrow.MapArrayBuilder

	GType garrow_map_array_builder_get_type();
	GArrowMapArrayBuilder* garrow_map_array_builder_new(GArrowMapDataType* dataType, GError** err);
	int garrow_map_array_builder_append_null(GArrowMapArrayBuilder* builder, GError** err);
	int garrow_map_array_builder_append_nulls(GArrowMapArrayBuilder* builder, long n, GError** err);
	int garrow_map_array_builder_append_value(GArrowMapArrayBuilder* builder, GError** err);
	int garrow_map_array_builder_append_values(GArrowMapArrayBuilder* builder, int* offsets, long offsetsLength, int* isValids, long isValidsLength, GError** err);
	GArrowArrayBuilder* garrow_map_array_builder_get_item_builder(GArrowMapArrayBuilder* builder);
	GArrowArrayBuilder* garrow_map_array_builder_get_key_builder(GArrowMapArrayBuilder* builder);
	GArrowArrayBuilder* garrow_map_array_builder_get_value_builder(GArrowMapArrayBuilder* builder);

	// arrow.MapDataType

	GType garrow_map_data_type_get_type();
	GArrowMapDataType* garrow_map_data_type_new(GArrowDataType* keyType, GArrowDataType* itemType);
	GArrowDataType* garrow_map_data_type_get_item_type(GArrowMapDataType* mapDataType);
	GArrowDataType* garrow_map_data_type_get_key_type(GArrowMapDataType* mapDataType);

	// arrow.MapScalar

	GType garrow_map_scalar_get_type();
	GArrowMapScalar* garrow_map_scalar_new(GArrowStructArray* value);

	// arrow.MatchSubstringOptions

	GType garrow_match_substring_options_get_type();
	GArrowMatchSubstringOptions* garrow_match_substring_options_new();

	// arrow.MemoryMappedInputStream

	GType garrow_memory_mapped_input_stream_get_type();
	GArrowMemoryMappedInputStream* garrow_memory_mapped_input_stream_new(const(char)* path, GError** err);

	// arrow.MemoryPool

	GType garrow_memory_pool_get_type();
	GArrowMemoryPool* garrow_memory_pool_default();
	char* garrow_memory_pool_get_backend_name(GArrowMemoryPool* memoryPool);
	long garrow_memory_pool_get_bytes_allocated(GArrowMemoryPool* memoryPool);
	long garrow_memory_pool_get_max_memory(GArrowMemoryPool* memoryPool);

	// arrow.MockFileSystem

	GType garrow_mock_file_system_get_type();

	// arrow.MonthDayNano

	GType garrow_month_day_nano_get_type();
	GArrowMonthDayNano* garrow_month_day_nano_new(int month, int day, long nanosecond);
	int garrow_month_day_nano_equal(GArrowMonthDayNano* monthNanoDay, GArrowMonthDayNano* otherMonthNanoDay);

	// arrow.MonthDayNanoIntervalArray

	GType garrow_month_day_nano_interval_array_get_type();
	GArrowMonthDayNanoIntervalArray* garrow_month_day_nano_interval_array_new(long length, GArrowBuffer* data, GArrowBuffer* nullBitmap, long nNulls);
	GArrowMonthDayNano* garrow_month_day_nano_interval_array_get_value(GArrowMonthDayNanoIntervalArray* array, long i);
	GList* garrow_month_day_nano_interval_array_get_values(GArrowMonthDayNanoIntervalArray* array);

	// arrow.MonthDayNanoIntervalArrayBuilder

	GType garrow_month_day_nano_interval_array_builder_get_type();
	GArrowMonthDayNanoIntervalArrayBuilder* garrow_month_day_nano_interval_array_builder_new();
	int garrow_month_day_nano_interval_array_builder_append_value(GArrowMonthDayNanoIntervalArrayBuilder* builder, GArrowMonthDayNano* value, GError** err);
	int garrow_month_day_nano_interval_array_builder_append_values(GArrowMonthDayNanoIntervalArrayBuilder* builder, GArrowMonthDayNano** values, long valuesLength, int* isValids, long isValidsLength, GError** err);

	// arrow.MonthDayNanoIntervalDataType

	GType garrow_month_day_nano_interval_data_type_get_type();
	GArrowMonthDayNanoIntervalDataType* garrow_month_day_nano_interval_data_type_new();

	// arrow.MonthDayNanoIntervalScalar

	GType garrow_month_day_nano_interval_scalar_get_type();
	GArrowMonthDayNanoIntervalScalar* garrow_month_day_nano_interval_scalar_new(GArrowMonthDayNano* value);
	GArrowMonthDayNano* garrow_month_day_nano_interval_scalar_get_value(GArrowMonthDayNanoIntervalScalar* scalar);

	// arrow.MonthIntervalArray

	GType garrow_month_interval_array_get_type();
	GArrowMonthIntervalArray* garrow_month_interval_array_new(long length, GArrowBuffer* data, GArrowBuffer* nullBitmap, long nNulls);
	int garrow_month_interval_array_get_value(GArrowMonthIntervalArray* array, long i);
	int* garrow_month_interval_array_get_values(GArrowMonthIntervalArray* array, long* length);

	// arrow.MonthIntervalArrayBuilder

	GType garrow_month_interval_array_builder_get_type();
	GArrowMonthIntervalArrayBuilder* garrow_month_interval_array_builder_new();
	int garrow_month_interval_array_builder_append_value(GArrowMonthIntervalArrayBuilder* builder, int value, GError** err);
	int garrow_month_interval_array_builder_append_values(GArrowMonthIntervalArrayBuilder* builder, int* values, long valuesLength, int* isValids, long isValidsLength, GError** err);

	// arrow.MonthIntervalDataType

	GType garrow_month_interval_data_type_get_type();
	GArrowMonthIntervalDataType* garrow_month_interval_data_type_new();

	// arrow.MonthIntervalScalar

	GType garrow_month_interval_scalar_get_type();
	GArrowMonthIntervalScalar* garrow_month_interval_scalar_new(int value);
	int garrow_month_interval_scalar_get_value(GArrowMonthIntervalScalar* scalar);

	// arrow.MutableBuffer

	GType garrow_mutable_buffer_get_type();
	GArrowMutableBuffer* garrow_mutable_buffer_new(ubyte* data, long size);
	GArrowMutableBuffer* garrow_mutable_buffer_new_bytes(GBytes* data);
	int garrow_mutable_buffer_set_data(GArrowMutableBuffer* buffer, long offset, ubyte* data, long size, GError** err);
	GArrowMutableBuffer* garrow_mutable_buffer_slice(GArrowMutableBuffer* buffer, long offset, long size);

	// arrow.NullArray

	GType garrow_null_array_get_type();
	GArrowNullArray* garrow_null_array_new(long length);

	// arrow.NullArrayBuilder

	GType garrow_null_array_builder_get_type();
	GArrowNullArrayBuilder* garrow_null_array_builder_new();
	int garrow_null_array_builder_append_null(GArrowNullArrayBuilder* builder, GError** err);
	int garrow_null_array_builder_append_nulls(GArrowNullArrayBuilder* builder, long n, GError** err);

	// arrow.NullDataType

	GType garrow_null_data_type_get_type();
	GArrowNullDataType* garrow_null_data_type_new();

	// arrow.NullScalar

	GType garrow_null_scalar_get_type();
	GArrowNullScalar* garrow_null_scalar_new();

	// arrow.NumericArray

	GType garrow_numeric_array_get_type();
	double garrow_numeric_array_mean(GArrowNumericArray* array, GError** err);

	// arrow.NumericDataType

	GType garrow_numeric_data_type_get_type();

	// arrow.ORCFileReader

	GType garrow_orc_file_reader_get_type();
	GArrowORCFileReader* garrow_orc_file_reader_new(GArrowSeekableInputStream* file, GError** err);
	int* garrow_orc_file_reader_get_field_indexes(GArrowORCFileReader* reader, uint* nFieldIndexes);
	int* garrow_orc_file_reader_get_field_indices(GArrowORCFileReader* reader, uint* nFieldIndices);
	long garrow_orc_file_reader_get_n_rows(GArrowORCFileReader* reader);
	long garrow_orc_file_reader_get_n_stripes(GArrowORCFileReader* reader);
	GArrowRecordBatch* garrow_orc_file_reader_read_stripe(GArrowORCFileReader* reader, long i, GError** err);
	GArrowTable* garrow_orc_file_reader_read_stripes(GArrowORCFileReader* reader, GError** err);
	GArrowSchema* garrow_orc_file_reader_read_type(GArrowORCFileReader* reader, GError** err);
	void garrow_orc_file_reader_set_field_indexes(GArrowORCFileReader* reader, int* fieldIndexes, uint nFieldIndexes);
	void garrow_orc_file_reader_set_field_indices(GArrowORCFileReader* reader, int* fieldIndices, uint nFieldIndices);

	// arrow.OutputStream

	GType garrow_output_stream_get_type();
	int garrow_output_stream_align(GArrowOutputStream* stream, int alignment, GError** err);
	long garrow_output_stream_write_record_batch(GArrowOutputStream* stream, GArrowRecordBatch* recordBatch, GArrowWriteOptions* options, GError** err);
	long garrow_output_stream_write_tensor(GArrowOutputStream* stream, GArrowTensor* tensor, GError** err);

	// arrow.PrimitiveArray

	GType garrow_primitive_array_get_type();
	GArrowBuffer* garrow_primitive_array_get_buffer(GArrowPrimitiveArray* array);
	GArrowBuffer* garrow_primitive_array_get_data_buffer(GArrowPrimitiveArray* array);

	// arrow.ProjectNodeOptions

	GType garrow_project_node_options_get_type();
	GArrowProjectNodeOptions* garrow_project_node_options_new(GList* expressions, char** names, size_t nNames);

	// arrow.QuantileOptions

	GType garrow_quantile_options_get_type();
	GArrowQuantileOptions* garrow_quantile_options_new();
	double* garrow_quantile_options_get_qs(GArrowQuantileOptions* options, size_t* n);
	void garrow_quantile_options_set_q(GArrowQuantileOptions* options, double q);
	void garrow_quantile_options_set_qs(GArrowQuantileOptions* options, double* qs, size_t n);

	// arrow.RankOptions

	GType garrow_rank_options_get_type();
	GArrowRankOptions* garrow_rank_options_new();
	void garrow_rank_options_add_sort_key(GArrowRankOptions* options, GArrowSortKey* sortKey);
	int garrow_rank_options_equal(GArrowRankOptions* options, GArrowRankOptions* otherOptions);
	GList* garrow_rank_options_get_sort_keys(GArrowRankOptions* options);
	void garrow_rank_options_set_sort_keys(GArrowRankOptions* options, GList* sortKeys);

	// arrow.ReadOptions

	GType garrow_read_options_get_type();
	GArrowReadOptions* garrow_read_options_new();
	int* garrow_read_options_get_included_fields(GArrowReadOptions* options, size_t* nFields);
	void garrow_read_options_set_included_fields(GArrowReadOptions* options, int* fields, size_t nFields);

	// arrow.Readable

	GType garrow_readable_get_type();
	GArrowBuffer* garrow_readable_read(GArrowReadable* readable, long nBytes, GError** err);
	GBytes* garrow_readable_read_bytes(GArrowReadable* readable, long nBytes, GError** err);

	// arrow.RecordBatch

	GType garrow_record_batch_get_type();
	GArrowRecordBatch* garrow_record_batch_new(GArrowSchema* schema, uint nRows, GList* columns, GError** err);
	GArrowRecordBatch* garrow_record_batch_import(void* cAbiArray, GArrowSchema* schema, GError** err);
	GArrowRecordBatch* garrow_record_batch_add_column(GArrowRecordBatch* recordBatch, uint i, GArrowField* field, GArrowArray* column, GError** err);
	int garrow_record_batch_equal(GArrowRecordBatch* recordBatch, GArrowRecordBatch* otherRecordBatch);
	int garrow_record_batch_equal_metadata(GArrowRecordBatch* recordBatch, GArrowRecordBatch* otherRecordBatch, int checkMetadata);
	int garrow_record_batch_export(GArrowRecordBatch* recordBatch, void** cAbiArray, void** cAbiSchema, GError** err);
	GArrowRecordBatch* garrow_record_batch_filter(GArrowRecordBatch* recordBatch, GArrowBooleanArray* filter, GArrowFilterOptions* options, GError** err);
	GArrowArray* garrow_record_batch_get_column_data(GArrowRecordBatch* recordBatch, int i);
	const(char)* garrow_record_batch_get_column_name(GArrowRecordBatch* recordBatch, int i);
	uint garrow_record_batch_get_n_columns(GArrowRecordBatch* recordBatch);
	long garrow_record_batch_get_n_rows(GArrowRecordBatch* recordBatch);
	GArrowSchema* garrow_record_batch_get_schema(GArrowRecordBatch* recordBatch);
	GArrowRecordBatch* garrow_record_batch_remove_column(GArrowRecordBatch* recordBatch, uint i, GError** err);
	GArrowBuffer* garrow_record_batch_serialize(GArrowRecordBatch* recordBatch, GArrowWriteOptions* options, GError** err);
	GArrowRecordBatch* garrow_record_batch_slice(GArrowRecordBatch* recordBatch, long offset, long length);
	GArrowUInt64Array* garrow_record_batch_sort_indices(GArrowRecordBatch* recordBatch, GArrowSortOptions* options, GError** err);
	GArrowRecordBatch* garrow_record_batch_take(GArrowRecordBatch* recordBatch, GArrowArray* indices, GArrowTakeOptions* options, GError** err);
	char* garrow_record_batch_to_string(GArrowRecordBatch* recordBatch, GError** err);

	// arrow.RecordBatchBuilder

	GType garrow_record_batch_builder_get_type();
	GArrowRecordBatchBuilder* garrow_record_batch_builder_new(GArrowSchema* schema, GError** err);
	GArrowRecordBatch* garrow_record_batch_builder_flush(GArrowRecordBatchBuilder* builder, GError** err);
	GArrowArrayBuilder* garrow_record_batch_builder_get_column_builder(GArrowRecordBatchBuilder* builder, int i);
	GArrowArrayBuilder* garrow_record_batch_builder_get_field(GArrowRecordBatchBuilder* builder, int i);
	long garrow_record_batch_builder_get_initial_capacity(GArrowRecordBatchBuilder* builder);
	int garrow_record_batch_builder_get_n_columns(GArrowRecordBatchBuilder* builder);
	int garrow_record_batch_builder_get_n_fields(GArrowRecordBatchBuilder* builder);
	GArrowSchema* garrow_record_batch_builder_get_schema(GArrowRecordBatchBuilder* builder);
	void garrow_record_batch_builder_set_initial_capacity(GArrowRecordBatchBuilder* builder, long capacity);

	// arrow.RecordBatchDatum

	GType garrow_record_batch_datum_get_type();
	GArrowRecordBatchDatum* garrow_record_batch_datum_new(GArrowRecordBatch* value);

	// arrow.RecordBatchFileReader

	GType garrow_record_batch_file_reader_get_type();
	GArrowRecordBatchFileReader* garrow_record_batch_file_reader_new(GArrowSeekableInputStream* file, GError** err);
	uint garrow_record_batch_file_reader_get_n_record_batches(GArrowRecordBatchFileReader* reader);
	GArrowRecordBatch* garrow_record_batch_file_reader_get_record_batch(GArrowRecordBatchFileReader* reader, uint i, GError** err);
	GArrowSchema* garrow_record_batch_file_reader_get_schema(GArrowRecordBatchFileReader* reader);
	GArrowMetadataVersion garrow_record_batch_file_reader_get_version(GArrowRecordBatchFileReader* reader);
	GArrowRecordBatch* garrow_record_batch_file_reader_read_record_batch(GArrowRecordBatchFileReader* reader, uint i, GError** err);

	// arrow.RecordBatchFileWriter

	GType garrow_record_batch_file_writer_get_type();
	GArrowRecordBatchFileWriter* garrow_record_batch_file_writer_new(GArrowOutputStream* sink, GArrowSchema* schema, GError** err);

	// arrow.RecordBatchIterator

	GType garrow_record_batch_iterator_get_type();
	GArrowRecordBatchIterator* garrow_record_batch_iterator_new(GList* recordBatches);
	int garrow_record_batch_iterator_equal(GArrowRecordBatchIterator* iterator, GArrowRecordBatchIterator* otherIterator);
	GArrowRecordBatch* garrow_record_batch_iterator_next(GArrowRecordBatchIterator* iterator, GError** err);
	GList* garrow_record_batch_iterator_to_list(GArrowRecordBatchIterator* iterator, GError** err);

	// arrow.RecordBatchReader

	GType garrow_record_batch_reader_get_type();
	GArrowRecordBatchReader* garrow_record_batch_reader_new(GList* recordBatches, GArrowSchema* schema, GError** err);
	GArrowRecordBatchReader* garrow_record_batch_reader_import(void* cAbiArrayStream, GError** err);
	void* garrow_record_batch_reader_export(GArrowRecordBatchReader* reader, GError** err);
	GArrowRecordBatch* garrow_record_batch_reader_get_next_record_batch(GArrowRecordBatchReader* reader, GError** err);
	GArrowSchema* garrow_record_batch_reader_get_schema(GArrowRecordBatchReader* reader);
	GList* garrow_record_batch_reader_get_sources(GArrowRecordBatchReader* reader);
	GArrowTable* garrow_record_batch_reader_read_all(GArrowRecordBatchReader* reader, GError** err);
	GArrowRecordBatch* garrow_record_batch_reader_read_next(GArrowRecordBatchReader* reader, GError** err);
	GArrowRecordBatch* garrow_record_batch_reader_read_next_record_batch(GArrowRecordBatchReader* reader, GError** err);

	// arrow.RecordBatchStreamReader

	GType garrow_record_batch_stream_reader_get_type();
	GArrowRecordBatchStreamReader* garrow_record_batch_stream_reader_new(GArrowInputStream* stream, GError** err);

	// arrow.RecordBatchStreamWriter

	GType garrow_record_batch_stream_writer_get_type();
	GArrowRecordBatchStreamWriter* garrow_record_batch_stream_writer_new(GArrowOutputStream* sink, GArrowSchema* schema, GError** err);

	// arrow.RecordBatchWriter

	GType garrow_record_batch_writer_get_type();
	int garrow_record_batch_writer_close(GArrowRecordBatchWriter* writer, GError** err);
	int garrow_record_batch_writer_is_closed(GArrowRecordBatchWriter* writer);
	int garrow_record_batch_writer_write_record_batch(GArrowRecordBatchWriter* writer, GArrowRecordBatch* recordBatch, GError** err);
	int garrow_record_batch_writer_write_table(GArrowRecordBatchWriter* writer, GArrowTable* table, GError** err);

	// arrow.ResizableBuffer

	GType garrow_resizable_buffer_get_type();
	GArrowResizableBuffer* garrow_resizable_buffer_new(long initialSize, GError** err);
	int garrow_resizable_buffer_reserve(GArrowResizableBuffer* buffer, long newCapacity, GError** err);
	int garrow_resizable_buffer_resize(GArrowResizableBuffer* buffer, long newSize, GError** err);

	// arrow.RoundOptions

	GType garrow_round_options_get_type();
	GArrowRoundOptions* garrow_round_options_new();

	// arrow.RoundToMultipleOptions

	GType garrow_round_to_multiple_options_get_type();
	GArrowRoundToMultipleOptions* garrow_round_to_multiple_options_new();

	// arrow.RunEndEncodeOptions

	GType garrow_run_end_encode_options_get_type();
	GArrowRunEndEncodeOptions* garrow_run_end_encode_options_new(GArrowDataType* runEndDataType);

	// arrow.RunEndEncodedArray

	GType garrow_run_end_encoded_array_get_type();
	GArrowRunEndEncodedArray* garrow_run_end_encoded_array_new(GArrowDataType* dataType, long logicalLength, GArrowArray* runEnds, GArrowArray* values, long logicalOffset, GError** err);
	GArrowArray* garrow_run_end_encoded_array_decode(GArrowRunEndEncodedArray* array, GError** err);
	long garrow_run_end_encoded_array_find_physical_length(GArrowRunEndEncodedArray* array);
	long garrow_run_end_encoded_array_find_physical_offset(GArrowRunEndEncodedArray* array);
	GArrowArray* garrow_run_end_encoded_array_get_logical_run_ends(GArrowRunEndEncodedArray* array, GError** err);
	GArrowArray* garrow_run_end_encoded_array_get_logical_values(GArrowRunEndEncodedArray* array);
	GArrowArray* garrow_run_end_encoded_array_get_run_ends(GArrowRunEndEncodedArray* array);
	GArrowArray* garrow_run_end_encoded_array_get_values(GArrowRunEndEncodedArray* array);

	// arrow.RunEndEncodedDataType

	GType garrow_run_end_encoded_data_type_get_type();
	GArrowRunEndEncodedDataType* garrow_run_end_encoded_data_type_new(GArrowDataType* runEndDataType, GArrowDataType* valueDataType);
	GArrowDataType* garrow_run_end_encoded_data_type_get_run_end_data_type(GArrowRunEndEncodedDataType* dataType);
	GArrowDataType* garrow_run_end_encoded_data_type_get_value_data_type(GArrowRunEndEncodedDataType* dataType);

	// arrow.S3FileSystem

	GType garrow_s3_file_system_get_type();

	// arrow.S3GlobalOptions

	GType garrow_s3_global_options_get_type();
	GArrowS3GlobalOptions* garrow_s3_global_options_new();

	// arrow.Scalar

	GType garrow_scalar_get_type();
	GArrowScalar* garrow_scalar_parse(GArrowDataType* dataType, ubyte* data, size_t size, GError** err);
	GArrowScalar* garrow_scalar_cast(GArrowScalar* scalar, GArrowDataType* dataType, GArrowCastOptions* options, GError** err);
	int garrow_scalar_equal(GArrowScalar* scalar, GArrowScalar* otherScalar);
	int garrow_scalar_equal_options(GArrowScalar* scalar, GArrowScalar* otherScalar, GArrowEqualOptions* options);
	GArrowDataType* garrow_scalar_get_data_type(GArrowScalar* scalar);
	int garrow_scalar_is_valid(GArrowScalar* scalar);
	char* garrow_scalar_to_string(GArrowScalar* scalar);

	// arrow.ScalarAggregateOptions

	GType garrow_scalar_aggregate_options_get_type();
	GArrowScalarAggregateOptions* garrow_scalar_aggregate_options_new();

	// arrow.ScalarDatum

	GType garrow_scalar_datum_get_type();
	GArrowScalarDatum* garrow_scalar_datum_new(GArrowScalar* value);

	// arrow.Schema

	GType garrow_schema_get_type();
	GArrowSchema* garrow_schema_new(GList* fields);
	GArrowSchema* garrow_schema_import(void* cAbiSchema, GError** err);
	GArrowSchema* garrow_schema_add_field(GArrowSchema* schema, uint i, GArrowField* field, GError** err);
	int garrow_schema_equal(GArrowSchema* schema, GArrowSchema* otherSchema);
	void* garrow_schema_export(GArrowSchema* schema, GError** err);
	GArrowField* garrow_schema_get_field(GArrowSchema* schema, uint i);
	GArrowField* garrow_schema_get_field_by_name(GArrowSchema* schema, const(char)* name);
	int garrow_schema_get_field_index(GArrowSchema* schema, const(char)* name);
	GList* garrow_schema_get_fields(GArrowSchema* schema);
	GHashTable* garrow_schema_get_metadata(GArrowSchema* schema);
	int garrow_schema_has_metadata(GArrowSchema* schema);
	uint garrow_schema_n_fields(GArrowSchema* schema);
	GArrowSchema* garrow_schema_remove_field(GArrowSchema* schema, uint i, GError** err);
	GArrowSchema* garrow_schema_replace_field(GArrowSchema* schema, uint i, GArrowField* field, GError** err);
	char* garrow_schema_to_string(GArrowSchema* schema);
	char* garrow_schema_to_string_metadata(GArrowSchema* schema, int showMetadata);
	GArrowSchema* garrow_schema_with_metadata(GArrowSchema* schema, GHashTable* metadata);

	// arrow.SeekableInputStream

	GType garrow_seekable_input_stream_get_type();
	ulong garrow_seekable_input_stream_get_size(GArrowSeekableInputStream* inputStream, GError** err);
	int garrow_seekable_input_stream_get_support_zero_copy(GArrowSeekableInputStream* inputStream);
	GBytes* garrow_seekable_input_stream_peek(GArrowSeekableInputStream* inputStream, long nBytes, GError** err);
	GArrowBuffer* garrow_seekable_input_stream_read_at(GArrowSeekableInputStream* inputStream, long position, long nBytes, GError** err);
	GBytes* garrow_seekable_input_stream_read_at_bytes(GArrowSeekableInputStream* inputStream, long position, long nBytes, GError** err);

	// arrow.SetLookupOptions

	GType garrow_set_lookup_options_get_type();
	GArrowSetLookupOptions* garrow_set_lookup_options_new(GArrowDatum* valueSet);

	// arrow.SinkNodeOptions

	GType garrow_sink_node_options_get_type();
	GArrowSinkNodeOptions* garrow_sink_node_options_new();
	GArrowRecordBatchReader* garrow_sink_node_options_get_reader(GArrowSinkNodeOptions* options, GArrowSchema* schema);

	// arrow.SlowFileSystem

	GType garrow_slow_file_system_get_type();
	GArrowSlowFileSystem* garrow_slow_file_system_new_average_latency(GArrowFileSystem* baseFileSystem, double averageLatency);
	GArrowSlowFileSystem* garrow_slow_file_system_new_average_latency_and_seed(GArrowFileSystem* baseFileSystem, double averageLatency, int seed);

	// arrow.SortKey

	GType garrow_sort_key_get_type();
	GArrowSortKey* garrow_sort_key_new(const(char)* target, GArrowSortOrder order, GError** err);
	int garrow_sort_key_equal(GArrowSortKey* sortKey, GArrowSortKey* otherSortKey);

	// arrow.SortOptions

	GType garrow_sort_options_get_type();
	GArrowSortOptions* garrow_sort_options_new(GList* sortKeys);
	void garrow_sort_options_add_sort_key(GArrowSortOptions* options, GArrowSortKey* sortKey);
	int garrow_sort_options_equal(GArrowSortOptions* options, GArrowSortOptions* otherOptions);
	GList* garrow_sort_options_get_sort_keys(GArrowSortOptions* options);
	void garrow_sort_options_set_sort_keys(GArrowSortOptions* options, GList* sortKeys);

	// arrow.SourceNodeOptions

	GType garrow_source_node_options_get_type();
	GArrowSourceNodeOptions* garrow_source_node_options_new_record_batch(GArrowRecordBatch* recordBatch);
	GArrowSourceNodeOptions* garrow_source_node_options_new_record_batch_reader(GArrowRecordBatchReader* reader);
	GArrowSourceNodeOptions* garrow_source_node_options_new_table(GArrowTable* table);

	// arrow.SparseUnionArray

	GType garrow_sparse_union_array_get_type();
	GArrowSparseUnionArray* garrow_sparse_union_array_new(GArrowInt8Array* typeIds, GList* fields, GError** err);
	GArrowSparseUnionArray* garrow_sparse_union_array_new_data_type(GArrowSparseUnionDataType* dataType, GArrowInt8Array* typeIds, GList* fields, GError** err);

	// arrow.SparseUnionArrayBuilder

	GType garrow_sparse_union_array_builder_get_type();
	GArrowSparseUnionArrayBuilder* garrow_sparse_union_array_builder_new(GArrowSparseUnionDataType* dataType, GError** err);

	// arrow.SparseUnionDataType

	GType garrow_sparse_union_data_type_get_type();
	GArrowSparseUnionDataType* garrow_sparse_union_data_type_new(GList* fields, byte* typeCodes, size_t nTypeCodes);

	// arrow.SparseUnionScalar

	GType garrow_sparse_union_scalar_get_type();
	GArrowSparseUnionScalar* garrow_sparse_union_scalar_new(GArrowSparseUnionDataType* dataType, byte typeCode, GArrowScalar* value);

	// arrow.SplitPatternOptions

	GType garrow_split_pattern_options_get_type();
	GArrowSplitPatternOptions* garrow_split_pattern_options_new();

	// arrow.StreamDecoder

	GType garrow_stream_decoder_get_type();
	GArrowStreamDecoder* garrow_stream_decoder_new(GArrowStreamListener* listener, GArrowReadOptions* options);
	int garrow_stream_decoder_consume_buffer(GArrowStreamDecoder* decoder, GArrowBuffer* buffer, GError** err);
	int garrow_stream_decoder_consume_bytes(GArrowStreamDecoder* decoder, GBytes* bytes, GError** err);
	size_t garrow_stream_decoder_get_next_required_size(GArrowStreamDecoder* decoder);
	GArrowSchema* garrow_stream_decoder_get_schema(GArrowStreamDecoder* decoder);
	int garrow_stream_decoder_reset(GArrowStreamDecoder* decoder, GError** err);

	// arrow.StreamListener

	GType garrow_stream_listener_get_type();
	int garrow_stream_listener_on_eos(GArrowStreamListener* listener, GError** err);
	int garrow_stream_listener_on_record_batch_decoded(GArrowStreamListener* listener, GArrowRecordBatch* recordBatch, GHashTable* metadata, GError** err);
	int garrow_stream_listener_on_schema_decoded(GArrowStreamListener* listener, GArrowSchema* schema, GArrowSchema* filteredSchema, GError** err);

	// arrow.StrftimeOptions

	GType garrow_strftime_options_get_type();
	GArrowStrftimeOptions* garrow_strftime_options_new();

	// arrow.StringArray

	GType garrow_string_array_get_type();
	GArrowStringArray* garrow_string_array_new(long length, GArrowBuffer* valueOffsets, GArrowBuffer* valueData, GArrowBuffer* nullBitmap, long nNulls);
	char* garrow_string_array_get_string(GArrowStringArray* array, long i);

	// arrow.StringArrayBuilder

	GType garrow_string_array_builder_get_type();
	GArrowStringArrayBuilder* garrow_string_array_builder_new();
	int garrow_string_array_builder_append(GArrowStringArrayBuilder* builder, const(char)* value, GError** err);
	int garrow_string_array_builder_append_string(GArrowStringArrayBuilder* builder, const(char)* value, GError** err);
	int garrow_string_array_builder_append_string_len(GArrowStringArrayBuilder* builder, const(char)* value, int length, GError** err);
	int garrow_string_array_builder_append_strings(GArrowStringArrayBuilder* builder, char** values, long valuesLength, int* isValids, long isValidsLength, GError** err);
	int garrow_string_array_builder_append_value(GArrowStringArrayBuilder* builder, const(char)* value, GError** err);
	int garrow_string_array_builder_append_values(GArrowStringArrayBuilder* builder, char** values, long valuesLength, int* isValids, long isValidsLength, GError** err);

	// arrow.StringDataType

	GType garrow_string_data_type_get_type();
	GArrowStringDataType* garrow_string_data_type_new();

	// arrow.StringDictionaryArrayBuilder

	GType garrow_string_dictionary_array_builder_get_type();
	GArrowStringDictionaryArrayBuilder* garrow_string_dictionary_array_builder_new();
	int garrow_string_dictionary_array_builder_append_array(GArrowStringDictionaryArrayBuilder* builder, GArrowStringArray* array, GError** err);
	int garrow_string_dictionary_array_builder_append_indices(GArrowStringDictionaryArrayBuilder* builder, long* values, long valuesLength, int* isValids, long isValidsLength, GError** err);
	int garrow_string_dictionary_array_builder_append_null(GArrowStringDictionaryArrayBuilder* builder, GError** err);
	int garrow_string_dictionary_array_builder_append_string(GArrowStringDictionaryArrayBuilder* builder, const(char)* value, GError** err);
	int garrow_string_dictionary_array_builder_finish_delta(GArrowStringDictionaryArrayBuilder* builder, GArrowArray** outIndices, GArrowArray** outDelta, GError** err);
	long garrow_string_dictionary_array_builder_get_dictionary_length(GArrowStringDictionaryArrayBuilder* builder);
	int garrow_string_dictionary_array_builder_insert_memo_values(GArrowStringDictionaryArrayBuilder* builder, GArrowStringArray* values, GError** err);
	void garrow_string_dictionary_array_builder_reset_full(GArrowStringDictionaryArrayBuilder* builder);

	// arrow.StringScalar

	GType garrow_string_scalar_get_type();
	GArrowStringScalar* garrow_string_scalar_new(GArrowBuffer* value);

	// arrow.StrptimeOptions

	GType garrow_strptime_options_get_type();
	GArrowStrptimeOptions* garrow_strptime_options_new();

	// arrow.StrptimeTimestampParser

	GType garrow_strptime_timestamp_parser_get_type();
	GArrowStrptimeTimestampParser* garrow_strptime_timestamp_parser_new(const(char)* format);
	const(char)* garrow_strptime_timestamp_parser_get_format(GArrowStrptimeTimestampParser* parser);

	// arrow.StructArray

	GType garrow_struct_array_get_type();
	GArrowStructArray* garrow_struct_array_new(GArrowDataType* dataType, long length, GList* fields, GArrowBuffer* nullBitmap, long nNulls);
	GList* garrow_struct_array_flatten(GArrowStructArray* array, GError** err);
	GArrowArray* garrow_struct_array_get_field(GArrowStructArray* array, int i);
	GList* garrow_struct_array_get_fields(GArrowStructArray* array);

	// arrow.StructArrayBuilder

	GType garrow_struct_array_builder_get_type();
	GArrowStructArrayBuilder* garrow_struct_array_builder_new(GArrowStructDataType* dataType, GError** err);
	int garrow_struct_array_builder_append(GArrowStructArrayBuilder* builder, GError** err);
	int garrow_struct_array_builder_append_null(GArrowStructArrayBuilder* builder, GError** err);
	int garrow_struct_array_builder_append_value(GArrowStructArrayBuilder* builder, GError** err);
	GArrowArrayBuilder* garrow_struct_array_builder_get_field_builder(GArrowStructArrayBuilder* builder, int i);
	GList* garrow_struct_array_builder_get_field_builders(GArrowStructArrayBuilder* builder);

	// arrow.StructDataType

	GType garrow_struct_data_type_get_type();
	GArrowStructDataType* garrow_struct_data_type_new(GList* fields);
	GArrowField* garrow_struct_data_type_get_field(GArrowStructDataType* structDataType, int i);
	GArrowField* garrow_struct_data_type_get_field_by_name(GArrowStructDataType* structDataType, const(char)* name);
	int garrow_struct_data_type_get_field_index(GArrowStructDataType* structDataType, const(char)* name);
	GList* garrow_struct_data_type_get_fields(GArrowStructDataType* structDataType);
	int garrow_struct_data_type_get_n_fields(GArrowStructDataType* structDataType);

	// arrow.StructFieldOptions

	GType garrow_struct_field_options_get_type();
	GArrowStructFieldOptions* garrow_struct_field_options_new();
	void garrow_struct_field_options_set_field_ref(GArrowStructFieldOptions* options, const(char)* fieldRef, GError** err);

	// arrow.StructScalar

	GType garrow_struct_scalar_get_type();
	GArrowStructScalar* garrow_struct_scalar_new(GArrowStructDataType* dataType, GList* value);
	GList* garrow_struct_scalar_get_value(GArrowStructScalar* scalar);

	// arrow.SubTreeFileSystem

	GType garrow_sub_tree_file_system_get_type();
	GArrowSubTreeFileSystem* garrow_sub_tree_file_system_new(const(char)* basePath, GArrowFileSystem* baseFileSystem);

	// arrow.Table

	GType garrow_table_get_type();
	GArrowTable* garrow_table_new_arrays(GArrowSchema* schema, GArrowArray** arrays, size_t nArrays, GError** err);
	GArrowTable* garrow_table_new_chunked_arrays(GArrowSchema* schema, GArrowChunkedArray** chunkedArrays, size_t nChunkedArrays, GError** err);
	GArrowTable* garrow_table_new_record_batches(GArrowSchema* schema, GArrowRecordBatch** recordBatches, size_t nRecordBatches, GError** err);
	GArrowTable* garrow_table_new_values(GArrowSchema* schema, GList* values, GError** err);
	GArrowTable* garrow_table_add_column(GArrowTable* table, uint i, GArrowField* field, GArrowChunkedArray* chunkedArray, GError** err);
	GArrowTable* garrow_table_combine_chunks(GArrowTable* table, GError** err);
	GArrowTable* garrow_table_concatenate(GArrowTable* table, GList* otherTables, GArrowTableConcatenateOptions* options, GError** err);
	int garrow_table_equal(GArrowTable* table, GArrowTable* otherTable);
	int garrow_table_equal_metadata(GArrowTable* table, GArrowTable* otherTable, int checkMetadata);
	GArrowTable* garrow_table_filter(GArrowTable* table, GArrowBooleanArray* filter, GArrowFilterOptions* options, GError** err);
	GArrowTable* garrow_table_filter_chunked_array(GArrowTable* table, GArrowChunkedArray* filter, GArrowFilterOptions* options, GError** err);
	GArrowChunkedArray* garrow_table_get_column_data(GArrowTable* table, int i);
	uint garrow_table_get_n_columns(GArrowTable* table);
	ulong garrow_table_get_n_rows(GArrowTable* table);
	GArrowSchema* garrow_table_get_schema(GArrowTable* table);
	GArrowTable* garrow_table_remove_column(GArrowTable* table, uint i, GError** err);
	GArrowTable* garrow_table_replace_column(GArrowTable* table, uint i, GArrowField* field, GArrowChunkedArray* chunkedArray, GError** err);
	GArrowTable* garrow_table_slice(GArrowTable* table, long offset, long length);
	GArrowUInt64Array* garrow_table_sort_indices(GArrowTable* table, GArrowSortOptions* options, GError** err);
	GArrowTable* garrow_table_take(GArrowTable* table, GArrowArray* indices, GArrowTakeOptions* options, GError** err);
	GArrowTable* garrow_table_take_chunked_array(GArrowTable* table, GArrowChunkedArray* indices, GArrowTakeOptions* options, GError** err);
	char* garrow_table_to_string(GArrowTable* table, GError** err);
	int garrow_table_write_as_feather(GArrowTable* table, GArrowOutputStream* sink, GArrowFeatherWriteProperties* properties, GError** err);

	// arrow.TableBatchReader

	GType garrow_table_batch_reader_get_type();
	GArrowTableBatchReader* garrow_table_batch_reader_new(GArrowTable* table);
	void garrow_table_batch_reader_set_max_chunk_size(GArrowTableBatchReader* reader, long maxChunkSize);

	// arrow.TableConcatenateOptions

	GType garrow_table_concatenate_options_get_type();
	GArrowTableConcatenateOptions* garrow_table_concatenate_options_new();

	// arrow.TableDatum

	GType garrow_table_datum_get_type();
	GArrowTableDatum* garrow_table_datum_new(GArrowTable* value);

	// arrow.TakeOptions

	GType garrow_take_options_get_type();
	GArrowTakeOptions* garrow_take_options_new();

	// arrow.TemporalDataType

	GType garrow_temporal_data_type_get_type();

	// arrow.Tensor

	GType garrow_tensor_get_type();
	GArrowTensor* garrow_tensor_new(GArrowDataType* dataType, GArrowBuffer* data, long* shape, size_t nDimensions, long* strides, size_t nStrides, char** dimensionNames, size_t nDimensionNames);
	int garrow_tensor_equal(GArrowTensor* tensor, GArrowTensor* otherTensor);
	GArrowBuffer* garrow_tensor_get_buffer(GArrowTensor* tensor);
	const(char)* garrow_tensor_get_dimension_name(GArrowTensor* tensor, int i);
	int garrow_tensor_get_n_dimensions(GArrowTensor* tensor);
	long* garrow_tensor_get_shape(GArrowTensor* tensor, int* nDimensions);
	long garrow_tensor_get_size(GArrowTensor* tensor);
	long* garrow_tensor_get_strides(GArrowTensor* tensor, int* nStrides);
	GArrowDataType* garrow_tensor_get_value_data_type(GArrowTensor* tensor);
	GArrowType garrow_tensor_get_value_type(GArrowTensor* tensor);
	int garrow_tensor_is_column_major(GArrowTensor* tensor);
	int garrow_tensor_is_contiguous(GArrowTensor* tensor);
	int garrow_tensor_is_mutable(GArrowTensor* tensor);
	int garrow_tensor_is_row_major(GArrowTensor* tensor);

	// arrow.Time32Array

	GType garrow_time32_array_get_type();
	GArrowTime32Array* garrow_time32_array_new(GArrowTime32DataType* dataType, long length, GArrowBuffer* data, GArrowBuffer* nullBitmap, long nNulls);
	int garrow_time32_array_get_value(GArrowTime32Array* array, long i);
	int* garrow_time32_array_get_values(GArrowTime32Array* array, long* length);

	// arrow.Time32ArrayBuilder

	GType garrow_time32_array_builder_get_type();
	GArrowTime32ArrayBuilder* garrow_time32_array_builder_new(GArrowTime32DataType* dataType);
	int garrow_time32_array_builder_append(GArrowTime32ArrayBuilder* builder, int value, GError** err);
	int garrow_time32_array_builder_append_null(GArrowTime32ArrayBuilder* builder, GError** err);
	int garrow_time32_array_builder_append_nulls(GArrowTime32ArrayBuilder* builder, long n, GError** err);
	int garrow_time32_array_builder_append_value(GArrowTime32ArrayBuilder* builder, int value, GError** err);
	int garrow_time32_array_builder_append_values(GArrowTime32ArrayBuilder* builder, int* values, long valuesLength, int* isValids, long isValidsLength, GError** err);

	// arrow.Time32DataType

	GType garrow_time32_data_type_get_type();
	GArrowTime32DataType* garrow_time32_data_type_new(GArrowTimeUnit unit, GError** err);

	// arrow.Time32Scalar

	GType garrow_time32_scalar_get_type();
	GArrowTime32Scalar* garrow_time32_scalar_new(GArrowTime32DataType* dataType, int value);
	int garrow_time32_scalar_get_value(GArrowTime32Scalar* scalar);

	// arrow.Time64Array

	GType garrow_time64_array_get_type();
	GArrowTime64Array* garrow_time64_array_new(GArrowTime64DataType* dataType, long length, GArrowBuffer* data, GArrowBuffer* nullBitmap, long nNulls);
	long garrow_time64_array_get_value(GArrowTime64Array* array, long i);
	long* garrow_time64_array_get_values(GArrowTime64Array* array, long* length);

	// arrow.Time64ArrayBuilder

	GType garrow_time64_array_builder_get_type();
	GArrowTime64ArrayBuilder* garrow_time64_array_builder_new(GArrowTime64DataType* dataType);
	int garrow_time64_array_builder_append(GArrowTime64ArrayBuilder* builder, long value, GError** err);
	int garrow_time64_array_builder_append_null(GArrowTime64ArrayBuilder* builder, GError** err);
	int garrow_time64_array_builder_append_nulls(GArrowTime64ArrayBuilder* builder, long n, GError** err);
	int garrow_time64_array_builder_append_value(GArrowTime64ArrayBuilder* builder, long value, GError** err);
	int garrow_time64_array_builder_append_values(GArrowTime64ArrayBuilder* builder, long* values, long valuesLength, int* isValids, long isValidsLength, GError** err);

	// arrow.Time64DataType

	GType garrow_time64_data_type_get_type();
	GArrowTime64DataType* garrow_time64_data_type_new(GArrowTimeUnit unit, GError** err);

	// arrow.Time64Scalar

	GType garrow_time64_scalar_get_type();
	GArrowTime64Scalar* garrow_time64_scalar_new(GArrowTime64DataType* dataType, long value);
	long garrow_time64_scalar_get_value(GArrowTime64Scalar* scalar);

	// arrow.TimeDataType

	GType garrow_time_data_type_get_type();
	GArrowTimeUnit garrow_time_data_type_get_unit(GArrowTimeDataType* timeDataType);

	// arrow.TimestampArray

	GType garrow_timestamp_array_get_type();
	GArrowTimestampArray* garrow_timestamp_array_new(GArrowTimestampDataType* dataType, long length, GArrowBuffer* data, GArrowBuffer* nullBitmap, long nNulls);
	long garrow_timestamp_array_get_value(GArrowTimestampArray* array, long i);
	long* garrow_timestamp_array_get_values(GArrowTimestampArray* array, long* length);

	// arrow.TimestampArrayBuilder

	GType garrow_timestamp_array_builder_get_type();
	GArrowTimestampArrayBuilder* garrow_timestamp_array_builder_new(GArrowTimestampDataType* dataType);
	int garrow_timestamp_array_builder_append(GArrowTimestampArrayBuilder* builder, long value, GError** err);
	int garrow_timestamp_array_builder_append_null(GArrowTimestampArrayBuilder* builder, GError** err);
	int garrow_timestamp_array_builder_append_nulls(GArrowTimestampArrayBuilder* builder, long n, GError** err);
	int garrow_timestamp_array_builder_append_value(GArrowTimestampArrayBuilder* builder, long value, GError** err);
	int garrow_timestamp_array_builder_append_values(GArrowTimestampArrayBuilder* builder, long* values, long valuesLength, int* isValids, long isValidsLength, GError** err);

	// arrow.TimestampDataType

	GType garrow_timestamp_data_type_get_type();
	GArrowTimestampDataType* garrow_timestamp_data_type_new(GArrowTimeUnit unit, GTimeZone* timeZone);
	GArrowTimeUnit garrow_timestamp_data_type_get_unit(GArrowTimestampDataType* dataType);

	// arrow.TimestampParser

	GType garrow_timestamp_parser_get_type();
	const(char)* garrow_timestamp_parser_get_kind(GArrowTimestampParser* parser);

	// arrow.TimestampScalar

	GType garrow_timestamp_scalar_get_type();
	GArrowTimestampScalar* garrow_timestamp_scalar_new(GArrowTimestampDataType* dataType, long value);
	long garrow_timestamp_scalar_get_value(GArrowTimestampScalar* scalar);

	// arrow.UInt16Array

	GType garrow_uint16_array_get_type();
	GArrowUInt16Array* garrow_uint16_array_new(long length, GArrowBuffer* data, GArrowBuffer* nullBitmap, long nNulls);
	ushort garrow_uint16_array_get_value(GArrowUInt16Array* array, long i);
	ushort* garrow_uint16_array_get_values(GArrowUInt16Array* array, long* length);
	ulong garrow_uint16_array_sum(GArrowUInt16Array* array, GError** err);

	// arrow.UInt16ArrayBuilder

	GType garrow_uint16_array_builder_get_type();
	GArrowUInt16ArrayBuilder* garrow_uint16_array_builder_new();
	int garrow_uint16_array_builder_append(GArrowUInt16ArrayBuilder* builder, ushort value, GError** err);
	int garrow_uint16_array_builder_append_null(GArrowUInt16ArrayBuilder* builder, GError** err);
	int garrow_uint16_array_builder_append_nulls(GArrowUInt16ArrayBuilder* builder, long n, GError** err);
	int garrow_uint16_array_builder_append_value(GArrowUInt16ArrayBuilder* builder, ushort value, GError** err);
	int garrow_uint16_array_builder_append_values(GArrowUInt16ArrayBuilder* builder, ushort* values, long valuesLength, int* isValids, long isValidsLength, GError** err);

	// arrow.UInt16DataType

	GType garrow_uint16_data_type_get_type();
	GArrowUInt16DataType* garrow_uint16_data_type_new();

	// arrow.UInt16Scalar

	GType garrow_uint16_scalar_get_type();
	GArrowUInt16Scalar* garrow_uint16_scalar_new(ushort value);
	ushort garrow_uint16_scalar_get_value(GArrowUInt16Scalar* scalar);

	// arrow.UInt32Array

	GType garrow_uint32_array_get_type();
	GArrowUInt32Array* garrow_uint32_array_new(long length, GArrowBuffer* data, GArrowBuffer* nullBitmap, long nNulls);
	uint garrow_uint32_array_get_value(GArrowUInt32Array* array, long i);
	uint* garrow_uint32_array_get_values(GArrowUInt32Array* array, long* length);
	ulong garrow_uint32_array_sum(GArrowUInt32Array* array, GError** err);

	// arrow.UInt32ArrayBuilder

	GType garrow_uint32_array_builder_get_type();
	GArrowUInt32ArrayBuilder* garrow_uint32_array_builder_new();
	int garrow_uint32_array_builder_append(GArrowUInt32ArrayBuilder* builder, uint value, GError** err);
	int garrow_uint32_array_builder_append_null(GArrowUInt32ArrayBuilder* builder, GError** err);
	int garrow_uint32_array_builder_append_nulls(GArrowUInt32ArrayBuilder* builder, long n, GError** err);
	int garrow_uint32_array_builder_append_value(GArrowUInt32ArrayBuilder* builder, uint value, GError** err);
	int garrow_uint32_array_builder_append_values(GArrowUInt32ArrayBuilder* builder, uint* values, long valuesLength, int* isValids, long isValidsLength, GError** err);

	// arrow.UInt32DataType

	GType garrow_uint32_data_type_get_type();
	GArrowUInt32DataType* garrow_uint32_data_type_new();

	// arrow.UInt32Scalar

	GType garrow_uint32_scalar_get_type();
	GArrowUInt32Scalar* garrow_uint32_scalar_new(uint value);
	uint garrow_uint32_scalar_get_value(GArrowUInt32Scalar* scalar);

	// arrow.UInt64Array

	GType garrow_uint64_array_get_type();
	GArrowUInt64Array* garrow_uint64_array_new(long length, GArrowBuffer* data, GArrowBuffer* nullBitmap, long nNulls);
	ulong garrow_uint64_array_get_value(GArrowUInt64Array* array, long i);
	ulong* garrow_uint64_array_get_values(GArrowUInt64Array* array, long* length);
	ulong garrow_uint64_array_sum(GArrowUInt64Array* array, GError** err);

	// arrow.UInt64ArrayBuilder

	GType garrow_uint64_array_builder_get_type();
	GArrowUInt64ArrayBuilder* garrow_uint64_array_builder_new();
	int garrow_uint64_array_builder_append(GArrowUInt64ArrayBuilder* builder, ulong value, GError** err);
	int garrow_uint64_array_builder_append_null(GArrowUInt64ArrayBuilder* builder, GError** err);
	int garrow_uint64_array_builder_append_nulls(GArrowUInt64ArrayBuilder* builder, long n, GError** err);
	int garrow_uint64_array_builder_append_value(GArrowUInt64ArrayBuilder* builder, ulong value, GError** err);
	int garrow_uint64_array_builder_append_values(GArrowUInt64ArrayBuilder* builder, ulong* values, long valuesLength, int* isValids, long isValidsLength, GError** err);

	// arrow.UInt64DataType

	GType garrow_uint64_data_type_get_type();
	GArrowUInt64DataType* garrow_uint64_data_type_new();

	// arrow.UInt64Scalar

	GType garrow_uint64_scalar_get_type();
	GArrowUInt64Scalar* garrow_uint64_scalar_new(ulong value);
	ulong garrow_uint64_scalar_get_value(GArrowUInt64Scalar* scalar);

	// arrow.UInt8Array

	GType garrow_uint8_array_get_type();
	GArrowUInt8Array* garrow_uint8_array_new(long length, GArrowBuffer* data, GArrowBuffer* nullBitmap, long nNulls);
	ubyte garrow_uint8_array_get_value(GArrowUInt8Array* array, long i);
	ubyte* garrow_uint8_array_get_values(GArrowUInt8Array* array, long* length);
	ulong garrow_uint8_array_sum(GArrowUInt8Array* array, GError** err);

	// arrow.UInt8ArrayBuilder

	GType garrow_uint8_array_builder_get_type();
	GArrowUInt8ArrayBuilder* garrow_uint8_array_builder_new();
	int garrow_uint8_array_builder_append(GArrowUInt8ArrayBuilder* builder, ubyte value, GError** err);
	int garrow_uint8_array_builder_append_null(GArrowUInt8ArrayBuilder* builder, GError** err);
	int garrow_uint8_array_builder_append_nulls(GArrowUInt8ArrayBuilder* builder, long n, GError** err);
	int garrow_uint8_array_builder_append_value(GArrowUInt8ArrayBuilder* builder, ubyte value, GError** err);
	int garrow_uint8_array_builder_append_values(GArrowUInt8ArrayBuilder* builder, ubyte* values, long valuesLength, int* isValids, long isValidsLength, GError** err);

	// arrow.UInt8DataType

	GType garrow_uint8_data_type_get_type();
	GArrowUInt8DataType* garrow_uint8_data_type_new();

	// arrow.UInt8Scalar

	GType garrow_uint8_scalar_get_type();
	GArrowUInt8Scalar* garrow_uint8_scalar_new(ubyte value);
	ubyte garrow_uint8_scalar_get_value(GArrowUInt8Scalar* scalar);

	// arrow.UIntArrayBuilder

	GType garrow_uint_array_builder_get_type();
	GArrowUIntArrayBuilder* garrow_uint_array_builder_new();
	int garrow_uint_array_builder_append(GArrowUIntArrayBuilder* builder, ulong value, GError** err);
	int garrow_uint_array_builder_append_null(GArrowUIntArrayBuilder* builder, GError** err);
	int garrow_uint_array_builder_append_nulls(GArrowUIntArrayBuilder* builder, long n, GError** err);
	int garrow_uint_array_builder_append_value(GArrowUIntArrayBuilder* builder, ulong value, GError** err);
	int garrow_uint_array_builder_append_values(GArrowUIntArrayBuilder* builder, ulong* values, long valuesLength, int* isValids, long isValidsLength, GError** err);

	// arrow.UTF8NormalizeOptions

	GType garrow_utf8_normalize_options_get_type();
	GArrowUTF8NormalizeOptions* garrow_utf8_normalize_options_new();

	// arrow.UnionArray

	GType garrow_union_array_get_type();
	int garrow_union_array_get_child_id(GArrowUnionArray* array, long i);
	GArrowArray* garrow_union_array_get_field(GArrowUnionArray* array, int i);
	byte garrow_union_array_get_type_code(GArrowUnionArray* array, long i);

	// arrow.UnionArrayBuilder

	GType garrow_union_array_builder_get_type();
	byte garrow_union_array_builder_append_child(GArrowUnionArrayBuilder* builder, GArrowArrayBuilder* child, const(char)* fieldName);
	int garrow_union_array_builder_append_value(GArrowUnionArrayBuilder* builder, byte value, GError** err);

	// arrow.UnionDataType

	GType garrow_union_data_type_get_type();
	GArrowField* garrow_union_data_type_get_field(GArrowUnionDataType* unionDataType, int i);
	GList* garrow_union_data_type_get_fields(GArrowUnionDataType* unionDataType);
	int garrow_union_data_type_get_n_fields(GArrowUnionDataType* unionDataType);
	byte* garrow_union_data_type_get_type_codes(GArrowUnionDataType* unionDataType, size_t* nTypeCodes);

	// arrow.UnionScalar

	GType garrow_union_scalar_get_type();
	byte garrow_union_scalar_get_type_code(GArrowUnionScalar* scalar);
	GArrowScalar* garrow_union_scalar_get_value(GArrowUnionScalar* scalar);

	// arrow.VarianceOptions

	GType garrow_variance_options_get_type();
	GArrowVarianceOptions* garrow_variance_options_new();

	// arrow.Writable

	GType garrow_writable_get_type();
	int garrow_writable_flush(GArrowWritable* writable, GError** err);
	int garrow_writable_write(GArrowWritable* writable, ubyte* data, long nBytes, GError** err);

	// arrow.WritableFile

	GType garrow_writable_file_get_type();
	int garrow_writable_file_write_at(GArrowWritableFile* writableFile, long position, ubyte* data, long nBytes, GError** err);

	// arrow.WriteOptions

	GType garrow_write_options_get_type();
	GArrowWriteOptions* garrow_write_options_new();
}