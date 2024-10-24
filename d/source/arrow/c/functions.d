module arrow.c.functions;

import std.stdio;
import arrow.c.types;
import gtkd.Loader;

version (Windows)
	static immutable LIBRARY_ARROW = ["glib-1800.dll;g.dll;g.dll"];
else version (OSX)
	static immutable LIBRARY_ARROW = ["glib.1800.dylib"];
else
	static immutable LIBRARY_ARROW = ["libarrow-glib.so.1800"];

shared static this()
{
	// arrow.AggregateNodeOptions

	Linker.link(garrow_aggregate_node_options_get_type, "garrow_aggregate_node_options_get_type", LIBRARY_ARROW);
	Linker.link(garrow_aggregate_node_options_new, "garrow_aggregate_node_options_new", LIBRARY_ARROW);

	// arrow.Aggregation

	Linker.link(garrow_aggregation_get_type, "garrow_aggregation_get_type", LIBRARY_ARROW);
	Linker.link(garrow_aggregation_new, "garrow_aggregation_new", LIBRARY_ARROW);

	// arrow.Array

	Linker.link(garrow_array_get_type, "garrow_array_get_type", LIBRARY_ARROW);
	Linker.link(garrow_array_import, "garrow_array_import", LIBRARY_ARROW);
	Linker.link(garrow_array_cast, "garrow_array_cast", LIBRARY_ARROW);
	Linker.link(garrow_array_concatenate, "garrow_array_concatenate", LIBRARY_ARROW);
	Linker.link(garrow_array_count, "garrow_array_count", LIBRARY_ARROW);
	Linker.link(garrow_array_count_values, "garrow_array_count_values", LIBRARY_ARROW);
	Linker.link(garrow_array_dictionary_encode, "garrow_array_dictionary_encode", LIBRARY_ARROW);
	Linker.link(garrow_array_diff_unified, "garrow_array_diff_unified", LIBRARY_ARROW);
	Linker.link(garrow_array_equal, "garrow_array_equal", LIBRARY_ARROW);
	Linker.link(garrow_array_equal_approx, "garrow_array_equal_approx", LIBRARY_ARROW);
	Linker.link(garrow_array_equal_options, "garrow_array_equal_options", LIBRARY_ARROW);
	Linker.link(garrow_array_equal_range, "garrow_array_equal_range", LIBRARY_ARROW);
	Linker.link(garrow_array_export, "garrow_array_export", LIBRARY_ARROW);
	Linker.link(garrow_array_filter, "garrow_array_filter", LIBRARY_ARROW);
	Linker.link(garrow_array_get_length, "garrow_array_get_length", LIBRARY_ARROW);
	Linker.link(garrow_array_get_n_nulls, "garrow_array_get_n_nulls", LIBRARY_ARROW);
	Linker.link(garrow_array_get_null_bitmap, "garrow_array_get_null_bitmap", LIBRARY_ARROW);
	Linker.link(garrow_array_get_offset, "garrow_array_get_offset", LIBRARY_ARROW);
	Linker.link(garrow_array_get_value_data_type, "garrow_array_get_value_data_type", LIBRARY_ARROW);
	Linker.link(garrow_array_get_value_type, "garrow_array_get_value_type", LIBRARY_ARROW);
	Linker.link(garrow_array_is_in, "garrow_array_is_in", LIBRARY_ARROW);
	Linker.link(garrow_array_is_in_chunked_array, "garrow_array_is_in_chunked_array", LIBRARY_ARROW);
	Linker.link(garrow_array_is_null, "garrow_array_is_null", LIBRARY_ARROW);
	Linker.link(garrow_array_is_valid, "garrow_array_is_valid", LIBRARY_ARROW);
	Linker.link(garrow_array_run_end_encode, "garrow_array_run_end_encode", LIBRARY_ARROW);
	Linker.link(garrow_array_slice, "garrow_array_slice", LIBRARY_ARROW);
	Linker.link(garrow_array_sort_indices, "garrow_array_sort_indices", LIBRARY_ARROW);
	Linker.link(garrow_array_sort_to_indices, "garrow_array_sort_to_indices", LIBRARY_ARROW);
	Linker.link(garrow_array_take, "garrow_array_take", LIBRARY_ARROW);
	Linker.link(garrow_array_take_chunked_array, "garrow_array_take_chunked_array", LIBRARY_ARROW);
	Linker.link(garrow_array_to_string, "garrow_array_to_string", LIBRARY_ARROW);
	Linker.link(garrow_array_unique, "garrow_array_unique", LIBRARY_ARROW);
	Linker.link(garrow_array_view, "garrow_array_view", LIBRARY_ARROW);

	// arrow.ArrayBuilder

	Linker.link(garrow_array_builder_get_type, "garrow_array_builder_get_type", LIBRARY_ARROW);
	Linker.link(garrow_array_builder_append_empty_value, "garrow_array_builder_append_empty_value", LIBRARY_ARROW);
	Linker.link(garrow_array_builder_append_empty_values, "garrow_array_builder_append_empty_values", LIBRARY_ARROW);
	Linker.link(garrow_array_builder_append_null, "garrow_array_builder_append_null", LIBRARY_ARROW);
	Linker.link(garrow_array_builder_append_nulls, "garrow_array_builder_append_nulls", LIBRARY_ARROW);
	Linker.link(garrow_array_builder_finish, "garrow_array_builder_finish", LIBRARY_ARROW);
	Linker.link(garrow_array_builder_get_capacity, "garrow_array_builder_get_capacity", LIBRARY_ARROW);
	Linker.link(garrow_array_builder_get_child, "garrow_array_builder_get_child", LIBRARY_ARROW);
	Linker.link(garrow_array_builder_get_children, "garrow_array_builder_get_children", LIBRARY_ARROW);
	Linker.link(garrow_array_builder_get_length, "garrow_array_builder_get_length", LIBRARY_ARROW);
	Linker.link(garrow_array_builder_get_n_nulls, "garrow_array_builder_get_n_nulls", LIBRARY_ARROW);
	Linker.link(garrow_array_builder_get_value_data_type, "garrow_array_builder_get_value_data_type", LIBRARY_ARROW);
	Linker.link(garrow_array_builder_get_value_type, "garrow_array_builder_get_value_type", LIBRARY_ARROW);
	Linker.link(garrow_array_builder_reserve, "garrow_array_builder_reserve", LIBRARY_ARROW);
	Linker.link(garrow_array_builder_reset, "garrow_array_builder_reset", LIBRARY_ARROW);
	Linker.link(garrow_array_builder_resize, "garrow_array_builder_resize", LIBRARY_ARROW);

	// arrow.ArrayDatum

	Linker.link(garrow_array_datum_get_type, "garrow_array_datum_get_type", LIBRARY_ARROW);
	Linker.link(garrow_array_datum_new, "garrow_array_datum_new", LIBRARY_ARROW);

	// arrow.ArraySortOptions

	Linker.link(garrow_array_sort_options_get_type, "garrow_array_sort_options_get_type", LIBRARY_ARROW);
	Linker.link(garrow_array_sort_options_new, "garrow_array_sort_options_new", LIBRARY_ARROW);
	Linker.link(garrow_array_sort_options_equal, "garrow_array_sort_options_equal", LIBRARY_ARROW);

	// arrow.AzureFileSystem

	Linker.link(garrow_azure_file_system_get_type, "garrow_azure_file_system_get_type", LIBRARY_ARROW);

	// arrow.BaseBinaryScalar

	Linker.link(garrow_base_binary_scalar_get_type, "garrow_base_binary_scalar_get_type", LIBRARY_ARROW);
	Linker.link(garrow_base_binary_scalar_get_value, "garrow_base_binary_scalar_get_value", LIBRARY_ARROW);

	// arrow.BaseListScalar

	Linker.link(garrow_base_list_scalar_get_type, "garrow_base_list_scalar_get_type", LIBRARY_ARROW);
	Linker.link(garrow_base_list_scalar_get_value, "garrow_base_list_scalar_get_value", LIBRARY_ARROW);

	// arrow.BinaryArray

	Linker.link(garrow_binary_array_get_type, "garrow_binary_array_get_type", LIBRARY_ARROW);
	Linker.link(garrow_binary_array_new, "garrow_binary_array_new", LIBRARY_ARROW);
	Linker.link(garrow_binary_array_get_buffer, "garrow_binary_array_get_buffer", LIBRARY_ARROW);
	Linker.link(garrow_binary_array_get_data_buffer, "garrow_binary_array_get_data_buffer", LIBRARY_ARROW);
	Linker.link(garrow_binary_array_get_offsets_buffer, "garrow_binary_array_get_offsets_buffer", LIBRARY_ARROW);
	Linker.link(garrow_binary_array_get_value, "garrow_binary_array_get_value", LIBRARY_ARROW);

	// arrow.BinaryArrayBuilder

	Linker.link(garrow_binary_array_builder_get_type, "garrow_binary_array_builder_get_type", LIBRARY_ARROW);
	Linker.link(garrow_binary_array_builder_new, "garrow_binary_array_builder_new", LIBRARY_ARROW);
	Linker.link(garrow_binary_array_builder_append, "garrow_binary_array_builder_append", LIBRARY_ARROW);
	Linker.link(garrow_binary_array_builder_append_null, "garrow_binary_array_builder_append_null", LIBRARY_ARROW);
	Linker.link(garrow_binary_array_builder_append_nulls, "garrow_binary_array_builder_append_nulls", LIBRARY_ARROW);
	Linker.link(garrow_binary_array_builder_append_value, "garrow_binary_array_builder_append_value", LIBRARY_ARROW);
	Linker.link(garrow_binary_array_builder_append_value_bytes, "garrow_binary_array_builder_append_value_bytes", LIBRARY_ARROW);
	Linker.link(garrow_binary_array_builder_append_values, "garrow_binary_array_builder_append_values", LIBRARY_ARROW);

	// arrow.BinaryDataType

	Linker.link(garrow_binary_data_type_get_type, "garrow_binary_data_type_get_type", LIBRARY_ARROW);
	Linker.link(garrow_binary_data_type_new, "garrow_binary_data_type_new", LIBRARY_ARROW);

	// arrow.BinaryDictionaryArrayBuilder

	Linker.link(garrow_binary_dictionary_array_builder_get_type, "garrow_binary_dictionary_array_builder_get_type", LIBRARY_ARROW);
	Linker.link(garrow_binary_dictionary_array_builder_new, "garrow_binary_dictionary_array_builder_new", LIBRARY_ARROW);
	Linker.link(garrow_binary_dictionary_array_builder_append_array, "garrow_binary_dictionary_array_builder_append_array", LIBRARY_ARROW);
	Linker.link(garrow_binary_dictionary_array_builder_append_indices, "garrow_binary_dictionary_array_builder_append_indices", LIBRARY_ARROW);
	Linker.link(garrow_binary_dictionary_array_builder_append_null, "garrow_binary_dictionary_array_builder_append_null", LIBRARY_ARROW);
	Linker.link(garrow_binary_dictionary_array_builder_append_value, "garrow_binary_dictionary_array_builder_append_value", LIBRARY_ARROW);
	Linker.link(garrow_binary_dictionary_array_builder_append_value_bytes, "garrow_binary_dictionary_array_builder_append_value_bytes", LIBRARY_ARROW);
	Linker.link(garrow_binary_dictionary_array_builder_finish_delta, "garrow_binary_dictionary_array_builder_finish_delta", LIBRARY_ARROW);
	Linker.link(garrow_binary_dictionary_array_builder_get_dictionary_length, "garrow_binary_dictionary_array_builder_get_dictionary_length", LIBRARY_ARROW);
	Linker.link(garrow_binary_dictionary_array_builder_insert_memo_values, "garrow_binary_dictionary_array_builder_insert_memo_values", LIBRARY_ARROW);
	Linker.link(garrow_binary_dictionary_array_builder_reset_full, "garrow_binary_dictionary_array_builder_reset_full", LIBRARY_ARROW);

	// arrow.BinaryScalar

	Linker.link(garrow_binary_scalar_get_type, "garrow_binary_scalar_get_type", LIBRARY_ARROW);
	Linker.link(garrow_binary_scalar_new, "garrow_binary_scalar_new", LIBRARY_ARROW);

	// arrow.BooleanArray

	Linker.link(garrow_boolean_array_get_type, "garrow_boolean_array_get_type", LIBRARY_ARROW);
	Linker.link(garrow_boolean_array_new, "garrow_boolean_array_new", LIBRARY_ARROW);
	Linker.link(garrow_boolean_array_and, "garrow_boolean_array_and", LIBRARY_ARROW);
	Linker.link(garrow_boolean_array_get_value, "garrow_boolean_array_get_value", LIBRARY_ARROW);
	Linker.link(garrow_boolean_array_get_values, "garrow_boolean_array_get_values", LIBRARY_ARROW);
	Linker.link(garrow_boolean_array_invert, "garrow_boolean_array_invert", LIBRARY_ARROW);
	Linker.link(garrow_boolean_array_or, "garrow_boolean_array_or", LIBRARY_ARROW);
	Linker.link(garrow_boolean_array_xor, "garrow_boolean_array_xor", LIBRARY_ARROW);

	// arrow.BooleanArrayBuilder

	Linker.link(garrow_boolean_array_builder_get_type, "garrow_boolean_array_builder_get_type", LIBRARY_ARROW);
	Linker.link(garrow_boolean_array_builder_new, "garrow_boolean_array_builder_new", LIBRARY_ARROW);
	Linker.link(garrow_boolean_array_builder_append, "garrow_boolean_array_builder_append", LIBRARY_ARROW);
	Linker.link(garrow_boolean_array_builder_append_null, "garrow_boolean_array_builder_append_null", LIBRARY_ARROW);
	Linker.link(garrow_boolean_array_builder_append_nulls, "garrow_boolean_array_builder_append_nulls", LIBRARY_ARROW);
	Linker.link(garrow_boolean_array_builder_append_value, "garrow_boolean_array_builder_append_value", LIBRARY_ARROW);
	Linker.link(garrow_boolean_array_builder_append_values, "garrow_boolean_array_builder_append_values", LIBRARY_ARROW);

	// arrow.BooleanDataType

	Linker.link(garrow_boolean_data_type_get_type, "garrow_boolean_data_type_get_type", LIBRARY_ARROW);
	Linker.link(garrow_boolean_data_type_new, "garrow_boolean_data_type_new", LIBRARY_ARROW);

	// arrow.BooleanScalar

	Linker.link(garrow_boolean_scalar_get_type, "garrow_boolean_scalar_get_type", LIBRARY_ARROW);
	Linker.link(garrow_boolean_scalar_new, "garrow_boolean_scalar_new", LIBRARY_ARROW);
	Linker.link(garrow_boolean_scalar_get_value, "garrow_boolean_scalar_get_value", LIBRARY_ARROW);

	// arrow.Buffer

	Linker.link(garrow_buffer_get_type, "garrow_buffer_get_type", LIBRARY_ARROW);
	Linker.link(garrow_buffer_new, "garrow_buffer_new", LIBRARY_ARROW);
	Linker.link(garrow_buffer_new_bytes, "garrow_buffer_new_bytes", LIBRARY_ARROW);
	Linker.link(garrow_buffer_copy, "garrow_buffer_copy", LIBRARY_ARROW);
	Linker.link(garrow_buffer_equal, "garrow_buffer_equal", LIBRARY_ARROW);
	Linker.link(garrow_buffer_equal_n_bytes, "garrow_buffer_equal_n_bytes", LIBRARY_ARROW);
	Linker.link(garrow_buffer_get_capacity, "garrow_buffer_get_capacity", LIBRARY_ARROW);
	Linker.link(garrow_buffer_get_data, "garrow_buffer_get_data", LIBRARY_ARROW);
	Linker.link(garrow_buffer_get_mutable_data, "garrow_buffer_get_mutable_data", LIBRARY_ARROW);
	Linker.link(garrow_buffer_get_parent, "garrow_buffer_get_parent", LIBRARY_ARROW);
	Linker.link(garrow_buffer_get_size, "garrow_buffer_get_size", LIBRARY_ARROW);
	Linker.link(garrow_buffer_is_mutable, "garrow_buffer_is_mutable", LIBRARY_ARROW);
	Linker.link(garrow_buffer_slice, "garrow_buffer_slice", LIBRARY_ARROW);

	// arrow.BufferInputStream

	Linker.link(garrow_buffer_input_stream_get_type, "garrow_buffer_input_stream_get_type", LIBRARY_ARROW);
	Linker.link(garrow_buffer_input_stream_new, "garrow_buffer_input_stream_new", LIBRARY_ARROW);
	Linker.link(garrow_buffer_input_stream_get_buffer, "garrow_buffer_input_stream_get_buffer", LIBRARY_ARROW);

	// arrow.BufferOutputStream

	Linker.link(garrow_buffer_output_stream_get_type, "garrow_buffer_output_stream_get_type", LIBRARY_ARROW);
	Linker.link(garrow_buffer_output_stream_new, "garrow_buffer_output_stream_new", LIBRARY_ARROW);

	// arrow.CSVReadOptions

	Linker.link(garrow_csv_read_options_get_type, "garrow_csv_read_options_get_type", LIBRARY_ARROW);
	Linker.link(garrow_csv_read_options_new, "garrow_csv_read_options_new", LIBRARY_ARROW);
	Linker.link(garrow_csv_read_options_add_column_name, "garrow_csv_read_options_add_column_name", LIBRARY_ARROW);
	Linker.link(garrow_csv_read_options_add_column_type, "garrow_csv_read_options_add_column_type", LIBRARY_ARROW);
	Linker.link(garrow_csv_read_options_add_false_value, "garrow_csv_read_options_add_false_value", LIBRARY_ARROW);
	Linker.link(garrow_csv_read_options_add_null_value, "garrow_csv_read_options_add_null_value", LIBRARY_ARROW);
	Linker.link(garrow_csv_read_options_add_schema, "garrow_csv_read_options_add_schema", LIBRARY_ARROW);
	Linker.link(garrow_csv_read_options_add_timestamp_parser, "garrow_csv_read_options_add_timestamp_parser", LIBRARY_ARROW);
	Linker.link(garrow_csv_read_options_add_true_value, "garrow_csv_read_options_add_true_value", LIBRARY_ARROW);
	Linker.link(garrow_csv_read_options_get_column_names, "garrow_csv_read_options_get_column_names", LIBRARY_ARROW);
	Linker.link(garrow_csv_read_options_get_column_types, "garrow_csv_read_options_get_column_types", LIBRARY_ARROW);
	Linker.link(garrow_csv_read_options_get_false_values, "garrow_csv_read_options_get_false_values", LIBRARY_ARROW);
	Linker.link(garrow_csv_read_options_get_null_values, "garrow_csv_read_options_get_null_values", LIBRARY_ARROW);
	Linker.link(garrow_csv_read_options_get_timestamp_parsers, "garrow_csv_read_options_get_timestamp_parsers", LIBRARY_ARROW);
	Linker.link(garrow_csv_read_options_get_true_values, "garrow_csv_read_options_get_true_values", LIBRARY_ARROW);
	Linker.link(garrow_csv_read_options_set_column_names, "garrow_csv_read_options_set_column_names", LIBRARY_ARROW);
	Linker.link(garrow_csv_read_options_set_false_values, "garrow_csv_read_options_set_false_values", LIBRARY_ARROW);
	Linker.link(garrow_csv_read_options_set_null_values, "garrow_csv_read_options_set_null_values", LIBRARY_ARROW);
	Linker.link(garrow_csv_read_options_set_timestamp_parsers, "garrow_csv_read_options_set_timestamp_parsers", LIBRARY_ARROW);
	Linker.link(garrow_csv_read_options_set_true_values, "garrow_csv_read_options_set_true_values", LIBRARY_ARROW);

	// arrow.CSVReader

	Linker.link(garrow_csv_reader_get_type, "garrow_csv_reader_get_type", LIBRARY_ARROW);
	Linker.link(garrow_csv_reader_new, "garrow_csv_reader_new", LIBRARY_ARROW);
	Linker.link(garrow_csv_reader_read, "garrow_csv_reader_read", LIBRARY_ARROW);

	// arrow.CallExpression

	Linker.link(garrow_call_expression_get_type, "garrow_call_expression_get_type", LIBRARY_ARROW);
	Linker.link(garrow_call_expression_new, "garrow_call_expression_new", LIBRARY_ARROW);

	// arrow.CastOptions

	Linker.link(garrow_cast_options_get_type, "garrow_cast_options_get_type", LIBRARY_ARROW);
	Linker.link(garrow_cast_options_new, "garrow_cast_options_new", LIBRARY_ARROW);

	// arrow.ChunkedArray

	Linker.link(garrow_chunked_array_get_type, "garrow_chunked_array_get_type", LIBRARY_ARROW);
	Linker.link(garrow_chunked_array_new, "garrow_chunked_array_new", LIBRARY_ARROW);
	Linker.link(garrow_chunked_array_new_empty, "garrow_chunked_array_new_empty", LIBRARY_ARROW);
	Linker.link(garrow_chunked_array_combine, "garrow_chunked_array_combine", LIBRARY_ARROW);
	Linker.link(garrow_chunked_array_equal, "garrow_chunked_array_equal", LIBRARY_ARROW);
	Linker.link(garrow_chunked_array_filter, "garrow_chunked_array_filter", LIBRARY_ARROW);
	Linker.link(garrow_chunked_array_filter_chunked_array, "garrow_chunked_array_filter_chunked_array", LIBRARY_ARROW);
	Linker.link(garrow_chunked_array_get_chunk, "garrow_chunked_array_get_chunk", LIBRARY_ARROW);
	Linker.link(garrow_chunked_array_get_chunks, "garrow_chunked_array_get_chunks", LIBRARY_ARROW);
	Linker.link(garrow_chunked_array_get_length, "garrow_chunked_array_get_length", LIBRARY_ARROW);
	Linker.link(garrow_chunked_array_get_n_chunks, "garrow_chunked_array_get_n_chunks", LIBRARY_ARROW);
	Linker.link(garrow_chunked_array_get_n_nulls, "garrow_chunked_array_get_n_nulls", LIBRARY_ARROW);
	Linker.link(garrow_chunked_array_get_n_rows, "garrow_chunked_array_get_n_rows", LIBRARY_ARROW);
	Linker.link(garrow_chunked_array_get_value_data_type, "garrow_chunked_array_get_value_data_type", LIBRARY_ARROW);
	Linker.link(garrow_chunked_array_get_value_type, "garrow_chunked_array_get_value_type", LIBRARY_ARROW);
	Linker.link(garrow_chunked_array_slice, "garrow_chunked_array_slice", LIBRARY_ARROW);
	Linker.link(garrow_chunked_array_sort_indices, "garrow_chunked_array_sort_indices", LIBRARY_ARROW);
	Linker.link(garrow_chunked_array_take, "garrow_chunked_array_take", LIBRARY_ARROW);
	Linker.link(garrow_chunked_array_take_chunked_array, "garrow_chunked_array_take_chunked_array", LIBRARY_ARROW);
	Linker.link(garrow_chunked_array_to_string, "garrow_chunked_array_to_string", LIBRARY_ARROW);

	// arrow.ChunkedArrayDatum

	Linker.link(garrow_chunked_array_datum_get_type, "garrow_chunked_array_datum_get_type", LIBRARY_ARROW);
	Linker.link(garrow_chunked_array_datum_new, "garrow_chunked_array_datum_new", LIBRARY_ARROW);

	// arrow.Codec

	Linker.link(garrow_codec_get_type, "garrow_codec_get_type", LIBRARY_ARROW);
	Linker.link(garrow_codec_new, "garrow_codec_new", LIBRARY_ARROW);
	Linker.link(garrow_codec_get_compression_level, "garrow_codec_get_compression_level", LIBRARY_ARROW);
	Linker.link(garrow_codec_get_compression_type, "garrow_codec_get_compression_type", LIBRARY_ARROW);
	Linker.link(garrow_codec_get_name, "garrow_codec_get_name", LIBRARY_ARROW);

	// arrow.CompressedInputStream

	Linker.link(garrow_compressed_input_stream_get_type, "garrow_compressed_input_stream_get_type", LIBRARY_ARROW);
	Linker.link(garrow_compressed_input_stream_new, "garrow_compressed_input_stream_new", LIBRARY_ARROW);

	// arrow.CompressedOutputStream

	Linker.link(garrow_compressed_output_stream_get_type, "garrow_compressed_output_stream_get_type", LIBRARY_ARROW);
	Linker.link(garrow_compressed_output_stream_new, "garrow_compressed_output_stream_new", LIBRARY_ARROW);

	// arrow.CountOptions

	Linker.link(garrow_count_options_get_type, "garrow_count_options_get_type", LIBRARY_ARROW);
	Linker.link(garrow_count_options_new, "garrow_count_options_new", LIBRARY_ARROW);

	// arrow.DataType

	Linker.link(garrow_data_type_get_type, "garrow_data_type_get_type", LIBRARY_ARROW);
	Linker.link(garrow_data_type_import, "garrow_data_type_import", LIBRARY_ARROW);
	Linker.link(garrow_data_type_equal, "garrow_data_type_equal", LIBRARY_ARROW);
	Linker.link(garrow_data_type_export, "garrow_data_type_export", LIBRARY_ARROW);
	Linker.link(garrow_data_type_get_id, "garrow_data_type_get_id", LIBRARY_ARROW);
	Linker.link(garrow_data_type_get_name, "garrow_data_type_get_name", LIBRARY_ARROW);
	Linker.link(garrow_data_type_to_string, "garrow_data_type_to_string", LIBRARY_ARROW);

	// arrow.Date32Array

	Linker.link(garrow_date32_array_get_type, "garrow_date32_array_get_type", LIBRARY_ARROW);
	Linker.link(garrow_date32_array_new, "garrow_date32_array_new", LIBRARY_ARROW);
	Linker.link(garrow_date32_array_get_value, "garrow_date32_array_get_value", LIBRARY_ARROW);
	Linker.link(garrow_date32_array_get_values, "garrow_date32_array_get_values", LIBRARY_ARROW);

	// arrow.Date32ArrayBuilder

	Linker.link(garrow_date32_array_builder_get_type, "garrow_date32_array_builder_get_type", LIBRARY_ARROW);
	Linker.link(garrow_date32_array_builder_new, "garrow_date32_array_builder_new", LIBRARY_ARROW);
	Linker.link(garrow_date32_array_builder_append, "garrow_date32_array_builder_append", LIBRARY_ARROW);
	Linker.link(garrow_date32_array_builder_append_null, "garrow_date32_array_builder_append_null", LIBRARY_ARROW);
	Linker.link(garrow_date32_array_builder_append_nulls, "garrow_date32_array_builder_append_nulls", LIBRARY_ARROW);
	Linker.link(garrow_date32_array_builder_append_value, "garrow_date32_array_builder_append_value", LIBRARY_ARROW);
	Linker.link(garrow_date32_array_builder_append_values, "garrow_date32_array_builder_append_values", LIBRARY_ARROW);

	// arrow.Date32DataType

	Linker.link(garrow_date32_data_type_get_type, "garrow_date32_data_type_get_type", LIBRARY_ARROW);
	Linker.link(garrow_date32_data_type_new, "garrow_date32_data_type_new", LIBRARY_ARROW);

	// arrow.Date32Scalar

	Linker.link(garrow_date32_scalar_get_type, "garrow_date32_scalar_get_type", LIBRARY_ARROW);
	Linker.link(garrow_date32_scalar_new, "garrow_date32_scalar_new", LIBRARY_ARROW);
	Linker.link(garrow_date32_scalar_get_value, "garrow_date32_scalar_get_value", LIBRARY_ARROW);

	// arrow.Date64Array

	Linker.link(garrow_date64_array_get_type, "garrow_date64_array_get_type", LIBRARY_ARROW);
	Linker.link(garrow_date64_array_new, "garrow_date64_array_new", LIBRARY_ARROW);
	Linker.link(garrow_date64_array_get_value, "garrow_date64_array_get_value", LIBRARY_ARROW);
	Linker.link(garrow_date64_array_get_values, "garrow_date64_array_get_values", LIBRARY_ARROW);

	// arrow.Date64ArrayBuilder

	Linker.link(garrow_date64_array_builder_get_type, "garrow_date64_array_builder_get_type", LIBRARY_ARROW);
	Linker.link(garrow_date64_array_builder_new, "garrow_date64_array_builder_new", LIBRARY_ARROW);
	Linker.link(garrow_date64_array_builder_append, "garrow_date64_array_builder_append", LIBRARY_ARROW);
	Linker.link(garrow_date64_array_builder_append_null, "garrow_date64_array_builder_append_null", LIBRARY_ARROW);
	Linker.link(garrow_date64_array_builder_append_nulls, "garrow_date64_array_builder_append_nulls", LIBRARY_ARROW);
	Linker.link(garrow_date64_array_builder_append_value, "garrow_date64_array_builder_append_value", LIBRARY_ARROW);
	Linker.link(garrow_date64_array_builder_append_values, "garrow_date64_array_builder_append_values", LIBRARY_ARROW);

	// arrow.Date64DataType

	Linker.link(garrow_date64_data_type_get_type, "garrow_date64_data_type_get_type", LIBRARY_ARROW);
	Linker.link(garrow_date64_data_type_new, "garrow_date64_data_type_new", LIBRARY_ARROW);

	// arrow.Date64Scalar

	Linker.link(garrow_date64_scalar_get_type, "garrow_date64_scalar_get_type", LIBRARY_ARROW);
	Linker.link(garrow_date64_scalar_new, "garrow_date64_scalar_new", LIBRARY_ARROW);
	Linker.link(garrow_date64_scalar_get_value, "garrow_date64_scalar_get_value", LIBRARY_ARROW);

	// arrow.Datum

	Linker.link(garrow_datum_get_type, "garrow_datum_get_type", LIBRARY_ARROW);
	Linker.link(garrow_datum_equal, "garrow_datum_equal", LIBRARY_ARROW);
	Linker.link(garrow_datum_is_array, "garrow_datum_is_array", LIBRARY_ARROW);
	Linker.link(garrow_datum_is_array_like, "garrow_datum_is_array_like", LIBRARY_ARROW);
	Linker.link(garrow_datum_is_scalar, "garrow_datum_is_scalar", LIBRARY_ARROW);
	Linker.link(garrow_datum_is_value, "garrow_datum_is_value", LIBRARY_ARROW);
	Linker.link(garrow_datum_to_string, "garrow_datum_to_string", LIBRARY_ARROW);

	// arrow.DayMillisecond

	Linker.link(garrow_day_millisecond_get_type, "garrow_day_millisecond_get_type", LIBRARY_ARROW);
	Linker.link(garrow_day_millisecond_new, "garrow_day_millisecond_new", LIBRARY_ARROW);
	Linker.link(garrow_day_millisecond_equal, "garrow_day_millisecond_equal", LIBRARY_ARROW);
	Linker.link(garrow_day_millisecond_less_than, "garrow_day_millisecond_less_than", LIBRARY_ARROW);

	// arrow.DayTimeIntervalArray

	Linker.link(garrow_day_time_interval_array_get_type, "garrow_day_time_interval_array_get_type", LIBRARY_ARROW);
	Linker.link(garrow_day_time_interval_array_new, "garrow_day_time_interval_array_new", LIBRARY_ARROW);
	Linker.link(garrow_day_time_interval_array_get_value, "garrow_day_time_interval_array_get_value", LIBRARY_ARROW);
	Linker.link(garrow_day_time_interval_array_get_values, "garrow_day_time_interval_array_get_values", LIBRARY_ARROW);

	// arrow.DayTimeIntervalArrayBuilder

	Linker.link(garrow_day_time_interval_array_builder_get_type, "garrow_day_time_interval_array_builder_get_type", LIBRARY_ARROW);
	Linker.link(garrow_day_time_interval_array_builder_new, "garrow_day_time_interval_array_builder_new", LIBRARY_ARROW);
	Linker.link(garrow_day_time_interval_array_builder_append_value, "garrow_day_time_interval_array_builder_append_value", LIBRARY_ARROW);
	Linker.link(garrow_day_time_interval_array_builder_append_values, "garrow_day_time_interval_array_builder_append_values", LIBRARY_ARROW);

	// arrow.DayTimeIntervalDataType

	Linker.link(garrow_day_time_interval_data_type_get_type, "garrow_day_time_interval_data_type_get_type", LIBRARY_ARROW);
	Linker.link(garrow_day_time_interval_data_type_new, "garrow_day_time_interval_data_type_new", LIBRARY_ARROW);

	// arrow.DayTimeIntervalScalar

	Linker.link(garrow_day_time_interval_scalar_get_type, "garrow_day_time_interval_scalar_get_type", LIBRARY_ARROW);
	Linker.link(garrow_day_time_interval_scalar_new, "garrow_day_time_interval_scalar_new", LIBRARY_ARROW);
	Linker.link(garrow_day_time_interval_scalar_get_value, "garrow_day_time_interval_scalar_get_value", LIBRARY_ARROW);

	// arrow.Decimal128

	Linker.link(garrow_decimal128_get_type, "garrow_decimal128_get_type", LIBRARY_ARROW);
	Linker.link(garrow_decimal128_new_integer, "garrow_decimal128_new_integer", LIBRARY_ARROW);
	Linker.link(garrow_decimal128_new_string, "garrow_decimal128_new_string", LIBRARY_ARROW);
	Linker.link(garrow_decimal128_abs, "garrow_decimal128_abs", LIBRARY_ARROW);
	Linker.link(garrow_decimal128_copy, "garrow_decimal128_copy", LIBRARY_ARROW);
	Linker.link(garrow_decimal128_divide, "garrow_decimal128_divide", LIBRARY_ARROW);
	Linker.link(garrow_decimal128_equal, "garrow_decimal128_equal", LIBRARY_ARROW);
	Linker.link(garrow_decimal128_greater_than, "garrow_decimal128_greater_than", LIBRARY_ARROW);
	Linker.link(garrow_decimal128_greater_than_or_equal, "garrow_decimal128_greater_than_or_equal", LIBRARY_ARROW);
	Linker.link(garrow_decimal128_less_than, "garrow_decimal128_less_than", LIBRARY_ARROW);
	Linker.link(garrow_decimal128_less_than_or_equal, "garrow_decimal128_less_than_or_equal", LIBRARY_ARROW);
	Linker.link(garrow_decimal128_minus, "garrow_decimal128_minus", LIBRARY_ARROW);
	Linker.link(garrow_decimal128_multiply, "garrow_decimal128_multiply", LIBRARY_ARROW);
	Linker.link(garrow_decimal128_negate, "garrow_decimal128_negate", LIBRARY_ARROW);
	Linker.link(garrow_decimal128_not_equal, "garrow_decimal128_not_equal", LIBRARY_ARROW);
	Linker.link(garrow_decimal128_plus, "garrow_decimal128_plus", LIBRARY_ARROW);
	Linker.link(garrow_decimal128_rescale, "garrow_decimal128_rescale", LIBRARY_ARROW);
	Linker.link(garrow_decimal128_to_bytes, "garrow_decimal128_to_bytes", LIBRARY_ARROW);
	Linker.link(garrow_decimal128_to_integer, "garrow_decimal128_to_integer", LIBRARY_ARROW);
	Linker.link(garrow_decimal128_to_string, "garrow_decimal128_to_string", LIBRARY_ARROW);
	Linker.link(garrow_decimal128_to_string_scale, "garrow_decimal128_to_string_scale", LIBRARY_ARROW);

	// arrow.Decimal128Array

	Linker.link(garrow_decimal128_array_get_type, "garrow_decimal128_array_get_type", LIBRARY_ARROW);
	Linker.link(garrow_decimal128_array_format_value, "garrow_decimal128_array_format_value", LIBRARY_ARROW);
	Linker.link(garrow_decimal128_array_get_value, "garrow_decimal128_array_get_value", LIBRARY_ARROW);

	// arrow.Decimal128ArrayBuilder

	Linker.link(garrow_decimal128_array_builder_get_type, "garrow_decimal128_array_builder_get_type", LIBRARY_ARROW);
	Linker.link(garrow_decimal128_array_builder_new, "garrow_decimal128_array_builder_new", LIBRARY_ARROW);
	Linker.link(garrow_decimal128_array_builder_append, "garrow_decimal128_array_builder_append", LIBRARY_ARROW);
	Linker.link(garrow_decimal128_array_builder_append_null, "garrow_decimal128_array_builder_append_null", LIBRARY_ARROW);
	Linker.link(garrow_decimal128_array_builder_append_value, "garrow_decimal128_array_builder_append_value", LIBRARY_ARROW);
	Linker.link(garrow_decimal128_array_builder_append_values, "garrow_decimal128_array_builder_append_values", LIBRARY_ARROW);

	// arrow.Decimal128DataType

	Linker.link(garrow_decimal128_data_type_get_type, "garrow_decimal128_data_type_get_type", LIBRARY_ARROW);
	Linker.link(garrow_decimal128_data_type_new, "garrow_decimal128_data_type_new", LIBRARY_ARROW);
	Linker.link(garrow_decimal128_data_type_max_precision, "garrow_decimal128_data_type_max_precision", LIBRARY_ARROW);

	// arrow.Decimal128Scalar

	Linker.link(garrow_decimal128_scalar_get_type, "garrow_decimal128_scalar_get_type", LIBRARY_ARROW);
	Linker.link(garrow_decimal128_scalar_new, "garrow_decimal128_scalar_new", LIBRARY_ARROW);
	Linker.link(garrow_decimal128_scalar_get_value, "garrow_decimal128_scalar_get_value", LIBRARY_ARROW);

	// arrow.Decimal256

	Linker.link(garrow_decimal256_get_type, "garrow_decimal256_get_type", LIBRARY_ARROW);
	Linker.link(garrow_decimal256_new_integer, "garrow_decimal256_new_integer", LIBRARY_ARROW);
	Linker.link(garrow_decimal256_new_string, "garrow_decimal256_new_string", LIBRARY_ARROW);
	Linker.link(garrow_decimal256_abs, "garrow_decimal256_abs", LIBRARY_ARROW);
	Linker.link(garrow_decimal256_copy, "garrow_decimal256_copy", LIBRARY_ARROW);
	Linker.link(garrow_decimal256_divide, "garrow_decimal256_divide", LIBRARY_ARROW);
	Linker.link(garrow_decimal256_equal, "garrow_decimal256_equal", LIBRARY_ARROW);
	Linker.link(garrow_decimal256_greater_than, "garrow_decimal256_greater_than", LIBRARY_ARROW);
	Linker.link(garrow_decimal256_greater_than_or_equal, "garrow_decimal256_greater_than_or_equal", LIBRARY_ARROW);
	Linker.link(garrow_decimal256_less_than, "garrow_decimal256_less_than", LIBRARY_ARROW);
	Linker.link(garrow_decimal256_less_than_or_equal, "garrow_decimal256_less_than_or_equal", LIBRARY_ARROW);
	Linker.link(garrow_decimal256_multiply, "garrow_decimal256_multiply", LIBRARY_ARROW);
	Linker.link(garrow_decimal256_negate, "garrow_decimal256_negate", LIBRARY_ARROW);
	Linker.link(garrow_decimal256_not_equal, "garrow_decimal256_not_equal", LIBRARY_ARROW);
	Linker.link(garrow_decimal256_plus, "garrow_decimal256_plus", LIBRARY_ARROW);
	Linker.link(garrow_decimal256_rescale, "garrow_decimal256_rescale", LIBRARY_ARROW);
	Linker.link(garrow_decimal256_to_bytes, "garrow_decimal256_to_bytes", LIBRARY_ARROW);
	Linker.link(garrow_decimal256_to_string, "garrow_decimal256_to_string", LIBRARY_ARROW);
	Linker.link(garrow_decimal256_to_string_scale, "garrow_decimal256_to_string_scale", LIBRARY_ARROW);

	// arrow.Decimal256Array

	Linker.link(garrow_decimal256_array_get_type, "garrow_decimal256_array_get_type", LIBRARY_ARROW);
	Linker.link(garrow_decimal256_array_format_value, "garrow_decimal256_array_format_value", LIBRARY_ARROW);
	Linker.link(garrow_decimal256_array_get_value, "garrow_decimal256_array_get_value", LIBRARY_ARROW);

	// arrow.Decimal256ArrayBuilder

	Linker.link(garrow_decimal256_array_builder_get_type, "garrow_decimal256_array_builder_get_type", LIBRARY_ARROW);
	Linker.link(garrow_decimal256_array_builder_new, "garrow_decimal256_array_builder_new", LIBRARY_ARROW);
	Linker.link(garrow_decimal256_array_builder_append_value, "garrow_decimal256_array_builder_append_value", LIBRARY_ARROW);
	Linker.link(garrow_decimal256_array_builder_append_values, "garrow_decimal256_array_builder_append_values", LIBRARY_ARROW);

	// arrow.Decimal256DataType

	Linker.link(garrow_decimal256_data_type_get_type, "garrow_decimal256_data_type_get_type", LIBRARY_ARROW);
	Linker.link(garrow_decimal256_data_type_new, "garrow_decimal256_data_type_new", LIBRARY_ARROW);
	Linker.link(garrow_decimal256_data_type_max_precision, "garrow_decimal256_data_type_max_precision", LIBRARY_ARROW);

	// arrow.Decimal256Scalar

	Linker.link(garrow_decimal256_scalar_get_type, "garrow_decimal256_scalar_get_type", LIBRARY_ARROW);
	Linker.link(garrow_decimal256_scalar_new, "garrow_decimal256_scalar_new", LIBRARY_ARROW);
	Linker.link(garrow_decimal256_scalar_get_value, "garrow_decimal256_scalar_get_value", LIBRARY_ARROW);

	// arrow.DecimalDataType

	Linker.link(garrow_decimal_data_type_get_type, "garrow_decimal_data_type_get_type", LIBRARY_ARROW);
	Linker.link(garrow_decimal_data_type_new, "garrow_decimal_data_type_new", LIBRARY_ARROW);
	Linker.link(garrow_decimal_data_type_get_precision, "garrow_decimal_data_type_get_precision", LIBRARY_ARROW);
	Linker.link(garrow_decimal_data_type_get_scale, "garrow_decimal_data_type_get_scale", LIBRARY_ARROW);

	// arrow.DenseUnionArray

	Linker.link(garrow_dense_union_array_get_type, "garrow_dense_union_array_get_type", LIBRARY_ARROW);
	Linker.link(garrow_dense_union_array_new, "garrow_dense_union_array_new", LIBRARY_ARROW);
	Linker.link(garrow_dense_union_array_new_data_type, "garrow_dense_union_array_new_data_type", LIBRARY_ARROW);
	Linker.link(garrow_dense_union_array_get_value_offset, "garrow_dense_union_array_get_value_offset", LIBRARY_ARROW);

	// arrow.DenseUnionArrayBuilder

	Linker.link(garrow_dense_union_array_builder_get_type, "garrow_dense_union_array_builder_get_type", LIBRARY_ARROW);
	Linker.link(garrow_dense_union_array_builder_new, "garrow_dense_union_array_builder_new", LIBRARY_ARROW);

	// arrow.DenseUnionDataType

	Linker.link(garrow_dense_union_data_type_get_type, "garrow_dense_union_data_type_get_type", LIBRARY_ARROW);
	Linker.link(garrow_dense_union_data_type_new, "garrow_dense_union_data_type_new", LIBRARY_ARROW);

	// arrow.DenseUnionScalar

	Linker.link(garrow_dense_union_scalar_get_type, "garrow_dense_union_scalar_get_type", LIBRARY_ARROW);
	Linker.link(garrow_dense_union_scalar_new, "garrow_dense_union_scalar_new", LIBRARY_ARROW);

	// arrow.DictionaryArray

	Linker.link(garrow_dictionary_array_get_type, "garrow_dictionary_array_get_type", LIBRARY_ARROW);
	Linker.link(garrow_dictionary_array_new, "garrow_dictionary_array_new", LIBRARY_ARROW);
	Linker.link(garrow_dictionary_array_get_dictionary, "garrow_dictionary_array_get_dictionary", LIBRARY_ARROW);
	Linker.link(garrow_dictionary_array_get_dictionary_data_type, "garrow_dictionary_array_get_dictionary_data_type", LIBRARY_ARROW);
	Linker.link(garrow_dictionary_array_get_indices, "garrow_dictionary_array_get_indices", LIBRARY_ARROW);

	// arrow.DictionaryDataType

	Linker.link(garrow_dictionary_data_type_get_type, "garrow_dictionary_data_type_get_type", LIBRARY_ARROW);
	Linker.link(garrow_dictionary_data_type_new, "garrow_dictionary_data_type_new", LIBRARY_ARROW);
	Linker.link(garrow_dictionary_data_type_get_index_data_type, "garrow_dictionary_data_type_get_index_data_type", LIBRARY_ARROW);
	Linker.link(garrow_dictionary_data_type_get_value_data_type, "garrow_dictionary_data_type_get_value_data_type", LIBRARY_ARROW);
	Linker.link(garrow_dictionary_data_type_is_ordered, "garrow_dictionary_data_type_is_ordered", LIBRARY_ARROW);

	// arrow.DoubleArray

	Linker.link(garrow_double_array_get_type, "garrow_double_array_get_type", LIBRARY_ARROW);
	Linker.link(garrow_double_array_new, "garrow_double_array_new", LIBRARY_ARROW);
	Linker.link(garrow_double_array_get_value, "garrow_double_array_get_value", LIBRARY_ARROW);
	Linker.link(garrow_double_array_get_values, "garrow_double_array_get_values", LIBRARY_ARROW);
	Linker.link(garrow_double_array_sum, "garrow_double_array_sum", LIBRARY_ARROW);

	// arrow.DoubleArrayBuilder

	Linker.link(garrow_double_array_builder_get_type, "garrow_double_array_builder_get_type", LIBRARY_ARROW);
	Linker.link(garrow_double_array_builder_new, "garrow_double_array_builder_new", LIBRARY_ARROW);
	Linker.link(garrow_double_array_builder_append, "garrow_double_array_builder_append", LIBRARY_ARROW);
	Linker.link(garrow_double_array_builder_append_null, "garrow_double_array_builder_append_null", LIBRARY_ARROW);
	Linker.link(garrow_double_array_builder_append_nulls, "garrow_double_array_builder_append_nulls", LIBRARY_ARROW);
	Linker.link(garrow_double_array_builder_append_value, "garrow_double_array_builder_append_value", LIBRARY_ARROW);
	Linker.link(garrow_double_array_builder_append_values, "garrow_double_array_builder_append_values", LIBRARY_ARROW);

	// arrow.DoubleDataType

	Linker.link(garrow_double_data_type_get_type, "garrow_double_data_type_get_type", LIBRARY_ARROW);
	Linker.link(garrow_double_data_type_new, "garrow_double_data_type_new", LIBRARY_ARROW);

	// arrow.DoubleScalar

	Linker.link(garrow_double_scalar_get_type, "garrow_double_scalar_get_type", LIBRARY_ARROW);
	Linker.link(garrow_double_scalar_new, "garrow_double_scalar_new", LIBRARY_ARROW);
	Linker.link(garrow_double_scalar_get_value, "garrow_double_scalar_get_value", LIBRARY_ARROW);

	// arrow.EqualOptions

	Linker.link(garrow_equal_options_get_type, "garrow_equal_options_get_type", LIBRARY_ARROW);
	Linker.link(garrow_equal_options_new, "garrow_equal_options_new", LIBRARY_ARROW);
	Linker.link(garrow_equal_options_is_approx, "garrow_equal_options_is_approx", LIBRARY_ARROW);

	// arrow.ExecuteContext

	Linker.link(garrow_execute_context_get_type, "garrow_execute_context_get_type", LIBRARY_ARROW);
	Linker.link(garrow_execute_context_new, "garrow_execute_context_new", LIBRARY_ARROW);

	// arrow.ExecuteNode

	Linker.link(garrow_execute_node_get_type, "garrow_execute_node_get_type", LIBRARY_ARROW);
	Linker.link(garrow_execute_node_get_kind_name, "garrow_execute_node_get_kind_name", LIBRARY_ARROW);
	Linker.link(garrow_execute_node_get_output_schema, "garrow_execute_node_get_output_schema", LIBRARY_ARROW);

	// arrow.ExecuteNodeOptions

	Linker.link(garrow_execute_node_options_get_type, "garrow_execute_node_options_get_type", LIBRARY_ARROW);

	// arrow.ExecutePlan

	Linker.link(garrow_execute_plan_get_type, "garrow_execute_plan_get_type", LIBRARY_ARROW);
	Linker.link(garrow_execute_plan_new, "garrow_execute_plan_new", LIBRARY_ARROW);
	Linker.link(garrow_execute_plan_build_aggregate_node, "garrow_execute_plan_build_aggregate_node", LIBRARY_ARROW);
	Linker.link(garrow_execute_plan_build_filter_node, "garrow_execute_plan_build_filter_node", LIBRARY_ARROW);
	Linker.link(garrow_execute_plan_build_hash_join_node, "garrow_execute_plan_build_hash_join_node", LIBRARY_ARROW);
	Linker.link(garrow_execute_plan_build_node, "garrow_execute_plan_build_node", LIBRARY_ARROW);
	Linker.link(garrow_execute_plan_build_project_node, "garrow_execute_plan_build_project_node", LIBRARY_ARROW);
	Linker.link(garrow_execute_plan_build_sink_node, "garrow_execute_plan_build_sink_node", LIBRARY_ARROW);
	Linker.link(garrow_execute_plan_build_source_node, "garrow_execute_plan_build_source_node", LIBRARY_ARROW);
	Linker.link(garrow_execute_plan_get_nodes, "garrow_execute_plan_get_nodes", LIBRARY_ARROW);
	Linker.link(garrow_execute_plan_start, "garrow_execute_plan_start", LIBRARY_ARROW);
	Linker.link(garrow_execute_plan_stop, "garrow_execute_plan_stop", LIBRARY_ARROW);
	Linker.link(garrow_execute_plan_validate, "garrow_execute_plan_validate", LIBRARY_ARROW);
	Linker.link(garrow_execute_plan_wait, "garrow_execute_plan_wait", LIBRARY_ARROW);

	// arrow.Expression

	Linker.link(garrow_expression_get_type, "garrow_expression_get_type", LIBRARY_ARROW);
	Linker.link(garrow_expression_equal, "garrow_expression_equal", LIBRARY_ARROW);
	Linker.link(garrow_expression_to_string, "garrow_expression_to_string", LIBRARY_ARROW);

	// arrow.ExtensionArray

	Linker.link(garrow_extension_array_get_type, "garrow_extension_array_get_type", LIBRARY_ARROW);
	Linker.link(garrow_extension_array_get_storage, "garrow_extension_array_get_storage", LIBRARY_ARROW);

	// arrow.ExtensionDataType

	Linker.link(garrow_extension_data_type_get_type, "garrow_extension_data_type_get_type", LIBRARY_ARROW);
	Linker.link(garrow_extension_data_type_get_extension_name, "garrow_extension_data_type_get_extension_name", LIBRARY_ARROW);
	Linker.link(garrow_extension_data_type_wrap_array, "garrow_extension_data_type_wrap_array", LIBRARY_ARROW);
	Linker.link(garrow_extension_data_type_wrap_chunked_array, "garrow_extension_data_type_wrap_chunked_array", LIBRARY_ARROW);

	// arrow.ExtensionDataTypeRegistry

	Linker.link(garrow_extension_data_type_registry_get_type, "garrow_extension_data_type_registry_get_type", LIBRARY_ARROW);
	Linker.link(garrow_extension_data_type_registry_default, "garrow_extension_data_type_registry_default", LIBRARY_ARROW);
	Linker.link(garrow_extension_data_type_registry_lookup, "garrow_extension_data_type_registry_lookup", LIBRARY_ARROW);
	Linker.link(garrow_extension_data_type_registry_register, "garrow_extension_data_type_registry_register", LIBRARY_ARROW);
	Linker.link(garrow_extension_data_type_registry_unregister, "garrow_extension_data_type_registry_unregister", LIBRARY_ARROW);

	// arrow.ExtensionScalar

	Linker.link(garrow_extension_scalar_get_type, "garrow_extension_scalar_get_type", LIBRARY_ARROW);

	// arrow.FeatherFileReader

	Linker.link(garrow_feather_file_reader_get_type, "garrow_feather_file_reader_get_type", LIBRARY_ARROW);
	Linker.link(garrow_feather_file_reader_new, "garrow_feather_file_reader_new", LIBRARY_ARROW);
	Linker.link(garrow_feather_file_reader_get_version, "garrow_feather_file_reader_get_version", LIBRARY_ARROW);
	Linker.link(garrow_feather_file_reader_read, "garrow_feather_file_reader_read", LIBRARY_ARROW);
	Linker.link(garrow_feather_file_reader_read_indices, "garrow_feather_file_reader_read_indices", LIBRARY_ARROW);
	Linker.link(garrow_feather_file_reader_read_names, "garrow_feather_file_reader_read_names", LIBRARY_ARROW);

	// arrow.FeatherWriteProperties

	Linker.link(garrow_feather_write_properties_get_type, "garrow_feather_write_properties_get_type", LIBRARY_ARROW);
	Linker.link(garrow_feather_write_properties_new, "garrow_feather_write_properties_new", LIBRARY_ARROW);

	// arrow.Field

	Linker.link(garrow_field_get_type, "garrow_field_get_type", LIBRARY_ARROW);
	Linker.link(garrow_field_new, "garrow_field_new", LIBRARY_ARROW);
	Linker.link(garrow_field_new_full, "garrow_field_new_full", LIBRARY_ARROW);
	Linker.link(garrow_field_import, "garrow_field_import", LIBRARY_ARROW);
	Linker.link(garrow_field_equal, "garrow_field_equal", LIBRARY_ARROW);
	Linker.link(garrow_field_export, "garrow_field_export", LIBRARY_ARROW);
	Linker.link(garrow_field_get_data_type, "garrow_field_get_data_type", LIBRARY_ARROW);
	Linker.link(garrow_field_get_metadata, "garrow_field_get_metadata", LIBRARY_ARROW);
	Linker.link(garrow_field_get_name, "garrow_field_get_name", LIBRARY_ARROW);
	Linker.link(garrow_field_has_metadata, "garrow_field_has_metadata", LIBRARY_ARROW);
	Linker.link(garrow_field_is_nullable, "garrow_field_is_nullable", LIBRARY_ARROW);
	Linker.link(garrow_field_remove_metadata, "garrow_field_remove_metadata", LIBRARY_ARROW);
	Linker.link(garrow_field_to_string, "garrow_field_to_string", LIBRARY_ARROW);
	Linker.link(garrow_field_to_string_metadata, "garrow_field_to_string_metadata", LIBRARY_ARROW);
	Linker.link(garrow_field_with_merged_metadata, "garrow_field_with_merged_metadata", LIBRARY_ARROW);
	Linker.link(garrow_field_with_metadata, "garrow_field_with_metadata", LIBRARY_ARROW);

	// arrow.FieldExpression

	Linker.link(garrow_field_expression_get_type, "garrow_field_expression_get_type", LIBRARY_ARROW);
	Linker.link(garrow_field_expression_new, "garrow_field_expression_new", LIBRARY_ARROW);

	// arrow.File

	Linker.link(garrow_file_get_type, "garrow_file_get_type", LIBRARY_ARROW);
	Linker.link(garrow_file_close, "garrow_file_close", LIBRARY_ARROW);
	Linker.link(garrow_file_get_mode, "garrow_file_get_mode", LIBRARY_ARROW);
	Linker.link(garrow_file_is_closed, "garrow_file_is_closed", LIBRARY_ARROW);
	Linker.link(garrow_file_tell, "garrow_file_tell", LIBRARY_ARROW);

	// arrow.FileInfo

	Linker.link(garrow_file_info_get_type, "garrow_file_info_get_type", LIBRARY_ARROW);
	Linker.link(garrow_file_info_new, "garrow_file_info_new", LIBRARY_ARROW);
	Linker.link(garrow_file_info_equal, "garrow_file_info_equal", LIBRARY_ARROW);
	Linker.link(garrow_file_info_is_dir, "garrow_file_info_is_dir", LIBRARY_ARROW);
	Linker.link(garrow_file_info_is_file, "garrow_file_info_is_file", LIBRARY_ARROW);
	Linker.link(garrow_file_info_to_string, "garrow_file_info_to_string", LIBRARY_ARROW);

	// arrow.FileInputStream

	Linker.link(garrow_file_input_stream_get_type, "garrow_file_input_stream_get_type", LIBRARY_ARROW);
	Linker.link(garrow_file_input_stream_new, "garrow_file_input_stream_new", LIBRARY_ARROW);
	Linker.link(garrow_file_input_stream_new_file_descriptor, "garrow_file_input_stream_new_file_descriptor", LIBRARY_ARROW);
	Linker.link(garrow_file_input_stream_get_file_descriptor, "garrow_file_input_stream_get_file_descriptor", LIBRARY_ARROW);

	// arrow.FileOutputStream

	Linker.link(garrow_file_output_stream_get_type, "garrow_file_output_stream_get_type", LIBRARY_ARROW);
	Linker.link(garrow_file_output_stream_new, "garrow_file_output_stream_new", LIBRARY_ARROW);

	// arrow.FileSelector

	Linker.link(garrow_file_selector_get_type, "garrow_file_selector_get_type", LIBRARY_ARROW);

	// arrow.FileSystem

	Linker.link(garrow_file_system_get_type, "garrow_file_system_get_type", LIBRARY_ARROW);
	Linker.link(garrow_file_system_create, "garrow_file_system_create", LIBRARY_ARROW);
	Linker.link(garrow_file_system_copy_file, "garrow_file_system_copy_file", LIBRARY_ARROW);
	Linker.link(garrow_file_system_create_dir, "garrow_file_system_create_dir", LIBRARY_ARROW);
	Linker.link(garrow_file_system_delete_dir, "garrow_file_system_delete_dir", LIBRARY_ARROW);
	Linker.link(garrow_file_system_delete_dir_contents, "garrow_file_system_delete_dir_contents", LIBRARY_ARROW);
	Linker.link(garrow_file_system_delete_file, "garrow_file_system_delete_file", LIBRARY_ARROW);
	Linker.link(garrow_file_system_delete_files, "garrow_file_system_delete_files", LIBRARY_ARROW);
	Linker.link(garrow_file_system_get_file_info, "garrow_file_system_get_file_info", LIBRARY_ARROW);
	Linker.link(garrow_file_system_get_file_infos_paths, "garrow_file_system_get_file_infos_paths", LIBRARY_ARROW);
	Linker.link(garrow_file_system_get_file_infos_selector, "garrow_file_system_get_file_infos_selector", LIBRARY_ARROW);
	Linker.link(garrow_file_system_get_type_name, "garrow_file_system_get_type_name", LIBRARY_ARROW);
	Linker.link(garrow_file_system_move, "garrow_file_system_move", LIBRARY_ARROW);
	Linker.link(garrow_file_system_open_append_stream, "garrow_file_system_open_append_stream", LIBRARY_ARROW);
	Linker.link(garrow_file_system_open_input_file, "garrow_file_system_open_input_file", LIBRARY_ARROW);
	Linker.link(garrow_file_system_open_input_stream, "garrow_file_system_open_input_stream", LIBRARY_ARROW);
	Linker.link(garrow_file_system_open_output_stream, "garrow_file_system_open_output_stream", LIBRARY_ARROW);

	// arrow.FilterNodeOptions

	Linker.link(garrow_filter_node_options_get_type, "garrow_filter_node_options_get_type", LIBRARY_ARROW);
	Linker.link(garrow_filter_node_options_new, "garrow_filter_node_options_new", LIBRARY_ARROW);

	// arrow.FilterOptions

	Linker.link(garrow_filter_options_get_type, "garrow_filter_options_get_type", LIBRARY_ARROW);
	Linker.link(garrow_filter_options_new, "garrow_filter_options_new", LIBRARY_ARROW);

	// arrow.FixedSizeBinaryArray

	Linker.link(garrow_fixed_size_binary_array_get_type, "garrow_fixed_size_binary_array_get_type", LIBRARY_ARROW);
	Linker.link(garrow_fixed_size_binary_array_new, "garrow_fixed_size_binary_array_new", LIBRARY_ARROW);
	Linker.link(garrow_fixed_size_binary_array_get_byte_width, "garrow_fixed_size_binary_array_get_byte_width", LIBRARY_ARROW);
	Linker.link(garrow_fixed_size_binary_array_get_value, "garrow_fixed_size_binary_array_get_value", LIBRARY_ARROW);
	Linker.link(garrow_fixed_size_binary_array_get_values_bytes, "garrow_fixed_size_binary_array_get_values_bytes", LIBRARY_ARROW);

	// arrow.FixedSizeBinaryArrayBuilder

	Linker.link(garrow_fixed_size_binary_array_builder_get_type, "garrow_fixed_size_binary_array_builder_get_type", LIBRARY_ARROW);
	Linker.link(garrow_fixed_size_binary_array_builder_new, "garrow_fixed_size_binary_array_builder_new", LIBRARY_ARROW);
	Linker.link(garrow_fixed_size_binary_array_builder_append_value, "garrow_fixed_size_binary_array_builder_append_value", LIBRARY_ARROW);
	Linker.link(garrow_fixed_size_binary_array_builder_append_value_bytes, "garrow_fixed_size_binary_array_builder_append_value_bytes", LIBRARY_ARROW);
	Linker.link(garrow_fixed_size_binary_array_builder_append_values, "garrow_fixed_size_binary_array_builder_append_values", LIBRARY_ARROW);
	Linker.link(garrow_fixed_size_binary_array_builder_append_values_packed, "garrow_fixed_size_binary_array_builder_append_values_packed", LIBRARY_ARROW);

	// arrow.FixedSizeBinaryDataType

	Linker.link(garrow_fixed_size_binary_data_type_get_type, "garrow_fixed_size_binary_data_type_get_type", LIBRARY_ARROW);
	Linker.link(garrow_fixed_size_binary_data_type_new, "garrow_fixed_size_binary_data_type_new", LIBRARY_ARROW);
	Linker.link(garrow_fixed_size_binary_data_type_get_byte_width, "garrow_fixed_size_binary_data_type_get_byte_width", LIBRARY_ARROW);

	// arrow.FixedSizeBinaryScalar

	Linker.link(garrow_fixed_size_binary_scalar_get_type, "garrow_fixed_size_binary_scalar_get_type", LIBRARY_ARROW);
	Linker.link(garrow_fixed_size_binary_scalar_new, "garrow_fixed_size_binary_scalar_new", LIBRARY_ARROW);

	// arrow.FixedWidthDataType

	Linker.link(garrow_fixed_width_data_type_get_type, "garrow_fixed_width_data_type_get_type", LIBRARY_ARROW);
	Linker.link(garrow_fixed_width_data_type_get_bit_width, "garrow_fixed_width_data_type_get_bit_width", LIBRARY_ARROW);

	// arrow.FloatArray

	Linker.link(garrow_float_array_get_type, "garrow_float_array_get_type", LIBRARY_ARROW);
	Linker.link(garrow_float_array_new, "garrow_float_array_new", LIBRARY_ARROW);
	Linker.link(garrow_float_array_get_value, "garrow_float_array_get_value", LIBRARY_ARROW);
	Linker.link(garrow_float_array_get_values, "garrow_float_array_get_values", LIBRARY_ARROW);
	Linker.link(garrow_float_array_sum, "garrow_float_array_sum", LIBRARY_ARROW);

	// arrow.FloatArrayBuilder

	Linker.link(garrow_float_array_builder_get_type, "garrow_float_array_builder_get_type", LIBRARY_ARROW);
	Linker.link(garrow_float_array_builder_new, "garrow_float_array_builder_new", LIBRARY_ARROW);
	Linker.link(garrow_float_array_builder_append, "garrow_float_array_builder_append", LIBRARY_ARROW);
	Linker.link(garrow_float_array_builder_append_null, "garrow_float_array_builder_append_null", LIBRARY_ARROW);
	Linker.link(garrow_float_array_builder_append_nulls, "garrow_float_array_builder_append_nulls", LIBRARY_ARROW);
	Linker.link(garrow_float_array_builder_append_value, "garrow_float_array_builder_append_value", LIBRARY_ARROW);
	Linker.link(garrow_float_array_builder_append_values, "garrow_float_array_builder_append_values", LIBRARY_ARROW);

	// arrow.FloatDataType

	Linker.link(garrow_float_data_type_get_type, "garrow_float_data_type_get_type", LIBRARY_ARROW);
	Linker.link(garrow_float_data_type_new, "garrow_float_data_type_new", LIBRARY_ARROW);

	// arrow.FloatScalar

	Linker.link(garrow_float_scalar_get_type, "garrow_float_scalar_get_type", LIBRARY_ARROW);
	Linker.link(garrow_float_scalar_new, "garrow_float_scalar_new", LIBRARY_ARROW);
	Linker.link(garrow_float_scalar_get_value, "garrow_float_scalar_get_value", LIBRARY_ARROW);

	// arrow.FloatingPointDataType

	Linker.link(garrow_floating_point_data_type_get_type, "garrow_floating_point_data_type_get_type", LIBRARY_ARROW);

	// arrow.Function

	Linker.link(garrow_function_get_type, "garrow_function_get_type", LIBRARY_ARROW);
	Linker.link(garrow_function_all, "garrow_function_all", LIBRARY_ARROW);
	Linker.link(garrow_function_find, "garrow_function_find", LIBRARY_ARROW);
	Linker.link(garrow_function_equal, "garrow_function_equal", LIBRARY_ARROW);
	Linker.link(garrow_function_execute, "garrow_function_execute", LIBRARY_ARROW);
	Linker.link(garrow_function_get_default_options, "garrow_function_get_default_options", LIBRARY_ARROW);
	Linker.link(garrow_function_get_doc, "garrow_function_get_doc", LIBRARY_ARROW);
	Linker.link(garrow_function_get_name, "garrow_function_get_name", LIBRARY_ARROW);
	Linker.link(garrow_function_get_options_type, "garrow_function_get_options_type", LIBRARY_ARROW);
	Linker.link(garrow_function_to_string, "garrow_function_to_string", LIBRARY_ARROW);

	// arrow.FunctionDoc

	Linker.link(garrow_function_doc_get_type, "garrow_function_doc_get_type", LIBRARY_ARROW);
	Linker.link(garrow_function_doc_get_arg_names, "garrow_function_doc_get_arg_names", LIBRARY_ARROW);
	Linker.link(garrow_function_doc_get_description, "garrow_function_doc_get_description", LIBRARY_ARROW);
	Linker.link(garrow_function_doc_get_options_class_name, "garrow_function_doc_get_options_class_name", LIBRARY_ARROW);
	Linker.link(garrow_function_doc_get_summary, "garrow_function_doc_get_summary", LIBRARY_ARROW);

	// arrow.FunctionOptions

	Linker.link(garrow_function_options_get_type, "garrow_function_options_get_type", LIBRARY_ARROW);
	Linker.link(garrow_function_options_equal, "garrow_function_options_equal", LIBRARY_ARROW);
	Linker.link(garrow_function_options_to_string, "garrow_function_options_to_string", LIBRARY_ARROW);

	// arrow.GCSFileSystem

	Linker.link(garrow_gcs_file_system_get_type, "garrow_gcs_file_system_get_type", LIBRARY_ARROW);

	// arrow.GIOInputStream

	Linker.link(garrow_gio_input_stream_get_type, "garrow_gio_input_stream_get_type", LIBRARY_ARROW);
	Linker.link(garrow_gio_input_stream_new, "garrow_gio_input_stream_new", LIBRARY_ARROW);
	Linker.link(garrow_gio_input_stream_get_raw, "garrow_gio_input_stream_get_raw", LIBRARY_ARROW);

	// arrow.GIOOutputStream

	Linker.link(garrow_gio_output_stream_get_type, "garrow_gio_output_stream_get_type", LIBRARY_ARROW);
	Linker.link(garrow_gio_output_stream_new, "garrow_gio_output_stream_new", LIBRARY_ARROW);
	Linker.link(garrow_gio_output_stream_get_raw, "garrow_gio_output_stream_get_raw", LIBRARY_ARROW);

	// arrow.HDFSFileSystem

	Linker.link(garrow_hdfs_file_system_get_type, "garrow_hdfs_file_system_get_type", LIBRARY_ARROW);

	// arrow.HalfFloatArray

	Linker.link(garrow_half_float_array_get_type, "garrow_half_float_array_get_type", LIBRARY_ARROW);
	Linker.link(garrow_half_float_array_new, "garrow_half_float_array_new", LIBRARY_ARROW);
	Linker.link(garrow_half_float_array_get_value, "garrow_half_float_array_get_value", LIBRARY_ARROW);
	Linker.link(garrow_half_float_array_get_values, "garrow_half_float_array_get_values", LIBRARY_ARROW);

	// arrow.HalfFloatArrayBuilder

	Linker.link(garrow_half_float_array_builder_get_type, "garrow_half_float_array_builder_get_type", LIBRARY_ARROW);
	Linker.link(garrow_half_float_array_builder_new, "garrow_half_float_array_builder_new", LIBRARY_ARROW);
	Linker.link(garrow_half_float_array_builder_append_value, "garrow_half_float_array_builder_append_value", LIBRARY_ARROW);
	Linker.link(garrow_half_float_array_builder_append_values, "garrow_half_float_array_builder_append_values", LIBRARY_ARROW);

	// arrow.HalfFloatDataType

	Linker.link(garrow_half_float_data_type_get_type, "garrow_half_float_data_type_get_type", LIBRARY_ARROW);
	Linker.link(garrow_half_float_data_type_new, "garrow_half_float_data_type_new", LIBRARY_ARROW);

	// arrow.HalfFloatScalar

	Linker.link(garrow_half_float_scalar_get_type, "garrow_half_float_scalar_get_type", LIBRARY_ARROW);
	Linker.link(garrow_half_float_scalar_new, "garrow_half_float_scalar_new", LIBRARY_ARROW);
	Linker.link(garrow_half_float_scalar_get_value, "garrow_half_float_scalar_get_value", LIBRARY_ARROW);

	// arrow.HashJoinNodeOptions

	Linker.link(garrow_hash_join_node_options_get_type, "garrow_hash_join_node_options_get_type", LIBRARY_ARROW);
	Linker.link(garrow_hash_join_node_options_new, "garrow_hash_join_node_options_new", LIBRARY_ARROW);
	Linker.link(garrow_hash_join_node_options_set_left_outputs, "garrow_hash_join_node_options_set_left_outputs", LIBRARY_ARROW);
	Linker.link(garrow_hash_join_node_options_set_right_outputs, "garrow_hash_join_node_options_set_right_outputs", LIBRARY_ARROW);

	// arrow.ISO8601TimestampParser

	Linker.link(garrow_iso8601_timestamp_parser_get_type, "garrow_iso8601_timestamp_parser_get_type", LIBRARY_ARROW);
	Linker.link(garrow_iso8601_timestamp_parser_new, "garrow_iso8601_timestamp_parser_new", LIBRARY_ARROW);

	// arrow.IndexOptions

	Linker.link(garrow_index_options_get_type, "garrow_index_options_get_type", LIBRARY_ARROW);
	Linker.link(garrow_index_options_new, "garrow_index_options_new", LIBRARY_ARROW);

	// arrow.InputStream

	Linker.link(garrow_input_stream_get_type, "garrow_input_stream_get_type", LIBRARY_ARROW);
	Linker.link(garrow_input_stream_advance, "garrow_input_stream_advance", LIBRARY_ARROW);
	Linker.link(garrow_input_stream_align, "garrow_input_stream_align", LIBRARY_ARROW);
	Linker.link(garrow_input_stream_read_record_batch, "garrow_input_stream_read_record_batch", LIBRARY_ARROW);
	Linker.link(garrow_input_stream_read_tensor, "garrow_input_stream_read_tensor", LIBRARY_ARROW);

	// arrow.Int16Array

	Linker.link(garrow_int16_array_get_type, "garrow_int16_array_get_type", LIBRARY_ARROW);
	Linker.link(garrow_int16_array_new, "garrow_int16_array_new", LIBRARY_ARROW);
	Linker.link(garrow_int16_array_get_value, "garrow_int16_array_get_value", LIBRARY_ARROW);
	Linker.link(garrow_int16_array_get_values, "garrow_int16_array_get_values", LIBRARY_ARROW);
	Linker.link(garrow_int16_array_sum, "garrow_int16_array_sum", LIBRARY_ARROW);

	// arrow.Int16ArrayBuilder

	Linker.link(garrow_int16_array_builder_get_type, "garrow_int16_array_builder_get_type", LIBRARY_ARROW);
	Linker.link(garrow_int16_array_builder_new, "garrow_int16_array_builder_new", LIBRARY_ARROW);
	Linker.link(garrow_int16_array_builder_append, "garrow_int16_array_builder_append", LIBRARY_ARROW);
	Linker.link(garrow_int16_array_builder_append_null, "garrow_int16_array_builder_append_null", LIBRARY_ARROW);
	Linker.link(garrow_int16_array_builder_append_nulls, "garrow_int16_array_builder_append_nulls", LIBRARY_ARROW);
	Linker.link(garrow_int16_array_builder_append_value, "garrow_int16_array_builder_append_value", LIBRARY_ARROW);
	Linker.link(garrow_int16_array_builder_append_values, "garrow_int16_array_builder_append_values", LIBRARY_ARROW);

	// arrow.Int16DataType

	Linker.link(garrow_int16_data_type_get_type, "garrow_int16_data_type_get_type", LIBRARY_ARROW);
	Linker.link(garrow_int16_data_type_new, "garrow_int16_data_type_new", LIBRARY_ARROW);

	// arrow.Int16Scalar

	Linker.link(garrow_int16_scalar_get_type, "garrow_int16_scalar_get_type", LIBRARY_ARROW);
	Linker.link(garrow_int16_scalar_new, "garrow_int16_scalar_new", LIBRARY_ARROW);
	Linker.link(garrow_int16_scalar_get_value, "garrow_int16_scalar_get_value", LIBRARY_ARROW);

	// arrow.Int32Array

	Linker.link(garrow_int32_array_get_type, "garrow_int32_array_get_type", LIBRARY_ARROW);
	Linker.link(garrow_int32_array_new, "garrow_int32_array_new", LIBRARY_ARROW);
	Linker.link(garrow_int32_array_get_value, "garrow_int32_array_get_value", LIBRARY_ARROW);
	Linker.link(garrow_int32_array_get_values, "garrow_int32_array_get_values", LIBRARY_ARROW);
	Linker.link(garrow_int32_array_sum, "garrow_int32_array_sum", LIBRARY_ARROW);

	// arrow.Int32ArrayBuilder

	Linker.link(garrow_int32_array_builder_get_type, "garrow_int32_array_builder_get_type", LIBRARY_ARROW);
	Linker.link(garrow_int32_array_builder_new, "garrow_int32_array_builder_new", LIBRARY_ARROW);
	Linker.link(garrow_int32_array_builder_append, "garrow_int32_array_builder_append", LIBRARY_ARROW);
	Linker.link(garrow_int32_array_builder_append_null, "garrow_int32_array_builder_append_null", LIBRARY_ARROW);
	Linker.link(garrow_int32_array_builder_append_nulls, "garrow_int32_array_builder_append_nulls", LIBRARY_ARROW);
	Linker.link(garrow_int32_array_builder_append_value, "garrow_int32_array_builder_append_value", LIBRARY_ARROW);
	Linker.link(garrow_int32_array_builder_append_values, "garrow_int32_array_builder_append_values", LIBRARY_ARROW);

	// arrow.Int32DataType

	Linker.link(garrow_int32_data_type_get_type, "garrow_int32_data_type_get_type", LIBRARY_ARROW);
	Linker.link(garrow_int32_data_type_new, "garrow_int32_data_type_new", LIBRARY_ARROW);

	// arrow.Int32Scalar

	Linker.link(garrow_int32_scalar_get_type, "garrow_int32_scalar_get_type", LIBRARY_ARROW);
	Linker.link(garrow_int32_scalar_new, "garrow_int32_scalar_new", LIBRARY_ARROW);
	Linker.link(garrow_int32_scalar_get_value, "garrow_int32_scalar_get_value", LIBRARY_ARROW);

	// arrow.Int64Array

	Linker.link(garrow_int64_array_get_type, "garrow_int64_array_get_type", LIBRARY_ARROW);
	Linker.link(garrow_int64_array_new, "garrow_int64_array_new", LIBRARY_ARROW);
	Linker.link(garrow_int64_array_get_value, "garrow_int64_array_get_value", LIBRARY_ARROW);
	Linker.link(garrow_int64_array_get_values, "garrow_int64_array_get_values", LIBRARY_ARROW);
	Linker.link(garrow_int64_array_sum, "garrow_int64_array_sum", LIBRARY_ARROW);

	// arrow.Int64ArrayBuilder

	Linker.link(garrow_int64_array_builder_get_type, "garrow_int64_array_builder_get_type", LIBRARY_ARROW);
	Linker.link(garrow_int64_array_builder_new, "garrow_int64_array_builder_new", LIBRARY_ARROW);
	Linker.link(garrow_int64_array_builder_append, "garrow_int64_array_builder_append", LIBRARY_ARROW);
	Linker.link(garrow_int64_array_builder_append_null, "garrow_int64_array_builder_append_null", LIBRARY_ARROW);
	Linker.link(garrow_int64_array_builder_append_nulls, "garrow_int64_array_builder_append_nulls", LIBRARY_ARROW);
	Linker.link(garrow_int64_array_builder_append_value, "garrow_int64_array_builder_append_value", LIBRARY_ARROW);
	Linker.link(garrow_int64_array_builder_append_values, "garrow_int64_array_builder_append_values", LIBRARY_ARROW);

	// arrow.Int64DataType

	Linker.link(garrow_int64_data_type_get_type, "garrow_int64_data_type_get_type", LIBRARY_ARROW);
	Linker.link(garrow_int64_data_type_new, "garrow_int64_data_type_new", LIBRARY_ARROW);

	// arrow.Int64Scalar

	Linker.link(garrow_int64_scalar_get_type, "garrow_int64_scalar_get_type", LIBRARY_ARROW);
	Linker.link(garrow_int64_scalar_new, "garrow_int64_scalar_new", LIBRARY_ARROW);
	Linker.link(garrow_int64_scalar_get_value, "garrow_int64_scalar_get_value", LIBRARY_ARROW);

	// arrow.Int8Array

	Linker.link(garrow_int8_array_get_type, "garrow_int8_array_get_type", LIBRARY_ARROW);
	Linker.link(garrow_int8_array_new, "garrow_int8_array_new", LIBRARY_ARROW);
	Linker.link(garrow_int8_array_get_value, "garrow_int8_array_get_value", LIBRARY_ARROW);
	Linker.link(garrow_int8_array_get_values, "garrow_int8_array_get_values", LIBRARY_ARROW);
	Linker.link(garrow_int8_array_sum, "garrow_int8_array_sum", LIBRARY_ARROW);

	// arrow.Int8ArrayBuilder

	Linker.link(garrow_int8_array_builder_get_type, "garrow_int8_array_builder_get_type", LIBRARY_ARROW);
	Linker.link(garrow_int8_array_builder_new, "garrow_int8_array_builder_new", LIBRARY_ARROW);
	Linker.link(garrow_int8_array_builder_append, "garrow_int8_array_builder_append", LIBRARY_ARROW);
	Linker.link(garrow_int8_array_builder_append_null, "garrow_int8_array_builder_append_null", LIBRARY_ARROW);
	Linker.link(garrow_int8_array_builder_append_nulls, "garrow_int8_array_builder_append_nulls", LIBRARY_ARROW);
	Linker.link(garrow_int8_array_builder_append_value, "garrow_int8_array_builder_append_value", LIBRARY_ARROW);
	Linker.link(garrow_int8_array_builder_append_values, "garrow_int8_array_builder_append_values", LIBRARY_ARROW);

	// arrow.Int8DataType

	Linker.link(garrow_int8_data_type_get_type, "garrow_int8_data_type_get_type", LIBRARY_ARROW);
	Linker.link(garrow_int8_data_type_new, "garrow_int8_data_type_new", LIBRARY_ARROW);

	// arrow.Int8Scalar

	Linker.link(garrow_int8_scalar_get_type, "garrow_int8_scalar_get_type", LIBRARY_ARROW);
	Linker.link(garrow_int8_scalar_new, "garrow_int8_scalar_new", LIBRARY_ARROW);
	Linker.link(garrow_int8_scalar_get_value, "garrow_int8_scalar_get_value", LIBRARY_ARROW);

	// arrow.IntArrayBuilder

	Linker.link(garrow_int_array_builder_get_type, "garrow_int_array_builder_get_type", LIBRARY_ARROW);
	Linker.link(garrow_int_array_builder_new, "garrow_int_array_builder_new", LIBRARY_ARROW);
	Linker.link(garrow_int_array_builder_append, "garrow_int_array_builder_append", LIBRARY_ARROW);
	Linker.link(garrow_int_array_builder_append_null, "garrow_int_array_builder_append_null", LIBRARY_ARROW);
	Linker.link(garrow_int_array_builder_append_nulls, "garrow_int_array_builder_append_nulls", LIBRARY_ARROW);
	Linker.link(garrow_int_array_builder_append_value, "garrow_int_array_builder_append_value", LIBRARY_ARROW);
	Linker.link(garrow_int_array_builder_append_values, "garrow_int_array_builder_append_values", LIBRARY_ARROW);

	// arrow.IntegerDataType

	Linker.link(garrow_integer_data_type_get_type, "garrow_integer_data_type_get_type", LIBRARY_ARROW);
	Linker.link(garrow_integer_data_type_is_signed, "garrow_integer_data_type_is_signed", LIBRARY_ARROW);

	// arrow.IntervalDataType

	Linker.link(garrow_interval_data_type_get_type, "garrow_interval_data_type_get_type", LIBRARY_ARROW);
	Linker.link(garrow_interval_data_type_get_interval_type, "garrow_interval_data_type_get_interval_type", LIBRARY_ARROW);

	// arrow.JSONReadOptions

	Linker.link(garrow_json_read_options_get_type, "garrow_json_read_options_get_type", LIBRARY_ARROW);
	Linker.link(garrow_json_read_options_new, "garrow_json_read_options_new", LIBRARY_ARROW);

	// arrow.JSONReader

	Linker.link(garrow_json_reader_get_type, "garrow_json_reader_get_type", LIBRARY_ARROW);
	Linker.link(garrow_json_reader_new, "garrow_json_reader_new", LIBRARY_ARROW);
	Linker.link(garrow_json_reader_read, "garrow_json_reader_read", LIBRARY_ARROW);

	// arrow.LargeBinaryArray

	Linker.link(garrow_large_binary_array_get_type, "garrow_large_binary_array_get_type", LIBRARY_ARROW);
	Linker.link(garrow_large_binary_array_new, "garrow_large_binary_array_new", LIBRARY_ARROW);
	Linker.link(garrow_large_binary_array_get_buffer, "garrow_large_binary_array_get_buffer", LIBRARY_ARROW);
	Linker.link(garrow_large_binary_array_get_data_buffer, "garrow_large_binary_array_get_data_buffer", LIBRARY_ARROW);
	Linker.link(garrow_large_binary_array_get_offsets_buffer, "garrow_large_binary_array_get_offsets_buffer", LIBRARY_ARROW);
	Linker.link(garrow_large_binary_array_get_value, "garrow_large_binary_array_get_value", LIBRARY_ARROW);

	// arrow.LargeBinaryArrayBuilder

	Linker.link(garrow_large_binary_array_builder_get_type, "garrow_large_binary_array_builder_get_type", LIBRARY_ARROW);
	Linker.link(garrow_large_binary_array_builder_new, "garrow_large_binary_array_builder_new", LIBRARY_ARROW);
	Linker.link(garrow_large_binary_array_builder_append_null, "garrow_large_binary_array_builder_append_null", LIBRARY_ARROW);
	Linker.link(garrow_large_binary_array_builder_append_nulls, "garrow_large_binary_array_builder_append_nulls", LIBRARY_ARROW);
	Linker.link(garrow_large_binary_array_builder_append_value, "garrow_large_binary_array_builder_append_value", LIBRARY_ARROW);
	Linker.link(garrow_large_binary_array_builder_append_value_bytes, "garrow_large_binary_array_builder_append_value_bytes", LIBRARY_ARROW);
	Linker.link(garrow_large_binary_array_builder_append_values, "garrow_large_binary_array_builder_append_values", LIBRARY_ARROW);

	// arrow.LargeBinaryDataType

	Linker.link(garrow_large_binary_data_type_get_type, "garrow_large_binary_data_type_get_type", LIBRARY_ARROW);
	Linker.link(garrow_large_binary_data_type_new, "garrow_large_binary_data_type_new", LIBRARY_ARROW);

	// arrow.LargeBinaryScalar

	Linker.link(garrow_large_binary_scalar_get_type, "garrow_large_binary_scalar_get_type", LIBRARY_ARROW);
	Linker.link(garrow_large_binary_scalar_new, "garrow_large_binary_scalar_new", LIBRARY_ARROW);

	// arrow.LargeListArray

	Linker.link(garrow_large_list_array_get_type, "garrow_large_list_array_get_type", LIBRARY_ARROW);
	Linker.link(garrow_large_list_array_new, "garrow_large_list_array_new", LIBRARY_ARROW);
	Linker.link(garrow_large_list_array_get_value, "garrow_large_list_array_get_value", LIBRARY_ARROW);
	Linker.link(garrow_large_list_array_get_value_length, "garrow_large_list_array_get_value_length", LIBRARY_ARROW);
	Linker.link(garrow_large_list_array_get_value_offset, "garrow_large_list_array_get_value_offset", LIBRARY_ARROW);
	Linker.link(garrow_large_list_array_get_value_offsets, "garrow_large_list_array_get_value_offsets", LIBRARY_ARROW);
	Linker.link(garrow_large_list_array_get_value_type, "garrow_large_list_array_get_value_type", LIBRARY_ARROW);
	Linker.link(garrow_large_list_array_get_values, "garrow_large_list_array_get_values", LIBRARY_ARROW);

	// arrow.LargeListArrayBuilder

	Linker.link(garrow_large_list_array_builder_get_type, "garrow_large_list_array_builder_get_type", LIBRARY_ARROW);
	Linker.link(garrow_large_list_array_builder_new, "garrow_large_list_array_builder_new", LIBRARY_ARROW);
	Linker.link(garrow_large_list_array_builder_append_null, "garrow_large_list_array_builder_append_null", LIBRARY_ARROW);
	Linker.link(garrow_large_list_array_builder_append_value, "garrow_large_list_array_builder_append_value", LIBRARY_ARROW);
	Linker.link(garrow_large_list_array_builder_get_value_builder, "garrow_large_list_array_builder_get_value_builder", LIBRARY_ARROW);

	// arrow.LargeListDataType

	Linker.link(garrow_large_list_data_type_get_type, "garrow_large_list_data_type_get_type", LIBRARY_ARROW);
	Linker.link(garrow_large_list_data_type_new, "garrow_large_list_data_type_new", LIBRARY_ARROW);
	Linker.link(garrow_large_list_data_type_get_field, "garrow_large_list_data_type_get_field", LIBRARY_ARROW);

	// arrow.LargeListScalar

	Linker.link(garrow_large_list_scalar_get_type, "garrow_large_list_scalar_get_type", LIBRARY_ARROW);
	Linker.link(garrow_large_list_scalar_new, "garrow_large_list_scalar_new", LIBRARY_ARROW);

	// arrow.LargeStringArray

	Linker.link(garrow_large_string_array_get_type, "garrow_large_string_array_get_type", LIBRARY_ARROW);
	Linker.link(garrow_large_string_array_new, "garrow_large_string_array_new", LIBRARY_ARROW);
	Linker.link(garrow_large_string_array_get_string, "garrow_large_string_array_get_string", LIBRARY_ARROW);

	// arrow.LargeStringArrayBuilder

	Linker.link(garrow_large_string_array_builder_get_type, "garrow_large_string_array_builder_get_type", LIBRARY_ARROW);
	Linker.link(garrow_large_string_array_builder_new, "garrow_large_string_array_builder_new", LIBRARY_ARROW);
	Linker.link(garrow_large_string_array_builder_append_string, "garrow_large_string_array_builder_append_string", LIBRARY_ARROW);
	Linker.link(garrow_large_string_array_builder_append_string_len, "garrow_large_string_array_builder_append_string_len", LIBRARY_ARROW);
	Linker.link(garrow_large_string_array_builder_append_strings, "garrow_large_string_array_builder_append_strings", LIBRARY_ARROW);

	// arrow.LargeStringDataType

	Linker.link(garrow_large_string_data_type_get_type, "garrow_large_string_data_type_get_type", LIBRARY_ARROW);
	Linker.link(garrow_large_string_data_type_new, "garrow_large_string_data_type_new", LIBRARY_ARROW);

	// arrow.LargeStringScalar

	Linker.link(garrow_large_string_scalar_get_type, "garrow_large_string_scalar_get_type", LIBRARY_ARROW);
	Linker.link(garrow_large_string_scalar_new, "garrow_large_string_scalar_new", LIBRARY_ARROW);

	// arrow.ListArray

	Linker.link(garrow_list_array_get_type, "garrow_list_array_get_type", LIBRARY_ARROW);
	Linker.link(garrow_list_array_new, "garrow_list_array_new", LIBRARY_ARROW);
	Linker.link(garrow_list_array_get_value, "garrow_list_array_get_value", LIBRARY_ARROW);
	Linker.link(garrow_list_array_get_value_length, "garrow_list_array_get_value_length", LIBRARY_ARROW);
	Linker.link(garrow_list_array_get_value_offset, "garrow_list_array_get_value_offset", LIBRARY_ARROW);
	Linker.link(garrow_list_array_get_value_offsets, "garrow_list_array_get_value_offsets", LIBRARY_ARROW);
	Linker.link(garrow_list_array_get_value_type, "garrow_list_array_get_value_type", LIBRARY_ARROW);
	Linker.link(garrow_list_array_get_values, "garrow_list_array_get_values", LIBRARY_ARROW);

	// arrow.ListArrayBuilder

	Linker.link(garrow_list_array_builder_get_type, "garrow_list_array_builder_get_type", LIBRARY_ARROW);
	Linker.link(garrow_list_array_builder_new, "garrow_list_array_builder_new", LIBRARY_ARROW);
	Linker.link(garrow_list_array_builder_append, "garrow_list_array_builder_append", LIBRARY_ARROW);
	Linker.link(garrow_list_array_builder_append_null, "garrow_list_array_builder_append_null", LIBRARY_ARROW);
	Linker.link(garrow_list_array_builder_append_value, "garrow_list_array_builder_append_value", LIBRARY_ARROW);
	Linker.link(garrow_list_array_builder_get_value_builder, "garrow_list_array_builder_get_value_builder", LIBRARY_ARROW);

	// arrow.ListDataType

	Linker.link(garrow_list_data_type_get_type, "garrow_list_data_type_get_type", LIBRARY_ARROW);
	Linker.link(garrow_list_data_type_new, "garrow_list_data_type_new", LIBRARY_ARROW);
	Linker.link(garrow_list_data_type_get_field, "garrow_list_data_type_get_field", LIBRARY_ARROW);
	Linker.link(garrow_list_data_type_get_value_field, "garrow_list_data_type_get_value_field", LIBRARY_ARROW);

	// arrow.ListScalar

	Linker.link(garrow_list_scalar_get_type, "garrow_list_scalar_get_type", LIBRARY_ARROW);
	Linker.link(garrow_list_scalar_new, "garrow_list_scalar_new", LIBRARY_ARROW);

	// arrow.LiteralExpression

	Linker.link(garrow_literal_expression_get_type, "garrow_literal_expression_get_type", LIBRARY_ARROW);
	Linker.link(garrow_literal_expression_new, "garrow_literal_expression_new", LIBRARY_ARROW);

	// arrow.LocalFileSystem

	Linker.link(garrow_local_file_system_get_type, "garrow_local_file_system_get_type", LIBRARY_ARROW);
	Linker.link(garrow_local_file_system_new, "garrow_local_file_system_new", LIBRARY_ARROW);

	// arrow.LocalFileSystemOptions

	Linker.link(garrow_local_file_system_options_get_type, "garrow_local_file_system_options_get_type", LIBRARY_ARROW);
	Linker.link(garrow_local_file_system_options_new, "garrow_local_file_system_options_new", LIBRARY_ARROW);

	// arrow.MapArray

	Linker.link(garrow_map_array_get_type, "garrow_map_array_get_type", LIBRARY_ARROW);
	Linker.link(garrow_map_array_new, "garrow_map_array_new", LIBRARY_ARROW);
	Linker.link(garrow_map_array_get_items, "garrow_map_array_get_items", LIBRARY_ARROW);
	Linker.link(garrow_map_array_get_keys, "garrow_map_array_get_keys", LIBRARY_ARROW);

	// arrow.MapArrayBuilder

	Linker.link(garrow_map_array_builder_get_type, "garrow_map_array_builder_get_type", LIBRARY_ARROW);
	Linker.link(garrow_map_array_builder_new, "garrow_map_array_builder_new", LIBRARY_ARROW);
	Linker.link(garrow_map_array_builder_append_null, "garrow_map_array_builder_append_null", LIBRARY_ARROW);
	Linker.link(garrow_map_array_builder_append_nulls, "garrow_map_array_builder_append_nulls", LIBRARY_ARROW);
	Linker.link(garrow_map_array_builder_append_value, "garrow_map_array_builder_append_value", LIBRARY_ARROW);
	Linker.link(garrow_map_array_builder_append_values, "garrow_map_array_builder_append_values", LIBRARY_ARROW);
	Linker.link(garrow_map_array_builder_get_item_builder, "garrow_map_array_builder_get_item_builder", LIBRARY_ARROW);
	Linker.link(garrow_map_array_builder_get_key_builder, "garrow_map_array_builder_get_key_builder", LIBRARY_ARROW);
	Linker.link(garrow_map_array_builder_get_value_builder, "garrow_map_array_builder_get_value_builder", LIBRARY_ARROW);

	// arrow.MapDataType

	Linker.link(garrow_map_data_type_get_type, "garrow_map_data_type_get_type", LIBRARY_ARROW);
	Linker.link(garrow_map_data_type_new, "garrow_map_data_type_new", LIBRARY_ARROW);
	Linker.link(garrow_map_data_type_get_item_type, "garrow_map_data_type_get_item_type", LIBRARY_ARROW);
	Linker.link(garrow_map_data_type_get_key_type, "garrow_map_data_type_get_key_type", LIBRARY_ARROW);

	// arrow.MapScalar

	Linker.link(garrow_map_scalar_get_type, "garrow_map_scalar_get_type", LIBRARY_ARROW);
	Linker.link(garrow_map_scalar_new, "garrow_map_scalar_new", LIBRARY_ARROW);

	// arrow.MatchSubstringOptions

	Linker.link(garrow_match_substring_options_get_type, "garrow_match_substring_options_get_type", LIBRARY_ARROW);
	Linker.link(garrow_match_substring_options_new, "garrow_match_substring_options_new", LIBRARY_ARROW);

	// arrow.MemoryMappedInputStream

	Linker.link(garrow_memory_mapped_input_stream_get_type, "garrow_memory_mapped_input_stream_get_type", LIBRARY_ARROW);
	Linker.link(garrow_memory_mapped_input_stream_new, "garrow_memory_mapped_input_stream_new", LIBRARY_ARROW);

	// arrow.MemoryPool

	Linker.link(garrow_memory_pool_get_type, "garrow_memory_pool_get_type", LIBRARY_ARROW);
	Linker.link(garrow_memory_pool_default, "garrow_memory_pool_default", LIBRARY_ARROW);
	Linker.link(garrow_memory_pool_get_backend_name, "garrow_memory_pool_get_backend_name", LIBRARY_ARROW);
	Linker.link(garrow_memory_pool_get_bytes_allocated, "garrow_memory_pool_get_bytes_allocated", LIBRARY_ARROW);
	Linker.link(garrow_memory_pool_get_max_memory, "garrow_memory_pool_get_max_memory", LIBRARY_ARROW);

	// arrow.MockFileSystem

	Linker.link(garrow_mock_file_system_get_type, "garrow_mock_file_system_get_type", LIBRARY_ARROW);

	// arrow.MonthDayNano

	Linker.link(garrow_month_day_nano_get_type, "garrow_month_day_nano_get_type", LIBRARY_ARROW);
	Linker.link(garrow_month_day_nano_new, "garrow_month_day_nano_new", LIBRARY_ARROW);
	Linker.link(garrow_month_day_nano_equal, "garrow_month_day_nano_equal", LIBRARY_ARROW);

	// arrow.MonthDayNanoIntervalArray

	Linker.link(garrow_month_day_nano_interval_array_get_type, "garrow_month_day_nano_interval_array_get_type", LIBRARY_ARROW);
	Linker.link(garrow_month_day_nano_interval_array_new, "garrow_month_day_nano_interval_array_new", LIBRARY_ARROW);
	Linker.link(garrow_month_day_nano_interval_array_get_value, "garrow_month_day_nano_interval_array_get_value", LIBRARY_ARROW);
	Linker.link(garrow_month_day_nano_interval_array_get_values, "garrow_month_day_nano_interval_array_get_values", LIBRARY_ARROW);

	// arrow.MonthDayNanoIntervalArrayBuilder

	Linker.link(garrow_month_day_nano_interval_array_builder_get_type, "garrow_month_day_nano_interval_array_builder_get_type", LIBRARY_ARROW);
	Linker.link(garrow_month_day_nano_interval_array_builder_new, "garrow_month_day_nano_interval_array_builder_new", LIBRARY_ARROW);
	Linker.link(garrow_month_day_nano_interval_array_builder_append_value, "garrow_month_day_nano_interval_array_builder_append_value", LIBRARY_ARROW);
	Linker.link(garrow_month_day_nano_interval_array_builder_append_values, "garrow_month_day_nano_interval_array_builder_append_values", LIBRARY_ARROW);

	// arrow.MonthDayNanoIntervalDataType

	Linker.link(garrow_month_day_nano_interval_data_type_get_type, "garrow_month_day_nano_interval_data_type_get_type", LIBRARY_ARROW);
	Linker.link(garrow_month_day_nano_interval_data_type_new, "garrow_month_day_nano_interval_data_type_new", LIBRARY_ARROW);

	// arrow.MonthDayNanoIntervalScalar

	Linker.link(garrow_month_day_nano_interval_scalar_get_type, "garrow_month_day_nano_interval_scalar_get_type", LIBRARY_ARROW);
	Linker.link(garrow_month_day_nano_interval_scalar_new, "garrow_month_day_nano_interval_scalar_new", LIBRARY_ARROW);
	Linker.link(garrow_month_day_nano_interval_scalar_get_value, "garrow_month_day_nano_interval_scalar_get_value", LIBRARY_ARROW);

	// arrow.MonthIntervalArray

	Linker.link(garrow_month_interval_array_get_type, "garrow_month_interval_array_get_type", LIBRARY_ARROW);
	Linker.link(garrow_month_interval_array_new, "garrow_month_interval_array_new", LIBRARY_ARROW);
	Linker.link(garrow_month_interval_array_get_value, "garrow_month_interval_array_get_value", LIBRARY_ARROW);
	Linker.link(garrow_month_interval_array_get_values, "garrow_month_interval_array_get_values", LIBRARY_ARROW);

	// arrow.MonthIntervalArrayBuilder

	Linker.link(garrow_month_interval_array_builder_get_type, "garrow_month_interval_array_builder_get_type", LIBRARY_ARROW);
	Linker.link(garrow_month_interval_array_builder_new, "garrow_month_interval_array_builder_new", LIBRARY_ARROW);
	Linker.link(garrow_month_interval_array_builder_append_value, "garrow_month_interval_array_builder_append_value", LIBRARY_ARROW);
	Linker.link(garrow_month_interval_array_builder_append_values, "garrow_month_interval_array_builder_append_values", LIBRARY_ARROW);

	// arrow.MonthIntervalDataType

	Linker.link(garrow_month_interval_data_type_get_type, "garrow_month_interval_data_type_get_type", LIBRARY_ARROW);
	Linker.link(garrow_month_interval_data_type_new, "garrow_month_interval_data_type_new", LIBRARY_ARROW);

	// arrow.MonthIntervalScalar

	Linker.link(garrow_month_interval_scalar_get_type, "garrow_month_interval_scalar_get_type", LIBRARY_ARROW);
	Linker.link(garrow_month_interval_scalar_new, "garrow_month_interval_scalar_new", LIBRARY_ARROW);
	Linker.link(garrow_month_interval_scalar_get_value, "garrow_month_interval_scalar_get_value", LIBRARY_ARROW);

	// arrow.MutableBuffer

	Linker.link(garrow_mutable_buffer_get_type, "garrow_mutable_buffer_get_type", LIBRARY_ARROW);
	Linker.link(garrow_mutable_buffer_new, "garrow_mutable_buffer_new", LIBRARY_ARROW);
	Linker.link(garrow_mutable_buffer_new_bytes, "garrow_mutable_buffer_new_bytes", LIBRARY_ARROW);
	Linker.link(garrow_mutable_buffer_set_data, "garrow_mutable_buffer_set_data", LIBRARY_ARROW);
	Linker.link(garrow_mutable_buffer_slice, "garrow_mutable_buffer_slice", LIBRARY_ARROW);

	// arrow.NullArray

	Linker.link(garrow_null_array_get_type, "garrow_null_array_get_type", LIBRARY_ARROW);
	Linker.link(garrow_null_array_new, "garrow_null_array_new", LIBRARY_ARROW);

	// arrow.NullArrayBuilder

	Linker.link(garrow_null_array_builder_get_type, "garrow_null_array_builder_get_type", LIBRARY_ARROW);
	Linker.link(garrow_null_array_builder_new, "garrow_null_array_builder_new", LIBRARY_ARROW);
	Linker.link(garrow_null_array_builder_append_null, "garrow_null_array_builder_append_null", LIBRARY_ARROW);
	Linker.link(garrow_null_array_builder_append_nulls, "garrow_null_array_builder_append_nulls", LIBRARY_ARROW);

	// arrow.NullDataType

	Linker.link(garrow_null_data_type_get_type, "garrow_null_data_type_get_type", LIBRARY_ARROW);
	Linker.link(garrow_null_data_type_new, "garrow_null_data_type_new", LIBRARY_ARROW);

	// arrow.NullScalar

	Linker.link(garrow_null_scalar_get_type, "garrow_null_scalar_get_type", LIBRARY_ARROW);
	Linker.link(garrow_null_scalar_new, "garrow_null_scalar_new", LIBRARY_ARROW);

	// arrow.NumericArray

	Linker.link(garrow_numeric_array_get_type, "garrow_numeric_array_get_type", LIBRARY_ARROW);
	Linker.link(garrow_numeric_array_mean, "garrow_numeric_array_mean", LIBRARY_ARROW);

	// arrow.NumericDataType

	Linker.link(garrow_numeric_data_type_get_type, "garrow_numeric_data_type_get_type", LIBRARY_ARROW);

	// arrow.ORCFileReader

	Linker.link(garrow_orc_file_reader_get_type, "garrow_orc_file_reader_get_type", LIBRARY_ARROW);
	Linker.link(garrow_orc_file_reader_new, "garrow_orc_file_reader_new", LIBRARY_ARROW);
	Linker.link(garrow_orc_file_reader_get_field_indexes, "garrow_orc_file_reader_get_field_indexes", LIBRARY_ARROW);
	Linker.link(garrow_orc_file_reader_get_field_indices, "garrow_orc_file_reader_get_field_indices", LIBRARY_ARROW);
	Linker.link(garrow_orc_file_reader_get_n_rows, "garrow_orc_file_reader_get_n_rows", LIBRARY_ARROW);
	Linker.link(garrow_orc_file_reader_get_n_stripes, "garrow_orc_file_reader_get_n_stripes", LIBRARY_ARROW);
	Linker.link(garrow_orc_file_reader_read_stripe, "garrow_orc_file_reader_read_stripe", LIBRARY_ARROW);
	Linker.link(garrow_orc_file_reader_read_stripes, "garrow_orc_file_reader_read_stripes", LIBRARY_ARROW);
	Linker.link(garrow_orc_file_reader_read_type, "garrow_orc_file_reader_read_type", LIBRARY_ARROW);
	Linker.link(garrow_orc_file_reader_set_field_indexes, "garrow_orc_file_reader_set_field_indexes", LIBRARY_ARROW);
	Linker.link(garrow_orc_file_reader_set_field_indices, "garrow_orc_file_reader_set_field_indices", LIBRARY_ARROW);

	// arrow.OutputStream

	Linker.link(garrow_output_stream_get_type, "garrow_output_stream_get_type", LIBRARY_ARROW);
	Linker.link(garrow_output_stream_align, "garrow_output_stream_align", LIBRARY_ARROW);
	Linker.link(garrow_output_stream_write_record_batch, "garrow_output_stream_write_record_batch", LIBRARY_ARROW);
	Linker.link(garrow_output_stream_write_tensor, "garrow_output_stream_write_tensor", LIBRARY_ARROW);

	// arrow.PrimitiveArray

	Linker.link(garrow_primitive_array_get_type, "garrow_primitive_array_get_type", LIBRARY_ARROW);
	Linker.link(garrow_primitive_array_get_buffer, "garrow_primitive_array_get_buffer", LIBRARY_ARROW);
	Linker.link(garrow_primitive_array_get_data_buffer, "garrow_primitive_array_get_data_buffer", LIBRARY_ARROW);

	// arrow.ProjectNodeOptions

	Linker.link(garrow_project_node_options_get_type, "garrow_project_node_options_get_type", LIBRARY_ARROW);
	Linker.link(garrow_project_node_options_new, "garrow_project_node_options_new", LIBRARY_ARROW);

	// arrow.QuantileOptions

	Linker.link(garrow_quantile_options_get_type, "garrow_quantile_options_get_type", LIBRARY_ARROW);
	Linker.link(garrow_quantile_options_new, "garrow_quantile_options_new", LIBRARY_ARROW);
	Linker.link(garrow_quantile_options_get_qs, "garrow_quantile_options_get_qs", LIBRARY_ARROW);
	Linker.link(garrow_quantile_options_set_q, "garrow_quantile_options_set_q", LIBRARY_ARROW);
	Linker.link(garrow_quantile_options_set_qs, "garrow_quantile_options_set_qs", LIBRARY_ARROW);

	// arrow.RankOptions

	Linker.link(garrow_rank_options_get_type, "garrow_rank_options_get_type", LIBRARY_ARROW);
	Linker.link(garrow_rank_options_new, "garrow_rank_options_new", LIBRARY_ARROW);
	Linker.link(garrow_rank_options_add_sort_key, "garrow_rank_options_add_sort_key", LIBRARY_ARROW);
	Linker.link(garrow_rank_options_equal, "garrow_rank_options_equal", LIBRARY_ARROW);
	Linker.link(garrow_rank_options_get_sort_keys, "garrow_rank_options_get_sort_keys", LIBRARY_ARROW);
	Linker.link(garrow_rank_options_set_sort_keys, "garrow_rank_options_set_sort_keys", LIBRARY_ARROW);

	// arrow.ReadOptions

	Linker.link(garrow_read_options_get_type, "garrow_read_options_get_type", LIBRARY_ARROW);
	Linker.link(garrow_read_options_new, "garrow_read_options_new", LIBRARY_ARROW);
	Linker.link(garrow_read_options_get_included_fields, "garrow_read_options_get_included_fields", LIBRARY_ARROW);
	Linker.link(garrow_read_options_set_included_fields, "garrow_read_options_set_included_fields", LIBRARY_ARROW);

	// arrow.Readable

	Linker.link(garrow_readable_get_type, "garrow_readable_get_type", LIBRARY_ARROW);
	Linker.link(garrow_readable_read, "garrow_readable_read", LIBRARY_ARROW);
	Linker.link(garrow_readable_read_bytes, "garrow_readable_read_bytes", LIBRARY_ARROW);

	// arrow.RecordBatch

	Linker.link(garrow_record_batch_get_type, "garrow_record_batch_get_type", LIBRARY_ARROW);
	Linker.link(garrow_record_batch_new, "garrow_record_batch_new", LIBRARY_ARROW);
	Linker.link(garrow_record_batch_import, "garrow_record_batch_import", LIBRARY_ARROW);
	Linker.link(garrow_record_batch_add_column, "garrow_record_batch_add_column", LIBRARY_ARROW);
	Linker.link(garrow_record_batch_equal, "garrow_record_batch_equal", LIBRARY_ARROW);
	Linker.link(garrow_record_batch_equal_metadata, "garrow_record_batch_equal_metadata", LIBRARY_ARROW);
	Linker.link(garrow_record_batch_export, "garrow_record_batch_export", LIBRARY_ARROW);
	Linker.link(garrow_record_batch_filter, "garrow_record_batch_filter", LIBRARY_ARROW);
	Linker.link(garrow_record_batch_get_column_data, "garrow_record_batch_get_column_data", LIBRARY_ARROW);
	Linker.link(garrow_record_batch_get_column_name, "garrow_record_batch_get_column_name", LIBRARY_ARROW);
	Linker.link(garrow_record_batch_get_n_columns, "garrow_record_batch_get_n_columns", LIBRARY_ARROW);
	Linker.link(garrow_record_batch_get_n_rows, "garrow_record_batch_get_n_rows", LIBRARY_ARROW);
	Linker.link(garrow_record_batch_get_schema, "garrow_record_batch_get_schema", LIBRARY_ARROW);
	Linker.link(garrow_record_batch_remove_column, "garrow_record_batch_remove_column", LIBRARY_ARROW);
	Linker.link(garrow_record_batch_serialize, "garrow_record_batch_serialize", LIBRARY_ARROW);
	Linker.link(garrow_record_batch_slice, "garrow_record_batch_slice", LIBRARY_ARROW);
	Linker.link(garrow_record_batch_sort_indices, "garrow_record_batch_sort_indices", LIBRARY_ARROW);
	Linker.link(garrow_record_batch_take, "garrow_record_batch_take", LIBRARY_ARROW);
	Linker.link(garrow_record_batch_to_string, "garrow_record_batch_to_string", LIBRARY_ARROW);

	// arrow.RecordBatchBuilder

	Linker.link(garrow_record_batch_builder_get_type, "garrow_record_batch_builder_get_type", LIBRARY_ARROW);
	Linker.link(garrow_record_batch_builder_new, "garrow_record_batch_builder_new", LIBRARY_ARROW);
	Linker.link(garrow_record_batch_builder_flush, "garrow_record_batch_builder_flush", LIBRARY_ARROW);
	Linker.link(garrow_record_batch_builder_get_column_builder, "garrow_record_batch_builder_get_column_builder", LIBRARY_ARROW);
	Linker.link(garrow_record_batch_builder_get_field, "garrow_record_batch_builder_get_field", LIBRARY_ARROW);
	Linker.link(garrow_record_batch_builder_get_initial_capacity, "garrow_record_batch_builder_get_initial_capacity", LIBRARY_ARROW);
	Linker.link(garrow_record_batch_builder_get_n_columns, "garrow_record_batch_builder_get_n_columns", LIBRARY_ARROW);
	Linker.link(garrow_record_batch_builder_get_n_fields, "garrow_record_batch_builder_get_n_fields", LIBRARY_ARROW);
	Linker.link(garrow_record_batch_builder_get_schema, "garrow_record_batch_builder_get_schema", LIBRARY_ARROW);
	Linker.link(garrow_record_batch_builder_set_initial_capacity, "garrow_record_batch_builder_set_initial_capacity", LIBRARY_ARROW);

	// arrow.RecordBatchDatum

	Linker.link(garrow_record_batch_datum_get_type, "garrow_record_batch_datum_get_type", LIBRARY_ARROW);
	Linker.link(garrow_record_batch_datum_new, "garrow_record_batch_datum_new", LIBRARY_ARROW);

	// arrow.RecordBatchFileReader

	Linker.link(garrow_record_batch_file_reader_get_type, "garrow_record_batch_file_reader_get_type", LIBRARY_ARROW);
	Linker.link(garrow_record_batch_file_reader_new, "garrow_record_batch_file_reader_new", LIBRARY_ARROW);
	Linker.link(garrow_record_batch_file_reader_get_n_record_batches, "garrow_record_batch_file_reader_get_n_record_batches", LIBRARY_ARROW);
	Linker.link(garrow_record_batch_file_reader_get_record_batch, "garrow_record_batch_file_reader_get_record_batch", LIBRARY_ARROW);
	Linker.link(garrow_record_batch_file_reader_get_schema, "garrow_record_batch_file_reader_get_schema", LIBRARY_ARROW);
	Linker.link(garrow_record_batch_file_reader_get_version, "garrow_record_batch_file_reader_get_version", LIBRARY_ARROW);
	Linker.link(garrow_record_batch_file_reader_read_record_batch, "garrow_record_batch_file_reader_read_record_batch", LIBRARY_ARROW);

	// arrow.RecordBatchFileWriter

	Linker.link(garrow_record_batch_file_writer_get_type, "garrow_record_batch_file_writer_get_type", LIBRARY_ARROW);
	Linker.link(garrow_record_batch_file_writer_new, "garrow_record_batch_file_writer_new", LIBRARY_ARROW);

	// arrow.RecordBatchIterator

	Linker.link(garrow_record_batch_iterator_get_type, "garrow_record_batch_iterator_get_type", LIBRARY_ARROW);
	Linker.link(garrow_record_batch_iterator_new, "garrow_record_batch_iterator_new", LIBRARY_ARROW);
	Linker.link(garrow_record_batch_iterator_equal, "garrow_record_batch_iterator_equal", LIBRARY_ARROW);
	Linker.link(garrow_record_batch_iterator_next, "garrow_record_batch_iterator_next", LIBRARY_ARROW);
	Linker.link(garrow_record_batch_iterator_to_list, "garrow_record_batch_iterator_to_list", LIBRARY_ARROW);

	// arrow.RecordBatchReader

	Linker.link(garrow_record_batch_reader_get_type, "garrow_record_batch_reader_get_type", LIBRARY_ARROW);
	Linker.link(garrow_record_batch_reader_new, "garrow_record_batch_reader_new", LIBRARY_ARROW);
	Linker.link(garrow_record_batch_reader_import, "garrow_record_batch_reader_import", LIBRARY_ARROW);
	Linker.link(garrow_record_batch_reader_export, "garrow_record_batch_reader_export", LIBRARY_ARROW);
	Linker.link(garrow_record_batch_reader_get_next_record_batch, "garrow_record_batch_reader_get_next_record_batch", LIBRARY_ARROW);
	Linker.link(garrow_record_batch_reader_get_schema, "garrow_record_batch_reader_get_schema", LIBRARY_ARROW);
	Linker.link(garrow_record_batch_reader_get_sources, "garrow_record_batch_reader_get_sources", LIBRARY_ARROW);
	Linker.link(garrow_record_batch_reader_read_all, "garrow_record_batch_reader_read_all", LIBRARY_ARROW);
	Linker.link(garrow_record_batch_reader_read_next, "garrow_record_batch_reader_read_next", LIBRARY_ARROW);
	Linker.link(garrow_record_batch_reader_read_next_record_batch, "garrow_record_batch_reader_read_next_record_batch", LIBRARY_ARROW);

	// arrow.RecordBatchStreamReader

	Linker.link(garrow_record_batch_stream_reader_get_type, "garrow_record_batch_stream_reader_get_type", LIBRARY_ARROW);
	Linker.link(garrow_record_batch_stream_reader_new, "garrow_record_batch_stream_reader_new", LIBRARY_ARROW);

	// arrow.RecordBatchStreamWriter

	Linker.link(garrow_record_batch_stream_writer_get_type, "garrow_record_batch_stream_writer_get_type", LIBRARY_ARROW);
	Linker.link(garrow_record_batch_stream_writer_new, "garrow_record_batch_stream_writer_new", LIBRARY_ARROW);

	// arrow.RecordBatchWriter

	Linker.link(garrow_record_batch_writer_get_type, "garrow_record_batch_writer_get_type", LIBRARY_ARROW);
	Linker.link(garrow_record_batch_writer_close, "garrow_record_batch_writer_close", LIBRARY_ARROW);
	Linker.link(garrow_record_batch_writer_is_closed, "garrow_record_batch_writer_is_closed", LIBRARY_ARROW);
	Linker.link(garrow_record_batch_writer_write_record_batch, "garrow_record_batch_writer_write_record_batch", LIBRARY_ARROW);
	Linker.link(garrow_record_batch_writer_write_table, "garrow_record_batch_writer_write_table", LIBRARY_ARROW);

	// arrow.ResizableBuffer

	Linker.link(garrow_resizable_buffer_get_type, "garrow_resizable_buffer_get_type", LIBRARY_ARROW);
	Linker.link(garrow_resizable_buffer_new, "garrow_resizable_buffer_new", LIBRARY_ARROW);
	Linker.link(garrow_resizable_buffer_reserve, "garrow_resizable_buffer_reserve", LIBRARY_ARROW);
	Linker.link(garrow_resizable_buffer_resize, "garrow_resizable_buffer_resize", LIBRARY_ARROW);

	// arrow.RoundOptions

	Linker.link(garrow_round_options_get_type, "garrow_round_options_get_type", LIBRARY_ARROW);
	Linker.link(garrow_round_options_new, "garrow_round_options_new", LIBRARY_ARROW);

	// arrow.RoundToMultipleOptions

	Linker.link(garrow_round_to_multiple_options_get_type, "garrow_round_to_multiple_options_get_type", LIBRARY_ARROW);
	Linker.link(garrow_round_to_multiple_options_new, "garrow_round_to_multiple_options_new", LIBRARY_ARROW);

	// arrow.RunEndEncodeOptions

	Linker.link(garrow_run_end_encode_options_get_type, "garrow_run_end_encode_options_get_type", LIBRARY_ARROW);
	Linker.link(garrow_run_end_encode_options_new, "garrow_run_end_encode_options_new", LIBRARY_ARROW);

	// arrow.RunEndEncodedArray

	Linker.link(garrow_run_end_encoded_array_get_type, "garrow_run_end_encoded_array_get_type", LIBRARY_ARROW);
	Linker.link(garrow_run_end_encoded_array_new, "garrow_run_end_encoded_array_new", LIBRARY_ARROW);
	Linker.link(garrow_run_end_encoded_array_decode, "garrow_run_end_encoded_array_decode", LIBRARY_ARROW);
	Linker.link(garrow_run_end_encoded_array_find_physical_length, "garrow_run_end_encoded_array_find_physical_length", LIBRARY_ARROW);
	Linker.link(garrow_run_end_encoded_array_find_physical_offset, "garrow_run_end_encoded_array_find_physical_offset", LIBRARY_ARROW);
	Linker.link(garrow_run_end_encoded_array_get_logical_run_ends, "garrow_run_end_encoded_array_get_logical_run_ends", LIBRARY_ARROW);
	Linker.link(garrow_run_end_encoded_array_get_logical_values, "garrow_run_end_encoded_array_get_logical_values", LIBRARY_ARROW);
	Linker.link(garrow_run_end_encoded_array_get_run_ends, "garrow_run_end_encoded_array_get_run_ends", LIBRARY_ARROW);
	Linker.link(garrow_run_end_encoded_array_get_values, "garrow_run_end_encoded_array_get_values", LIBRARY_ARROW);

	// arrow.RunEndEncodedDataType

	Linker.link(garrow_run_end_encoded_data_type_get_type, "garrow_run_end_encoded_data_type_get_type", LIBRARY_ARROW);
	Linker.link(garrow_run_end_encoded_data_type_new, "garrow_run_end_encoded_data_type_new", LIBRARY_ARROW);
	Linker.link(garrow_run_end_encoded_data_type_get_run_end_data_type, "garrow_run_end_encoded_data_type_get_run_end_data_type", LIBRARY_ARROW);
	Linker.link(garrow_run_end_encoded_data_type_get_value_data_type, "garrow_run_end_encoded_data_type_get_value_data_type", LIBRARY_ARROW);

	// arrow.S3FileSystem

	Linker.link(garrow_s3_file_system_get_type, "garrow_s3_file_system_get_type", LIBRARY_ARROW);

	// arrow.S3GlobalOptions

	Linker.link(garrow_s3_global_options_get_type, "garrow_s3_global_options_get_type", LIBRARY_ARROW);
	Linker.link(garrow_s3_global_options_new, "garrow_s3_global_options_new", LIBRARY_ARROW);

	// arrow.Scalar

	Linker.link(garrow_scalar_get_type, "garrow_scalar_get_type", LIBRARY_ARROW);
	Linker.link(garrow_scalar_parse, "garrow_scalar_parse", LIBRARY_ARROW);
	Linker.link(garrow_scalar_cast, "garrow_scalar_cast", LIBRARY_ARROW);
	Linker.link(garrow_scalar_equal, "garrow_scalar_equal", LIBRARY_ARROW);
	Linker.link(garrow_scalar_equal_options, "garrow_scalar_equal_options", LIBRARY_ARROW);
	Linker.link(garrow_scalar_get_data_type, "garrow_scalar_get_data_type", LIBRARY_ARROW);
	Linker.link(garrow_scalar_is_valid, "garrow_scalar_is_valid", LIBRARY_ARROW);
	Linker.link(garrow_scalar_to_string, "garrow_scalar_to_string", LIBRARY_ARROW);

	// arrow.ScalarAggregateOptions

	Linker.link(garrow_scalar_aggregate_options_get_type, "garrow_scalar_aggregate_options_get_type", LIBRARY_ARROW);
	Linker.link(garrow_scalar_aggregate_options_new, "garrow_scalar_aggregate_options_new", LIBRARY_ARROW);

	// arrow.ScalarDatum

	Linker.link(garrow_scalar_datum_get_type, "garrow_scalar_datum_get_type", LIBRARY_ARROW);
	Linker.link(garrow_scalar_datum_new, "garrow_scalar_datum_new", LIBRARY_ARROW);

	// arrow.Schema

	Linker.link(garrow_schema_get_type, "garrow_schema_get_type", LIBRARY_ARROW);
	Linker.link(garrow_schema_new, "garrow_schema_new", LIBRARY_ARROW);
	Linker.link(garrow_schema_import, "garrow_schema_import", LIBRARY_ARROW);
	Linker.link(garrow_schema_add_field, "garrow_schema_add_field", LIBRARY_ARROW);
	Linker.link(garrow_schema_equal, "garrow_schema_equal", LIBRARY_ARROW);
	Linker.link(garrow_schema_export, "garrow_schema_export", LIBRARY_ARROW);
	Linker.link(garrow_schema_get_field, "garrow_schema_get_field", LIBRARY_ARROW);
	Linker.link(garrow_schema_get_field_by_name, "garrow_schema_get_field_by_name", LIBRARY_ARROW);
	Linker.link(garrow_schema_get_field_index, "garrow_schema_get_field_index", LIBRARY_ARROW);
	Linker.link(garrow_schema_get_fields, "garrow_schema_get_fields", LIBRARY_ARROW);
	Linker.link(garrow_schema_get_metadata, "garrow_schema_get_metadata", LIBRARY_ARROW);
	Linker.link(garrow_schema_has_metadata, "garrow_schema_has_metadata", LIBRARY_ARROW);
	Linker.link(garrow_schema_n_fields, "garrow_schema_n_fields", LIBRARY_ARROW);
	Linker.link(garrow_schema_remove_field, "garrow_schema_remove_field", LIBRARY_ARROW);
	Linker.link(garrow_schema_replace_field, "garrow_schema_replace_field", LIBRARY_ARROW);
	Linker.link(garrow_schema_to_string, "garrow_schema_to_string", LIBRARY_ARROW);
	Linker.link(garrow_schema_to_string_metadata, "garrow_schema_to_string_metadata", LIBRARY_ARROW);
	Linker.link(garrow_schema_with_metadata, "garrow_schema_with_metadata", LIBRARY_ARROW);

	// arrow.SeekableInputStream

	Linker.link(garrow_seekable_input_stream_get_type, "garrow_seekable_input_stream_get_type", LIBRARY_ARROW);
	Linker.link(garrow_seekable_input_stream_get_size, "garrow_seekable_input_stream_get_size", LIBRARY_ARROW);
	Linker.link(garrow_seekable_input_stream_get_support_zero_copy, "garrow_seekable_input_stream_get_support_zero_copy", LIBRARY_ARROW);
	Linker.link(garrow_seekable_input_stream_peek, "garrow_seekable_input_stream_peek", LIBRARY_ARROW);
	Linker.link(garrow_seekable_input_stream_read_at, "garrow_seekable_input_stream_read_at", LIBRARY_ARROW);
	Linker.link(garrow_seekable_input_stream_read_at_bytes, "garrow_seekable_input_stream_read_at_bytes", LIBRARY_ARROW);

	// arrow.SetLookupOptions

	Linker.link(garrow_set_lookup_options_get_type, "garrow_set_lookup_options_get_type", LIBRARY_ARROW);
	Linker.link(garrow_set_lookup_options_new, "garrow_set_lookup_options_new", LIBRARY_ARROW);

	// arrow.SinkNodeOptions

	Linker.link(garrow_sink_node_options_get_type, "garrow_sink_node_options_get_type", LIBRARY_ARROW);
	Linker.link(garrow_sink_node_options_new, "garrow_sink_node_options_new", LIBRARY_ARROW);
	Linker.link(garrow_sink_node_options_get_reader, "garrow_sink_node_options_get_reader", LIBRARY_ARROW);

	// arrow.SlowFileSystem

	Linker.link(garrow_slow_file_system_get_type, "garrow_slow_file_system_get_type", LIBRARY_ARROW);
	Linker.link(garrow_slow_file_system_new_average_latency, "garrow_slow_file_system_new_average_latency", LIBRARY_ARROW);
	Linker.link(garrow_slow_file_system_new_average_latency_and_seed, "garrow_slow_file_system_new_average_latency_and_seed", LIBRARY_ARROW);

	// arrow.SortKey

	Linker.link(garrow_sort_key_get_type, "garrow_sort_key_get_type", LIBRARY_ARROW);
	Linker.link(garrow_sort_key_new, "garrow_sort_key_new", LIBRARY_ARROW);
	Linker.link(garrow_sort_key_equal, "garrow_sort_key_equal", LIBRARY_ARROW);

	// arrow.SortOptions

	Linker.link(garrow_sort_options_get_type, "garrow_sort_options_get_type", LIBRARY_ARROW);
	Linker.link(garrow_sort_options_new, "garrow_sort_options_new", LIBRARY_ARROW);
	Linker.link(garrow_sort_options_add_sort_key, "garrow_sort_options_add_sort_key", LIBRARY_ARROW);
	Linker.link(garrow_sort_options_equal, "garrow_sort_options_equal", LIBRARY_ARROW);
	Linker.link(garrow_sort_options_get_sort_keys, "garrow_sort_options_get_sort_keys", LIBRARY_ARROW);
	Linker.link(garrow_sort_options_set_sort_keys, "garrow_sort_options_set_sort_keys", LIBRARY_ARROW);

	// arrow.SourceNodeOptions

	Linker.link(garrow_source_node_options_get_type, "garrow_source_node_options_get_type", LIBRARY_ARROW);
	Linker.link(garrow_source_node_options_new_record_batch, "garrow_source_node_options_new_record_batch", LIBRARY_ARROW);
	Linker.link(garrow_source_node_options_new_record_batch_reader, "garrow_source_node_options_new_record_batch_reader", LIBRARY_ARROW);
	Linker.link(garrow_source_node_options_new_table, "garrow_source_node_options_new_table", LIBRARY_ARROW);

	// arrow.SparseUnionArray

	Linker.link(garrow_sparse_union_array_get_type, "garrow_sparse_union_array_get_type", LIBRARY_ARROW);
	Linker.link(garrow_sparse_union_array_new, "garrow_sparse_union_array_new", LIBRARY_ARROW);
	Linker.link(garrow_sparse_union_array_new_data_type, "garrow_sparse_union_array_new_data_type", LIBRARY_ARROW);

	// arrow.SparseUnionArrayBuilder

	Linker.link(garrow_sparse_union_array_builder_get_type, "garrow_sparse_union_array_builder_get_type", LIBRARY_ARROW);
	Linker.link(garrow_sparse_union_array_builder_new, "garrow_sparse_union_array_builder_new", LIBRARY_ARROW);

	// arrow.SparseUnionDataType

	Linker.link(garrow_sparse_union_data_type_get_type, "garrow_sparse_union_data_type_get_type", LIBRARY_ARROW);
	Linker.link(garrow_sparse_union_data_type_new, "garrow_sparse_union_data_type_new", LIBRARY_ARROW);

	// arrow.SparseUnionScalar

	Linker.link(garrow_sparse_union_scalar_get_type, "garrow_sparse_union_scalar_get_type", LIBRARY_ARROW);
	Linker.link(garrow_sparse_union_scalar_new, "garrow_sparse_union_scalar_new", LIBRARY_ARROW);

	// arrow.SplitPatternOptions

	Linker.link(garrow_split_pattern_options_get_type, "garrow_split_pattern_options_get_type", LIBRARY_ARROW);
	Linker.link(garrow_split_pattern_options_new, "garrow_split_pattern_options_new", LIBRARY_ARROW);

	// arrow.StreamDecoder

	Linker.link(garrow_stream_decoder_get_type, "garrow_stream_decoder_get_type", LIBRARY_ARROW);
	Linker.link(garrow_stream_decoder_new, "garrow_stream_decoder_new", LIBRARY_ARROW);
	Linker.link(garrow_stream_decoder_consume_buffer, "garrow_stream_decoder_consume_buffer", LIBRARY_ARROW);
	Linker.link(garrow_stream_decoder_consume_bytes, "garrow_stream_decoder_consume_bytes", LIBRARY_ARROW);
	Linker.link(garrow_stream_decoder_get_next_required_size, "garrow_stream_decoder_get_next_required_size", LIBRARY_ARROW);
	Linker.link(garrow_stream_decoder_get_schema, "garrow_stream_decoder_get_schema", LIBRARY_ARROW);
	Linker.link(garrow_stream_decoder_reset, "garrow_stream_decoder_reset", LIBRARY_ARROW);

	// arrow.StreamListener

	Linker.link(garrow_stream_listener_get_type, "garrow_stream_listener_get_type", LIBRARY_ARROW);
	Linker.link(garrow_stream_listener_on_eos, "garrow_stream_listener_on_eos", LIBRARY_ARROW);
	Linker.link(garrow_stream_listener_on_record_batch_decoded, "garrow_stream_listener_on_record_batch_decoded", LIBRARY_ARROW);
	Linker.link(garrow_stream_listener_on_schema_decoded, "garrow_stream_listener_on_schema_decoded", LIBRARY_ARROW);

	// arrow.StrftimeOptions

	Linker.link(garrow_strftime_options_get_type, "garrow_strftime_options_get_type", LIBRARY_ARROW);
	Linker.link(garrow_strftime_options_new, "garrow_strftime_options_new", LIBRARY_ARROW);

	// arrow.StringArray

	Linker.link(garrow_string_array_get_type, "garrow_string_array_get_type", LIBRARY_ARROW);
	Linker.link(garrow_string_array_new, "garrow_string_array_new", LIBRARY_ARROW);
	Linker.link(garrow_string_array_get_string, "garrow_string_array_get_string", LIBRARY_ARROW);

	// arrow.StringArrayBuilder

	Linker.link(garrow_string_array_builder_get_type, "garrow_string_array_builder_get_type", LIBRARY_ARROW);
	Linker.link(garrow_string_array_builder_new, "garrow_string_array_builder_new", LIBRARY_ARROW);
	Linker.link(garrow_string_array_builder_append, "garrow_string_array_builder_append", LIBRARY_ARROW);
	Linker.link(garrow_string_array_builder_append_string, "garrow_string_array_builder_append_string", LIBRARY_ARROW);
	Linker.link(garrow_string_array_builder_append_string_len, "garrow_string_array_builder_append_string_len", LIBRARY_ARROW);
	Linker.link(garrow_string_array_builder_append_strings, "garrow_string_array_builder_append_strings", LIBRARY_ARROW);
	Linker.link(garrow_string_array_builder_append_value, "garrow_string_array_builder_append_value", LIBRARY_ARROW);
	Linker.link(garrow_string_array_builder_append_values, "garrow_string_array_builder_append_values", LIBRARY_ARROW);

	// arrow.StringDataType

	Linker.link(garrow_string_data_type_get_type, "garrow_string_data_type_get_type", LIBRARY_ARROW);
	Linker.link(garrow_string_data_type_new, "garrow_string_data_type_new", LIBRARY_ARROW);

	// arrow.StringDictionaryArrayBuilder

	Linker.link(garrow_string_dictionary_array_builder_get_type, "garrow_string_dictionary_array_builder_get_type", LIBRARY_ARROW);
	Linker.link(garrow_string_dictionary_array_builder_new, "garrow_string_dictionary_array_builder_new", LIBRARY_ARROW);
	Linker.link(garrow_string_dictionary_array_builder_append_array, "garrow_string_dictionary_array_builder_append_array", LIBRARY_ARROW);
	Linker.link(garrow_string_dictionary_array_builder_append_indices, "garrow_string_dictionary_array_builder_append_indices", LIBRARY_ARROW);
	Linker.link(garrow_string_dictionary_array_builder_append_null, "garrow_string_dictionary_array_builder_append_null", LIBRARY_ARROW);
	Linker.link(garrow_string_dictionary_array_builder_append_string, "garrow_string_dictionary_array_builder_append_string", LIBRARY_ARROW);
	Linker.link(garrow_string_dictionary_array_builder_finish_delta, "garrow_string_dictionary_array_builder_finish_delta", LIBRARY_ARROW);
	Linker.link(garrow_string_dictionary_array_builder_get_dictionary_length, "garrow_string_dictionary_array_builder_get_dictionary_length", LIBRARY_ARROW);
	Linker.link(garrow_string_dictionary_array_builder_insert_memo_values, "garrow_string_dictionary_array_builder_insert_memo_values", LIBRARY_ARROW);
	Linker.link(garrow_string_dictionary_array_builder_reset_full, "garrow_string_dictionary_array_builder_reset_full", LIBRARY_ARROW);

	// arrow.StringScalar

	Linker.link(garrow_string_scalar_get_type, "garrow_string_scalar_get_type", LIBRARY_ARROW);
	Linker.link(garrow_string_scalar_new, "garrow_string_scalar_new", LIBRARY_ARROW);

	// arrow.StrptimeOptions

	Linker.link(garrow_strptime_options_get_type, "garrow_strptime_options_get_type", LIBRARY_ARROW);
	Linker.link(garrow_strptime_options_new, "garrow_strptime_options_new", LIBRARY_ARROW);

	// arrow.StrptimeTimestampParser

	Linker.link(garrow_strptime_timestamp_parser_get_type, "garrow_strptime_timestamp_parser_get_type", LIBRARY_ARROW);
	Linker.link(garrow_strptime_timestamp_parser_new, "garrow_strptime_timestamp_parser_new", LIBRARY_ARROW);
	Linker.link(garrow_strptime_timestamp_parser_get_format, "garrow_strptime_timestamp_parser_get_format", LIBRARY_ARROW);

	// arrow.StructArray

	Linker.link(garrow_struct_array_get_type, "garrow_struct_array_get_type", LIBRARY_ARROW);
	Linker.link(garrow_struct_array_new, "garrow_struct_array_new", LIBRARY_ARROW);
	Linker.link(garrow_struct_array_flatten, "garrow_struct_array_flatten", LIBRARY_ARROW);
	Linker.link(garrow_struct_array_get_field, "garrow_struct_array_get_field", LIBRARY_ARROW);
	Linker.link(garrow_struct_array_get_fields, "garrow_struct_array_get_fields", LIBRARY_ARROW);

	// arrow.StructArrayBuilder

	Linker.link(garrow_struct_array_builder_get_type, "garrow_struct_array_builder_get_type", LIBRARY_ARROW);
	Linker.link(garrow_struct_array_builder_new, "garrow_struct_array_builder_new", LIBRARY_ARROW);
	Linker.link(garrow_struct_array_builder_append, "garrow_struct_array_builder_append", LIBRARY_ARROW);
	Linker.link(garrow_struct_array_builder_append_null, "garrow_struct_array_builder_append_null", LIBRARY_ARROW);
	Linker.link(garrow_struct_array_builder_append_value, "garrow_struct_array_builder_append_value", LIBRARY_ARROW);
	Linker.link(garrow_struct_array_builder_get_field_builder, "garrow_struct_array_builder_get_field_builder", LIBRARY_ARROW);
	Linker.link(garrow_struct_array_builder_get_field_builders, "garrow_struct_array_builder_get_field_builders", LIBRARY_ARROW);

	// arrow.StructDataType

	Linker.link(garrow_struct_data_type_get_type, "garrow_struct_data_type_get_type", LIBRARY_ARROW);
	Linker.link(garrow_struct_data_type_new, "garrow_struct_data_type_new", LIBRARY_ARROW);
	Linker.link(garrow_struct_data_type_get_field, "garrow_struct_data_type_get_field", LIBRARY_ARROW);
	Linker.link(garrow_struct_data_type_get_field_by_name, "garrow_struct_data_type_get_field_by_name", LIBRARY_ARROW);
	Linker.link(garrow_struct_data_type_get_field_index, "garrow_struct_data_type_get_field_index", LIBRARY_ARROW);
	Linker.link(garrow_struct_data_type_get_fields, "garrow_struct_data_type_get_fields", LIBRARY_ARROW);
	Linker.link(garrow_struct_data_type_get_n_fields, "garrow_struct_data_type_get_n_fields", LIBRARY_ARROW);

	// arrow.StructFieldOptions

	Linker.link(garrow_struct_field_options_get_type, "garrow_struct_field_options_get_type", LIBRARY_ARROW);
	Linker.link(garrow_struct_field_options_new, "garrow_struct_field_options_new", LIBRARY_ARROW);
	Linker.link(garrow_struct_field_options_set_field_ref, "garrow_struct_field_options_set_field_ref", LIBRARY_ARROW);

	// arrow.StructScalar

	Linker.link(garrow_struct_scalar_get_type, "garrow_struct_scalar_get_type", LIBRARY_ARROW);
	Linker.link(garrow_struct_scalar_new, "garrow_struct_scalar_new", LIBRARY_ARROW);
	Linker.link(garrow_struct_scalar_get_value, "garrow_struct_scalar_get_value", LIBRARY_ARROW);

	// arrow.SubTreeFileSystem

	Linker.link(garrow_sub_tree_file_system_get_type, "garrow_sub_tree_file_system_get_type", LIBRARY_ARROW);
	Linker.link(garrow_sub_tree_file_system_new, "garrow_sub_tree_file_system_new", LIBRARY_ARROW);

	// arrow.Table

	Linker.link(garrow_table_get_type, "garrow_table_get_type", LIBRARY_ARROW);
	Linker.link(garrow_table_new_arrays, "garrow_table_new_arrays", LIBRARY_ARROW);
	Linker.link(garrow_table_new_chunked_arrays, "garrow_table_new_chunked_arrays", LIBRARY_ARROW);
	Linker.link(garrow_table_new_record_batches, "garrow_table_new_record_batches", LIBRARY_ARROW);
	Linker.link(garrow_table_new_values, "garrow_table_new_values", LIBRARY_ARROW);
	Linker.link(garrow_table_add_column, "garrow_table_add_column", LIBRARY_ARROW);
	Linker.link(garrow_table_combine_chunks, "garrow_table_combine_chunks", LIBRARY_ARROW);
	Linker.link(garrow_table_concatenate, "garrow_table_concatenate", LIBRARY_ARROW);
	Linker.link(garrow_table_equal, "garrow_table_equal", LIBRARY_ARROW);
	Linker.link(garrow_table_equal_metadata, "garrow_table_equal_metadata", LIBRARY_ARROW);
	Linker.link(garrow_table_filter, "garrow_table_filter", LIBRARY_ARROW);
	Linker.link(garrow_table_filter_chunked_array, "garrow_table_filter_chunked_array", LIBRARY_ARROW);
	Linker.link(garrow_table_get_column_data, "garrow_table_get_column_data", LIBRARY_ARROW);
	Linker.link(garrow_table_get_n_columns, "garrow_table_get_n_columns", LIBRARY_ARROW);
	Linker.link(garrow_table_get_n_rows, "garrow_table_get_n_rows", LIBRARY_ARROW);
	Linker.link(garrow_table_get_schema, "garrow_table_get_schema", LIBRARY_ARROW);
	Linker.link(garrow_table_remove_column, "garrow_table_remove_column", LIBRARY_ARROW);
	Linker.link(garrow_table_replace_column, "garrow_table_replace_column", LIBRARY_ARROW);
	Linker.link(garrow_table_slice, "garrow_table_slice", LIBRARY_ARROW);
	Linker.link(garrow_table_sort_indices, "garrow_table_sort_indices", LIBRARY_ARROW);
	Linker.link(garrow_table_take, "garrow_table_take", LIBRARY_ARROW);
	Linker.link(garrow_table_take_chunked_array, "garrow_table_take_chunked_array", LIBRARY_ARROW);
	Linker.link(garrow_table_to_string, "garrow_table_to_string", LIBRARY_ARROW);
	Linker.link(garrow_table_write_as_feather, "garrow_table_write_as_feather", LIBRARY_ARROW);

	// arrow.TableBatchReader

	Linker.link(garrow_table_batch_reader_get_type, "garrow_table_batch_reader_get_type", LIBRARY_ARROW);
	Linker.link(garrow_table_batch_reader_new, "garrow_table_batch_reader_new", LIBRARY_ARROW);
	Linker.link(garrow_table_batch_reader_set_max_chunk_size, "garrow_table_batch_reader_set_max_chunk_size", LIBRARY_ARROW);

	// arrow.TableConcatenateOptions

	Linker.link(garrow_table_concatenate_options_get_type, "garrow_table_concatenate_options_get_type", LIBRARY_ARROW);
	Linker.link(garrow_table_concatenate_options_new, "garrow_table_concatenate_options_new", LIBRARY_ARROW);

	// arrow.TableDatum

	Linker.link(garrow_table_datum_get_type, "garrow_table_datum_get_type", LIBRARY_ARROW);
	Linker.link(garrow_table_datum_new, "garrow_table_datum_new", LIBRARY_ARROW);

	// arrow.TakeOptions

	Linker.link(garrow_take_options_get_type, "garrow_take_options_get_type", LIBRARY_ARROW);
	Linker.link(garrow_take_options_new, "garrow_take_options_new", LIBRARY_ARROW);

	// arrow.TemporalDataType

	Linker.link(garrow_temporal_data_type_get_type, "garrow_temporal_data_type_get_type", LIBRARY_ARROW);

	// arrow.Tensor

	Linker.link(garrow_tensor_get_type, "garrow_tensor_get_type", LIBRARY_ARROW);
	Linker.link(garrow_tensor_new, "garrow_tensor_new", LIBRARY_ARROW);
	Linker.link(garrow_tensor_equal, "garrow_tensor_equal", LIBRARY_ARROW);
	Linker.link(garrow_tensor_get_buffer, "garrow_tensor_get_buffer", LIBRARY_ARROW);
	Linker.link(garrow_tensor_get_dimension_name, "garrow_tensor_get_dimension_name", LIBRARY_ARROW);
	Linker.link(garrow_tensor_get_n_dimensions, "garrow_tensor_get_n_dimensions", LIBRARY_ARROW);
	Linker.link(garrow_tensor_get_shape, "garrow_tensor_get_shape", LIBRARY_ARROW);
	Linker.link(garrow_tensor_get_size, "garrow_tensor_get_size", LIBRARY_ARROW);
	Linker.link(garrow_tensor_get_strides, "garrow_tensor_get_strides", LIBRARY_ARROW);
	Linker.link(garrow_tensor_get_value_data_type, "garrow_tensor_get_value_data_type", LIBRARY_ARROW);
	Linker.link(garrow_tensor_get_value_type, "garrow_tensor_get_value_type", LIBRARY_ARROW);
	Linker.link(garrow_tensor_is_column_major, "garrow_tensor_is_column_major", LIBRARY_ARROW);
	Linker.link(garrow_tensor_is_contiguous, "garrow_tensor_is_contiguous", LIBRARY_ARROW);
	Linker.link(garrow_tensor_is_mutable, "garrow_tensor_is_mutable", LIBRARY_ARROW);
	Linker.link(garrow_tensor_is_row_major, "garrow_tensor_is_row_major", LIBRARY_ARROW);

	// arrow.Time32Array

	Linker.link(garrow_time32_array_get_type, "garrow_time32_array_get_type", LIBRARY_ARROW);
	Linker.link(garrow_time32_array_new, "garrow_time32_array_new", LIBRARY_ARROW);
	Linker.link(garrow_time32_array_get_value, "garrow_time32_array_get_value", LIBRARY_ARROW);
	Linker.link(garrow_time32_array_get_values, "garrow_time32_array_get_values", LIBRARY_ARROW);

	// arrow.Time32ArrayBuilder

	Linker.link(garrow_time32_array_builder_get_type, "garrow_time32_array_builder_get_type", LIBRARY_ARROW);
	Linker.link(garrow_time32_array_builder_new, "garrow_time32_array_builder_new", LIBRARY_ARROW);
	Linker.link(garrow_time32_array_builder_append, "garrow_time32_array_builder_append", LIBRARY_ARROW);
	Linker.link(garrow_time32_array_builder_append_null, "garrow_time32_array_builder_append_null", LIBRARY_ARROW);
	Linker.link(garrow_time32_array_builder_append_nulls, "garrow_time32_array_builder_append_nulls", LIBRARY_ARROW);
	Linker.link(garrow_time32_array_builder_append_value, "garrow_time32_array_builder_append_value", LIBRARY_ARROW);
	Linker.link(garrow_time32_array_builder_append_values, "garrow_time32_array_builder_append_values", LIBRARY_ARROW);

	// arrow.Time32DataType

	Linker.link(garrow_time32_data_type_get_type, "garrow_time32_data_type_get_type", LIBRARY_ARROW);
	Linker.link(garrow_time32_data_type_new, "garrow_time32_data_type_new", LIBRARY_ARROW);

	// arrow.Time32Scalar

	Linker.link(garrow_time32_scalar_get_type, "garrow_time32_scalar_get_type", LIBRARY_ARROW);
	Linker.link(garrow_time32_scalar_new, "garrow_time32_scalar_new", LIBRARY_ARROW);
	Linker.link(garrow_time32_scalar_get_value, "garrow_time32_scalar_get_value", LIBRARY_ARROW);

	// arrow.Time64Array

	Linker.link(garrow_time64_array_get_type, "garrow_time64_array_get_type", LIBRARY_ARROW);
	Linker.link(garrow_time64_array_new, "garrow_time64_array_new", LIBRARY_ARROW);
	Linker.link(garrow_time64_array_get_value, "garrow_time64_array_get_value", LIBRARY_ARROW);
	Linker.link(garrow_time64_array_get_values, "garrow_time64_array_get_values", LIBRARY_ARROW);

	// arrow.Time64ArrayBuilder

	Linker.link(garrow_time64_array_builder_get_type, "garrow_time64_array_builder_get_type", LIBRARY_ARROW);
	Linker.link(garrow_time64_array_builder_new, "garrow_time64_array_builder_new", LIBRARY_ARROW);
	Linker.link(garrow_time64_array_builder_append, "garrow_time64_array_builder_append", LIBRARY_ARROW);
	Linker.link(garrow_time64_array_builder_append_null, "garrow_time64_array_builder_append_null", LIBRARY_ARROW);
	Linker.link(garrow_time64_array_builder_append_nulls, "garrow_time64_array_builder_append_nulls", LIBRARY_ARROW);
	Linker.link(garrow_time64_array_builder_append_value, "garrow_time64_array_builder_append_value", LIBRARY_ARROW);
	Linker.link(garrow_time64_array_builder_append_values, "garrow_time64_array_builder_append_values", LIBRARY_ARROW);

	// arrow.Time64DataType

	Linker.link(garrow_time64_data_type_get_type, "garrow_time64_data_type_get_type", LIBRARY_ARROW);
	Linker.link(garrow_time64_data_type_new, "garrow_time64_data_type_new", LIBRARY_ARROW);

	// arrow.Time64Scalar

	Linker.link(garrow_time64_scalar_get_type, "garrow_time64_scalar_get_type", LIBRARY_ARROW);
	Linker.link(garrow_time64_scalar_new, "garrow_time64_scalar_new", LIBRARY_ARROW);
	Linker.link(garrow_time64_scalar_get_value, "garrow_time64_scalar_get_value", LIBRARY_ARROW);

	// arrow.TimeDataType

	Linker.link(garrow_time_data_type_get_type, "garrow_time_data_type_get_type", LIBRARY_ARROW);
	Linker.link(garrow_time_data_type_get_unit, "garrow_time_data_type_get_unit", LIBRARY_ARROW);

	// arrow.TimestampArray

	Linker.link(garrow_timestamp_array_get_type, "garrow_timestamp_array_get_type", LIBRARY_ARROW);
	Linker.link(garrow_timestamp_array_new, "garrow_timestamp_array_new", LIBRARY_ARROW);
	Linker.link(garrow_timestamp_array_get_value, "garrow_timestamp_array_get_value", LIBRARY_ARROW);
	Linker.link(garrow_timestamp_array_get_values, "garrow_timestamp_array_get_values", LIBRARY_ARROW);

	// arrow.TimestampArrayBuilder

	Linker.link(garrow_timestamp_array_builder_get_type, "garrow_timestamp_array_builder_get_type", LIBRARY_ARROW);
	Linker.link(garrow_timestamp_array_builder_new, "garrow_timestamp_array_builder_new", LIBRARY_ARROW);
	Linker.link(garrow_timestamp_array_builder_append, "garrow_timestamp_array_builder_append", LIBRARY_ARROW);
	Linker.link(garrow_timestamp_array_builder_append_null, "garrow_timestamp_array_builder_append_null", LIBRARY_ARROW);
	Linker.link(garrow_timestamp_array_builder_append_nulls, "garrow_timestamp_array_builder_append_nulls", LIBRARY_ARROW);
	Linker.link(garrow_timestamp_array_builder_append_value, "garrow_timestamp_array_builder_append_value", LIBRARY_ARROW);
	Linker.link(garrow_timestamp_array_builder_append_values, "garrow_timestamp_array_builder_append_values", LIBRARY_ARROW);

	// arrow.TimestampDataType

	Linker.link(garrow_timestamp_data_type_get_type, "garrow_timestamp_data_type_get_type", LIBRARY_ARROW);
	Linker.link(garrow_timestamp_data_type_new, "garrow_timestamp_data_type_new", LIBRARY_ARROW);
	Linker.link(garrow_timestamp_data_type_get_unit, "garrow_timestamp_data_type_get_unit", LIBRARY_ARROW);

	// arrow.TimestampParser

	Linker.link(garrow_timestamp_parser_get_type, "garrow_timestamp_parser_get_type", LIBRARY_ARROW);
	Linker.link(garrow_timestamp_parser_get_kind, "garrow_timestamp_parser_get_kind", LIBRARY_ARROW);

	// arrow.TimestampScalar

	Linker.link(garrow_timestamp_scalar_get_type, "garrow_timestamp_scalar_get_type", LIBRARY_ARROW);
	Linker.link(garrow_timestamp_scalar_new, "garrow_timestamp_scalar_new", LIBRARY_ARROW);
	Linker.link(garrow_timestamp_scalar_get_value, "garrow_timestamp_scalar_get_value", LIBRARY_ARROW);

	// arrow.UInt16Array

	Linker.link(garrow_uint16_array_get_type, "garrow_uint16_array_get_type", LIBRARY_ARROW);
	Linker.link(garrow_uint16_array_new, "garrow_uint16_array_new", LIBRARY_ARROW);
	Linker.link(garrow_uint16_array_get_value, "garrow_uint16_array_get_value", LIBRARY_ARROW);
	Linker.link(garrow_uint16_array_get_values, "garrow_uint16_array_get_values", LIBRARY_ARROW);
	Linker.link(garrow_uint16_array_sum, "garrow_uint16_array_sum", LIBRARY_ARROW);

	// arrow.UInt16ArrayBuilder

	Linker.link(garrow_uint16_array_builder_get_type, "garrow_uint16_array_builder_get_type", LIBRARY_ARROW);
	Linker.link(garrow_uint16_array_builder_new, "garrow_uint16_array_builder_new", LIBRARY_ARROW);
	Linker.link(garrow_uint16_array_builder_append, "garrow_uint16_array_builder_append", LIBRARY_ARROW);
	Linker.link(garrow_uint16_array_builder_append_null, "garrow_uint16_array_builder_append_null", LIBRARY_ARROW);
	Linker.link(garrow_uint16_array_builder_append_nulls, "garrow_uint16_array_builder_append_nulls", LIBRARY_ARROW);
	Linker.link(garrow_uint16_array_builder_append_value, "garrow_uint16_array_builder_append_value", LIBRARY_ARROW);
	Linker.link(garrow_uint16_array_builder_append_values, "garrow_uint16_array_builder_append_values", LIBRARY_ARROW);

	// arrow.UInt16DataType

	Linker.link(garrow_uint16_data_type_get_type, "garrow_uint16_data_type_get_type", LIBRARY_ARROW);
	Linker.link(garrow_uint16_data_type_new, "garrow_uint16_data_type_new", LIBRARY_ARROW);

	// arrow.UInt16Scalar

	Linker.link(garrow_uint16_scalar_get_type, "garrow_uint16_scalar_get_type", LIBRARY_ARROW);
	Linker.link(garrow_uint16_scalar_new, "garrow_uint16_scalar_new", LIBRARY_ARROW);
	Linker.link(garrow_uint16_scalar_get_value, "garrow_uint16_scalar_get_value", LIBRARY_ARROW);

	// arrow.UInt32Array

	Linker.link(garrow_uint32_array_get_type, "garrow_uint32_array_get_type", LIBRARY_ARROW);
	Linker.link(garrow_uint32_array_new, "garrow_uint32_array_new", LIBRARY_ARROW);
	Linker.link(garrow_uint32_array_get_value, "garrow_uint32_array_get_value", LIBRARY_ARROW);
	Linker.link(garrow_uint32_array_get_values, "garrow_uint32_array_get_values", LIBRARY_ARROW);
	Linker.link(garrow_uint32_array_sum, "garrow_uint32_array_sum", LIBRARY_ARROW);

	// arrow.UInt32ArrayBuilder

	Linker.link(garrow_uint32_array_builder_get_type, "garrow_uint32_array_builder_get_type", LIBRARY_ARROW);
	Linker.link(garrow_uint32_array_builder_new, "garrow_uint32_array_builder_new", LIBRARY_ARROW);
	Linker.link(garrow_uint32_array_builder_append, "garrow_uint32_array_builder_append", LIBRARY_ARROW);
	Linker.link(garrow_uint32_array_builder_append_null, "garrow_uint32_array_builder_append_null", LIBRARY_ARROW);
	Linker.link(garrow_uint32_array_builder_append_nulls, "garrow_uint32_array_builder_append_nulls", LIBRARY_ARROW);
	Linker.link(garrow_uint32_array_builder_append_value, "garrow_uint32_array_builder_append_value", LIBRARY_ARROW);
	Linker.link(garrow_uint32_array_builder_append_values, "garrow_uint32_array_builder_append_values", LIBRARY_ARROW);

	// arrow.UInt32DataType

	Linker.link(garrow_uint32_data_type_get_type, "garrow_uint32_data_type_get_type", LIBRARY_ARROW);
	Linker.link(garrow_uint32_data_type_new, "garrow_uint32_data_type_new", LIBRARY_ARROW);

	// arrow.UInt32Scalar

	Linker.link(garrow_uint32_scalar_get_type, "garrow_uint32_scalar_get_type", LIBRARY_ARROW);
	Linker.link(garrow_uint32_scalar_new, "garrow_uint32_scalar_new", LIBRARY_ARROW);
	Linker.link(garrow_uint32_scalar_get_value, "garrow_uint32_scalar_get_value", LIBRARY_ARROW);

	// arrow.UInt64Array

	Linker.link(garrow_uint64_array_get_type, "garrow_uint64_array_get_type", LIBRARY_ARROW);
	Linker.link(garrow_uint64_array_new, "garrow_uint64_array_new", LIBRARY_ARROW);
	Linker.link(garrow_uint64_array_get_value, "garrow_uint64_array_get_value", LIBRARY_ARROW);
	Linker.link(garrow_uint64_array_get_values, "garrow_uint64_array_get_values", LIBRARY_ARROW);
	Linker.link(garrow_uint64_array_sum, "garrow_uint64_array_sum", LIBRARY_ARROW);

	// arrow.UInt64ArrayBuilder

	Linker.link(garrow_uint64_array_builder_get_type, "garrow_uint64_array_builder_get_type", LIBRARY_ARROW);
	Linker.link(garrow_uint64_array_builder_new, "garrow_uint64_array_builder_new", LIBRARY_ARROW);
	Linker.link(garrow_uint64_array_builder_append, "garrow_uint64_array_builder_append", LIBRARY_ARROW);
	Linker.link(garrow_uint64_array_builder_append_null, "garrow_uint64_array_builder_append_null", LIBRARY_ARROW);
	Linker.link(garrow_uint64_array_builder_append_nulls, "garrow_uint64_array_builder_append_nulls", LIBRARY_ARROW);
	Linker.link(garrow_uint64_array_builder_append_value, "garrow_uint64_array_builder_append_value", LIBRARY_ARROW);
	Linker.link(garrow_uint64_array_builder_append_values, "garrow_uint64_array_builder_append_values", LIBRARY_ARROW);

	// arrow.UInt64DataType

	Linker.link(garrow_uint64_data_type_get_type, "garrow_uint64_data_type_get_type", LIBRARY_ARROW);
	Linker.link(garrow_uint64_data_type_new, "garrow_uint64_data_type_new", LIBRARY_ARROW);

	// arrow.UInt64Scalar

	Linker.link(garrow_uint64_scalar_get_type, "garrow_uint64_scalar_get_type", LIBRARY_ARROW);
	Linker.link(garrow_uint64_scalar_new, "garrow_uint64_scalar_new", LIBRARY_ARROW);
	Linker.link(garrow_uint64_scalar_get_value, "garrow_uint64_scalar_get_value", LIBRARY_ARROW);

	// arrow.UInt8Array

	Linker.link(garrow_uint8_array_get_type, "garrow_uint8_array_get_type", LIBRARY_ARROW);
	Linker.link(garrow_uint8_array_new, "garrow_uint8_array_new", LIBRARY_ARROW);
	Linker.link(garrow_uint8_array_get_value, "garrow_uint8_array_get_value", LIBRARY_ARROW);
	Linker.link(garrow_uint8_array_get_values, "garrow_uint8_array_get_values", LIBRARY_ARROW);
	Linker.link(garrow_uint8_array_sum, "garrow_uint8_array_sum", LIBRARY_ARROW);

	// arrow.UInt8ArrayBuilder

	Linker.link(garrow_uint8_array_builder_get_type, "garrow_uint8_array_builder_get_type", LIBRARY_ARROW);
	Linker.link(garrow_uint8_array_builder_new, "garrow_uint8_array_builder_new", LIBRARY_ARROW);
	Linker.link(garrow_uint8_array_builder_append, "garrow_uint8_array_builder_append", LIBRARY_ARROW);
	Linker.link(garrow_uint8_array_builder_append_null, "garrow_uint8_array_builder_append_null", LIBRARY_ARROW);
	Linker.link(garrow_uint8_array_builder_append_nulls, "garrow_uint8_array_builder_append_nulls", LIBRARY_ARROW);
	Linker.link(garrow_uint8_array_builder_append_value, "garrow_uint8_array_builder_append_value", LIBRARY_ARROW);
	Linker.link(garrow_uint8_array_builder_append_values, "garrow_uint8_array_builder_append_values", LIBRARY_ARROW);

	// arrow.UInt8DataType

	Linker.link(garrow_uint8_data_type_get_type, "garrow_uint8_data_type_get_type", LIBRARY_ARROW);
	Linker.link(garrow_uint8_data_type_new, "garrow_uint8_data_type_new", LIBRARY_ARROW);

	// arrow.UInt8Scalar

	Linker.link(garrow_uint8_scalar_get_type, "garrow_uint8_scalar_get_type", LIBRARY_ARROW);
	Linker.link(garrow_uint8_scalar_new, "garrow_uint8_scalar_new", LIBRARY_ARROW);
	Linker.link(garrow_uint8_scalar_get_value, "garrow_uint8_scalar_get_value", LIBRARY_ARROW);

	// arrow.UIntArrayBuilder

	Linker.link(garrow_uint_array_builder_get_type, "garrow_uint_array_builder_get_type", LIBRARY_ARROW);
	Linker.link(garrow_uint_array_builder_new, "garrow_uint_array_builder_new", LIBRARY_ARROW);
	Linker.link(garrow_uint_array_builder_append, "garrow_uint_array_builder_append", LIBRARY_ARROW);
	Linker.link(garrow_uint_array_builder_append_null, "garrow_uint_array_builder_append_null", LIBRARY_ARROW);
	Linker.link(garrow_uint_array_builder_append_nulls, "garrow_uint_array_builder_append_nulls", LIBRARY_ARROW);
	Linker.link(garrow_uint_array_builder_append_value, "garrow_uint_array_builder_append_value", LIBRARY_ARROW);
	Linker.link(garrow_uint_array_builder_append_values, "garrow_uint_array_builder_append_values", LIBRARY_ARROW);

	// arrow.UTF8NormalizeOptions

	Linker.link(garrow_utf8_normalize_options_get_type, "garrow_utf8_normalize_options_get_type", LIBRARY_ARROW);
	Linker.link(garrow_utf8_normalize_options_new, "garrow_utf8_normalize_options_new", LIBRARY_ARROW);

	// arrow.UnionArray

	Linker.link(garrow_union_array_get_type, "garrow_union_array_get_type", LIBRARY_ARROW);
	Linker.link(garrow_union_array_get_child_id, "garrow_union_array_get_child_id", LIBRARY_ARROW);
	Linker.link(garrow_union_array_get_field, "garrow_union_array_get_field", LIBRARY_ARROW);
	Linker.link(garrow_union_array_get_type_code, "garrow_union_array_get_type_code", LIBRARY_ARROW);

	// arrow.UnionArrayBuilder

	Linker.link(garrow_union_array_builder_get_type, "garrow_union_array_builder_get_type", LIBRARY_ARROW);
	Linker.link(garrow_union_array_builder_append_child, "garrow_union_array_builder_append_child", LIBRARY_ARROW);
	Linker.link(garrow_union_array_builder_append_value, "garrow_union_array_builder_append_value", LIBRARY_ARROW);

	// arrow.UnionDataType

	Linker.link(garrow_union_data_type_get_type, "garrow_union_data_type_get_type", LIBRARY_ARROW);
	Linker.link(garrow_union_data_type_get_field, "garrow_union_data_type_get_field", LIBRARY_ARROW);
	Linker.link(garrow_union_data_type_get_fields, "garrow_union_data_type_get_fields", LIBRARY_ARROW);
	Linker.link(garrow_union_data_type_get_n_fields, "garrow_union_data_type_get_n_fields", LIBRARY_ARROW);
	Linker.link(garrow_union_data_type_get_type_codes, "garrow_union_data_type_get_type_codes", LIBRARY_ARROW);

	// arrow.UnionScalar

	Linker.link(garrow_union_scalar_get_type, "garrow_union_scalar_get_type", LIBRARY_ARROW);
	Linker.link(garrow_union_scalar_get_type_code, "garrow_union_scalar_get_type_code", LIBRARY_ARROW);
	Linker.link(garrow_union_scalar_get_value, "garrow_union_scalar_get_value", LIBRARY_ARROW);

	// arrow.VarianceOptions

	Linker.link(garrow_variance_options_get_type, "garrow_variance_options_get_type", LIBRARY_ARROW);
	Linker.link(garrow_variance_options_new, "garrow_variance_options_new", LIBRARY_ARROW);

	// arrow.Writable

	Linker.link(garrow_writable_get_type, "garrow_writable_get_type", LIBRARY_ARROW);
	Linker.link(garrow_writable_flush, "garrow_writable_flush", LIBRARY_ARROW);
	Linker.link(garrow_writable_write, "garrow_writable_write", LIBRARY_ARROW);

	// arrow.WritableFile

	Linker.link(garrow_writable_file_get_type, "garrow_writable_file_get_type", LIBRARY_ARROW);
	Linker.link(garrow_writable_file_write_at, "garrow_writable_file_write_at", LIBRARY_ARROW);

	// arrow.WriteOptions

	Linker.link(garrow_write_options_get_type, "garrow_write_options_get_type", LIBRARY_ARROW);
	Linker.link(garrow_write_options_new, "garrow_write_options_new", LIBRARY_ARROW);
}

__gshared extern(C)
{

	// arrow.AggregateNodeOptions

	GType function() c_garrow_aggregate_node_options_get_type;
	GArrowAggregateNodeOptions* function(GList* aggregations, char** keys, size_t nKeys, GError** err) c_garrow_aggregate_node_options_new;

	// arrow.Aggregation

	GType function() c_garrow_aggregation_get_type;
	GArrowAggregation* function(const(char)* function_, GArrowFunctionOptions* options, const(char)* input, const(char)* output) c_garrow_aggregation_new;

	// arrow.Array

	GType function() c_garrow_array_get_type;
	GArrowArray* function(void* cAbiArray, GArrowDataType* dataType, GError** err) c_garrow_array_import;
	GArrowArray* function(GArrowArray* array, GArrowDataType* targetDataType, GArrowCastOptions* options, GError** err) c_garrow_array_cast;
	GArrowArray* function(GArrowArray* array, GList* otherArrays, GError** err) c_garrow_array_concatenate;
	long function(GArrowArray* array, GArrowCountOptions* options, GError** err) c_garrow_array_count;
	GArrowStructArray* function(GArrowArray* array, GError** err) c_garrow_array_count_values;
	GArrowDictionaryArray* function(GArrowArray* array, GError** err) c_garrow_array_dictionary_encode;
	char* function(GArrowArray* array, GArrowArray* otherArray) c_garrow_array_diff_unified;
	int function(GArrowArray* array, GArrowArray* otherArray) c_garrow_array_equal;
	int function(GArrowArray* array, GArrowArray* otherArray) c_garrow_array_equal_approx;
	int function(GArrowArray* array, GArrowArray* otherArray, GArrowEqualOptions* options) c_garrow_array_equal_options;
	int function(GArrowArray* array, long startIndex, GArrowArray* otherArray, long otherStartIndex, long endIndex, GArrowEqualOptions* options) c_garrow_array_equal_range;
	int function(GArrowArray* array, void** cAbiArray, void** cAbiSchema, GError** err) c_garrow_array_export;
	GArrowArray* function(GArrowArray* array, GArrowBooleanArray* filter, GArrowFilterOptions* options, GError** err) c_garrow_array_filter;
	long function(GArrowArray* array) c_garrow_array_get_length;
	long function(GArrowArray* array) c_garrow_array_get_n_nulls;
	GArrowBuffer* function(GArrowArray* array) c_garrow_array_get_null_bitmap;
	long function(GArrowArray* array) c_garrow_array_get_offset;
	GArrowDataType* function(GArrowArray* array) c_garrow_array_get_value_data_type;
	GArrowType function(GArrowArray* array) c_garrow_array_get_value_type;
	GArrowBooleanArray* function(GArrowArray* left, GArrowArray* right, GError** err) c_garrow_array_is_in;
	GArrowBooleanArray* function(GArrowArray* left, GArrowChunkedArray* right, GError** err) c_garrow_array_is_in_chunked_array;
	int function(GArrowArray* array, long i) c_garrow_array_is_null;
	int function(GArrowArray* array, long i) c_garrow_array_is_valid;
	GArrowRunEndEncodedArray* function(GArrowArray* array, GArrowRunEndEncodeOptions* options, GError** err) c_garrow_array_run_end_encode;
	GArrowArray* function(GArrowArray* array, long offset, long length) c_garrow_array_slice;
	GArrowUInt64Array* function(GArrowArray* array, GArrowSortOrder order, GError** err) c_garrow_array_sort_indices;
	GArrowUInt64Array* function(GArrowArray* array, GError** err) c_garrow_array_sort_to_indices;
	GArrowArray* function(GArrowArray* array, GArrowArray* indices, GArrowTakeOptions* options, GError** err) c_garrow_array_take;
	GArrowChunkedArray* function(GArrowArray* array, GArrowChunkedArray* indices, GArrowTakeOptions* options, GError** err) c_garrow_array_take_chunked_array;
	char* function(GArrowArray* array, GError** err) c_garrow_array_to_string;
	GArrowArray* function(GArrowArray* array, GError** err) c_garrow_array_unique;
	GArrowArray* function(GArrowArray* array, GArrowDataType* returnType, GError** err) c_garrow_array_view;

	// arrow.ArrayBuilder

	GType function() c_garrow_array_builder_get_type;
	int function(GArrowArrayBuilder* builder, GError** err) c_garrow_array_builder_append_empty_value;
	int function(GArrowArrayBuilder* builder, long n, GError** err) c_garrow_array_builder_append_empty_values;
	int function(GArrowArrayBuilder* builder, GError** err) c_garrow_array_builder_append_null;
	int function(GArrowArrayBuilder* builder, long n, GError** err) c_garrow_array_builder_append_nulls;
	GArrowArray* function(GArrowArrayBuilder* builder, GError** err) c_garrow_array_builder_finish;
	long function(GArrowArrayBuilder* builder) c_garrow_array_builder_get_capacity;
	GArrowArrayBuilder* function(GArrowArrayBuilder* builder, int i) c_garrow_array_builder_get_child;
	GList* function(GArrowArrayBuilder* builder) c_garrow_array_builder_get_children;
	long function(GArrowArrayBuilder* builder) c_garrow_array_builder_get_length;
	long function(GArrowArrayBuilder* builder) c_garrow_array_builder_get_n_nulls;
	GArrowDataType* function(GArrowArrayBuilder* builder) c_garrow_array_builder_get_value_data_type;
	GArrowType function(GArrowArrayBuilder* builder) c_garrow_array_builder_get_value_type;
	int function(GArrowArrayBuilder* builder, long additionalCapacity, GError** err) c_garrow_array_builder_reserve;
	void function(GArrowArrayBuilder* builder) c_garrow_array_builder_reset;
	int function(GArrowArrayBuilder* builder, long capacity, GError** err) c_garrow_array_builder_resize;

	// arrow.ArrayDatum

	GType function() c_garrow_array_datum_get_type;
	GArrowArrayDatum* function(GArrowArray* value) c_garrow_array_datum_new;

	// arrow.ArraySortOptions

	GType function() c_garrow_array_sort_options_get_type;
	GArrowArraySortOptions* function(GArrowSortOrder order) c_garrow_array_sort_options_new;
	int function(GArrowArraySortOptions* options, GArrowArraySortOptions* otherOptions) c_garrow_array_sort_options_equal;

	// arrow.AzureFileSystem

	GType function() c_garrow_azure_file_system_get_type;

	// arrow.BaseBinaryScalar

	GType function() c_garrow_base_binary_scalar_get_type;
	GArrowBuffer* function(GArrowBaseBinaryScalar* scalar) c_garrow_base_binary_scalar_get_value;

	// arrow.BaseListScalar

	GType function() c_garrow_base_list_scalar_get_type;
	GArrowArray* function(GArrowBaseListScalar* scalar) c_garrow_base_list_scalar_get_value;

	// arrow.BinaryArray

	GType function() c_garrow_binary_array_get_type;
	GArrowBinaryArray* function(long length, GArrowBuffer* valueOffsets, GArrowBuffer* valueData, GArrowBuffer* nullBitmap, long nNulls) c_garrow_binary_array_new;
	GArrowBuffer* function(GArrowBinaryArray* array) c_garrow_binary_array_get_buffer;
	GArrowBuffer* function(GArrowBinaryArray* array) c_garrow_binary_array_get_data_buffer;
	GArrowBuffer* function(GArrowBinaryArray* array) c_garrow_binary_array_get_offsets_buffer;
	GBytes* function(GArrowBinaryArray* array, long i) c_garrow_binary_array_get_value;

	// arrow.BinaryArrayBuilder

	GType function() c_garrow_binary_array_builder_get_type;
	GArrowBinaryArrayBuilder* function() c_garrow_binary_array_builder_new;
	int function(GArrowBinaryArrayBuilder* builder, ubyte* value, int length, GError** err) c_garrow_binary_array_builder_append;
	int function(GArrowBinaryArrayBuilder* builder, GError** err) c_garrow_binary_array_builder_append_null;
	int function(GArrowBinaryArrayBuilder* builder, long n, GError** err) c_garrow_binary_array_builder_append_nulls;
	int function(GArrowBinaryArrayBuilder* builder, ubyte* value, int length, GError** err) c_garrow_binary_array_builder_append_value;
	int function(GArrowBinaryArrayBuilder* builder, GBytes* value, GError** err) c_garrow_binary_array_builder_append_value_bytes;
	int function(GArrowBinaryArrayBuilder* builder, GBytes** values, long valuesLength, int* isValids, long isValidsLength, GError** err) c_garrow_binary_array_builder_append_values;

	// arrow.BinaryDataType

	GType function() c_garrow_binary_data_type_get_type;
	GArrowBinaryDataType* function() c_garrow_binary_data_type_new;

	// arrow.BinaryDictionaryArrayBuilder

	GType function() c_garrow_binary_dictionary_array_builder_get_type;
	GArrowBinaryDictionaryArrayBuilder* function() c_garrow_binary_dictionary_array_builder_new;
	int function(GArrowBinaryDictionaryArrayBuilder* builder, GArrowBinaryArray* array, GError** err) c_garrow_binary_dictionary_array_builder_append_array;
	int function(GArrowBinaryDictionaryArrayBuilder* builder, long* values, long valuesLength, int* isValids, long isValidsLength, GError** err) c_garrow_binary_dictionary_array_builder_append_indices;
	int function(GArrowBinaryDictionaryArrayBuilder* builder, GError** err) c_garrow_binary_dictionary_array_builder_append_null;
	int function(GArrowBinaryDictionaryArrayBuilder* builder, ubyte* value, int length, GError** err) c_garrow_binary_dictionary_array_builder_append_value;
	int function(GArrowBinaryDictionaryArrayBuilder* builder, GBytes* value, GError** err) c_garrow_binary_dictionary_array_builder_append_value_bytes;
	int function(GArrowBinaryDictionaryArrayBuilder* builder, GArrowArray** outIndices, GArrowArray** outDelta, GError** err) c_garrow_binary_dictionary_array_builder_finish_delta;
	long function(GArrowBinaryDictionaryArrayBuilder* builder) c_garrow_binary_dictionary_array_builder_get_dictionary_length;
	int function(GArrowBinaryDictionaryArrayBuilder* builder, GArrowBinaryArray* values, GError** err) c_garrow_binary_dictionary_array_builder_insert_memo_values;
	void function(GArrowBinaryDictionaryArrayBuilder* builder) c_garrow_binary_dictionary_array_builder_reset_full;

	// arrow.BinaryScalar

	GType function() c_garrow_binary_scalar_get_type;
	GArrowBinaryScalar* function(GArrowBuffer* value) c_garrow_binary_scalar_new;

	// arrow.BooleanArray

	GType function() c_garrow_boolean_array_get_type;
	GArrowBooleanArray* function(long length, GArrowBuffer* data, GArrowBuffer* nullBitmap, long nNulls) c_garrow_boolean_array_new;
	GArrowBooleanArray* function(GArrowBooleanArray* left, GArrowBooleanArray* right, GError** err) c_garrow_boolean_array_and;
	int function(GArrowBooleanArray* array, long i) c_garrow_boolean_array_get_value;
	int* function(GArrowBooleanArray* array, long* length) c_garrow_boolean_array_get_values;
	GArrowBooleanArray* function(GArrowBooleanArray* array, GError** err) c_garrow_boolean_array_invert;
	GArrowBooleanArray* function(GArrowBooleanArray* left, GArrowBooleanArray* right, GError** err) c_garrow_boolean_array_or;
	GArrowBooleanArray* function(GArrowBooleanArray* left, GArrowBooleanArray* right, GError** err) c_garrow_boolean_array_xor;

	// arrow.BooleanArrayBuilder

	GType function() c_garrow_boolean_array_builder_get_type;
	GArrowBooleanArrayBuilder* function() c_garrow_boolean_array_builder_new;
	int function(GArrowBooleanArrayBuilder* builder, int value, GError** err) c_garrow_boolean_array_builder_append;
	int function(GArrowBooleanArrayBuilder* builder, GError** err) c_garrow_boolean_array_builder_append_null;
	int function(GArrowBooleanArrayBuilder* builder, long n, GError** err) c_garrow_boolean_array_builder_append_nulls;
	int function(GArrowBooleanArrayBuilder* builder, int value, GError** err) c_garrow_boolean_array_builder_append_value;
	int function(GArrowBooleanArrayBuilder* builder, int* values, long valuesLength, int* isValids, long isValidsLength, GError** err) c_garrow_boolean_array_builder_append_values;

	// arrow.BooleanDataType

	GType function() c_garrow_boolean_data_type_get_type;
	GArrowBooleanDataType* function() c_garrow_boolean_data_type_new;

	// arrow.BooleanScalar

	GType function() c_garrow_boolean_scalar_get_type;
	GArrowBooleanScalar* function(int value) c_garrow_boolean_scalar_new;
	int function(GArrowBooleanScalar* scalar) c_garrow_boolean_scalar_get_value;

	// arrow.Buffer

	GType function() c_garrow_buffer_get_type;
	GArrowBuffer* function(ubyte* data, long size) c_garrow_buffer_new;
	GArrowBuffer* function(GBytes* data) c_garrow_buffer_new_bytes;
	GArrowBuffer* function(GArrowBuffer* buffer, long start, long size, GError** err) c_garrow_buffer_copy;
	int function(GArrowBuffer* buffer, GArrowBuffer* otherBuffer) c_garrow_buffer_equal;
	int function(GArrowBuffer* buffer, GArrowBuffer* otherBuffer, long nBytes) c_garrow_buffer_equal_n_bytes;
	long function(GArrowBuffer* buffer) c_garrow_buffer_get_capacity;
	GBytes* function(GArrowBuffer* buffer) c_garrow_buffer_get_data;
	GBytes* function(GArrowBuffer* buffer) c_garrow_buffer_get_mutable_data;
	GArrowBuffer* function(GArrowBuffer* buffer) c_garrow_buffer_get_parent;
	long function(GArrowBuffer* buffer) c_garrow_buffer_get_size;
	int function(GArrowBuffer* buffer) c_garrow_buffer_is_mutable;
	GArrowBuffer* function(GArrowBuffer* buffer, long offset, long size) c_garrow_buffer_slice;

	// arrow.BufferInputStream

	GType function() c_garrow_buffer_input_stream_get_type;
	GArrowBufferInputStream* function(GArrowBuffer* buffer) c_garrow_buffer_input_stream_new;
	GArrowBuffer* function(GArrowBufferInputStream* inputStream) c_garrow_buffer_input_stream_get_buffer;

	// arrow.BufferOutputStream

	GType function() c_garrow_buffer_output_stream_get_type;
	GArrowBufferOutputStream* function(GArrowResizableBuffer* buffer) c_garrow_buffer_output_stream_new;

	// arrow.CSVReadOptions

	GType function() c_garrow_csv_read_options_get_type;
	GArrowCSVReadOptions* function() c_garrow_csv_read_options_new;
	void function(GArrowCSVReadOptions* options, const(char)* columnName) c_garrow_csv_read_options_add_column_name;
	void function(GArrowCSVReadOptions* options, const(char)* name, GArrowDataType* dataType) c_garrow_csv_read_options_add_column_type;
	void function(GArrowCSVReadOptions* options, const(char)* falseValue) c_garrow_csv_read_options_add_false_value;
	void function(GArrowCSVReadOptions* options, const(char)* nullValue) c_garrow_csv_read_options_add_null_value;
	void function(GArrowCSVReadOptions* options, GArrowSchema* schema) c_garrow_csv_read_options_add_schema;
	void function(GArrowCSVReadOptions* options, GArrowTimestampParser* parser) c_garrow_csv_read_options_add_timestamp_parser;
	void function(GArrowCSVReadOptions* options, const(char)* trueValue) c_garrow_csv_read_options_add_true_value;
	char** function(GArrowCSVReadOptions* options) c_garrow_csv_read_options_get_column_names;
	GHashTable* function(GArrowCSVReadOptions* options) c_garrow_csv_read_options_get_column_types;
	char** function(GArrowCSVReadOptions* options) c_garrow_csv_read_options_get_false_values;
	char** function(GArrowCSVReadOptions* options) c_garrow_csv_read_options_get_null_values;
	GList* function(GArrowCSVReadOptions* options) c_garrow_csv_read_options_get_timestamp_parsers;
	char** function(GArrowCSVReadOptions* options) c_garrow_csv_read_options_get_true_values;
	void function(GArrowCSVReadOptions* options, char** columnNames, size_t nColumnNames) c_garrow_csv_read_options_set_column_names;
	void function(GArrowCSVReadOptions* options, char** falseValues, size_t nFalseValues) c_garrow_csv_read_options_set_false_values;
	void function(GArrowCSVReadOptions* options, char** nullValues, size_t nNullValues) c_garrow_csv_read_options_set_null_values;
	void function(GArrowCSVReadOptions* options, GList* parsers) c_garrow_csv_read_options_set_timestamp_parsers;
	void function(GArrowCSVReadOptions* options, char** trueValues, size_t nTrueValues) c_garrow_csv_read_options_set_true_values;

	// arrow.CSVReader

	GType function() c_garrow_csv_reader_get_type;
	GArrowCSVReader* function(GArrowInputStream* input, GArrowCSVReadOptions* options, GError** err) c_garrow_csv_reader_new;
	GArrowTable* function(GArrowCSVReader* reader, GError** err) c_garrow_csv_reader_read;

	// arrow.CallExpression

	GType function() c_garrow_call_expression_get_type;
	GArrowCallExpression* function(const(char)* function_, GList* arguments, GArrowFunctionOptions* options) c_garrow_call_expression_new;

	// arrow.CastOptions

	GType function() c_garrow_cast_options_get_type;
	GArrowCastOptions* function() c_garrow_cast_options_new;

	// arrow.ChunkedArray

	GType function() c_garrow_chunked_array_get_type;
	GArrowChunkedArray* function(GList* chunks, GError** err) c_garrow_chunked_array_new;
	GArrowChunkedArray* function(GArrowDataType* dataType, GError** err) c_garrow_chunked_array_new_empty;
	GArrowArray* function(GArrowChunkedArray* chunkedArray, GError** err) c_garrow_chunked_array_combine;
	int function(GArrowChunkedArray* chunkedArray, GArrowChunkedArray* otherChunkedArray) c_garrow_chunked_array_equal;
	GArrowChunkedArray* function(GArrowChunkedArray* chunkedArray, GArrowBooleanArray* filter, GArrowFilterOptions* options, GError** err) c_garrow_chunked_array_filter;
	GArrowChunkedArray* function(GArrowChunkedArray* chunkedArray, GArrowChunkedArray* filter, GArrowFilterOptions* options, GError** err) c_garrow_chunked_array_filter_chunked_array;
	GArrowArray* function(GArrowChunkedArray* chunkedArray, uint i) c_garrow_chunked_array_get_chunk;
	GList* function(GArrowChunkedArray* chunkedArray) c_garrow_chunked_array_get_chunks;
	ulong function(GArrowChunkedArray* chunkedArray) c_garrow_chunked_array_get_length;
	uint function(GArrowChunkedArray* chunkedArray) c_garrow_chunked_array_get_n_chunks;
	ulong function(GArrowChunkedArray* chunkedArray) c_garrow_chunked_array_get_n_nulls;
	ulong function(GArrowChunkedArray* chunkedArray) c_garrow_chunked_array_get_n_rows;
	GArrowDataType* function(GArrowChunkedArray* chunkedArray) c_garrow_chunked_array_get_value_data_type;
	GArrowType function(GArrowChunkedArray* chunkedArray) c_garrow_chunked_array_get_value_type;
	GArrowChunkedArray* function(GArrowChunkedArray* chunkedArray, ulong offset, ulong length) c_garrow_chunked_array_slice;
	GArrowUInt64Array* function(GArrowChunkedArray* chunkedArray, GArrowSortOrder order, GError** err) c_garrow_chunked_array_sort_indices;
	GArrowChunkedArray* function(GArrowChunkedArray* chunkedArray, GArrowArray* indices, GArrowTakeOptions* options, GError** err) c_garrow_chunked_array_take;
	GArrowChunkedArray* function(GArrowChunkedArray* chunkedArray, GArrowChunkedArray* indices, GArrowTakeOptions* options, GError** err) c_garrow_chunked_array_take_chunked_array;
	char* function(GArrowChunkedArray* chunkedArray, GError** err) c_garrow_chunked_array_to_string;

	// arrow.ChunkedArrayDatum

	GType function() c_garrow_chunked_array_datum_get_type;
	GArrowChunkedArrayDatum* function(GArrowChunkedArray* value) c_garrow_chunked_array_datum_new;

	// arrow.Codec

	GType function() c_garrow_codec_get_type;
	GArrowCodec* function(GArrowCompressionType type, GError** err) c_garrow_codec_new;
	int function(GArrowCodec* codec) c_garrow_codec_get_compression_level;
	GArrowCompressionType function(GArrowCodec* codec) c_garrow_codec_get_compression_type;
	const(char)* function(GArrowCodec* codec) c_garrow_codec_get_name;

	// arrow.CompressedInputStream

	GType function() c_garrow_compressed_input_stream_get_type;
	GArrowCompressedInputStream* function(GArrowCodec* codec, GArrowInputStream* raw, GError** err) c_garrow_compressed_input_stream_new;

	// arrow.CompressedOutputStream

	GType function() c_garrow_compressed_output_stream_get_type;
	GArrowCompressedOutputStream* function(GArrowCodec* codec, GArrowOutputStream* raw, GError** err) c_garrow_compressed_output_stream_new;

	// arrow.CountOptions

	GType function() c_garrow_count_options_get_type;
	GArrowCountOptions* function() c_garrow_count_options_new;

	// arrow.DataType

	GType function() c_garrow_data_type_get_type;
	GArrowDataType* function(void* cAbiSchema, GError** err) c_garrow_data_type_import;
	int function(GArrowDataType* dataType, GArrowDataType* otherDataType) c_garrow_data_type_equal;
	void* function(GArrowDataType* dataType, GError** err) c_garrow_data_type_export;
	GArrowType function(GArrowDataType* dataType) c_garrow_data_type_get_id;
	char* function(GArrowDataType* dataType) c_garrow_data_type_get_name;
	char* function(GArrowDataType* dataType) c_garrow_data_type_to_string;

	// arrow.Date32Array

	GType function() c_garrow_date32_array_get_type;
	GArrowDate32Array* function(long length, GArrowBuffer* data, GArrowBuffer* nullBitmap, long nNulls) c_garrow_date32_array_new;
	int function(GArrowDate32Array* array, long i) c_garrow_date32_array_get_value;
	int* function(GArrowDate32Array* array, long* length) c_garrow_date32_array_get_values;

	// arrow.Date32ArrayBuilder

	GType function() c_garrow_date32_array_builder_get_type;
	GArrowDate32ArrayBuilder* function() c_garrow_date32_array_builder_new;
	int function(GArrowDate32ArrayBuilder* builder, int value, GError** err) c_garrow_date32_array_builder_append;
	int function(GArrowDate32ArrayBuilder* builder, GError** err) c_garrow_date32_array_builder_append_null;
	int function(GArrowDate32ArrayBuilder* builder, long n, GError** err) c_garrow_date32_array_builder_append_nulls;
	int function(GArrowDate32ArrayBuilder* builder, int value, GError** err) c_garrow_date32_array_builder_append_value;
	int function(GArrowDate32ArrayBuilder* builder, int* values, long valuesLength, int* isValids, long isValidsLength, GError** err) c_garrow_date32_array_builder_append_values;

	// arrow.Date32DataType

	GType function() c_garrow_date32_data_type_get_type;
	GArrowDate32DataType* function() c_garrow_date32_data_type_new;

	// arrow.Date32Scalar

	GType function() c_garrow_date32_scalar_get_type;
	GArrowDate32Scalar* function(int value) c_garrow_date32_scalar_new;
	int function(GArrowDate32Scalar* scalar) c_garrow_date32_scalar_get_value;

	// arrow.Date64Array

	GType function() c_garrow_date64_array_get_type;
	GArrowDate64Array* function(long length, GArrowBuffer* data, GArrowBuffer* nullBitmap, long nNulls) c_garrow_date64_array_new;
	long function(GArrowDate64Array* array, long i) c_garrow_date64_array_get_value;
	long* function(GArrowDate64Array* array, long* length) c_garrow_date64_array_get_values;

	// arrow.Date64ArrayBuilder

	GType function() c_garrow_date64_array_builder_get_type;
	GArrowDate64ArrayBuilder* function() c_garrow_date64_array_builder_new;
	int function(GArrowDate64ArrayBuilder* builder, long value, GError** err) c_garrow_date64_array_builder_append;
	int function(GArrowDate64ArrayBuilder* builder, GError** err) c_garrow_date64_array_builder_append_null;
	int function(GArrowDate64ArrayBuilder* builder, long n, GError** err) c_garrow_date64_array_builder_append_nulls;
	int function(GArrowDate64ArrayBuilder* builder, long value, GError** err) c_garrow_date64_array_builder_append_value;
	int function(GArrowDate64ArrayBuilder* builder, long* values, long valuesLength, int* isValids, long isValidsLength, GError** err) c_garrow_date64_array_builder_append_values;

	// arrow.Date64DataType

	GType function() c_garrow_date64_data_type_get_type;
	GArrowDate64DataType* function() c_garrow_date64_data_type_new;

	// arrow.Date64Scalar

	GType function() c_garrow_date64_scalar_get_type;
	GArrowDate64Scalar* function(long value) c_garrow_date64_scalar_new;
	long function(GArrowDate64Scalar* scalar) c_garrow_date64_scalar_get_value;

	// arrow.Datum

	GType function() c_garrow_datum_get_type;
	int function(GArrowDatum* datum, GArrowDatum* otherDatum) c_garrow_datum_equal;
	int function(GArrowDatum* datum) c_garrow_datum_is_array;
	int function(GArrowDatum* datum) c_garrow_datum_is_array_like;
	int function(GArrowDatum* datum) c_garrow_datum_is_scalar;
	int function(GArrowDatum* datum) c_garrow_datum_is_value;
	char* function(GArrowDatum* datum) c_garrow_datum_to_string;

	// arrow.DayMillisecond

	GType function() c_garrow_day_millisecond_get_type;
	GArrowDayMillisecond* function(int day, int millisecond) c_garrow_day_millisecond_new;
	int function(GArrowDayMillisecond* dayMillisecond, GArrowDayMillisecond* otherDayMillisecond) c_garrow_day_millisecond_equal;
	int function(GArrowDayMillisecond* dayMillisecond, GArrowDayMillisecond* otherDayMillisecond) c_garrow_day_millisecond_less_than;

	// arrow.DayTimeIntervalArray

	GType function() c_garrow_day_time_interval_array_get_type;
	GArrowDayTimeIntervalArray* function(long length, GArrowBuffer* data, GArrowBuffer* nullBitmap, long nNulls) c_garrow_day_time_interval_array_new;
	GArrowDayMillisecond* function(GArrowDayTimeIntervalArray* array, long i) c_garrow_day_time_interval_array_get_value;
	GList* function(GArrowDayTimeIntervalArray* array) c_garrow_day_time_interval_array_get_values;

	// arrow.DayTimeIntervalArrayBuilder

	GType function() c_garrow_day_time_interval_array_builder_get_type;
	GArrowDayTimeIntervalArrayBuilder* function() c_garrow_day_time_interval_array_builder_new;
	int function(GArrowDayTimeIntervalArrayBuilder* builder, GArrowDayMillisecond* value, GError** err) c_garrow_day_time_interval_array_builder_append_value;
	int function(GArrowDayTimeIntervalArrayBuilder* builder, GArrowDayMillisecond** values, long valuesLength, int* isValids, long isValidsLength, GError** err) c_garrow_day_time_interval_array_builder_append_values;

	// arrow.DayTimeIntervalDataType

	GType function() c_garrow_day_time_interval_data_type_get_type;
	GArrowDayTimeIntervalDataType* function() c_garrow_day_time_interval_data_type_new;

	// arrow.DayTimeIntervalScalar

	GType function() c_garrow_day_time_interval_scalar_get_type;
	GArrowDayTimeIntervalScalar* function(GArrowDayMillisecond* value) c_garrow_day_time_interval_scalar_new;
	GArrowDayMillisecond* function(GArrowDayTimeIntervalScalar* scalar) c_garrow_day_time_interval_scalar_get_value;

	// arrow.Decimal128

	GType function() c_garrow_decimal128_get_type;
	GArrowDecimal128* function(long data) c_garrow_decimal128_new_integer;
	GArrowDecimal128* function(const(char)* data, GError** err) c_garrow_decimal128_new_string;
	void function(GArrowDecimal128* decimal) c_garrow_decimal128_abs;
	GArrowDecimal128* function(GArrowDecimal128* decimal) c_garrow_decimal128_copy;
	GArrowDecimal128* function(GArrowDecimal128* left, GArrowDecimal128* right, GArrowDecimal128** remainder, GError** err) c_garrow_decimal128_divide;
	int function(GArrowDecimal128* decimal, GArrowDecimal128* otherDecimal) c_garrow_decimal128_equal;
	int function(GArrowDecimal128* decimal, GArrowDecimal128* otherDecimal) c_garrow_decimal128_greater_than;
	int function(GArrowDecimal128* decimal, GArrowDecimal128* otherDecimal) c_garrow_decimal128_greater_than_or_equal;
	int function(GArrowDecimal128* decimal, GArrowDecimal128* otherDecimal) c_garrow_decimal128_less_than;
	int function(GArrowDecimal128* decimal, GArrowDecimal128* otherDecimal) c_garrow_decimal128_less_than_or_equal;
	GArrowDecimal128* function(GArrowDecimal128* left, GArrowDecimal128* right) c_garrow_decimal128_minus;
	GArrowDecimal128* function(GArrowDecimal128* left, GArrowDecimal128* right) c_garrow_decimal128_multiply;
	void function(GArrowDecimal128* decimal) c_garrow_decimal128_negate;
	int function(GArrowDecimal128* decimal, GArrowDecimal128* otherDecimal) c_garrow_decimal128_not_equal;
	GArrowDecimal128* function(GArrowDecimal128* left, GArrowDecimal128* right) c_garrow_decimal128_plus;
	GArrowDecimal128* function(GArrowDecimal128* decimal, int originalScale, int newScale, GError** err) c_garrow_decimal128_rescale;
	GBytes* function(GArrowDecimal128* decimal) c_garrow_decimal128_to_bytes;
	long function(GArrowDecimal128* decimal) c_garrow_decimal128_to_integer;
	char* function(GArrowDecimal128* decimal) c_garrow_decimal128_to_string;
	char* function(GArrowDecimal128* decimal, int scale) c_garrow_decimal128_to_string_scale;

	// arrow.Decimal128Array

	GType function() c_garrow_decimal128_array_get_type;
	char* function(GArrowDecimal128Array* array, long i) c_garrow_decimal128_array_format_value;
	GArrowDecimal128* function(GArrowDecimal128Array* array, long i) c_garrow_decimal128_array_get_value;

	// arrow.Decimal128ArrayBuilder

	GType function() c_garrow_decimal128_array_builder_get_type;
	GArrowDecimal128ArrayBuilder* function(GArrowDecimal128DataType* dataType) c_garrow_decimal128_array_builder_new;
	int function(GArrowDecimal128ArrayBuilder* builder, GArrowDecimal128* value, GError** err) c_garrow_decimal128_array_builder_append;
	int function(GArrowDecimal128ArrayBuilder* builder, GError** err) c_garrow_decimal128_array_builder_append_null;
	int function(GArrowDecimal128ArrayBuilder* builder, GArrowDecimal128* value, GError** err) c_garrow_decimal128_array_builder_append_value;
	int function(GArrowDecimal128ArrayBuilder* builder, GArrowDecimal128** values, long valuesLength, int* isValids, long isValidsLength, GError** err) c_garrow_decimal128_array_builder_append_values;

	// arrow.Decimal128DataType

	GType function() c_garrow_decimal128_data_type_get_type;
	GArrowDecimal128DataType* function(int precision, int scale, GError** err) c_garrow_decimal128_data_type_new;
	int function() c_garrow_decimal128_data_type_max_precision;

	// arrow.Decimal128Scalar

	GType function() c_garrow_decimal128_scalar_get_type;
	GArrowDecimal128Scalar* function(GArrowDecimal128DataType* dataType, GArrowDecimal128* value) c_garrow_decimal128_scalar_new;
	GArrowDecimal128* function(GArrowDecimal128Scalar* scalar) c_garrow_decimal128_scalar_get_value;

	// arrow.Decimal256

	GType function() c_garrow_decimal256_get_type;
	GArrowDecimal256* function(long data) c_garrow_decimal256_new_integer;
	GArrowDecimal256* function(const(char)* data, GError** err) c_garrow_decimal256_new_string;
	void function(GArrowDecimal256* decimal) c_garrow_decimal256_abs;
	GArrowDecimal256* function(GArrowDecimal256* decimal) c_garrow_decimal256_copy;
	GArrowDecimal256* function(GArrowDecimal256* left, GArrowDecimal256* right, GArrowDecimal256** remainder, GError** err) c_garrow_decimal256_divide;
	int function(GArrowDecimal256* decimal, GArrowDecimal256* otherDecimal) c_garrow_decimal256_equal;
	int function(GArrowDecimal256* decimal, GArrowDecimal256* otherDecimal) c_garrow_decimal256_greater_than;
	int function(GArrowDecimal256* decimal, GArrowDecimal256* otherDecimal) c_garrow_decimal256_greater_than_or_equal;
	int function(GArrowDecimal256* decimal, GArrowDecimal256* otherDecimal) c_garrow_decimal256_less_than;
	int function(GArrowDecimal256* decimal, GArrowDecimal256* otherDecimal) c_garrow_decimal256_less_than_or_equal;
	GArrowDecimal256* function(GArrowDecimal256* left, GArrowDecimal256* right) c_garrow_decimal256_multiply;
	void function(GArrowDecimal256* decimal) c_garrow_decimal256_negate;
	int function(GArrowDecimal256* decimal, GArrowDecimal256* otherDecimal) c_garrow_decimal256_not_equal;
	GArrowDecimal256* function(GArrowDecimal256* left, GArrowDecimal256* right) c_garrow_decimal256_plus;
	GArrowDecimal256* function(GArrowDecimal256* decimal, int originalScale, int newScale, GError** err) c_garrow_decimal256_rescale;
	GBytes* function(GArrowDecimal256* decimal) c_garrow_decimal256_to_bytes;
	char* function(GArrowDecimal256* decimal) c_garrow_decimal256_to_string;
	char* function(GArrowDecimal256* decimal, int scale) c_garrow_decimal256_to_string_scale;

	// arrow.Decimal256Array

	GType function() c_garrow_decimal256_array_get_type;
	char* function(GArrowDecimal256Array* array, long i) c_garrow_decimal256_array_format_value;
	GArrowDecimal256* function(GArrowDecimal256Array* array, long i) c_garrow_decimal256_array_get_value;

	// arrow.Decimal256ArrayBuilder

	GType function() c_garrow_decimal256_array_builder_get_type;
	GArrowDecimal256ArrayBuilder* function(GArrowDecimal256DataType* dataType) c_garrow_decimal256_array_builder_new;
	int function(GArrowDecimal256ArrayBuilder* builder, GArrowDecimal256* value, GError** err) c_garrow_decimal256_array_builder_append_value;
	int function(GArrowDecimal256ArrayBuilder* builder, GArrowDecimal256** values, long valuesLength, int* isValids, long isValidsLength, GError** err) c_garrow_decimal256_array_builder_append_values;

	// arrow.Decimal256DataType

	GType function() c_garrow_decimal256_data_type_get_type;
	GArrowDecimal256DataType* function(int precision, int scale, GError** err) c_garrow_decimal256_data_type_new;
	int function() c_garrow_decimal256_data_type_max_precision;

	// arrow.Decimal256Scalar

	GType function() c_garrow_decimal256_scalar_get_type;
	GArrowDecimal256Scalar* function(GArrowDecimal256DataType* dataType, GArrowDecimal256* value) c_garrow_decimal256_scalar_new;
	GArrowDecimal256* function(GArrowDecimal256Scalar* scalar) c_garrow_decimal256_scalar_get_value;

	// arrow.DecimalDataType

	GType function() c_garrow_decimal_data_type_get_type;
	GArrowDecimalDataType* function(int precision, int scale, GError** err) c_garrow_decimal_data_type_new;
	int function(GArrowDecimalDataType* decimalDataType) c_garrow_decimal_data_type_get_precision;
	int function(GArrowDecimalDataType* decimalDataType) c_garrow_decimal_data_type_get_scale;

	// arrow.DenseUnionArray

	GType function() c_garrow_dense_union_array_get_type;
	GArrowDenseUnionArray* function(GArrowInt8Array* typeIds, GArrowInt32Array* valueOffsets, GList* fields, GError** err) c_garrow_dense_union_array_new;
	GArrowDenseUnionArray* function(GArrowDenseUnionDataType* dataType, GArrowInt8Array* typeIds, GArrowInt32Array* valueOffsets, GList* fields, GError** err) c_garrow_dense_union_array_new_data_type;
	int function(GArrowDenseUnionArray* array, long i) c_garrow_dense_union_array_get_value_offset;

	// arrow.DenseUnionArrayBuilder

	GType function() c_garrow_dense_union_array_builder_get_type;
	GArrowDenseUnionArrayBuilder* function(GArrowDenseUnionDataType* dataType, GError** err) c_garrow_dense_union_array_builder_new;

	// arrow.DenseUnionDataType

	GType function() c_garrow_dense_union_data_type_get_type;
	GArrowDenseUnionDataType* function(GList* fields, byte* typeCodes, size_t nTypeCodes) c_garrow_dense_union_data_type_new;

	// arrow.DenseUnionScalar

	GType function() c_garrow_dense_union_scalar_get_type;
	GArrowDenseUnionScalar* function(GArrowDenseUnionDataType* dataType, byte typeCode, GArrowScalar* value) c_garrow_dense_union_scalar_new;

	// arrow.DictionaryArray

	GType function() c_garrow_dictionary_array_get_type;
	GArrowDictionaryArray* function(GArrowDataType* dataType, GArrowArray* indices, GArrowArray* dictionary, GError** err) c_garrow_dictionary_array_new;
	GArrowArray* function(GArrowDictionaryArray* array) c_garrow_dictionary_array_get_dictionary;
	GArrowDictionaryDataType* function(GArrowDictionaryArray* array) c_garrow_dictionary_array_get_dictionary_data_type;
	GArrowArray* function(GArrowDictionaryArray* array) c_garrow_dictionary_array_get_indices;

	// arrow.DictionaryDataType

	GType function() c_garrow_dictionary_data_type_get_type;
	GArrowDictionaryDataType* function(GArrowDataType* indexDataType, GArrowDataType* valueDataType, int ordered) c_garrow_dictionary_data_type_new;
	GArrowDataType* function(GArrowDictionaryDataType* dictionaryDataType) c_garrow_dictionary_data_type_get_index_data_type;
	GArrowDataType* function(GArrowDictionaryDataType* dictionaryDataType) c_garrow_dictionary_data_type_get_value_data_type;
	int function(GArrowDictionaryDataType* dictionaryDataType) c_garrow_dictionary_data_type_is_ordered;

	// arrow.DoubleArray

	GType function() c_garrow_double_array_get_type;
	GArrowDoubleArray* function(long length, GArrowBuffer* data, GArrowBuffer* nullBitmap, long nNulls) c_garrow_double_array_new;
	double function(GArrowDoubleArray* array, long i) c_garrow_double_array_get_value;
	double* function(GArrowDoubleArray* array, long* length) c_garrow_double_array_get_values;
	double function(GArrowDoubleArray* array, GError** err) c_garrow_double_array_sum;

	// arrow.DoubleArrayBuilder

	GType function() c_garrow_double_array_builder_get_type;
	GArrowDoubleArrayBuilder* function() c_garrow_double_array_builder_new;
	int function(GArrowDoubleArrayBuilder* builder, double value, GError** err) c_garrow_double_array_builder_append;
	int function(GArrowDoubleArrayBuilder* builder, GError** err) c_garrow_double_array_builder_append_null;
	int function(GArrowDoubleArrayBuilder* builder, long n, GError** err) c_garrow_double_array_builder_append_nulls;
	int function(GArrowDoubleArrayBuilder* builder, double value, GError** err) c_garrow_double_array_builder_append_value;
	int function(GArrowDoubleArrayBuilder* builder, double* values, long valuesLength, int* isValids, long isValidsLength, GError** err) c_garrow_double_array_builder_append_values;

	// arrow.DoubleDataType

	GType function() c_garrow_double_data_type_get_type;
	GArrowDoubleDataType* function() c_garrow_double_data_type_new;

	// arrow.DoubleScalar

	GType function() c_garrow_double_scalar_get_type;
	GArrowDoubleScalar* function(double value) c_garrow_double_scalar_new;
	double function(GArrowDoubleScalar* scalar) c_garrow_double_scalar_get_value;

	// arrow.EqualOptions

	GType function() c_garrow_equal_options_get_type;
	GArrowEqualOptions* function() c_garrow_equal_options_new;
	int function(GArrowEqualOptions* options) c_garrow_equal_options_is_approx;

	// arrow.ExecuteContext

	GType function() c_garrow_execute_context_get_type;
	GArrowExecuteContext* function() c_garrow_execute_context_new;

	// arrow.ExecuteNode

	GType function() c_garrow_execute_node_get_type;
	const(char)* function(GArrowExecuteNode* node) c_garrow_execute_node_get_kind_name;
	GArrowSchema* function(GArrowExecuteNode* node) c_garrow_execute_node_get_output_schema;

	// arrow.ExecuteNodeOptions

	GType function() c_garrow_execute_node_options_get_type;

	// arrow.ExecutePlan

	GType function() c_garrow_execute_plan_get_type;
	GArrowExecutePlan* function(GError** err) c_garrow_execute_plan_new;
	GArrowExecuteNode* function(GArrowExecutePlan* plan, GArrowExecuteNode* input, GArrowAggregateNodeOptions* options, GError** err) c_garrow_execute_plan_build_aggregate_node;
	GArrowExecuteNode* function(GArrowExecutePlan* plan, GArrowExecuteNode* input, GArrowFilterNodeOptions* options, GError** err) c_garrow_execute_plan_build_filter_node;
	GArrowExecuteNode* function(GArrowExecutePlan* plan, GArrowExecuteNode* left, GArrowExecuteNode* right, GArrowHashJoinNodeOptions* options, GError** err) c_garrow_execute_plan_build_hash_join_node;
	GArrowExecuteNode* function(GArrowExecutePlan* plan, const(char)* factoryName, GList* inputs, GArrowExecuteNodeOptions* options, GError** err) c_garrow_execute_plan_build_node;
	GArrowExecuteNode* function(GArrowExecutePlan* plan, GArrowExecuteNode* input, GArrowProjectNodeOptions* options, GError** err) c_garrow_execute_plan_build_project_node;
	GArrowExecuteNode* function(GArrowExecutePlan* plan, GArrowExecuteNode* input, GArrowSinkNodeOptions* options, GError** err) c_garrow_execute_plan_build_sink_node;
	GArrowExecuteNode* function(GArrowExecutePlan* plan, GArrowSourceNodeOptions* options, GError** err) c_garrow_execute_plan_build_source_node;
	GList* function(GArrowExecutePlan* plan) c_garrow_execute_plan_get_nodes;
	void function(GArrowExecutePlan* plan) c_garrow_execute_plan_start;
	void function(GArrowExecutePlan* plan) c_garrow_execute_plan_stop;
	int function(GArrowExecutePlan* plan, GError** err) c_garrow_execute_plan_validate;
	int function(GArrowExecutePlan* plan, GError** err) c_garrow_execute_plan_wait;

	// arrow.Expression

	GType function() c_garrow_expression_get_type;
	int function(GArrowExpression* expression, GArrowExpression* otherExpression) c_garrow_expression_equal;
	char* function(GArrowExpression* expression) c_garrow_expression_to_string;

	// arrow.ExtensionArray

	GType function() c_garrow_extension_array_get_type;
	GArrowArray* function(GArrowExtensionArray* array) c_garrow_extension_array_get_storage;

	// arrow.ExtensionDataType

	GType function() c_garrow_extension_data_type_get_type;
	char* function(GArrowExtensionDataType* dataType) c_garrow_extension_data_type_get_extension_name;
	GArrowExtensionArray* function(GArrowExtensionDataType* dataType, GArrowArray* storage) c_garrow_extension_data_type_wrap_array;
	GArrowChunkedArray* function(GArrowExtensionDataType* dataType, GArrowChunkedArray* storage) c_garrow_extension_data_type_wrap_chunked_array;

	// arrow.ExtensionDataTypeRegistry

	GType function() c_garrow_extension_data_type_registry_get_type;
	GArrowExtensionDataTypeRegistry* function() c_garrow_extension_data_type_registry_default;
	GArrowExtensionDataType* function(GArrowExtensionDataTypeRegistry* registry, const(char)* name) c_garrow_extension_data_type_registry_lookup;
	int function(GArrowExtensionDataTypeRegistry* registry, GArrowExtensionDataType* dataType, GError** err) c_garrow_extension_data_type_registry_register;
	int function(GArrowExtensionDataTypeRegistry* registry, const(char)* name, GError** err) c_garrow_extension_data_type_registry_unregister;

	// arrow.ExtensionScalar

	GType function() c_garrow_extension_scalar_get_type;

	// arrow.FeatherFileReader

	GType function() c_garrow_feather_file_reader_get_type;
	GArrowFeatherFileReader* function(GArrowSeekableInputStream* file, GError** err) c_garrow_feather_file_reader_new;
	int function(GArrowFeatherFileReader* reader) c_garrow_feather_file_reader_get_version;
	GArrowTable* function(GArrowFeatherFileReader* reader, GError** err) c_garrow_feather_file_reader_read;
	GArrowTable* function(GArrowFeatherFileReader* reader, int* indices, uint nIndices, GError** err) c_garrow_feather_file_reader_read_indices;
	GArrowTable* function(GArrowFeatherFileReader* reader, char** names, uint nNames, GError** err) c_garrow_feather_file_reader_read_names;

	// arrow.FeatherWriteProperties

	GType function() c_garrow_feather_write_properties_get_type;
	GArrowFeatherWriteProperties* function() c_garrow_feather_write_properties_new;

	// arrow.Field

	GType function() c_garrow_field_get_type;
	GArrowField* function(const(char)* name, GArrowDataType* dataType) c_garrow_field_new;
	GArrowField* function(const(char)* name, GArrowDataType* dataType, int nullable) c_garrow_field_new_full;
	GArrowField* function(void* cAbiSchema, GError** err) c_garrow_field_import;
	int function(GArrowField* field, GArrowField* otherField) c_garrow_field_equal;
	void* function(GArrowField* field, GError** err) c_garrow_field_export;
	GArrowDataType* function(GArrowField* field) c_garrow_field_get_data_type;
	GHashTable* function(GArrowField* field) c_garrow_field_get_metadata;
	const(char)* function(GArrowField* field) c_garrow_field_get_name;
	int function(GArrowField* field) c_garrow_field_has_metadata;
	int function(GArrowField* field) c_garrow_field_is_nullable;
	GArrowField* function(GArrowField* field) c_garrow_field_remove_metadata;
	char* function(GArrowField* field) c_garrow_field_to_string;
	char* function(GArrowField* field, int showMetadata) c_garrow_field_to_string_metadata;
	GArrowField* function(GArrowField* field, GHashTable* metadata) c_garrow_field_with_merged_metadata;
	GArrowField* function(GArrowField* field, GHashTable* metadata) c_garrow_field_with_metadata;

	// arrow.FieldExpression

	GType function() c_garrow_field_expression_get_type;
	GArrowFieldExpression* function(const(char)* reference, GError** err) c_garrow_field_expression_new;

	// arrow.File

	GType function() c_garrow_file_get_type;
	int function(GArrowFile* file, GError** err) c_garrow_file_close;
	GArrowFileMode function(GArrowFile* file) c_garrow_file_get_mode;
	int function(GArrowFile* file) c_garrow_file_is_closed;
	long function(GArrowFile* file, GError** err) c_garrow_file_tell;

	// arrow.FileInfo

	GType function() c_garrow_file_info_get_type;
	GArrowFileInfo* function() c_garrow_file_info_new;
	int function(GArrowFileInfo* fileInfo, GArrowFileInfo* otherFileInfo) c_garrow_file_info_equal;
	int function(GArrowFileInfo* fileInfo) c_garrow_file_info_is_dir;
	int function(GArrowFileInfo* fileInfo) c_garrow_file_info_is_file;
	char* function(GArrowFileInfo* fileInfo) c_garrow_file_info_to_string;

	// arrow.FileInputStream

	GType function() c_garrow_file_input_stream_get_type;
	GArrowFileInputStream* function(const(char)* path, GError** err) c_garrow_file_input_stream_new;
	GArrowFileInputStream* function(int fileDescriptor, GError** err) c_garrow_file_input_stream_new_file_descriptor;
	int function(GArrowFileInputStream* stream) c_garrow_file_input_stream_get_file_descriptor;

	// arrow.FileOutputStream

	GType function() c_garrow_file_output_stream_get_type;
	GArrowFileOutputStream* function(const(char)* path, int append, GError** err) c_garrow_file_output_stream_new;

	// arrow.FileSelector

	GType function() c_garrow_file_selector_get_type;

	// arrow.FileSystem

	GType function() c_garrow_file_system_get_type;
	GArrowFileSystem* function(const(char)* uri, GError** err) c_garrow_file_system_create;
	int function(GArrowFileSystem* fileSystem, const(char)* src, const(char)* dest, GError** err) c_garrow_file_system_copy_file;
	int function(GArrowFileSystem* fileSystem, const(char)* path, int recursive, GError** err) c_garrow_file_system_create_dir;
	int function(GArrowFileSystem* fileSystem, const(char)* path, GError** err) c_garrow_file_system_delete_dir;
	int function(GArrowFileSystem* fileSystem, const(char)* path, GError** err) c_garrow_file_system_delete_dir_contents;
	int function(GArrowFileSystem* fileSystem, const(char)* path, GError** err) c_garrow_file_system_delete_file;
	int function(GArrowFileSystem* fileSystem, char** paths, size_t nPaths, GError** err) c_garrow_file_system_delete_files;
	GArrowFileInfo* function(GArrowFileSystem* fileSystem, const(char)* path, GError** err) c_garrow_file_system_get_file_info;
	GList* function(GArrowFileSystem* fileSystem, char** paths, size_t nPaths, GError** err) c_garrow_file_system_get_file_infos_paths;
	GList* function(GArrowFileSystem* fileSystem, GArrowFileSelector* fileSelector, GError** err) c_garrow_file_system_get_file_infos_selector;
	char* function(GArrowFileSystem* fileSystem) c_garrow_file_system_get_type_name;
	int function(GArrowFileSystem* fileSystem, const(char)* src, const(char)* dest, GError** err) c_garrow_file_system_move;
	GArrowOutputStream* function(GArrowFileSystem* fileSystem, const(char)* path, GError** err) c_garrow_file_system_open_append_stream;
	GArrowSeekableInputStream* function(GArrowFileSystem* fileSystem, const(char)* path, GError** err) c_garrow_file_system_open_input_file;
	GArrowInputStream* function(GArrowFileSystem* fileSystem, const(char)* path, GError** err) c_garrow_file_system_open_input_stream;
	GArrowOutputStream* function(GArrowFileSystem* fileSystem, const(char)* path, GError** err) c_garrow_file_system_open_output_stream;

	// arrow.FilterNodeOptions

	GType function() c_garrow_filter_node_options_get_type;
	GArrowFilterNodeOptions* function(GArrowExpression* expression) c_garrow_filter_node_options_new;

	// arrow.FilterOptions

	GType function() c_garrow_filter_options_get_type;
	GArrowFilterOptions* function() c_garrow_filter_options_new;

	// arrow.FixedSizeBinaryArray

	GType function() c_garrow_fixed_size_binary_array_get_type;
	GArrowFixedSizeBinaryArray* function(GArrowFixedSizeBinaryDataType* dataType, long length, GArrowBuffer* data, GArrowBuffer* nullBitmap, long nNulls) c_garrow_fixed_size_binary_array_new;
	int function(GArrowFixedSizeBinaryArray* array) c_garrow_fixed_size_binary_array_get_byte_width;
	GBytes* function(GArrowFixedSizeBinaryArray* array, long i) c_garrow_fixed_size_binary_array_get_value;
	GBytes* function(GArrowFixedSizeBinaryArray* array) c_garrow_fixed_size_binary_array_get_values_bytes;

	// arrow.FixedSizeBinaryArrayBuilder

	GType function() c_garrow_fixed_size_binary_array_builder_get_type;
	GArrowFixedSizeBinaryArrayBuilder* function(GArrowFixedSizeBinaryDataType* dataType) c_garrow_fixed_size_binary_array_builder_new;
	int function(GArrowFixedSizeBinaryArrayBuilder* builder, ubyte* value, int length, GError** err) c_garrow_fixed_size_binary_array_builder_append_value;
	int function(GArrowFixedSizeBinaryArrayBuilder* builder, GBytes* value, GError** err) c_garrow_fixed_size_binary_array_builder_append_value_bytes;
	int function(GArrowFixedSizeBinaryArrayBuilder* builder, GBytes** values, long valuesLength, int* isValids, long isValidsLength, GError** err) c_garrow_fixed_size_binary_array_builder_append_values;
	int function(GArrowFixedSizeBinaryArrayBuilder* builder, GBytes* values, int* isValids, long isValidsLength, GError** err) c_garrow_fixed_size_binary_array_builder_append_values_packed;

	// arrow.FixedSizeBinaryDataType

	GType function() c_garrow_fixed_size_binary_data_type_get_type;
	GArrowFixedSizeBinaryDataType* function(int byteWidth) c_garrow_fixed_size_binary_data_type_new;
	int function(GArrowFixedSizeBinaryDataType* dataType) c_garrow_fixed_size_binary_data_type_get_byte_width;

	// arrow.FixedSizeBinaryScalar

	GType function() c_garrow_fixed_size_binary_scalar_get_type;
	GArrowFixedSizeBinaryScalar* function(GArrowFixedSizeBinaryDataType* dataType, GArrowBuffer* value) c_garrow_fixed_size_binary_scalar_new;

	// arrow.FixedWidthDataType

	GType function() c_garrow_fixed_width_data_type_get_type;
	int function(GArrowFixedWidthDataType* dataType) c_garrow_fixed_width_data_type_get_bit_width;

	// arrow.FloatArray

	GType function() c_garrow_float_array_get_type;
	GArrowFloatArray* function(long length, GArrowBuffer* data, GArrowBuffer* nullBitmap, long nNulls) c_garrow_float_array_new;
	float function(GArrowFloatArray* array, long i) c_garrow_float_array_get_value;
	float* function(GArrowFloatArray* array, long* length) c_garrow_float_array_get_values;
	double function(GArrowFloatArray* array, GError** err) c_garrow_float_array_sum;

	// arrow.FloatArrayBuilder

	GType function() c_garrow_float_array_builder_get_type;
	GArrowFloatArrayBuilder* function() c_garrow_float_array_builder_new;
	int function(GArrowFloatArrayBuilder* builder, float value, GError** err) c_garrow_float_array_builder_append;
	int function(GArrowFloatArrayBuilder* builder, GError** err) c_garrow_float_array_builder_append_null;
	int function(GArrowFloatArrayBuilder* builder, long n, GError** err) c_garrow_float_array_builder_append_nulls;
	int function(GArrowFloatArrayBuilder* builder, float value, GError** err) c_garrow_float_array_builder_append_value;
	int function(GArrowFloatArrayBuilder* builder, float* values, long valuesLength, int* isValids, long isValidsLength, GError** err) c_garrow_float_array_builder_append_values;

	// arrow.FloatDataType

	GType function() c_garrow_float_data_type_get_type;
	GArrowFloatDataType* function() c_garrow_float_data_type_new;

	// arrow.FloatScalar

	GType function() c_garrow_float_scalar_get_type;
	GArrowFloatScalar* function(float value) c_garrow_float_scalar_new;
	float function(GArrowFloatScalar* scalar) c_garrow_float_scalar_get_value;

	// arrow.FloatingPointDataType

	GType function() c_garrow_floating_point_data_type_get_type;

	// arrow.Function

	GType function() c_garrow_function_get_type;
	GList* function() c_garrow_function_all;
	GArrowFunction* function(const(char)* name) c_garrow_function_find;
	int function(GArrowFunction* function_, GArrowFunction* otherFunction) c_garrow_function_equal;
	GArrowDatum* function(GArrowFunction* function_, GList* args, GArrowFunctionOptions* options, GArrowExecuteContext* context, GError** err) c_garrow_function_execute;
	GArrowFunctionOptions* function(GArrowFunction* function_) c_garrow_function_get_default_options;
	GArrowFunctionDoc* function(GArrowFunction* function_) c_garrow_function_get_doc;
	const(char)* function(GArrowFunction* function_) c_garrow_function_get_name;
	GType function(GArrowFunction* function_) c_garrow_function_get_options_type;
	char* function(GArrowFunction* function_) c_garrow_function_to_string;

	// arrow.FunctionDoc

	GType function() c_garrow_function_doc_get_type;
	char** function(GArrowFunctionDoc* doc) c_garrow_function_doc_get_arg_names;
	char* function(GArrowFunctionDoc* doc) c_garrow_function_doc_get_description;
	char* function(GArrowFunctionDoc* doc) c_garrow_function_doc_get_options_class_name;
	char* function(GArrowFunctionDoc* doc) c_garrow_function_doc_get_summary;

	// arrow.FunctionOptions

	GType function() c_garrow_function_options_get_type;
	int function(GArrowFunctionOptions* options, GArrowFunctionOptions* otherOptions) c_garrow_function_options_equal;
	char* function(GArrowFunctionOptions* options) c_garrow_function_options_to_string;

	// arrow.GCSFileSystem

	GType function() c_garrow_gcs_file_system_get_type;

	// arrow.GIOInputStream

	GType function() c_garrow_gio_input_stream_get_type;
	GArrowGIOInputStream* function(GInputStream* gioInputStream) c_garrow_gio_input_stream_new;
	GInputStream* function(GArrowGIOInputStream* inputStream) c_garrow_gio_input_stream_get_raw;

	// arrow.GIOOutputStream

	GType function() c_garrow_gio_output_stream_get_type;
	GArrowGIOOutputStream* function(GOutputStream* gioOutputStream) c_garrow_gio_output_stream_new;
	GOutputStream* function(GArrowGIOOutputStream* outputStream) c_garrow_gio_output_stream_get_raw;

	// arrow.HDFSFileSystem

	GType function() c_garrow_hdfs_file_system_get_type;

	// arrow.HalfFloatArray

	GType function() c_garrow_half_float_array_get_type;
	GArrowHalfFloatArray* function(long length, GArrowBuffer* data, GArrowBuffer* nullBitmap, long nNulls) c_garrow_half_float_array_new;
	ushort function(GArrowHalfFloatArray* array, long i) c_garrow_half_float_array_get_value;
	ushort* function(GArrowHalfFloatArray* array, long* length) c_garrow_half_float_array_get_values;

	// arrow.HalfFloatArrayBuilder

	GType function() c_garrow_half_float_array_builder_get_type;
	GArrowHalfFloatArrayBuilder* function() c_garrow_half_float_array_builder_new;
	int function(GArrowHalfFloatArrayBuilder* builder, ushort value, GError** err) c_garrow_half_float_array_builder_append_value;
	int function(GArrowHalfFloatArrayBuilder* builder, ushort* values, long valuesLength, int* isValids, long isValidsLength, GError** err) c_garrow_half_float_array_builder_append_values;

	// arrow.HalfFloatDataType

	GType function() c_garrow_half_float_data_type_get_type;
	GArrowHalfFloatDataType* function() c_garrow_half_float_data_type_new;

	// arrow.HalfFloatScalar

	GType function() c_garrow_half_float_scalar_get_type;
	GArrowHalfFloatScalar* function(ushort value) c_garrow_half_float_scalar_new;
	ushort function(GArrowHalfFloatScalar* scalar) c_garrow_half_float_scalar_get_value;

	// arrow.HashJoinNodeOptions

	GType function() c_garrow_hash_join_node_options_get_type;
	GArrowHashJoinNodeOptions* function(GArrowJoinType type, char** leftKeys, size_t nLeftKeys, char** rightKeys, size_t nRightKeys, GError** err) c_garrow_hash_join_node_options_new;
	int function(GArrowHashJoinNodeOptions* options, char** outputs, size_t nOutputs, GError** err) c_garrow_hash_join_node_options_set_left_outputs;
	int function(GArrowHashJoinNodeOptions* options, char** outputs, size_t nOutputs, GError** err) c_garrow_hash_join_node_options_set_right_outputs;

	// arrow.ISO8601TimestampParser

	GType function() c_garrow_iso8601_timestamp_parser_get_type;
	GArrowISO8601TimestampParser* function() c_garrow_iso8601_timestamp_parser_new;

	// arrow.IndexOptions

	GType function() c_garrow_index_options_get_type;
	GArrowIndexOptions* function() c_garrow_index_options_new;

	// arrow.InputStream

	GType function() c_garrow_input_stream_get_type;
	int function(GArrowInputStream* inputStream, long nBytes, GError** err) c_garrow_input_stream_advance;
	int function(GArrowInputStream* inputStream, int alignment, GError** err) c_garrow_input_stream_align;
	GArrowRecordBatch* function(GArrowInputStream* inputStream, GArrowSchema* schema, GArrowReadOptions* options, GError** err) c_garrow_input_stream_read_record_batch;
	GArrowTensor* function(GArrowInputStream* inputStream, GError** err) c_garrow_input_stream_read_tensor;

	// arrow.Int16Array

	GType function() c_garrow_int16_array_get_type;
	GArrowInt16Array* function(long length, GArrowBuffer* data, GArrowBuffer* nullBitmap, long nNulls) c_garrow_int16_array_new;
	short function(GArrowInt16Array* array, long i) c_garrow_int16_array_get_value;
	short* function(GArrowInt16Array* array, long* length) c_garrow_int16_array_get_values;
	long function(GArrowInt16Array* array, GError** err) c_garrow_int16_array_sum;

	// arrow.Int16ArrayBuilder

	GType function() c_garrow_int16_array_builder_get_type;
	GArrowInt16ArrayBuilder* function() c_garrow_int16_array_builder_new;
	int function(GArrowInt16ArrayBuilder* builder, short value, GError** err) c_garrow_int16_array_builder_append;
	int function(GArrowInt16ArrayBuilder* builder, GError** err) c_garrow_int16_array_builder_append_null;
	int function(GArrowInt16ArrayBuilder* builder, long n, GError** err) c_garrow_int16_array_builder_append_nulls;
	int function(GArrowInt16ArrayBuilder* builder, short value, GError** err) c_garrow_int16_array_builder_append_value;
	int function(GArrowInt16ArrayBuilder* builder, short* values, long valuesLength, int* isValids, long isValidsLength, GError** err) c_garrow_int16_array_builder_append_values;

	// arrow.Int16DataType

	GType function() c_garrow_int16_data_type_get_type;
	GArrowInt16DataType* function() c_garrow_int16_data_type_new;

	// arrow.Int16Scalar

	GType function() c_garrow_int16_scalar_get_type;
	GArrowInt16Scalar* function(short value) c_garrow_int16_scalar_new;
	short function(GArrowInt16Scalar* scalar) c_garrow_int16_scalar_get_value;

	// arrow.Int32Array

	GType function() c_garrow_int32_array_get_type;
	GArrowInt32Array* function(long length, GArrowBuffer* data, GArrowBuffer* nullBitmap, long nNulls) c_garrow_int32_array_new;
	int function(GArrowInt32Array* array, long i) c_garrow_int32_array_get_value;
	int* function(GArrowInt32Array* array, long* length) c_garrow_int32_array_get_values;
	long function(GArrowInt32Array* array, GError** err) c_garrow_int32_array_sum;

	// arrow.Int32ArrayBuilder

	GType function() c_garrow_int32_array_builder_get_type;
	GArrowInt32ArrayBuilder* function() c_garrow_int32_array_builder_new;
	int function(GArrowInt32ArrayBuilder* builder, int value, GError** err) c_garrow_int32_array_builder_append;
	int function(GArrowInt32ArrayBuilder* builder, GError** err) c_garrow_int32_array_builder_append_null;
	int function(GArrowInt32ArrayBuilder* builder, long n, GError** err) c_garrow_int32_array_builder_append_nulls;
	int function(GArrowInt32ArrayBuilder* builder, int value, GError** err) c_garrow_int32_array_builder_append_value;
	int function(GArrowInt32ArrayBuilder* builder, int* values, long valuesLength, int* isValids, long isValidsLength, GError** err) c_garrow_int32_array_builder_append_values;

	// arrow.Int32DataType

	GType function() c_garrow_int32_data_type_get_type;
	GArrowInt32DataType* function() c_garrow_int32_data_type_new;

	// arrow.Int32Scalar

	GType function() c_garrow_int32_scalar_get_type;
	GArrowInt32Scalar* function(int value) c_garrow_int32_scalar_new;
	int function(GArrowInt32Scalar* scalar) c_garrow_int32_scalar_get_value;

	// arrow.Int64Array

	GType function() c_garrow_int64_array_get_type;
	GArrowInt64Array* function(long length, GArrowBuffer* data, GArrowBuffer* nullBitmap, long nNulls) c_garrow_int64_array_new;
	long function(GArrowInt64Array* array, long i) c_garrow_int64_array_get_value;
	long* function(GArrowInt64Array* array, long* length) c_garrow_int64_array_get_values;
	long function(GArrowInt64Array* array, GError** err) c_garrow_int64_array_sum;

	// arrow.Int64ArrayBuilder

	GType function() c_garrow_int64_array_builder_get_type;
	GArrowInt64ArrayBuilder* function() c_garrow_int64_array_builder_new;
	int function(GArrowInt64ArrayBuilder* builder, long value, GError** err) c_garrow_int64_array_builder_append;
	int function(GArrowInt64ArrayBuilder* builder, GError** err) c_garrow_int64_array_builder_append_null;
	int function(GArrowInt64ArrayBuilder* builder, long n, GError** err) c_garrow_int64_array_builder_append_nulls;
	int function(GArrowInt64ArrayBuilder* builder, long value, GError** err) c_garrow_int64_array_builder_append_value;
	int function(GArrowInt64ArrayBuilder* builder, long* values, long valuesLength, int* isValids, long isValidsLength, GError** err) c_garrow_int64_array_builder_append_values;

	// arrow.Int64DataType

	GType function() c_garrow_int64_data_type_get_type;
	GArrowInt64DataType* function() c_garrow_int64_data_type_new;

	// arrow.Int64Scalar

	GType function() c_garrow_int64_scalar_get_type;
	GArrowInt64Scalar* function(long value) c_garrow_int64_scalar_new;
	long function(GArrowInt64Scalar* scalar) c_garrow_int64_scalar_get_value;

	// arrow.Int8Array

	GType function() c_garrow_int8_array_get_type;
	GArrowInt8Array* function(long length, GArrowBuffer* data, GArrowBuffer* nullBitmap, long nNulls) c_garrow_int8_array_new;
	byte function(GArrowInt8Array* array, long i) c_garrow_int8_array_get_value;
	byte* function(GArrowInt8Array* array, long* length) c_garrow_int8_array_get_values;
	long function(GArrowInt8Array* array, GError** err) c_garrow_int8_array_sum;

	// arrow.Int8ArrayBuilder

	GType function() c_garrow_int8_array_builder_get_type;
	GArrowInt8ArrayBuilder* function() c_garrow_int8_array_builder_new;
	int function(GArrowInt8ArrayBuilder* builder, byte value, GError** err) c_garrow_int8_array_builder_append;
	int function(GArrowInt8ArrayBuilder* builder, GError** err) c_garrow_int8_array_builder_append_null;
	int function(GArrowInt8ArrayBuilder* builder, long n, GError** err) c_garrow_int8_array_builder_append_nulls;
	int function(GArrowInt8ArrayBuilder* builder, byte value, GError** err) c_garrow_int8_array_builder_append_value;
	int function(GArrowInt8ArrayBuilder* builder, byte* values, long valuesLength, int* isValids, long isValidsLength, GError** err) c_garrow_int8_array_builder_append_values;

	// arrow.Int8DataType

	GType function() c_garrow_int8_data_type_get_type;
	GArrowInt8DataType* function() c_garrow_int8_data_type_new;

	// arrow.Int8Scalar

	GType function() c_garrow_int8_scalar_get_type;
	GArrowInt8Scalar* function(byte value) c_garrow_int8_scalar_new;
	byte function(GArrowInt8Scalar* scalar) c_garrow_int8_scalar_get_value;

	// arrow.IntArrayBuilder

	GType function() c_garrow_int_array_builder_get_type;
	GArrowIntArrayBuilder* function() c_garrow_int_array_builder_new;
	int function(GArrowIntArrayBuilder* builder, long value, GError** err) c_garrow_int_array_builder_append;
	int function(GArrowIntArrayBuilder* builder, GError** err) c_garrow_int_array_builder_append_null;
	int function(GArrowIntArrayBuilder* builder, long n, GError** err) c_garrow_int_array_builder_append_nulls;
	int function(GArrowIntArrayBuilder* builder, long value, GError** err) c_garrow_int_array_builder_append_value;
	int function(GArrowIntArrayBuilder* builder, long* values, long valuesLength, int* isValids, long isValidsLength, GError** err) c_garrow_int_array_builder_append_values;

	// arrow.IntegerDataType

	GType function() c_garrow_integer_data_type_get_type;
	int function(GArrowIntegerDataType* dataType) c_garrow_integer_data_type_is_signed;

	// arrow.IntervalDataType

	GType function() c_garrow_interval_data_type_get_type;
	GArrowIntervalType function(GArrowIntervalDataType* type) c_garrow_interval_data_type_get_interval_type;

	// arrow.JSONReadOptions

	GType function() c_garrow_json_read_options_get_type;
	GArrowJSONReadOptions* function() c_garrow_json_read_options_new;

	// arrow.JSONReader

	GType function() c_garrow_json_reader_get_type;
	GArrowJSONReader* function(GArrowInputStream* input, GArrowJSONReadOptions* options, GError** err) c_garrow_json_reader_new;
	GArrowTable* function(GArrowJSONReader* reader, GError** err) c_garrow_json_reader_read;

	// arrow.LargeBinaryArray

	GType function() c_garrow_large_binary_array_get_type;
	GArrowLargeBinaryArray* function(long length, GArrowBuffer* valueOffsets, GArrowBuffer* valueData, GArrowBuffer* nullBitmap, long nNulls) c_garrow_large_binary_array_new;
	GArrowBuffer* function(GArrowLargeBinaryArray* array) c_garrow_large_binary_array_get_buffer;
	GArrowBuffer* function(GArrowLargeBinaryArray* array) c_garrow_large_binary_array_get_data_buffer;
	GArrowBuffer* function(GArrowLargeBinaryArray* array) c_garrow_large_binary_array_get_offsets_buffer;
	GBytes* function(GArrowLargeBinaryArray* array, long i) c_garrow_large_binary_array_get_value;

	// arrow.LargeBinaryArrayBuilder

	GType function() c_garrow_large_binary_array_builder_get_type;
	GArrowLargeBinaryArrayBuilder* function() c_garrow_large_binary_array_builder_new;
	int function(GArrowLargeBinaryArrayBuilder* builder, GError** err) c_garrow_large_binary_array_builder_append_null;
	int function(GArrowLargeBinaryArrayBuilder* builder, long n, GError** err) c_garrow_large_binary_array_builder_append_nulls;
	int function(GArrowLargeBinaryArrayBuilder* builder, ubyte* value, long length, GError** err) c_garrow_large_binary_array_builder_append_value;
	int function(GArrowLargeBinaryArrayBuilder* builder, GBytes* value, GError** err) c_garrow_large_binary_array_builder_append_value_bytes;
	int function(GArrowLargeBinaryArrayBuilder* builder, GBytes** values, long valuesLength, int* isValids, long isValidsLength, GError** err) c_garrow_large_binary_array_builder_append_values;

	// arrow.LargeBinaryDataType

	GType function() c_garrow_large_binary_data_type_get_type;
	GArrowLargeBinaryDataType* function() c_garrow_large_binary_data_type_new;

	// arrow.LargeBinaryScalar

	GType function() c_garrow_large_binary_scalar_get_type;
	GArrowLargeBinaryScalar* function(GArrowBuffer* value) c_garrow_large_binary_scalar_new;

	// arrow.LargeListArray

	GType function() c_garrow_large_list_array_get_type;
	GArrowLargeListArray* function(GArrowDataType* dataType, long length, GArrowBuffer* valueOffsets, GArrowArray* values, GArrowBuffer* nullBitmap, long nNulls) c_garrow_large_list_array_new;
	GArrowArray* function(GArrowLargeListArray* array, long i) c_garrow_large_list_array_get_value;
	long function(GArrowLargeListArray* array, long i) c_garrow_large_list_array_get_value_length;
	long function(GArrowLargeListArray* array, long i) c_garrow_large_list_array_get_value_offset;
	long* function(GArrowLargeListArray* array, long* nOffsets) c_garrow_large_list_array_get_value_offsets;
	GArrowDataType* function(GArrowLargeListArray* array) c_garrow_large_list_array_get_value_type;
	GArrowArray* function(GArrowLargeListArray* array) c_garrow_large_list_array_get_values;

	// arrow.LargeListArrayBuilder

	GType function() c_garrow_large_list_array_builder_get_type;
	GArrowLargeListArrayBuilder* function(GArrowLargeListDataType* dataType, GError** err) c_garrow_large_list_array_builder_new;
	int function(GArrowLargeListArrayBuilder* builder, GError** err) c_garrow_large_list_array_builder_append_null;
	int function(GArrowLargeListArrayBuilder* builder, GError** err) c_garrow_large_list_array_builder_append_value;
	GArrowArrayBuilder* function(GArrowLargeListArrayBuilder* builder) c_garrow_large_list_array_builder_get_value_builder;

	// arrow.LargeListDataType

	GType function() c_garrow_large_list_data_type_get_type;
	GArrowLargeListDataType* function(GArrowField* field) c_garrow_large_list_data_type_new;
	GArrowField* function(GArrowLargeListDataType* largeListDataType) c_garrow_large_list_data_type_get_field;

	// arrow.LargeListScalar

	GType function() c_garrow_large_list_scalar_get_type;
	GArrowLargeListScalar* function(GArrowLargeListArray* value) c_garrow_large_list_scalar_new;

	// arrow.LargeStringArray

	GType function() c_garrow_large_string_array_get_type;
	GArrowLargeStringArray* function(long length, GArrowBuffer* valueOffsets, GArrowBuffer* valueData, GArrowBuffer* nullBitmap, long nNulls) c_garrow_large_string_array_new;
	char* function(GArrowLargeStringArray* array, long i) c_garrow_large_string_array_get_string;

	// arrow.LargeStringArrayBuilder

	GType function() c_garrow_large_string_array_builder_get_type;
	GArrowLargeStringArrayBuilder* function() c_garrow_large_string_array_builder_new;
	int function(GArrowLargeStringArrayBuilder* builder, const(char)* value, GError** err) c_garrow_large_string_array_builder_append_string;
	int function(GArrowLargeStringArrayBuilder* builder, const(char)* value, long length, GError** err) c_garrow_large_string_array_builder_append_string_len;
	int function(GArrowLargeStringArrayBuilder* builder, char** values, long valuesLength, int* isValids, long isValidsLength, GError** err) c_garrow_large_string_array_builder_append_strings;

	// arrow.LargeStringDataType

	GType function() c_garrow_large_string_data_type_get_type;
	GArrowLargeStringDataType* function() c_garrow_large_string_data_type_new;

	// arrow.LargeStringScalar

	GType function() c_garrow_large_string_scalar_get_type;
	GArrowLargeStringScalar* function(GArrowBuffer* value) c_garrow_large_string_scalar_new;

	// arrow.ListArray

	GType function() c_garrow_list_array_get_type;
	GArrowListArray* function(GArrowDataType* dataType, long length, GArrowBuffer* valueOffsets, GArrowArray* values, GArrowBuffer* nullBitmap, long nNulls) c_garrow_list_array_new;
	GArrowArray* function(GArrowListArray* array, long i) c_garrow_list_array_get_value;
	int function(GArrowListArray* array, long i) c_garrow_list_array_get_value_length;
	int function(GArrowListArray* array, long i) c_garrow_list_array_get_value_offset;
	int* function(GArrowListArray* array, long* nOffsets) c_garrow_list_array_get_value_offsets;
	GArrowDataType* function(GArrowListArray* array) c_garrow_list_array_get_value_type;
	GArrowArray* function(GArrowListArray* array) c_garrow_list_array_get_values;

	// arrow.ListArrayBuilder

	GType function() c_garrow_list_array_builder_get_type;
	GArrowListArrayBuilder* function(GArrowListDataType* dataType, GError** err) c_garrow_list_array_builder_new;
	int function(GArrowListArrayBuilder* builder, GError** err) c_garrow_list_array_builder_append;
	int function(GArrowListArrayBuilder* builder, GError** err) c_garrow_list_array_builder_append_null;
	int function(GArrowListArrayBuilder* builder, GError** err) c_garrow_list_array_builder_append_value;
	GArrowArrayBuilder* function(GArrowListArrayBuilder* builder) c_garrow_list_array_builder_get_value_builder;

	// arrow.ListDataType

	GType function() c_garrow_list_data_type_get_type;
	GArrowListDataType* function(GArrowField* field) c_garrow_list_data_type_new;
	GArrowField* function(GArrowListDataType* listDataType) c_garrow_list_data_type_get_field;
	GArrowField* function(GArrowListDataType* listDataType) c_garrow_list_data_type_get_value_field;

	// arrow.ListScalar

	GType function() c_garrow_list_scalar_get_type;
	GArrowListScalar* function(GArrowListArray* value) c_garrow_list_scalar_new;

	// arrow.LiteralExpression

	GType function() c_garrow_literal_expression_get_type;
	GArrowLiteralExpression* function(GArrowDatum* datum) c_garrow_literal_expression_new;

	// arrow.LocalFileSystem

	GType function() c_garrow_local_file_system_get_type;
	GArrowLocalFileSystem* function(GArrowLocalFileSystemOptions* options) c_garrow_local_file_system_new;

	// arrow.LocalFileSystemOptions

	GType function() c_garrow_local_file_system_options_get_type;
	GArrowLocalFileSystemOptions* function() c_garrow_local_file_system_options_new;

	// arrow.MapArray

	GType function() c_garrow_map_array_get_type;
	GArrowMapArray* function(GArrowArray* offsets, GArrowArray* keys, GArrowArray* items, GError** err) c_garrow_map_array_new;
	GArrowArray* function(GArrowMapArray* array) c_garrow_map_array_get_items;
	GArrowArray* function(GArrowMapArray* array) c_garrow_map_array_get_keys;

	// arrow.MapArrayBuilder

	GType function() c_garrow_map_array_builder_get_type;
	GArrowMapArrayBuilder* function(GArrowMapDataType* dataType, GError** err) c_garrow_map_array_builder_new;
	int function(GArrowMapArrayBuilder* builder, GError** err) c_garrow_map_array_builder_append_null;
	int function(GArrowMapArrayBuilder* builder, long n, GError** err) c_garrow_map_array_builder_append_nulls;
	int function(GArrowMapArrayBuilder* builder, GError** err) c_garrow_map_array_builder_append_value;
	int function(GArrowMapArrayBuilder* builder, int* offsets, long offsetsLength, int* isValids, long isValidsLength, GError** err) c_garrow_map_array_builder_append_values;
	GArrowArrayBuilder* function(GArrowMapArrayBuilder* builder) c_garrow_map_array_builder_get_item_builder;
	GArrowArrayBuilder* function(GArrowMapArrayBuilder* builder) c_garrow_map_array_builder_get_key_builder;
	GArrowArrayBuilder* function(GArrowMapArrayBuilder* builder) c_garrow_map_array_builder_get_value_builder;

	// arrow.MapDataType

	GType function() c_garrow_map_data_type_get_type;
	GArrowMapDataType* function(GArrowDataType* keyType, GArrowDataType* itemType) c_garrow_map_data_type_new;
	GArrowDataType* function(GArrowMapDataType* mapDataType) c_garrow_map_data_type_get_item_type;
	GArrowDataType* function(GArrowMapDataType* mapDataType) c_garrow_map_data_type_get_key_type;

	// arrow.MapScalar

	GType function() c_garrow_map_scalar_get_type;
	GArrowMapScalar* function(GArrowStructArray* value) c_garrow_map_scalar_new;

	// arrow.MatchSubstringOptions

	GType function() c_garrow_match_substring_options_get_type;
	GArrowMatchSubstringOptions* function() c_garrow_match_substring_options_new;

	// arrow.MemoryMappedInputStream

	GType function() c_garrow_memory_mapped_input_stream_get_type;
	GArrowMemoryMappedInputStream* function(const(char)* path, GError** err) c_garrow_memory_mapped_input_stream_new;

	// arrow.MemoryPool

	GType function() c_garrow_memory_pool_get_type;
	GArrowMemoryPool* function() c_garrow_memory_pool_default;
	char* function(GArrowMemoryPool* memoryPool) c_garrow_memory_pool_get_backend_name;
	long function(GArrowMemoryPool* memoryPool) c_garrow_memory_pool_get_bytes_allocated;
	long function(GArrowMemoryPool* memoryPool) c_garrow_memory_pool_get_max_memory;

	// arrow.MockFileSystem

	GType function() c_garrow_mock_file_system_get_type;

	// arrow.MonthDayNano

	GType function() c_garrow_month_day_nano_get_type;
	GArrowMonthDayNano* function(int month, int day, long nanosecond) c_garrow_month_day_nano_new;
	int function(GArrowMonthDayNano* monthNanoDay, GArrowMonthDayNano* otherMonthNanoDay) c_garrow_month_day_nano_equal;

	// arrow.MonthDayNanoIntervalArray

	GType function() c_garrow_month_day_nano_interval_array_get_type;
	GArrowMonthDayNanoIntervalArray* function(long length, GArrowBuffer* data, GArrowBuffer* nullBitmap, long nNulls) c_garrow_month_day_nano_interval_array_new;
	GArrowMonthDayNano* function(GArrowMonthDayNanoIntervalArray* array, long i) c_garrow_month_day_nano_interval_array_get_value;
	GList* function(GArrowMonthDayNanoIntervalArray* array) c_garrow_month_day_nano_interval_array_get_values;

	// arrow.MonthDayNanoIntervalArrayBuilder

	GType function() c_garrow_month_day_nano_interval_array_builder_get_type;
	GArrowMonthDayNanoIntervalArrayBuilder* function() c_garrow_month_day_nano_interval_array_builder_new;
	int function(GArrowMonthDayNanoIntervalArrayBuilder* builder, GArrowMonthDayNano* value, GError** err) c_garrow_month_day_nano_interval_array_builder_append_value;
	int function(GArrowMonthDayNanoIntervalArrayBuilder* builder, GArrowMonthDayNano** values, long valuesLength, int* isValids, long isValidsLength, GError** err) c_garrow_month_day_nano_interval_array_builder_append_values;

	// arrow.MonthDayNanoIntervalDataType

	GType function() c_garrow_month_day_nano_interval_data_type_get_type;
	GArrowMonthDayNanoIntervalDataType* function() c_garrow_month_day_nano_interval_data_type_new;

	// arrow.MonthDayNanoIntervalScalar

	GType function() c_garrow_month_day_nano_interval_scalar_get_type;
	GArrowMonthDayNanoIntervalScalar* function(GArrowMonthDayNano* value) c_garrow_month_day_nano_interval_scalar_new;
	GArrowMonthDayNano* function(GArrowMonthDayNanoIntervalScalar* scalar) c_garrow_month_day_nano_interval_scalar_get_value;

	// arrow.MonthIntervalArray

	GType function() c_garrow_month_interval_array_get_type;
	GArrowMonthIntervalArray* function(long length, GArrowBuffer* data, GArrowBuffer* nullBitmap, long nNulls) c_garrow_month_interval_array_new;
	int function(GArrowMonthIntervalArray* array, long i) c_garrow_month_interval_array_get_value;
	int* function(GArrowMonthIntervalArray* array, long* length) c_garrow_month_interval_array_get_values;

	// arrow.MonthIntervalArrayBuilder

	GType function() c_garrow_month_interval_array_builder_get_type;
	GArrowMonthIntervalArrayBuilder* function() c_garrow_month_interval_array_builder_new;
	int function(GArrowMonthIntervalArrayBuilder* builder, int value, GError** err) c_garrow_month_interval_array_builder_append_value;
	int function(GArrowMonthIntervalArrayBuilder* builder, int* values, long valuesLength, int* isValids, long isValidsLength, GError** err) c_garrow_month_interval_array_builder_append_values;

	// arrow.MonthIntervalDataType

	GType function() c_garrow_month_interval_data_type_get_type;
	GArrowMonthIntervalDataType* function() c_garrow_month_interval_data_type_new;

	// arrow.MonthIntervalScalar

	GType function() c_garrow_month_interval_scalar_get_type;
	GArrowMonthIntervalScalar* function(int value) c_garrow_month_interval_scalar_new;
	int function(GArrowMonthIntervalScalar* scalar) c_garrow_month_interval_scalar_get_value;

	// arrow.MutableBuffer

	GType function() c_garrow_mutable_buffer_get_type;
	GArrowMutableBuffer* function(ubyte* data, long size) c_garrow_mutable_buffer_new;
	GArrowMutableBuffer* function(GBytes* data) c_garrow_mutable_buffer_new_bytes;
	int function(GArrowMutableBuffer* buffer, long offset, ubyte* data, long size, GError** err) c_garrow_mutable_buffer_set_data;
	GArrowMutableBuffer* function(GArrowMutableBuffer* buffer, long offset, long size) c_garrow_mutable_buffer_slice;

	// arrow.NullArray

	GType function() c_garrow_null_array_get_type;
	GArrowNullArray* function(long length) c_garrow_null_array_new;

	// arrow.NullArrayBuilder

	GType function() c_garrow_null_array_builder_get_type;
	GArrowNullArrayBuilder* function() c_garrow_null_array_builder_new;
	int function(GArrowNullArrayBuilder* builder, GError** err) c_garrow_null_array_builder_append_null;
	int function(GArrowNullArrayBuilder* builder, long n, GError** err) c_garrow_null_array_builder_append_nulls;

	// arrow.NullDataType

	GType function() c_garrow_null_data_type_get_type;
	GArrowNullDataType* function() c_garrow_null_data_type_new;

	// arrow.NullScalar

	GType function() c_garrow_null_scalar_get_type;
	GArrowNullScalar* function() c_garrow_null_scalar_new;

	// arrow.NumericArray

	GType function() c_garrow_numeric_array_get_type;
	double function(GArrowNumericArray* array, GError** err) c_garrow_numeric_array_mean;

	// arrow.NumericDataType

	GType function() c_garrow_numeric_data_type_get_type;

	// arrow.ORCFileReader

	GType function() c_garrow_orc_file_reader_get_type;
	GArrowORCFileReader* function(GArrowSeekableInputStream* file, GError** err) c_garrow_orc_file_reader_new;
	int* function(GArrowORCFileReader* reader, uint* nFieldIndexes) c_garrow_orc_file_reader_get_field_indexes;
	int* function(GArrowORCFileReader* reader, uint* nFieldIndices) c_garrow_orc_file_reader_get_field_indices;
	long function(GArrowORCFileReader* reader) c_garrow_orc_file_reader_get_n_rows;
	long function(GArrowORCFileReader* reader) c_garrow_orc_file_reader_get_n_stripes;
	GArrowRecordBatch* function(GArrowORCFileReader* reader, long i, GError** err) c_garrow_orc_file_reader_read_stripe;
	GArrowTable* function(GArrowORCFileReader* reader, GError** err) c_garrow_orc_file_reader_read_stripes;
	GArrowSchema* function(GArrowORCFileReader* reader, GError** err) c_garrow_orc_file_reader_read_type;
	void function(GArrowORCFileReader* reader, int* fieldIndexes, uint nFieldIndexes) c_garrow_orc_file_reader_set_field_indexes;
	void function(GArrowORCFileReader* reader, int* fieldIndices, uint nFieldIndices) c_garrow_orc_file_reader_set_field_indices;

	// arrow.OutputStream

	GType function() c_garrow_output_stream_get_type;
	int function(GArrowOutputStream* stream, int alignment, GError** err) c_garrow_output_stream_align;
	long function(GArrowOutputStream* stream, GArrowRecordBatch* recordBatch, GArrowWriteOptions* options, GError** err) c_garrow_output_stream_write_record_batch;
	long function(GArrowOutputStream* stream, GArrowTensor* tensor, GError** err) c_garrow_output_stream_write_tensor;

	// arrow.PrimitiveArray

	GType function() c_garrow_primitive_array_get_type;
	GArrowBuffer* function(GArrowPrimitiveArray* array) c_garrow_primitive_array_get_buffer;
	GArrowBuffer* function(GArrowPrimitiveArray* array) c_garrow_primitive_array_get_data_buffer;

	// arrow.ProjectNodeOptions

	GType function() c_garrow_project_node_options_get_type;
	GArrowProjectNodeOptions* function(GList* expressions, char** names, size_t nNames) c_garrow_project_node_options_new;

	// arrow.QuantileOptions

	GType function() c_garrow_quantile_options_get_type;
	GArrowQuantileOptions* function() c_garrow_quantile_options_new;
	double* function(GArrowQuantileOptions* options, size_t* n) c_garrow_quantile_options_get_qs;
	void function(GArrowQuantileOptions* options, double q) c_garrow_quantile_options_set_q;
	void function(GArrowQuantileOptions* options, double* qs, size_t n) c_garrow_quantile_options_set_qs;

	// arrow.RankOptions

	GType function() c_garrow_rank_options_get_type;
	GArrowRankOptions* function() c_garrow_rank_options_new;
	void function(GArrowRankOptions* options, GArrowSortKey* sortKey) c_garrow_rank_options_add_sort_key;
	int function(GArrowRankOptions* options, GArrowRankOptions* otherOptions) c_garrow_rank_options_equal;
	GList* function(GArrowRankOptions* options) c_garrow_rank_options_get_sort_keys;
	void function(GArrowRankOptions* options, GList* sortKeys) c_garrow_rank_options_set_sort_keys;

	// arrow.ReadOptions

	GType function() c_garrow_read_options_get_type;
	GArrowReadOptions* function() c_garrow_read_options_new;
	int* function(GArrowReadOptions* options, size_t* nFields) c_garrow_read_options_get_included_fields;
	void function(GArrowReadOptions* options, int* fields, size_t nFields) c_garrow_read_options_set_included_fields;

	// arrow.Readable

	GType function() c_garrow_readable_get_type;
	GArrowBuffer* function(GArrowReadable* readable, long nBytes, GError** err) c_garrow_readable_read;
	GBytes* function(GArrowReadable* readable, long nBytes, GError** err) c_garrow_readable_read_bytes;

	// arrow.RecordBatch

	GType function() c_garrow_record_batch_get_type;
	GArrowRecordBatch* function(GArrowSchema* schema, uint nRows, GList* columns, GError** err) c_garrow_record_batch_new;
	GArrowRecordBatch* function(void* cAbiArray, GArrowSchema* schema, GError** err) c_garrow_record_batch_import;
	GArrowRecordBatch* function(GArrowRecordBatch* recordBatch, uint i, GArrowField* field, GArrowArray* column, GError** err) c_garrow_record_batch_add_column;
	int function(GArrowRecordBatch* recordBatch, GArrowRecordBatch* otherRecordBatch) c_garrow_record_batch_equal;
	int function(GArrowRecordBatch* recordBatch, GArrowRecordBatch* otherRecordBatch, int checkMetadata) c_garrow_record_batch_equal_metadata;
	int function(GArrowRecordBatch* recordBatch, void** cAbiArray, void** cAbiSchema, GError** err) c_garrow_record_batch_export;
	GArrowRecordBatch* function(GArrowRecordBatch* recordBatch, GArrowBooleanArray* filter, GArrowFilterOptions* options, GError** err) c_garrow_record_batch_filter;
	GArrowArray* function(GArrowRecordBatch* recordBatch, int i) c_garrow_record_batch_get_column_data;
	const(char)* function(GArrowRecordBatch* recordBatch, int i) c_garrow_record_batch_get_column_name;
	uint function(GArrowRecordBatch* recordBatch) c_garrow_record_batch_get_n_columns;
	long function(GArrowRecordBatch* recordBatch) c_garrow_record_batch_get_n_rows;
	GArrowSchema* function(GArrowRecordBatch* recordBatch) c_garrow_record_batch_get_schema;
	GArrowRecordBatch* function(GArrowRecordBatch* recordBatch, uint i, GError** err) c_garrow_record_batch_remove_column;
	GArrowBuffer* function(GArrowRecordBatch* recordBatch, GArrowWriteOptions* options, GError** err) c_garrow_record_batch_serialize;
	GArrowRecordBatch* function(GArrowRecordBatch* recordBatch, long offset, long length) c_garrow_record_batch_slice;
	GArrowUInt64Array* function(GArrowRecordBatch* recordBatch, GArrowSortOptions* options, GError** err) c_garrow_record_batch_sort_indices;
	GArrowRecordBatch* function(GArrowRecordBatch* recordBatch, GArrowArray* indices, GArrowTakeOptions* options, GError** err) c_garrow_record_batch_take;
	char* function(GArrowRecordBatch* recordBatch, GError** err) c_garrow_record_batch_to_string;

	// arrow.RecordBatchBuilder

	GType function() c_garrow_record_batch_builder_get_type;
	GArrowRecordBatchBuilder* function(GArrowSchema* schema, GError** err) c_garrow_record_batch_builder_new;
	GArrowRecordBatch* function(GArrowRecordBatchBuilder* builder, GError** err) c_garrow_record_batch_builder_flush;
	GArrowArrayBuilder* function(GArrowRecordBatchBuilder* builder, int i) c_garrow_record_batch_builder_get_column_builder;
	GArrowArrayBuilder* function(GArrowRecordBatchBuilder* builder, int i) c_garrow_record_batch_builder_get_field;
	long function(GArrowRecordBatchBuilder* builder) c_garrow_record_batch_builder_get_initial_capacity;
	int function(GArrowRecordBatchBuilder* builder) c_garrow_record_batch_builder_get_n_columns;
	int function(GArrowRecordBatchBuilder* builder) c_garrow_record_batch_builder_get_n_fields;
	GArrowSchema* function(GArrowRecordBatchBuilder* builder) c_garrow_record_batch_builder_get_schema;
	void function(GArrowRecordBatchBuilder* builder, long capacity) c_garrow_record_batch_builder_set_initial_capacity;

	// arrow.RecordBatchDatum

	GType function() c_garrow_record_batch_datum_get_type;
	GArrowRecordBatchDatum* function(GArrowRecordBatch* value) c_garrow_record_batch_datum_new;

	// arrow.RecordBatchFileReader

	GType function() c_garrow_record_batch_file_reader_get_type;
	GArrowRecordBatchFileReader* function(GArrowSeekableInputStream* file, GError** err) c_garrow_record_batch_file_reader_new;
	uint function(GArrowRecordBatchFileReader* reader) c_garrow_record_batch_file_reader_get_n_record_batches;
	GArrowRecordBatch* function(GArrowRecordBatchFileReader* reader, uint i, GError** err) c_garrow_record_batch_file_reader_get_record_batch;
	GArrowSchema* function(GArrowRecordBatchFileReader* reader) c_garrow_record_batch_file_reader_get_schema;
	GArrowMetadataVersion function(GArrowRecordBatchFileReader* reader) c_garrow_record_batch_file_reader_get_version;
	GArrowRecordBatch* function(GArrowRecordBatchFileReader* reader, uint i, GError** err) c_garrow_record_batch_file_reader_read_record_batch;

	// arrow.RecordBatchFileWriter

	GType function() c_garrow_record_batch_file_writer_get_type;
	GArrowRecordBatchFileWriter* function(GArrowOutputStream* sink, GArrowSchema* schema, GError** err) c_garrow_record_batch_file_writer_new;

	// arrow.RecordBatchIterator

	GType function() c_garrow_record_batch_iterator_get_type;
	GArrowRecordBatchIterator* function(GList* recordBatches) c_garrow_record_batch_iterator_new;
	int function(GArrowRecordBatchIterator* iterator, GArrowRecordBatchIterator* otherIterator) c_garrow_record_batch_iterator_equal;
	GArrowRecordBatch* function(GArrowRecordBatchIterator* iterator, GError** err) c_garrow_record_batch_iterator_next;
	GList* function(GArrowRecordBatchIterator* iterator, GError** err) c_garrow_record_batch_iterator_to_list;

	// arrow.RecordBatchReader

	GType function() c_garrow_record_batch_reader_get_type;
	GArrowRecordBatchReader* function(GList* recordBatches, GArrowSchema* schema, GError** err) c_garrow_record_batch_reader_new;
	GArrowRecordBatchReader* function(void* cAbiArrayStream, GError** err) c_garrow_record_batch_reader_import;
	void* function(GArrowRecordBatchReader* reader, GError** err) c_garrow_record_batch_reader_export;
	GArrowRecordBatch* function(GArrowRecordBatchReader* reader, GError** err) c_garrow_record_batch_reader_get_next_record_batch;
	GArrowSchema* function(GArrowRecordBatchReader* reader) c_garrow_record_batch_reader_get_schema;
	GList* function(GArrowRecordBatchReader* reader) c_garrow_record_batch_reader_get_sources;
	GArrowTable* function(GArrowRecordBatchReader* reader, GError** err) c_garrow_record_batch_reader_read_all;
	GArrowRecordBatch* function(GArrowRecordBatchReader* reader, GError** err) c_garrow_record_batch_reader_read_next;
	GArrowRecordBatch* function(GArrowRecordBatchReader* reader, GError** err) c_garrow_record_batch_reader_read_next_record_batch;

	// arrow.RecordBatchStreamReader

	GType function() c_garrow_record_batch_stream_reader_get_type;
	GArrowRecordBatchStreamReader* function(GArrowInputStream* stream, GError** err) c_garrow_record_batch_stream_reader_new;

	// arrow.RecordBatchStreamWriter

	GType function() c_garrow_record_batch_stream_writer_get_type;
	GArrowRecordBatchStreamWriter* function(GArrowOutputStream* sink, GArrowSchema* schema, GError** err) c_garrow_record_batch_stream_writer_new;

	// arrow.RecordBatchWriter

	GType function() c_garrow_record_batch_writer_get_type;
	int function(GArrowRecordBatchWriter* writer, GError** err) c_garrow_record_batch_writer_close;
	int function(GArrowRecordBatchWriter* writer) c_garrow_record_batch_writer_is_closed;
	int function(GArrowRecordBatchWriter* writer, GArrowRecordBatch* recordBatch, GError** err) c_garrow_record_batch_writer_write_record_batch;
	int function(GArrowRecordBatchWriter* writer, GArrowTable* table, GError** err) c_garrow_record_batch_writer_write_table;

	// arrow.ResizableBuffer

	GType function() c_garrow_resizable_buffer_get_type;
	GArrowResizableBuffer* function(long initialSize, GError** err) c_garrow_resizable_buffer_new;
	int function(GArrowResizableBuffer* buffer, long newCapacity, GError** err) c_garrow_resizable_buffer_reserve;
	int function(GArrowResizableBuffer* buffer, long newSize, GError** err) c_garrow_resizable_buffer_resize;

	// arrow.RoundOptions

	GType function() c_garrow_round_options_get_type;
	GArrowRoundOptions* function() c_garrow_round_options_new;

	// arrow.RoundToMultipleOptions

	GType function() c_garrow_round_to_multiple_options_get_type;
	GArrowRoundToMultipleOptions* function() c_garrow_round_to_multiple_options_new;

	// arrow.RunEndEncodeOptions

	GType function() c_garrow_run_end_encode_options_get_type;
	GArrowRunEndEncodeOptions* function(GArrowDataType* runEndDataType) c_garrow_run_end_encode_options_new;

	// arrow.RunEndEncodedArray

	GType function() c_garrow_run_end_encoded_array_get_type;
	GArrowRunEndEncodedArray* function(GArrowDataType* dataType, long logicalLength, GArrowArray* runEnds, GArrowArray* values, long logicalOffset, GError** err) c_garrow_run_end_encoded_array_new;
	GArrowArray* function(GArrowRunEndEncodedArray* array, GError** err) c_garrow_run_end_encoded_array_decode;
	long function(GArrowRunEndEncodedArray* array) c_garrow_run_end_encoded_array_find_physical_length;
	long function(GArrowRunEndEncodedArray* array) c_garrow_run_end_encoded_array_find_physical_offset;
	GArrowArray* function(GArrowRunEndEncodedArray* array, GError** err) c_garrow_run_end_encoded_array_get_logical_run_ends;
	GArrowArray* function(GArrowRunEndEncodedArray* array) c_garrow_run_end_encoded_array_get_logical_values;
	GArrowArray* function(GArrowRunEndEncodedArray* array) c_garrow_run_end_encoded_array_get_run_ends;
	GArrowArray* function(GArrowRunEndEncodedArray* array) c_garrow_run_end_encoded_array_get_values;

	// arrow.RunEndEncodedDataType

	GType function() c_garrow_run_end_encoded_data_type_get_type;
	GArrowRunEndEncodedDataType* function(GArrowDataType* runEndDataType, GArrowDataType* valueDataType) c_garrow_run_end_encoded_data_type_new;
	GArrowDataType* function(GArrowRunEndEncodedDataType* dataType) c_garrow_run_end_encoded_data_type_get_run_end_data_type;
	GArrowDataType* function(GArrowRunEndEncodedDataType* dataType) c_garrow_run_end_encoded_data_type_get_value_data_type;

	// arrow.S3FileSystem

	GType function() c_garrow_s3_file_system_get_type;

	// arrow.S3GlobalOptions

	GType function() c_garrow_s3_global_options_get_type;
	GArrowS3GlobalOptions* function() c_garrow_s3_global_options_new;

	// arrow.Scalar

	GType function() c_garrow_scalar_get_type;
	GArrowScalar* function(GArrowDataType* dataType, ubyte* data, size_t size, GError** err) c_garrow_scalar_parse;
	GArrowScalar* function(GArrowScalar* scalar, GArrowDataType* dataType, GArrowCastOptions* options, GError** err) c_garrow_scalar_cast;
	int function(GArrowScalar* scalar, GArrowScalar* otherScalar) c_garrow_scalar_equal;
	int function(GArrowScalar* scalar, GArrowScalar* otherScalar, GArrowEqualOptions* options) c_garrow_scalar_equal_options;
	GArrowDataType* function(GArrowScalar* scalar) c_garrow_scalar_get_data_type;
	int function(GArrowScalar* scalar) c_garrow_scalar_is_valid;
	char* function(GArrowScalar* scalar) c_garrow_scalar_to_string;

	// arrow.ScalarAggregateOptions

	GType function() c_garrow_scalar_aggregate_options_get_type;
	GArrowScalarAggregateOptions* function() c_garrow_scalar_aggregate_options_new;

	// arrow.ScalarDatum

	GType function() c_garrow_scalar_datum_get_type;
	GArrowScalarDatum* function(GArrowScalar* value) c_garrow_scalar_datum_new;

	// arrow.Schema

	GType function() c_garrow_schema_get_type;
	GArrowSchema* function(GList* fields) c_garrow_schema_new;
	GArrowSchema* function(void* cAbiSchema, GError** err) c_garrow_schema_import;
	GArrowSchema* function(GArrowSchema* schema, uint i, GArrowField* field, GError** err) c_garrow_schema_add_field;
	int function(GArrowSchema* schema, GArrowSchema* otherSchema) c_garrow_schema_equal;
	void* function(GArrowSchema* schema, GError** err) c_garrow_schema_export;
	GArrowField* function(GArrowSchema* schema, uint i) c_garrow_schema_get_field;
	GArrowField* function(GArrowSchema* schema, const(char)* name) c_garrow_schema_get_field_by_name;
	int function(GArrowSchema* schema, const(char)* name) c_garrow_schema_get_field_index;
	GList* function(GArrowSchema* schema) c_garrow_schema_get_fields;
	GHashTable* function(GArrowSchema* schema) c_garrow_schema_get_metadata;
	int function(GArrowSchema* schema) c_garrow_schema_has_metadata;
	uint function(GArrowSchema* schema) c_garrow_schema_n_fields;
	GArrowSchema* function(GArrowSchema* schema, uint i, GError** err) c_garrow_schema_remove_field;
	GArrowSchema* function(GArrowSchema* schema, uint i, GArrowField* field, GError** err) c_garrow_schema_replace_field;
	char* function(GArrowSchema* schema) c_garrow_schema_to_string;
	char* function(GArrowSchema* schema, int showMetadata) c_garrow_schema_to_string_metadata;
	GArrowSchema* function(GArrowSchema* schema, GHashTable* metadata) c_garrow_schema_with_metadata;

	// arrow.SeekableInputStream

	GType function() c_garrow_seekable_input_stream_get_type;
	ulong function(GArrowSeekableInputStream* inputStream, GError** err) c_garrow_seekable_input_stream_get_size;
	int function(GArrowSeekableInputStream* inputStream) c_garrow_seekable_input_stream_get_support_zero_copy;
	GBytes* function(GArrowSeekableInputStream* inputStream, long nBytes, GError** err) c_garrow_seekable_input_stream_peek;
	GArrowBuffer* function(GArrowSeekableInputStream* inputStream, long position, long nBytes, GError** err) c_garrow_seekable_input_stream_read_at;
	GBytes* function(GArrowSeekableInputStream* inputStream, long position, long nBytes, GError** err) c_garrow_seekable_input_stream_read_at_bytes;

	// arrow.SetLookupOptions

	GType function() c_garrow_set_lookup_options_get_type;
	GArrowSetLookupOptions* function(GArrowDatum* valueSet) c_garrow_set_lookup_options_new;

	// arrow.SinkNodeOptions

	GType function() c_garrow_sink_node_options_get_type;
	GArrowSinkNodeOptions* function() c_garrow_sink_node_options_new;
	GArrowRecordBatchReader* function(GArrowSinkNodeOptions* options, GArrowSchema* schema) c_garrow_sink_node_options_get_reader;

	// arrow.SlowFileSystem

	GType function() c_garrow_slow_file_system_get_type;
	GArrowSlowFileSystem* function(GArrowFileSystem* baseFileSystem, double averageLatency) c_garrow_slow_file_system_new_average_latency;
	GArrowSlowFileSystem* function(GArrowFileSystem* baseFileSystem, double averageLatency, int seed) c_garrow_slow_file_system_new_average_latency_and_seed;

	// arrow.SortKey

	GType function() c_garrow_sort_key_get_type;
	GArrowSortKey* function(const(char)* target, GArrowSortOrder order, GError** err) c_garrow_sort_key_new;
	int function(GArrowSortKey* sortKey, GArrowSortKey* otherSortKey) c_garrow_sort_key_equal;

	// arrow.SortOptions

	GType function() c_garrow_sort_options_get_type;
	GArrowSortOptions* function(GList* sortKeys) c_garrow_sort_options_new;
	void function(GArrowSortOptions* options, GArrowSortKey* sortKey) c_garrow_sort_options_add_sort_key;
	int function(GArrowSortOptions* options, GArrowSortOptions* otherOptions) c_garrow_sort_options_equal;
	GList* function(GArrowSortOptions* options) c_garrow_sort_options_get_sort_keys;
	void function(GArrowSortOptions* options, GList* sortKeys) c_garrow_sort_options_set_sort_keys;

	// arrow.SourceNodeOptions

	GType function() c_garrow_source_node_options_get_type;
	GArrowSourceNodeOptions* function(GArrowRecordBatch* recordBatch) c_garrow_source_node_options_new_record_batch;
	GArrowSourceNodeOptions* function(GArrowRecordBatchReader* reader) c_garrow_source_node_options_new_record_batch_reader;
	GArrowSourceNodeOptions* function(GArrowTable* table) c_garrow_source_node_options_new_table;

	// arrow.SparseUnionArray

	GType function() c_garrow_sparse_union_array_get_type;
	GArrowSparseUnionArray* function(GArrowInt8Array* typeIds, GList* fields, GError** err) c_garrow_sparse_union_array_new;
	GArrowSparseUnionArray* function(GArrowSparseUnionDataType* dataType, GArrowInt8Array* typeIds, GList* fields, GError** err) c_garrow_sparse_union_array_new_data_type;

	// arrow.SparseUnionArrayBuilder

	GType function() c_garrow_sparse_union_array_builder_get_type;
	GArrowSparseUnionArrayBuilder* function(GArrowSparseUnionDataType* dataType, GError** err) c_garrow_sparse_union_array_builder_new;

	// arrow.SparseUnionDataType

	GType function() c_garrow_sparse_union_data_type_get_type;
	GArrowSparseUnionDataType* function(GList* fields, byte* typeCodes, size_t nTypeCodes) c_garrow_sparse_union_data_type_new;

	// arrow.SparseUnionScalar

	GType function() c_garrow_sparse_union_scalar_get_type;
	GArrowSparseUnionScalar* function(GArrowSparseUnionDataType* dataType, byte typeCode, GArrowScalar* value) c_garrow_sparse_union_scalar_new;

	// arrow.SplitPatternOptions

	GType function() c_garrow_split_pattern_options_get_type;
	GArrowSplitPatternOptions* function() c_garrow_split_pattern_options_new;

	// arrow.StreamDecoder

	GType function() c_garrow_stream_decoder_get_type;
	GArrowStreamDecoder* function(GArrowStreamListener* listener, GArrowReadOptions* options) c_garrow_stream_decoder_new;
	int function(GArrowStreamDecoder* decoder, GArrowBuffer* buffer, GError** err) c_garrow_stream_decoder_consume_buffer;
	int function(GArrowStreamDecoder* decoder, GBytes* bytes, GError** err) c_garrow_stream_decoder_consume_bytes;
	size_t function(GArrowStreamDecoder* decoder) c_garrow_stream_decoder_get_next_required_size;
	GArrowSchema* function(GArrowStreamDecoder* decoder) c_garrow_stream_decoder_get_schema;
	int function(GArrowStreamDecoder* decoder, GError** err) c_garrow_stream_decoder_reset;

	// arrow.StreamListener

	GType function() c_garrow_stream_listener_get_type;
	int function(GArrowStreamListener* listener, GError** err) c_garrow_stream_listener_on_eos;
	int function(GArrowStreamListener* listener, GArrowRecordBatch* recordBatch, GHashTable* metadata, GError** err) c_garrow_stream_listener_on_record_batch_decoded;
	int function(GArrowStreamListener* listener, GArrowSchema* schema, GArrowSchema* filteredSchema, GError** err) c_garrow_stream_listener_on_schema_decoded;

	// arrow.StrftimeOptions

	GType function() c_garrow_strftime_options_get_type;
	GArrowStrftimeOptions* function() c_garrow_strftime_options_new;

	// arrow.StringArray

	GType function() c_garrow_string_array_get_type;
	GArrowStringArray* function(long length, GArrowBuffer* valueOffsets, GArrowBuffer* valueData, GArrowBuffer* nullBitmap, long nNulls) c_garrow_string_array_new;
	char* function(GArrowStringArray* array, long i) c_garrow_string_array_get_string;

	// arrow.StringArrayBuilder

	GType function() c_garrow_string_array_builder_get_type;
	GArrowStringArrayBuilder* function() c_garrow_string_array_builder_new;
	int function(GArrowStringArrayBuilder* builder, const(char)* value, GError** err) c_garrow_string_array_builder_append;
	int function(GArrowStringArrayBuilder* builder, const(char)* value, GError** err) c_garrow_string_array_builder_append_string;
	int function(GArrowStringArrayBuilder* builder, const(char)* value, int length, GError** err) c_garrow_string_array_builder_append_string_len;
	int function(GArrowStringArrayBuilder* builder, char** values, long valuesLength, int* isValids, long isValidsLength, GError** err) c_garrow_string_array_builder_append_strings;
	int function(GArrowStringArrayBuilder* builder, const(char)* value, GError** err) c_garrow_string_array_builder_append_value;
	int function(GArrowStringArrayBuilder* builder, char** values, long valuesLength, int* isValids, long isValidsLength, GError** err) c_garrow_string_array_builder_append_values;

	// arrow.StringDataType

	GType function() c_garrow_string_data_type_get_type;
	GArrowStringDataType* function() c_garrow_string_data_type_new;

	// arrow.StringDictionaryArrayBuilder

	GType function() c_garrow_string_dictionary_array_builder_get_type;
	GArrowStringDictionaryArrayBuilder* function() c_garrow_string_dictionary_array_builder_new;
	int function(GArrowStringDictionaryArrayBuilder* builder, GArrowStringArray* array, GError** err) c_garrow_string_dictionary_array_builder_append_array;
	int function(GArrowStringDictionaryArrayBuilder* builder, long* values, long valuesLength, int* isValids, long isValidsLength, GError** err) c_garrow_string_dictionary_array_builder_append_indices;
	int function(GArrowStringDictionaryArrayBuilder* builder, GError** err) c_garrow_string_dictionary_array_builder_append_null;
	int function(GArrowStringDictionaryArrayBuilder* builder, const(char)* value, GError** err) c_garrow_string_dictionary_array_builder_append_string;
	int function(GArrowStringDictionaryArrayBuilder* builder, GArrowArray** outIndices, GArrowArray** outDelta, GError** err) c_garrow_string_dictionary_array_builder_finish_delta;
	long function(GArrowStringDictionaryArrayBuilder* builder) c_garrow_string_dictionary_array_builder_get_dictionary_length;
	int function(GArrowStringDictionaryArrayBuilder* builder, GArrowStringArray* values, GError** err) c_garrow_string_dictionary_array_builder_insert_memo_values;
	void function(GArrowStringDictionaryArrayBuilder* builder) c_garrow_string_dictionary_array_builder_reset_full;

	// arrow.StringScalar

	GType function() c_garrow_string_scalar_get_type;
	GArrowStringScalar* function(GArrowBuffer* value) c_garrow_string_scalar_new;

	// arrow.StrptimeOptions

	GType function() c_garrow_strptime_options_get_type;
	GArrowStrptimeOptions* function() c_garrow_strptime_options_new;

	// arrow.StrptimeTimestampParser

	GType function() c_garrow_strptime_timestamp_parser_get_type;
	GArrowStrptimeTimestampParser* function(const(char)* format) c_garrow_strptime_timestamp_parser_new;
	const(char)* function(GArrowStrptimeTimestampParser* parser) c_garrow_strptime_timestamp_parser_get_format;

	// arrow.StructArray

	GType function() c_garrow_struct_array_get_type;
	GArrowStructArray* function(GArrowDataType* dataType, long length, GList* fields, GArrowBuffer* nullBitmap, long nNulls) c_garrow_struct_array_new;
	GList* function(GArrowStructArray* array, GError** err) c_garrow_struct_array_flatten;
	GArrowArray* function(GArrowStructArray* array, int i) c_garrow_struct_array_get_field;
	GList* function(GArrowStructArray* array) c_garrow_struct_array_get_fields;

	// arrow.StructArrayBuilder

	GType function() c_garrow_struct_array_builder_get_type;
	GArrowStructArrayBuilder* function(GArrowStructDataType* dataType, GError** err) c_garrow_struct_array_builder_new;
	int function(GArrowStructArrayBuilder* builder, GError** err) c_garrow_struct_array_builder_append;
	int function(GArrowStructArrayBuilder* builder, GError** err) c_garrow_struct_array_builder_append_null;
	int function(GArrowStructArrayBuilder* builder, GError** err) c_garrow_struct_array_builder_append_value;
	GArrowArrayBuilder* function(GArrowStructArrayBuilder* builder, int i) c_garrow_struct_array_builder_get_field_builder;
	GList* function(GArrowStructArrayBuilder* builder) c_garrow_struct_array_builder_get_field_builders;

	// arrow.StructDataType

	GType function() c_garrow_struct_data_type_get_type;
	GArrowStructDataType* function(GList* fields) c_garrow_struct_data_type_new;
	GArrowField* function(GArrowStructDataType* structDataType, int i) c_garrow_struct_data_type_get_field;
	GArrowField* function(GArrowStructDataType* structDataType, const(char)* name) c_garrow_struct_data_type_get_field_by_name;
	int function(GArrowStructDataType* structDataType, const(char)* name) c_garrow_struct_data_type_get_field_index;
	GList* function(GArrowStructDataType* structDataType) c_garrow_struct_data_type_get_fields;
	int function(GArrowStructDataType* structDataType) c_garrow_struct_data_type_get_n_fields;

	// arrow.StructFieldOptions

	GType function() c_garrow_struct_field_options_get_type;
	GArrowStructFieldOptions* function() c_garrow_struct_field_options_new;
	void function(GArrowStructFieldOptions* options, const(char)* fieldRef, GError** err) c_garrow_struct_field_options_set_field_ref;

	// arrow.StructScalar

	GType function() c_garrow_struct_scalar_get_type;
	GArrowStructScalar* function(GArrowStructDataType* dataType, GList* value) c_garrow_struct_scalar_new;
	GList* function(GArrowStructScalar* scalar) c_garrow_struct_scalar_get_value;

	// arrow.SubTreeFileSystem

	GType function() c_garrow_sub_tree_file_system_get_type;
	GArrowSubTreeFileSystem* function(const(char)* basePath, GArrowFileSystem* baseFileSystem) c_garrow_sub_tree_file_system_new;

	// arrow.Table

	GType function() c_garrow_table_get_type;
	GArrowTable* function(GArrowSchema* schema, GArrowArray** arrays, size_t nArrays, GError** err) c_garrow_table_new_arrays;
	GArrowTable* function(GArrowSchema* schema, GArrowChunkedArray** chunkedArrays, size_t nChunkedArrays, GError** err) c_garrow_table_new_chunked_arrays;
	GArrowTable* function(GArrowSchema* schema, GArrowRecordBatch** recordBatches, size_t nRecordBatches, GError** err) c_garrow_table_new_record_batches;
	GArrowTable* function(GArrowSchema* schema, GList* values, GError** err) c_garrow_table_new_values;
	GArrowTable* function(GArrowTable* table, uint i, GArrowField* field, GArrowChunkedArray* chunkedArray, GError** err) c_garrow_table_add_column;
	GArrowTable* function(GArrowTable* table, GError** err) c_garrow_table_combine_chunks;
	GArrowTable* function(GArrowTable* table, GList* otherTables, GArrowTableConcatenateOptions* options, GError** err) c_garrow_table_concatenate;
	int function(GArrowTable* table, GArrowTable* otherTable) c_garrow_table_equal;
	int function(GArrowTable* table, GArrowTable* otherTable, int checkMetadata) c_garrow_table_equal_metadata;
	GArrowTable* function(GArrowTable* table, GArrowBooleanArray* filter, GArrowFilterOptions* options, GError** err) c_garrow_table_filter;
	GArrowTable* function(GArrowTable* table, GArrowChunkedArray* filter, GArrowFilterOptions* options, GError** err) c_garrow_table_filter_chunked_array;
	GArrowChunkedArray* function(GArrowTable* table, int i) c_garrow_table_get_column_data;
	uint function(GArrowTable* table) c_garrow_table_get_n_columns;
	ulong function(GArrowTable* table) c_garrow_table_get_n_rows;
	GArrowSchema* function(GArrowTable* table) c_garrow_table_get_schema;
	GArrowTable* function(GArrowTable* table, uint i, GError** err) c_garrow_table_remove_column;
	GArrowTable* function(GArrowTable* table, uint i, GArrowField* field, GArrowChunkedArray* chunkedArray, GError** err) c_garrow_table_replace_column;
	GArrowTable* function(GArrowTable* table, long offset, long length) c_garrow_table_slice;
	GArrowUInt64Array* function(GArrowTable* table, GArrowSortOptions* options, GError** err) c_garrow_table_sort_indices;
	GArrowTable* function(GArrowTable* table, GArrowArray* indices, GArrowTakeOptions* options, GError** err) c_garrow_table_take;
	GArrowTable* function(GArrowTable* table, GArrowChunkedArray* indices, GArrowTakeOptions* options, GError** err) c_garrow_table_take_chunked_array;
	char* function(GArrowTable* table, GError** err) c_garrow_table_to_string;
	int function(GArrowTable* table, GArrowOutputStream* sink, GArrowFeatherWriteProperties* properties, GError** err) c_garrow_table_write_as_feather;

	// arrow.TableBatchReader

	GType function() c_garrow_table_batch_reader_get_type;
	GArrowTableBatchReader* function(GArrowTable* table) c_garrow_table_batch_reader_new;
	void function(GArrowTableBatchReader* reader, long maxChunkSize) c_garrow_table_batch_reader_set_max_chunk_size;

	// arrow.TableConcatenateOptions

	GType function() c_garrow_table_concatenate_options_get_type;
	GArrowTableConcatenateOptions* function() c_garrow_table_concatenate_options_new;

	// arrow.TableDatum

	GType function() c_garrow_table_datum_get_type;
	GArrowTableDatum* function(GArrowTable* value) c_garrow_table_datum_new;

	// arrow.TakeOptions

	GType function() c_garrow_take_options_get_type;
	GArrowTakeOptions* function() c_garrow_take_options_new;

	// arrow.TemporalDataType

	GType function() c_garrow_temporal_data_type_get_type;

	// arrow.Tensor

	GType function() c_garrow_tensor_get_type;
	GArrowTensor* function(GArrowDataType* dataType, GArrowBuffer* data, long* shape, size_t nDimensions, long* strides, size_t nStrides, char** dimensionNames, size_t nDimensionNames) c_garrow_tensor_new;
	int function(GArrowTensor* tensor, GArrowTensor* otherTensor) c_garrow_tensor_equal;
	GArrowBuffer* function(GArrowTensor* tensor) c_garrow_tensor_get_buffer;
	const(char)* function(GArrowTensor* tensor, int i) c_garrow_tensor_get_dimension_name;
	int function(GArrowTensor* tensor) c_garrow_tensor_get_n_dimensions;
	long* function(GArrowTensor* tensor, int* nDimensions) c_garrow_tensor_get_shape;
	long function(GArrowTensor* tensor) c_garrow_tensor_get_size;
	long* function(GArrowTensor* tensor, int* nStrides) c_garrow_tensor_get_strides;
	GArrowDataType* function(GArrowTensor* tensor) c_garrow_tensor_get_value_data_type;
	GArrowType function(GArrowTensor* tensor) c_garrow_tensor_get_value_type;
	int function(GArrowTensor* tensor) c_garrow_tensor_is_column_major;
	int function(GArrowTensor* tensor) c_garrow_tensor_is_contiguous;
	int function(GArrowTensor* tensor) c_garrow_tensor_is_mutable;
	int function(GArrowTensor* tensor) c_garrow_tensor_is_row_major;

	// arrow.Time32Array

	GType function() c_garrow_time32_array_get_type;
	GArrowTime32Array* function(GArrowTime32DataType* dataType, long length, GArrowBuffer* data, GArrowBuffer* nullBitmap, long nNulls) c_garrow_time32_array_new;
	int function(GArrowTime32Array* array, long i) c_garrow_time32_array_get_value;
	int* function(GArrowTime32Array* array, long* length) c_garrow_time32_array_get_values;

	// arrow.Time32ArrayBuilder

	GType function() c_garrow_time32_array_builder_get_type;
	GArrowTime32ArrayBuilder* function(GArrowTime32DataType* dataType) c_garrow_time32_array_builder_new;
	int function(GArrowTime32ArrayBuilder* builder, int value, GError** err) c_garrow_time32_array_builder_append;
	int function(GArrowTime32ArrayBuilder* builder, GError** err) c_garrow_time32_array_builder_append_null;
	int function(GArrowTime32ArrayBuilder* builder, long n, GError** err) c_garrow_time32_array_builder_append_nulls;
	int function(GArrowTime32ArrayBuilder* builder, int value, GError** err) c_garrow_time32_array_builder_append_value;
	int function(GArrowTime32ArrayBuilder* builder, int* values, long valuesLength, int* isValids, long isValidsLength, GError** err) c_garrow_time32_array_builder_append_values;

	// arrow.Time32DataType

	GType function() c_garrow_time32_data_type_get_type;
	GArrowTime32DataType* function(GArrowTimeUnit unit, GError** err) c_garrow_time32_data_type_new;

	// arrow.Time32Scalar

	GType function() c_garrow_time32_scalar_get_type;
	GArrowTime32Scalar* function(GArrowTime32DataType* dataType, int value) c_garrow_time32_scalar_new;
	int function(GArrowTime32Scalar* scalar) c_garrow_time32_scalar_get_value;

	// arrow.Time64Array

	GType function() c_garrow_time64_array_get_type;
	GArrowTime64Array* function(GArrowTime64DataType* dataType, long length, GArrowBuffer* data, GArrowBuffer* nullBitmap, long nNulls) c_garrow_time64_array_new;
	long function(GArrowTime64Array* array, long i) c_garrow_time64_array_get_value;
	long* function(GArrowTime64Array* array, long* length) c_garrow_time64_array_get_values;

	// arrow.Time64ArrayBuilder

	GType function() c_garrow_time64_array_builder_get_type;
	GArrowTime64ArrayBuilder* function(GArrowTime64DataType* dataType) c_garrow_time64_array_builder_new;
	int function(GArrowTime64ArrayBuilder* builder, long value, GError** err) c_garrow_time64_array_builder_append;
	int function(GArrowTime64ArrayBuilder* builder, GError** err) c_garrow_time64_array_builder_append_null;
	int function(GArrowTime64ArrayBuilder* builder, long n, GError** err) c_garrow_time64_array_builder_append_nulls;
	int function(GArrowTime64ArrayBuilder* builder, long value, GError** err) c_garrow_time64_array_builder_append_value;
	int function(GArrowTime64ArrayBuilder* builder, long* values, long valuesLength, int* isValids, long isValidsLength, GError** err) c_garrow_time64_array_builder_append_values;

	// arrow.Time64DataType

	GType function() c_garrow_time64_data_type_get_type;
	GArrowTime64DataType* function(GArrowTimeUnit unit, GError** err) c_garrow_time64_data_type_new;

	// arrow.Time64Scalar

	GType function() c_garrow_time64_scalar_get_type;
	GArrowTime64Scalar* function(GArrowTime64DataType* dataType, long value) c_garrow_time64_scalar_new;
	long function(GArrowTime64Scalar* scalar) c_garrow_time64_scalar_get_value;

	// arrow.TimeDataType

	GType function() c_garrow_time_data_type_get_type;
	GArrowTimeUnit function(GArrowTimeDataType* timeDataType) c_garrow_time_data_type_get_unit;

	// arrow.TimestampArray

	GType function() c_garrow_timestamp_array_get_type;
	GArrowTimestampArray* function(GArrowTimestampDataType* dataType, long length, GArrowBuffer* data, GArrowBuffer* nullBitmap, long nNulls) c_garrow_timestamp_array_new;
	long function(GArrowTimestampArray* array, long i) c_garrow_timestamp_array_get_value;
	long* function(GArrowTimestampArray* array, long* length) c_garrow_timestamp_array_get_values;

	// arrow.TimestampArrayBuilder

	GType function() c_garrow_timestamp_array_builder_get_type;
	GArrowTimestampArrayBuilder* function(GArrowTimestampDataType* dataType) c_garrow_timestamp_array_builder_new;
	int function(GArrowTimestampArrayBuilder* builder, long value, GError** err) c_garrow_timestamp_array_builder_append;
	int function(GArrowTimestampArrayBuilder* builder, GError** err) c_garrow_timestamp_array_builder_append_null;
	int function(GArrowTimestampArrayBuilder* builder, long n, GError** err) c_garrow_timestamp_array_builder_append_nulls;
	int function(GArrowTimestampArrayBuilder* builder, long value, GError** err) c_garrow_timestamp_array_builder_append_value;
	int function(GArrowTimestampArrayBuilder* builder, long* values, long valuesLength, int* isValids, long isValidsLength, GError** err) c_garrow_timestamp_array_builder_append_values;

	// arrow.TimestampDataType

	GType function() c_garrow_timestamp_data_type_get_type;
	GArrowTimestampDataType* function(GArrowTimeUnit unit, GTimeZone* timeZone) c_garrow_timestamp_data_type_new;
	GArrowTimeUnit function(GArrowTimestampDataType* dataType) c_garrow_timestamp_data_type_get_unit;

	// arrow.TimestampParser

	GType function() c_garrow_timestamp_parser_get_type;
	const(char)* function(GArrowTimestampParser* parser) c_garrow_timestamp_parser_get_kind;

	// arrow.TimestampScalar

	GType function() c_garrow_timestamp_scalar_get_type;
	GArrowTimestampScalar* function(GArrowTimestampDataType* dataType, long value) c_garrow_timestamp_scalar_new;
	long function(GArrowTimestampScalar* scalar) c_garrow_timestamp_scalar_get_value;

	// arrow.UInt16Array

	GType function() c_garrow_uint16_array_get_type;
	GArrowUInt16Array* function(long length, GArrowBuffer* data, GArrowBuffer* nullBitmap, long nNulls) c_garrow_uint16_array_new;
	ushort function(GArrowUInt16Array* array, long i) c_garrow_uint16_array_get_value;
	ushort* function(GArrowUInt16Array* array, long* length) c_garrow_uint16_array_get_values;
	ulong function(GArrowUInt16Array* array, GError** err) c_garrow_uint16_array_sum;

	// arrow.UInt16ArrayBuilder

	GType function() c_garrow_uint16_array_builder_get_type;
	GArrowUInt16ArrayBuilder* function() c_garrow_uint16_array_builder_new;
	int function(GArrowUInt16ArrayBuilder* builder, ushort value, GError** err) c_garrow_uint16_array_builder_append;
	int function(GArrowUInt16ArrayBuilder* builder, GError** err) c_garrow_uint16_array_builder_append_null;
	int function(GArrowUInt16ArrayBuilder* builder, long n, GError** err) c_garrow_uint16_array_builder_append_nulls;
	int function(GArrowUInt16ArrayBuilder* builder, ushort value, GError** err) c_garrow_uint16_array_builder_append_value;
	int function(GArrowUInt16ArrayBuilder* builder, ushort* values, long valuesLength, int* isValids, long isValidsLength, GError** err) c_garrow_uint16_array_builder_append_values;

	// arrow.UInt16DataType

	GType function() c_garrow_uint16_data_type_get_type;
	GArrowUInt16DataType* function() c_garrow_uint16_data_type_new;

	// arrow.UInt16Scalar

	GType function() c_garrow_uint16_scalar_get_type;
	GArrowUInt16Scalar* function(ushort value) c_garrow_uint16_scalar_new;
	ushort function(GArrowUInt16Scalar* scalar) c_garrow_uint16_scalar_get_value;

	// arrow.UInt32Array

	GType function() c_garrow_uint32_array_get_type;
	GArrowUInt32Array* function(long length, GArrowBuffer* data, GArrowBuffer* nullBitmap, long nNulls) c_garrow_uint32_array_new;
	uint function(GArrowUInt32Array* array, long i) c_garrow_uint32_array_get_value;
	uint* function(GArrowUInt32Array* array, long* length) c_garrow_uint32_array_get_values;
	ulong function(GArrowUInt32Array* array, GError** err) c_garrow_uint32_array_sum;

	// arrow.UInt32ArrayBuilder

	GType function() c_garrow_uint32_array_builder_get_type;
	GArrowUInt32ArrayBuilder* function() c_garrow_uint32_array_builder_new;
	int function(GArrowUInt32ArrayBuilder* builder, uint value, GError** err) c_garrow_uint32_array_builder_append;
	int function(GArrowUInt32ArrayBuilder* builder, GError** err) c_garrow_uint32_array_builder_append_null;
	int function(GArrowUInt32ArrayBuilder* builder, long n, GError** err) c_garrow_uint32_array_builder_append_nulls;
	int function(GArrowUInt32ArrayBuilder* builder, uint value, GError** err) c_garrow_uint32_array_builder_append_value;
	int function(GArrowUInt32ArrayBuilder* builder, uint* values, long valuesLength, int* isValids, long isValidsLength, GError** err) c_garrow_uint32_array_builder_append_values;

	// arrow.UInt32DataType

	GType function() c_garrow_uint32_data_type_get_type;
	GArrowUInt32DataType* function() c_garrow_uint32_data_type_new;

	// arrow.UInt32Scalar

	GType function() c_garrow_uint32_scalar_get_type;
	GArrowUInt32Scalar* function(uint value) c_garrow_uint32_scalar_new;
	uint function(GArrowUInt32Scalar* scalar) c_garrow_uint32_scalar_get_value;

	// arrow.UInt64Array

	GType function() c_garrow_uint64_array_get_type;
	GArrowUInt64Array* function(long length, GArrowBuffer* data, GArrowBuffer* nullBitmap, long nNulls) c_garrow_uint64_array_new;
	ulong function(GArrowUInt64Array* array, long i) c_garrow_uint64_array_get_value;
	ulong* function(GArrowUInt64Array* array, long* length) c_garrow_uint64_array_get_values;
	ulong function(GArrowUInt64Array* array, GError** err) c_garrow_uint64_array_sum;

	// arrow.UInt64ArrayBuilder

	GType function() c_garrow_uint64_array_builder_get_type;
	GArrowUInt64ArrayBuilder* function() c_garrow_uint64_array_builder_new;
	int function(GArrowUInt64ArrayBuilder* builder, ulong value, GError** err) c_garrow_uint64_array_builder_append;
	int function(GArrowUInt64ArrayBuilder* builder, GError** err) c_garrow_uint64_array_builder_append_null;
	int function(GArrowUInt64ArrayBuilder* builder, long n, GError** err) c_garrow_uint64_array_builder_append_nulls;
	int function(GArrowUInt64ArrayBuilder* builder, ulong value, GError** err) c_garrow_uint64_array_builder_append_value;
	int function(GArrowUInt64ArrayBuilder* builder, ulong* values, long valuesLength, int* isValids, long isValidsLength, GError** err) c_garrow_uint64_array_builder_append_values;

	// arrow.UInt64DataType

	GType function() c_garrow_uint64_data_type_get_type;
	GArrowUInt64DataType* function() c_garrow_uint64_data_type_new;

	// arrow.UInt64Scalar

	GType function() c_garrow_uint64_scalar_get_type;
	GArrowUInt64Scalar* function(ulong value) c_garrow_uint64_scalar_new;
	ulong function(GArrowUInt64Scalar* scalar) c_garrow_uint64_scalar_get_value;

	// arrow.UInt8Array

	GType function() c_garrow_uint8_array_get_type;
	GArrowUInt8Array* function(long length, GArrowBuffer* data, GArrowBuffer* nullBitmap, long nNulls) c_garrow_uint8_array_new;
	ubyte function(GArrowUInt8Array* array, long i) c_garrow_uint8_array_get_value;
	ubyte* function(GArrowUInt8Array* array, long* length) c_garrow_uint8_array_get_values;
	ulong function(GArrowUInt8Array* array, GError** err) c_garrow_uint8_array_sum;

	// arrow.UInt8ArrayBuilder

	GType function() c_garrow_uint8_array_builder_get_type;
	GArrowUInt8ArrayBuilder* function() c_garrow_uint8_array_builder_new;
	int function(GArrowUInt8ArrayBuilder* builder, ubyte value, GError** err) c_garrow_uint8_array_builder_append;
	int function(GArrowUInt8ArrayBuilder* builder, GError** err) c_garrow_uint8_array_builder_append_null;
	int function(GArrowUInt8ArrayBuilder* builder, long n, GError** err) c_garrow_uint8_array_builder_append_nulls;
	int function(GArrowUInt8ArrayBuilder* builder, ubyte value, GError** err) c_garrow_uint8_array_builder_append_value;
	int function(GArrowUInt8ArrayBuilder* builder, ubyte* values, long valuesLength, int* isValids, long isValidsLength, GError** err) c_garrow_uint8_array_builder_append_values;

	// arrow.UInt8DataType

	GType function() c_garrow_uint8_data_type_get_type;
	GArrowUInt8DataType* function() c_garrow_uint8_data_type_new;

	// arrow.UInt8Scalar

	GType function() c_garrow_uint8_scalar_get_type;
	GArrowUInt8Scalar* function(ubyte value) c_garrow_uint8_scalar_new;
	ubyte function(GArrowUInt8Scalar* scalar) c_garrow_uint8_scalar_get_value;

	// arrow.UIntArrayBuilder

	GType function() c_garrow_uint_array_builder_get_type;
	GArrowUIntArrayBuilder* function() c_garrow_uint_array_builder_new;
	int function(GArrowUIntArrayBuilder* builder, ulong value, GError** err) c_garrow_uint_array_builder_append;
	int function(GArrowUIntArrayBuilder* builder, GError** err) c_garrow_uint_array_builder_append_null;
	int function(GArrowUIntArrayBuilder* builder, long n, GError** err) c_garrow_uint_array_builder_append_nulls;
	int function(GArrowUIntArrayBuilder* builder, ulong value, GError** err) c_garrow_uint_array_builder_append_value;
	int function(GArrowUIntArrayBuilder* builder, ulong* values, long valuesLength, int* isValids, long isValidsLength, GError** err) c_garrow_uint_array_builder_append_values;

	// arrow.UTF8NormalizeOptions

	GType function() c_garrow_utf8_normalize_options_get_type;
	GArrowUTF8NormalizeOptions* function() c_garrow_utf8_normalize_options_new;

	// arrow.UnionArray

	GType function() c_garrow_union_array_get_type;
	int function(GArrowUnionArray* array, long i) c_garrow_union_array_get_child_id;
	GArrowArray* function(GArrowUnionArray* array, int i) c_garrow_union_array_get_field;
	byte function(GArrowUnionArray* array, long i) c_garrow_union_array_get_type_code;

	// arrow.UnionArrayBuilder

	GType function() c_garrow_union_array_builder_get_type;
	byte function(GArrowUnionArrayBuilder* builder, GArrowArrayBuilder* child, const(char)* fieldName) c_garrow_union_array_builder_append_child;
	int function(GArrowUnionArrayBuilder* builder, byte value, GError** err) c_garrow_union_array_builder_append_value;

	// arrow.UnionDataType

	GType function() c_garrow_union_data_type_get_type;
	GArrowField* function(GArrowUnionDataType* unionDataType, int i) c_garrow_union_data_type_get_field;
	GList* function(GArrowUnionDataType* unionDataType) c_garrow_union_data_type_get_fields;
	int function(GArrowUnionDataType* unionDataType) c_garrow_union_data_type_get_n_fields;
	byte* function(GArrowUnionDataType* unionDataType, size_t* nTypeCodes) c_garrow_union_data_type_get_type_codes;

	// arrow.UnionScalar

	GType function() c_garrow_union_scalar_get_type;
	byte function(GArrowUnionScalar* scalar) c_garrow_union_scalar_get_type_code;
	GArrowScalar* function(GArrowUnionScalar* scalar) c_garrow_union_scalar_get_value;

	// arrow.VarianceOptions

	GType function() c_garrow_variance_options_get_type;
	GArrowVarianceOptions* function() c_garrow_variance_options_new;

	// arrow.Writable

	GType function() c_garrow_writable_get_type;
	int function(GArrowWritable* writable, GError** err) c_garrow_writable_flush;
	int function(GArrowWritable* writable, ubyte* data, long nBytes, GError** err) c_garrow_writable_write;

	// arrow.WritableFile

	GType function() c_garrow_writable_file_get_type;
	int function(GArrowWritableFile* writableFile, long position, ubyte* data, long nBytes, GError** err) c_garrow_writable_file_write_at;

	// arrow.WriteOptions

	GType function() c_garrow_write_options_get_type;
	GArrowWriteOptions* function() c_garrow_write_options_new;
}


// arrow.AggregateNodeOptions

alias c_garrow_aggregate_node_options_get_type garrow_aggregate_node_options_get_type;
alias c_garrow_aggregate_node_options_new garrow_aggregate_node_options_new;

// arrow.Aggregation

alias c_garrow_aggregation_get_type garrow_aggregation_get_type;
alias c_garrow_aggregation_new garrow_aggregation_new;

// arrow.Array

alias c_garrow_array_get_type garrow_array_get_type;
alias c_garrow_array_import garrow_array_import;
alias c_garrow_array_cast garrow_array_cast;
alias c_garrow_array_concatenate garrow_array_concatenate;
alias c_garrow_array_count garrow_array_count;
alias c_garrow_array_count_values garrow_array_count_values;
alias c_garrow_array_dictionary_encode garrow_array_dictionary_encode;
alias c_garrow_array_diff_unified garrow_array_diff_unified;
alias c_garrow_array_equal garrow_array_equal;
alias c_garrow_array_equal_approx garrow_array_equal_approx;
alias c_garrow_array_equal_options garrow_array_equal_options;
alias c_garrow_array_equal_range garrow_array_equal_range;
alias c_garrow_array_export garrow_array_export;
alias c_garrow_array_filter garrow_array_filter;
alias c_garrow_array_get_length garrow_array_get_length;
alias c_garrow_array_get_n_nulls garrow_array_get_n_nulls;
alias c_garrow_array_get_null_bitmap garrow_array_get_null_bitmap;
alias c_garrow_array_get_offset garrow_array_get_offset;
alias c_garrow_array_get_value_data_type garrow_array_get_value_data_type;
alias c_garrow_array_get_value_type garrow_array_get_value_type;
alias c_garrow_array_is_in garrow_array_is_in;
alias c_garrow_array_is_in_chunked_array garrow_array_is_in_chunked_array;
alias c_garrow_array_is_null garrow_array_is_null;
alias c_garrow_array_is_valid garrow_array_is_valid;
alias c_garrow_array_run_end_encode garrow_array_run_end_encode;
alias c_garrow_array_slice garrow_array_slice;
alias c_garrow_array_sort_indices garrow_array_sort_indices;
alias c_garrow_array_sort_to_indices garrow_array_sort_to_indices;
alias c_garrow_array_take garrow_array_take;
alias c_garrow_array_take_chunked_array garrow_array_take_chunked_array;
alias c_garrow_array_to_string garrow_array_to_string;
alias c_garrow_array_unique garrow_array_unique;
alias c_garrow_array_view garrow_array_view;

// arrow.ArrayBuilder

alias c_garrow_array_builder_get_type garrow_array_builder_get_type;
alias c_garrow_array_builder_append_empty_value garrow_array_builder_append_empty_value;
alias c_garrow_array_builder_append_empty_values garrow_array_builder_append_empty_values;
alias c_garrow_array_builder_append_null garrow_array_builder_append_null;
alias c_garrow_array_builder_append_nulls garrow_array_builder_append_nulls;
alias c_garrow_array_builder_finish garrow_array_builder_finish;
alias c_garrow_array_builder_get_capacity garrow_array_builder_get_capacity;
alias c_garrow_array_builder_get_child garrow_array_builder_get_child;
alias c_garrow_array_builder_get_children garrow_array_builder_get_children;
alias c_garrow_array_builder_get_length garrow_array_builder_get_length;
alias c_garrow_array_builder_get_n_nulls garrow_array_builder_get_n_nulls;
alias c_garrow_array_builder_get_value_data_type garrow_array_builder_get_value_data_type;
alias c_garrow_array_builder_get_value_type garrow_array_builder_get_value_type;
alias c_garrow_array_builder_reserve garrow_array_builder_reserve;
alias c_garrow_array_builder_reset garrow_array_builder_reset;
alias c_garrow_array_builder_resize garrow_array_builder_resize;

// arrow.ArrayDatum

alias c_garrow_array_datum_get_type garrow_array_datum_get_type;
alias c_garrow_array_datum_new garrow_array_datum_new;

// arrow.ArraySortOptions

alias c_garrow_array_sort_options_get_type garrow_array_sort_options_get_type;
alias c_garrow_array_sort_options_new garrow_array_sort_options_new;
alias c_garrow_array_sort_options_equal garrow_array_sort_options_equal;

// arrow.AzureFileSystem

alias c_garrow_azure_file_system_get_type garrow_azure_file_system_get_type;

// arrow.BaseBinaryScalar

alias c_garrow_base_binary_scalar_get_type garrow_base_binary_scalar_get_type;
alias c_garrow_base_binary_scalar_get_value garrow_base_binary_scalar_get_value;

// arrow.BaseListScalar

alias c_garrow_base_list_scalar_get_type garrow_base_list_scalar_get_type;
alias c_garrow_base_list_scalar_get_value garrow_base_list_scalar_get_value;

// arrow.BinaryArray

alias c_garrow_binary_array_get_type garrow_binary_array_get_type;
alias c_garrow_binary_array_new garrow_binary_array_new;
alias c_garrow_binary_array_get_buffer garrow_binary_array_get_buffer;
alias c_garrow_binary_array_get_data_buffer garrow_binary_array_get_data_buffer;
alias c_garrow_binary_array_get_offsets_buffer garrow_binary_array_get_offsets_buffer;
alias c_garrow_binary_array_get_value garrow_binary_array_get_value;

// arrow.BinaryArrayBuilder

alias c_garrow_binary_array_builder_get_type garrow_binary_array_builder_get_type;
alias c_garrow_binary_array_builder_new garrow_binary_array_builder_new;
alias c_garrow_binary_array_builder_append garrow_binary_array_builder_append;
alias c_garrow_binary_array_builder_append_null garrow_binary_array_builder_append_null;
alias c_garrow_binary_array_builder_append_nulls garrow_binary_array_builder_append_nulls;
alias c_garrow_binary_array_builder_append_value garrow_binary_array_builder_append_value;
alias c_garrow_binary_array_builder_append_value_bytes garrow_binary_array_builder_append_value_bytes;
alias c_garrow_binary_array_builder_append_values garrow_binary_array_builder_append_values;

// arrow.BinaryDataType

alias c_garrow_binary_data_type_get_type garrow_binary_data_type_get_type;
alias c_garrow_binary_data_type_new garrow_binary_data_type_new;

// arrow.BinaryDictionaryArrayBuilder

alias c_garrow_binary_dictionary_array_builder_get_type garrow_binary_dictionary_array_builder_get_type;
alias c_garrow_binary_dictionary_array_builder_new garrow_binary_dictionary_array_builder_new;
alias c_garrow_binary_dictionary_array_builder_append_array garrow_binary_dictionary_array_builder_append_array;
alias c_garrow_binary_dictionary_array_builder_append_indices garrow_binary_dictionary_array_builder_append_indices;
alias c_garrow_binary_dictionary_array_builder_append_null garrow_binary_dictionary_array_builder_append_null;
alias c_garrow_binary_dictionary_array_builder_append_value garrow_binary_dictionary_array_builder_append_value;
alias c_garrow_binary_dictionary_array_builder_append_value_bytes garrow_binary_dictionary_array_builder_append_value_bytes;
alias c_garrow_binary_dictionary_array_builder_finish_delta garrow_binary_dictionary_array_builder_finish_delta;
alias c_garrow_binary_dictionary_array_builder_get_dictionary_length garrow_binary_dictionary_array_builder_get_dictionary_length;
alias c_garrow_binary_dictionary_array_builder_insert_memo_values garrow_binary_dictionary_array_builder_insert_memo_values;
alias c_garrow_binary_dictionary_array_builder_reset_full garrow_binary_dictionary_array_builder_reset_full;

// arrow.BinaryScalar

alias c_garrow_binary_scalar_get_type garrow_binary_scalar_get_type;
alias c_garrow_binary_scalar_new garrow_binary_scalar_new;

// arrow.BooleanArray

alias c_garrow_boolean_array_get_type garrow_boolean_array_get_type;
alias c_garrow_boolean_array_new garrow_boolean_array_new;
alias c_garrow_boolean_array_and garrow_boolean_array_and;
alias c_garrow_boolean_array_get_value garrow_boolean_array_get_value;
alias c_garrow_boolean_array_get_values garrow_boolean_array_get_values;
alias c_garrow_boolean_array_invert garrow_boolean_array_invert;
alias c_garrow_boolean_array_or garrow_boolean_array_or;
alias c_garrow_boolean_array_xor garrow_boolean_array_xor;

// arrow.BooleanArrayBuilder

alias c_garrow_boolean_array_builder_get_type garrow_boolean_array_builder_get_type;
alias c_garrow_boolean_array_builder_new garrow_boolean_array_builder_new;
alias c_garrow_boolean_array_builder_append garrow_boolean_array_builder_append;
alias c_garrow_boolean_array_builder_append_null garrow_boolean_array_builder_append_null;
alias c_garrow_boolean_array_builder_append_nulls garrow_boolean_array_builder_append_nulls;
alias c_garrow_boolean_array_builder_append_value garrow_boolean_array_builder_append_value;
alias c_garrow_boolean_array_builder_append_values garrow_boolean_array_builder_append_values;

// arrow.BooleanDataType

alias c_garrow_boolean_data_type_get_type garrow_boolean_data_type_get_type;
alias c_garrow_boolean_data_type_new garrow_boolean_data_type_new;

// arrow.BooleanScalar

alias c_garrow_boolean_scalar_get_type garrow_boolean_scalar_get_type;
alias c_garrow_boolean_scalar_new garrow_boolean_scalar_new;
alias c_garrow_boolean_scalar_get_value garrow_boolean_scalar_get_value;

// arrow.Buffer

alias c_garrow_buffer_get_type garrow_buffer_get_type;
alias c_garrow_buffer_new garrow_buffer_new;
alias c_garrow_buffer_new_bytes garrow_buffer_new_bytes;
alias c_garrow_buffer_copy garrow_buffer_copy;
alias c_garrow_buffer_equal garrow_buffer_equal;
alias c_garrow_buffer_equal_n_bytes garrow_buffer_equal_n_bytes;
alias c_garrow_buffer_get_capacity garrow_buffer_get_capacity;
alias c_garrow_buffer_get_data garrow_buffer_get_data;
alias c_garrow_buffer_get_mutable_data garrow_buffer_get_mutable_data;
alias c_garrow_buffer_get_parent garrow_buffer_get_parent;
alias c_garrow_buffer_get_size garrow_buffer_get_size;
alias c_garrow_buffer_is_mutable garrow_buffer_is_mutable;
alias c_garrow_buffer_slice garrow_buffer_slice;

// arrow.BufferInputStream

alias c_garrow_buffer_input_stream_get_type garrow_buffer_input_stream_get_type;
alias c_garrow_buffer_input_stream_new garrow_buffer_input_stream_new;
alias c_garrow_buffer_input_stream_get_buffer garrow_buffer_input_stream_get_buffer;

// arrow.BufferOutputStream

alias c_garrow_buffer_output_stream_get_type garrow_buffer_output_stream_get_type;
alias c_garrow_buffer_output_stream_new garrow_buffer_output_stream_new;

// arrow.CSVReadOptions

alias c_garrow_csv_read_options_get_type garrow_csv_read_options_get_type;
alias c_garrow_csv_read_options_new garrow_csv_read_options_new;
alias c_garrow_csv_read_options_add_column_name garrow_csv_read_options_add_column_name;
alias c_garrow_csv_read_options_add_column_type garrow_csv_read_options_add_column_type;
alias c_garrow_csv_read_options_add_false_value garrow_csv_read_options_add_false_value;
alias c_garrow_csv_read_options_add_null_value garrow_csv_read_options_add_null_value;
alias c_garrow_csv_read_options_add_schema garrow_csv_read_options_add_schema;
alias c_garrow_csv_read_options_add_timestamp_parser garrow_csv_read_options_add_timestamp_parser;
alias c_garrow_csv_read_options_add_true_value garrow_csv_read_options_add_true_value;
alias c_garrow_csv_read_options_get_column_names garrow_csv_read_options_get_column_names;
alias c_garrow_csv_read_options_get_column_types garrow_csv_read_options_get_column_types;
alias c_garrow_csv_read_options_get_false_values garrow_csv_read_options_get_false_values;
alias c_garrow_csv_read_options_get_null_values garrow_csv_read_options_get_null_values;
alias c_garrow_csv_read_options_get_timestamp_parsers garrow_csv_read_options_get_timestamp_parsers;
alias c_garrow_csv_read_options_get_true_values garrow_csv_read_options_get_true_values;
alias c_garrow_csv_read_options_set_column_names garrow_csv_read_options_set_column_names;
alias c_garrow_csv_read_options_set_false_values garrow_csv_read_options_set_false_values;
alias c_garrow_csv_read_options_set_null_values garrow_csv_read_options_set_null_values;
alias c_garrow_csv_read_options_set_timestamp_parsers garrow_csv_read_options_set_timestamp_parsers;
alias c_garrow_csv_read_options_set_true_values garrow_csv_read_options_set_true_values;

// arrow.CSVReader

alias c_garrow_csv_reader_get_type garrow_csv_reader_get_type;
alias c_garrow_csv_reader_new garrow_csv_reader_new;
alias c_garrow_csv_reader_read garrow_csv_reader_read;

// arrow.CallExpression

alias c_garrow_call_expression_get_type garrow_call_expression_get_type;
alias c_garrow_call_expression_new garrow_call_expression_new;

// arrow.CastOptions

alias c_garrow_cast_options_get_type garrow_cast_options_get_type;
alias c_garrow_cast_options_new garrow_cast_options_new;

// arrow.ChunkedArray

alias c_garrow_chunked_array_get_type garrow_chunked_array_get_type;
alias c_garrow_chunked_array_new garrow_chunked_array_new;
alias c_garrow_chunked_array_new_empty garrow_chunked_array_new_empty;
alias c_garrow_chunked_array_combine garrow_chunked_array_combine;
alias c_garrow_chunked_array_equal garrow_chunked_array_equal;
alias c_garrow_chunked_array_filter garrow_chunked_array_filter;
alias c_garrow_chunked_array_filter_chunked_array garrow_chunked_array_filter_chunked_array;
alias c_garrow_chunked_array_get_chunk garrow_chunked_array_get_chunk;
alias c_garrow_chunked_array_get_chunks garrow_chunked_array_get_chunks;
alias c_garrow_chunked_array_get_length garrow_chunked_array_get_length;
alias c_garrow_chunked_array_get_n_chunks garrow_chunked_array_get_n_chunks;
alias c_garrow_chunked_array_get_n_nulls garrow_chunked_array_get_n_nulls;
alias c_garrow_chunked_array_get_n_rows garrow_chunked_array_get_n_rows;
alias c_garrow_chunked_array_get_value_data_type garrow_chunked_array_get_value_data_type;
alias c_garrow_chunked_array_get_value_type garrow_chunked_array_get_value_type;
alias c_garrow_chunked_array_slice garrow_chunked_array_slice;
alias c_garrow_chunked_array_sort_indices garrow_chunked_array_sort_indices;
alias c_garrow_chunked_array_take garrow_chunked_array_take;
alias c_garrow_chunked_array_take_chunked_array garrow_chunked_array_take_chunked_array;
alias c_garrow_chunked_array_to_string garrow_chunked_array_to_string;

// arrow.ChunkedArrayDatum

alias c_garrow_chunked_array_datum_get_type garrow_chunked_array_datum_get_type;
alias c_garrow_chunked_array_datum_new garrow_chunked_array_datum_new;

// arrow.Codec

alias c_garrow_codec_get_type garrow_codec_get_type;
alias c_garrow_codec_new garrow_codec_new;
alias c_garrow_codec_get_compression_level garrow_codec_get_compression_level;
alias c_garrow_codec_get_compression_type garrow_codec_get_compression_type;
alias c_garrow_codec_get_name garrow_codec_get_name;

// arrow.CompressedInputStream

alias c_garrow_compressed_input_stream_get_type garrow_compressed_input_stream_get_type;
alias c_garrow_compressed_input_stream_new garrow_compressed_input_stream_new;

// arrow.CompressedOutputStream

alias c_garrow_compressed_output_stream_get_type garrow_compressed_output_stream_get_type;
alias c_garrow_compressed_output_stream_new garrow_compressed_output_stream_new;

// arrow.CountOptions

alias c_garrow_count_options_get_type garrow_count_options_get_type;
alias c_garrow_count_options_new garrow_count_options_new;

// arrow.DataType

alias c_garrow_data_type_get_type garrow_data_type_get_type;
alias c_garrow_data_type_import garrow_data_type_import;
alias c_garrow_data_type_equal garrow_data_type_equal;
alias c_garrow_data_type_export garrow_data_type_export;
alias c_garrow_data_type_get_id garrow_data_type_get_id;
alias c_garrow_data_type_get_name garrow_data_type_get_name;
alias c_garrow_data_type_to_string garrow_data_type_to_string;

// arrow.Date32Array

alias c_garrow_date32_array_get_type garrow_date32_array_get_type;
alias c_garrow_date32_array_new garrow_date32_array_new;
alias c_garrow_date32_array_get_value garrow_date32_array_get_value;
alias c_garrow_date32_array_get_values garrow_date32_array_get_values;

// arrow.Date32ArrayBuilder

alias c_garrow_date32_array_builder_get_type garrow_date32_array_builder_get_type;
alias c_garrow_date32_array_builder_new garrow_date32_array_builder_new;
alias c_garrow_date32_array_builder_append garrow_date32_array_builder_append;
alias c_garrow_date32_array_builder_append_null garrow_date32_array_builder_append_null;
alias c_garrow_date32_array_builder_append_nulls garrow_date32_array_builder_append_nulls;
alias c_garrow_date32_array_builder_append_value garrow_date32_array_builder_append_value;
alias c_garrow_date32_array_builder_append_values garrow_date32_array_builder_append_values;

// arrow.Date32DataType

alias c_garrow_date32_data_type_get_type garrow_date32_data_type_get_type;
alias c_garrow_date32_data_type_new garrow_date32_data_type_new;

// arrow.Date32Scalar

alias c_garrow_date32_scalar_get_type garrow_date32_scalar_get_type;
alias c_garrow_date32_scalar_new garrow_date32_scalar_new;
alias c_garrow_date32_scalar_get_value garrow_date32_scalar_get_value;

// arrow.Date64Array

alias c_garrow_date64_array_get_type garrow_date64_array_get_type;
alias c_garrow_date64_array_new garrow_date64_array_new;
alias c_garrow_date64_array_get_value garrow_date64_array_get_value;
alias c_garrow_date64_array_get_values garrow_date64_array_get_values;

// arrow.Date64ArrayBuilder

alias c_garrow_date64_array_builder_get_type garrow_date64_array_builder_get_type;
alias c_garrow_date64_array_builder_new garrow_date64_array_builder_new;
alias c_garrow_date64_array_builder_append garrow_date64_array_builder_append;
alias c_garrow_date64_array_builder_append_null garrow_date64_array_builder_append_null;
alias c_garrow_date64_array_builder_append_nulls garrow_date64_array_builder_append_nulls;
alias c_garrow_date64_array_builder_append_value garrow_date64_array_builder_append_value;
alias c_garrow_date64_array_builder_append_values garrow_date64_array_builder_append_values;

// arrow.Date64DataType

alias c_garrow_date64_data_type_get_type garrow_date64_data_type_get_type;
alias c_garrow_date64_data_type_new garrow_date64_data_type_new;

// arrow.Date64Scalar

alias c_garrow_date64_scalar_get_type garrow_date64_scalar_get_type;
alias c_garrow_date64_scalar_new garrow_date64_scalar_new;
alias c_garrow_date64_scalar_get_value garrow_date64_scalar_get_value;

// arrow.Datum

alias c_garrow_datum_get_type garrow_datum_get_type;
alias c_garrow_datum_equal garrow_datum_equal;
alias c_garrow_datum_is_array garrow_datum_is_array;
alias c_garrow_datum_is_array_like garrow_datum_is_array_like;
alias c_garrow_datum_is_scalar garrow_datum_is_scalar;
alias c_garrow_datum_is_value garrow_datum_is_value;
alias c_garrow_datum_to_string garrow_datum_to_string;

// arrow.DayMillisecond

alias c_garrow_day_millisecond_get_type garrow_day_millisecond_get_type;
alias c_garrow_day_millisecond_new garrow_day_millisecond_new;
alias c_garrow_day_millisecond_equal garrow_day_millisecond_equal;
alias c_garrow_day_millisecond_less_than garrow_day_millisecond_less_than;

// arrow.DayTimeIntervalArray

alias c_garrow_day_time_interval_array_get_type garrow_day_time_interval_array_get_type;
alias c_garrow_day_time_interval_array_new garrow_day_time_interval_array_new;
alias c_garrow_day_time_interval_array_get_value garrow_day_time_interval_array_get_value;
alias c_garrow_day_time_interval_array_get_values garrow_day_time_interval_array_get_values;

// arrow.DayTimeIntervalArrayBuilder

alias c_garrow_day_time_interval_array_builder_get_type garrow_day_time_interval_array_builder_get_type;
alias c_garrow_day_time_interval_array_builder_new garrow_day_time_interval_array_builder_new;
alias c_garrow_day_time_interval_array_builder_append_value garrow_day_time_interval_array_builder_append_value;
alias c_garrow_day_time_interval_array_builder_append_values garrow_day_time_interval_array_builder_append_values;

// arrow.DayTimeIntervalDataType

alias c_garrow_day_time_interval_data_type_get_type garrow_day_time_interval_data_type_get_type;
alias c_garrow_day_time_interval_data_type_new garrow_day_time_interval_data_type_new;

// arrow.DayTimeIntervalScalar

alias c_garrow_day_time_interval_scalar_get_type garrow_day_time_interval_scalar_get_type;
alias c_garrow_day_time_interval_scalar_new garrow_day_time_interval_scalar_new;
alias c_garrow_day_time_interval_scalar_get_value garrow_day_time_interval_scalar_get_value;

// arrow.Decimal128

alias c_garrow_decimal128_get_type garrow_decimal128_get_type;
alias c_garrow_decimal128_new_integer garrow_decimal128_new_integer;
alias c_garrow_decimal128_new_string garrow_decimal128_new_string;
alias c_garrow_decimal128_abs garrow_decimal128_abs;
alias c_garrow_decimal128_copy garrow_decimal128_copy;
alias c_garrow_decimal128_divide garrow_decimal128_divide;
alias c_garrow_decimal128_equal garrow_decimal128_equal;
alias c_garrow_decimal128_greater_than garrow_decimal128_greater_than;
alias c_garrow_decimal128_greater_than_or_equal garrow_decimal128_greater_than_or_equal;
alias c_garrow_decimal128_less_than garrow_decimal128_less_than;
alias c_garrow_decimal128_less_than_or_equal garrow_decimal128_less_than_or_equal;
alias c_garrow_decimal128_minus garrow_decimal128_minus;
alias c_garrow_decimal128_multiply garrow_decimal128_multiply;
alias c_garrow_decimal128_negate garrow_decimal128_negate;
alias c_garrow_decimal128_not_equal garrow_decimal128_not_equal;
alias c_garrow_decimal128_plus garrow_decimal128_plus;
alias c_garrow_decimal128_rescale garrow_decimal128_rescale;
alias c_garrow_decimal128_to_bytes garrow_decimal128_to_bytes;
alias c_garrow_decimal128_to_integer garrow_decimal128_to_integer;
alias c_garrow_decimal128_to_string garrow_decimal128_to_string;
alias c_garrow_decimal128_to_string_scale garrow_decimal128_to_string_scale;

// arrow.Decimal128Array

alias c_garrow_decimal128_array_get_type garrow_decimal128_array_get_type;
alias c_garrow_decimal128_array_format_value garrow_decimal128_array_format_value;
alias c_garrow_decimal128_array_get_value garrow_decimal128_array_get_value;

// arrow.Decimal128ArrayBuilder

alias c_garrow_decimal128_array_builder_get_type garrow_decimal128_array_builder_get_type;
alias c_garrow_decimal128_array_builder_new garrow_decimal128_array_builder_new;
alias c_garrow_decimal128_array_builder_append garrow_decimal128_array_builder_append;
alias c_garrow_decimal128_array_builder_append_null garrow_decimal128_array_builder_append_null;
alias c_garrow_decimal128_array_builder_append_value garrow_decimal128_array_builder_append_value;
alias c_garrow_decimal128_array_builder_append_values garrow_decimal128_array_builder_append_values;

// arrow.Decimal128DataType

alias c_garrow_decimal128_data_type_get_type garrow_decimal128_data_type_get_type;
alias c_garrow_decimal128_data_type_new garrow_decimal128_data_type_new;
alias c_garrow_decimal128_data_type_max_precision garrow_decimal128_data_type_max_precision;

// arrow.Decimal128Scalar

alias c_garrow_decimal128_scalar_get_type garrow_decimal128_scalar_get_type;
alias c_garrow_decimal128_scalar_new garrow_decimal128_scalar_new;
alias c_garrow_decimal128_scalar_get_value garrow_decimal128_scalar_get_value;

// arrow.Decimal256

alias c_garrow_decimal256_get_type garrow_decimal256_get_type;
alias c_garrow_decimal256_new_integer garrow_decimal256_new_integer;
alias c_garrow_decimal256_new_string garrow_decimal256_new_string;
alias c_garrow_decimal256_abs garrow_decimal256_abs;
alias c_garrow_decimal256_copy garrow_decimal256_copy;
alias c_garrow_decimal256_divide garrow_decimal256_divide;
alias c_garrow_decimal256_equal garrow_decimal256_equal;
alias c_garrow_decimal256_greater_than garrow_decimal256_greater_than;
alias c_garrow_decimal256_greater_than_or_equal garrow_decimal256_greater_than_or_equal;
alias c_garrow_decimal256_less_than garrow_decimal256_less_than;
alias c_garrow_decimal256_less_than_or_equal garrow_decimal256_less_than_or_equal;
alias c_garrow_decimal256_multiply garrow_decimal256_multiply;
alias c_garrow_decimal256_negate garrow_decimal256_negate;
alias c_garrow_decimal256_not_equal garrow_decimal256_not_equal;
alias c_garrow_decimal256_plus garrow_decimal256_plus;
alias c_garrow_decimal256_rescale garrow_decimal256_rescale;
alias c_garrow_decimal256_to_bytes garrow_decimal256_to_bytes;
alias c_garrow_decimal256_to_string garrow_decimal256_to_string;
alias c_garrow_decimal256_to_string_scale garrow_decimal256_to_string_scale;

// arrow.Decimal256Array

alias c_garrow_decimal256_array_get_type garrow_decimal256_array_get_type;
alias c_garrow_decimal256_array_format_value garrow_decimal256_array_format_value;
alias c_garrow_decimal256_array_get_value garrow_decimal256_array_get_value;

// arrow.Decimal256ArrayBuilder

alias c_garrow_decimal256_array_builder_get_type garrow_decimal256_array_builder_get_type;
alias c_garrow_decimal256_array_builder_new garrow_decimal256_array_builder_new;
alias c_garrow_decimal256_array_builder_append_value garrow_decimal256_array_builder_append_value;
alias c_garrow_decimal256_array_builder_append_values garrow_decimal256_array_builder_append_values;

// arrow.Decimal256DataType

alias c_garrow_decimal256_data_type_get_type garrow_decimal256_data_type_get_type;
alias c_garrow_decimal256_data_type_new garrow_decimal256_data_type_new;
alias c_garrow_decimal256_data_type_max_precision garrow_decimal256_data_type_max_precision;

// arrow.Decimal256Scalar

alias c_garrow_decimal256_scalar_get_type garrow_decimal256_scalar_get_type;
alias c_garrow_decimal256_scalar_new garrow_decimal256_scalar_new;
alias c_garrow_decimal256_scalar_get_value garrow_decimal256_scalar_get_value;

// arrow.DecimalDataType

alias c_garrow_decimal_data_type_get_type garrow_decimal_data_type_get_type;
alias c_garrow_decimal_data_type_new garrow_decimal_data_type_new;
alias c_garrow_decimal_data_type_get_precision garrow_decimal_data_type_get_precision;
alias c_garrow_decimal_data_type_get_scale garrow_decimal_data_type_get_scale;

// arrow.DenseUnionArray

alias c_garrow_dense_union_array_get_type garrow_dense_union_array_get_type;
alias c_garrow_dense_union_array_new garrow_dense_union_array_new;
alias c_garrow_dense_union_array_new_data_type garrow_dense_union_array_new_data_type;
alias c_garrow_dense_union_array_get_value_offset garrow_dense_union_array_get_value_offset;

// arrow.DenseUnionArrayBuilder

alias c_garrow_dense_union_array_builder_get_type garrow_dense_union_array_builder_get_type;
alias c_garrow_dense_union_array_builder_new garrow_dense_union_array_builder_new;

// arrow.DenseUnionDataType

alias c_garrow_dense_union_data_type_get_type garrow_dense_union_data_type_get_type;
alias c_garrow_dense_union_data_type_new garrow_dense_union_data_type_new;

// arrow.DenseUnionScalar

alias c_garrow_dense_union_scalar_get_type garrow_dense_union_scalar_get_type;
alias c_garrow_dense_union_scalar_new garrow_dense_union_scalar_new;

// arrow.DictionaryArray

alias c_garrow_dictionary_array_get_type garrow_dictionary_array_get_type;
alias c_garrow_dictionary_array_new garrow_dictionary_array_new;
alias c_garrow_dictionary_array_get_dictionary garrow_dictionary_array_get_dictionary;
alias c_garrow_dictionary_array_get_dictionary_data_type garrow_dictionary_array_get_dictionary_data_type;
alias c_garrow_dictionary_array_get_indices garrow_dictionary_array_get_indices;

// arrow.DictionaryDataType

alias c_garrow_dictionary_data_type_get_type garrow_dictionary_data_type_get_type;
alias c_garrow_dictionary_data_type_new garrow_dictionary_data_type_new;
alias c_garrow_dictionary_data_type_get_index_data_type garrow_dictionary_data_type_get_index_data_type;
alias c_garrow_dictionary_data_type_get_value_data_type garrow_dictionary_data_type_get_value_data_type;
alias c_garrow_dictionary_data_type_is_ordered garrow_dictionary_data_type_is_ordered;

// arrow.DoubleArray

alias c_garrow_double_array_get_type garrow_double_array_get_type;
alias c_garrow_double_array_new garrow_double_array_new;
alias c_garrow_double_array_get_value garrow_double_array_get_value;
alias c_garrow_double_array_get_values garrow_double_array_get_values;
alias c_garrow_double_array_sum garrow_double_array_sum;

// arrow.DoubleArrayBuilder

alias c_garrow_double_array_builder_get_type garrow_double_array_builder_get_type;
alias c_garrow_double_array_builder_new garrow_double_array_builder_new;
alias c_garrow_double_array_builder_append garrow_double_array_builder_append;
alias c_garrow_double_array_builder_append_null garrow_double_array_builder_append_null;
alias c_garrow_double_array_builder_append_nulls garrow_double_array_builder_append_nulls;
alias c_garrow_double_array_builder_append_value garrow_double_array_builder_append_value;
alias c_garrow_double_array_builder_append_values garrow_double_array_builder_append_values;

// arrow.DoubleDataType

alias c_garrow_double_data_type_get_type garrow_double_data_type_get_type;
alias c_garrow_double_data_type_new garrow_double_data_type_new;

// arrow.DoubleScalar

alias c_garrow_double_scalar_get_type garrow_double_scalar_get_type;
alias c_garrow_double_scalar_new garrow_double_scalar_new;
alias c_garrow_double_scalar_get_value garrow_double_scalar_get_value;

// arrow.EqualOptions

alias c_garrow_equal_options_get_type garrow_equal_options_get_type;
alias c_garrow_equal_options_new garrow_equal_options_new;
alias c_garrow_equal_options_is_approx garrow_equal_options_is_approx;

// arrow.ExecuteContext

alias c_garrow_execute_context_get_type garrow_execute_context_get_type;
alias c_garrow_execute_context_new garrow_execute_context_new;

// arrow.ExecuteNode

alias c_garrow_execute_node_get_type garrow_execute_node_get_type;
alias c_garrow_execute_node_get_kind_name garrow_execute_node_get_kind_name;
alias c_garrow_execute_node_get_output_schema garrow_execute_node_get_output_schema;

// arrow.ExecuteNodeOptions

alias c_garrow_execute_node_options_get_type garrow_execute_node_options_get_type;

// arrow.ExecutePlan

alias c_garrow_execute_plan_get_type garrow_execute_plan_get_type;
alias c_garrow_execute_plan_new garrow_execute_plan_new;
alias c_garrow_execute_plan_build_aggregate_node garrow_execute_plan_build_aggregate_node;
alias c_garrow_execute_plan_build_filter_node garrow_execute_plan_build_filter_node;
alias c_garrow_execute_plan_build_hash_join_node garrow_execute_plan_build_hash_join_node;
alias c_garrow_execute_plan_build_node garrow_execute_plan_build_node;
alias c_garrow_execute_plan_build_project_node garrow_execute_plan_build_project_node;
alias c_garrow_execute_plan_build_sink_node garrow_execute_plan_build_sink_node;
alias c_garrow_execute_plan_build_source_node garrow_execute_plan_build_source_node;
alias c_garrow_execute_plan_get_nodes garrow_execute_plan_get_nodes;
alias c_garrow_execute_plan_start garrow_execute_plan_start;
alias c_garrow_execute_plan_stop garrow_execute_plan_stop;
alias c_garrow_execute_plan_validate garrow_execute_plan_validate;
alias c_garrow_execute_plan_wait garrow_execute_plan_wait;

// arrow.Expression

alias c_garrow_expression_get_type garrow_expression_get_type;
alias c_garrow_expression_equal garrow_expression_equal;
alias c_garrow_expression_to_string garrow_expression_to_string;

// arrow.ExtensionArray

alias c_garrow_extension_array_get_type garrow_extension_array_get_type;
alias c_garrow_extension_array_get_storage garrow_extension_array_get_storage;

// arrow.ExtensionDataType

alias c_garrow_extension_data_type_get_type garrow_extension_data_type_get_type;
alias c_garrow_extension_data_type_get_extension_name garrow_extension_data_type_get_extension_name;
alias c_garrow_extension_data_type_wrap_array garrow_extension_data_type_wrap_array;
alias c_garrow_extension_data_type_wrap_chunked_array garrow_extension_data_type_wrap_chunked_array;

// arrow.ExtensionDataTypeRegistry

alias c_garrow_extension_data_type_registry_get_type garrow_extension_data_type_registry_get_type;
alias c_garrow_extension_data_type_registry_default garrow_extension_data_type_registry_default;
alias c_garrow_extension_data_type_registry_lookup garrow_extension_data_type_registry_lookup;
alias c_garrow_extension_data_type_registry_register garrow_extension_data_type_registry_register;
alias c_garrow_extension_data_type_registry_unregister garrow_extension_data_type_registry_unregister;

// arrow.ExtensionScalar

alias c_garrow_extension_scalar_get_type garrow_extension_scalar_get_type;

// arrow.FeatherFileReader

alias c_garrow_feather_file_reader_get_type garrow_feather_file_reader_get_type;
alias c_garrow_feather_file_reader_new garrow_feather_file_reader_new;
alias c_garrow_feather_file_reader_get_version garrow_feather_file_reader_get_version;
alias c_garrow_feather_file_reader_read garrow_feather_file_reader_read;
alias c_garrow_feather_file_reader_read_indices garrow_feather_file_reader_read_indices;
alias c_garrow_feather_file_reader_read_names garrow_feather_file_reader_read_names;

// arrow.FeatherWriteProperties

alias c_garrow_feather_write_properties_get_type garrow_feather_write_properties_get_type;
alias c_garrow_feather_write_properties_new garrow_feather_write_properties_new;

// arrow.Field

alias c_garrow_field_get_type garrow_field_get_type;
alias c_garrow_field_new garrow_field_new;
alias c_garrow_field_new_full garrow_field_new_full;
alias c_garrow_field_import garrow_field_import;
alias c_garrow_field_equal garrow_field_equal;
alias c_garrow_field_export garrow_field_export;
alias c_garrow_field_get_data_type garrow_field_get_data_type;
alias c_garrow_field_get_metadata garrow_field_get_metadata;
alias c_garrow_field_get_name garrow_field_get_name;
alias c_garrow_field_has_metadata garrow_field_has_metadata;
alias c_garrow_field_is_nullable garrow_field_is_nullable;
alias c_garrow_field_remove_metadata garrow_field_remove_metadata;
alias c_garrow_field_to_string garrow_field_to_string;
alias c_garrow_field_to_string_metadata garrow_field_to_string_metadata;
alias c_garrow_field_with_merged_metadata garrow_field_with_merged_metadata;
alias c_garrow_field_with_metadata garrow_field_with_metadata;

// arrow.FieldExpression

alias c_garrow_field_expression_get_type garrow_field_expression_get_type;
alias c_garrow_field_expression_new garrow_field_expression_new;

// arrow.File

alias c_garrow_file_get_type garrow_file_get_type;
alias c_garrow_file_close garrow_file_close;
alias c_garrow_file_get_mode garrow_file_get_mode;
alias c_garrow_file_is_closed garrow_file_is_closed;
alias c_garrow_file_tell garrow_file_tell;

// arrow.FileInfo

alias c_garrow_file_info_get_type garrow_file_info_get_type;
alias c_garrow_file_info_new garrow_file_info_new;
alias c_garrow_file_info_equal garrow_file_info_equal;
alias c_garrow_file_info_is_dir garrow_file_info_is_dir;
alias c_garrow_file_info_is_file garrow_file_info_is_file;
alias c_garrow_file_info_to_string garrow_file_info_to_string;

// arrow.FileInputStream

alias c_garrow_file_input_stream_get_type garrow_file_input_stream_get_type;
alias c_garrow_file_input_stream_new garrow_file_input_stream_new;
alias c_garrow_file_input_stream_new_file_descriptor garrow_file_input_stream_new_file_descriptor;
alias c_garrow_file_input_stream_get_file_descriptor garrow_file_input_stream_get_file_descriptor;

// arrow.FileOutputStream

alias c_garrow_file_output_stream_get_type garrow_file_output_stream_get_type;
alias c_garrow_file_output_stream_new garrow_file_output_stream_new;

// arrow.FileSelector

alias c_garrow_file_selector_get_type garrow_file_selector_get_type;

// arrow.FileSystem

alias c_garrow_file_system_get_type garrow_file_system_get_type;
alias c_garrow_file_system_create garrow_file_system_create;
alias c_garrow_file_system_copy_file garrow_file_system_copy_file;
alias c_garrow_file_system_create_dir garrow_file_system_create_dir;
alias c_garrow_file_system_delete_dir garrow_file_system_delete_dir;
alias c_garrow_file_system_delete_dir_contents garrow_file_system_delete_dir_contents;
alias c_garrow_file_system_delete_file garrow_file_system_delete_file;
alias c_garrow_file_system_delete_files garrow_file_system_delete_files;
alias c_garrow_file_system_get_file_info garrow_file_system_get_file_info;
alias c_garrow_file_system_get_file_infos_paths garrow_file_system_get_file_infos_paths;
alias c_garrow_file_system_get_file_infos_selector garrow_file_system_get_file_infos_selector;
alias c_garrow_file_system_get_type_name garrow_file_system_get_type_name;
alias c_garrow_file_system_move garrow_file_system_move;
alias c_garrow_file_system_open_append_stream garrow_file_system_open_append_stream;
alias c_garrow_file_system_open_input_file garrow_file_system_open_input_file;
alias c_garrow_file_system_open_input_stream garrow_file_system_open_input_stream;
alias c_garrow_file_system_open_output_stream garrow_file_system_open_output_stream;

// arrow.FilterNodeOptions

alias c_garrow_filter_node_options_get_type garrow_filter_node_options_get_type;
alias c_garrow_filter_node_options_new garrow_filter_node_options_new;

// arrow.FilterOptions

alias c_garrow_filter_options_get_type garrow_filter_options_get_type;
alias c_garrow_filter_options_new garrow_filter_options_new;

// arrow.FixedSizeBinaryArray

alias c_garrow_fixed_size_binary_array_get_type garrow_fixed_size_binary_array_get_type;
alias c_garrow_fixed_size_binary_array_new garrow_fixed_size_binary_array_new;
alias c_garrow_fixed_size_binary_array_get_byte_width garrow_fixed_size_binary_array_get_byte_width;
alias c_garrow_fixed_size_binary_array_get_value garrow_fixed_size_binary_array_get_value;
alias c_garrow_fixed_size_binary_array_get_values_bytes garrow_fixed_size_binary_array_get_values_bytes;

// arrow.FixedSizeBinaryArrayBuilder

alias c_garrow_fixed_size_binary_array_builder_get_type garrow_fixed_size_binary_array_builder_get_type;
alias c_garrow_fixed_size_binary_array_builder_new garrow_fixed_size_binary_array_builder_new;
alias c_garrow_fixed_size_binary_array_builder_append_value garrow_fixed_size_binary_array_builder_append_value;
alias c_garrow_fixed_size_binary_array_builder_append_value_bytes garrow_fixed_size_binary_array_builder_append_value_bytes;
alias c_garrow_fixed_size_binary_array_builder_append_values garrow_fixed_size_binary_array_builder_append_values;
alias c_garrow_fixed_size_binary_array_builder_append_values_packed garrow_fixed_size_binary_array_builder_append_values_packed;

// arrow.FixedSizeBinaryDataType

alias c_garrow_fixed_size_binary_data_type_get_type garrow_fixed_size_binary_data_type_get_type;
alias c_garrow_fixed_size_binary_data_type_new garrow_fixed_size_binary_data_type_new;
alias c_garrow_fixed_size_binary_data_type_get_byte_width garrow_fixed_size_binary_data_type_get_byte_width;

// arrow.FixedSizeBinaryScalar

alias c_garrow_fixed_size_binary_scalar_get_type garrow_fixed_size_binary_scalar_get_type;
alias c_garrow_fixed_size_binary_scalar_new garrow_fixed_size_binary_scalar_new;

// arrow.FixedWidthDataType

alias c_garrow_fixed_width_data_type_get_type garrow_fixed_width_data_type_get_type;
alias c_garrow_fixed_width_data_type_get_bit_width garrow_fixed_width_data_type_get_bit_width;

// arrow.FloatArray

alias c_garrow_float_array_get_type garrow_float_array_get_type;
alias c_garrow_float_array_new garrow_float_array_new;
alias c_garrow_float_array_get_value garrow_float_array_get_value;
alias c_garrow_float_array_get_values garrow_float_array_get_values;
alias c_garrow_float_array_sum garrow_float_array_sum;

// arrow.FloatArrayBuilder

alias c_garrow_float_array_builder_get_type garrow_float_array_builder_get_type;
alias c_garrow_float_array_builder_new garrow_float_array_builder_new;
alias c_garrow_float_array_builder_append garrow_float_array_builder_append;
alias c_garrow_float_array_builder_append_null garrow_float_array_builder_append_null;
alias c_garrow_float_array_builder_append_nulls garrow_float_array_builder_append_nulls;
alias c_garrow_float_array_builder_append_value garrow_float_array_builder_append_value;
alias c_garrow_float_array_builder_append_values garrow_float_array_builder_append_values;

// arrow.FloatDataType

alias c_garrow_float_data_type_get_type garrow_float_data_type_get_type;
alias c_garrow_float_data_type_new garrow_float_data_type_new;

// arrow.FloatScalar

alias c_garrow_float_scalar_get_type garrow_float_scalar_get_type;
alias c_garrow_float_scalar_new garrow_float_scalar_new;
alias c_garrow_float_scalar_get_value garrow_float_scalar_get_value;

// arrow.FloatingPointDataType

alias c_garrow_floating_point_data_type_get_type garrow_floating_point_data_type_get_type;

// arrow.Function

alias c_garrow_function_get_type garrow_function_get_type;
alias c_garrow_function_all garrow_function_all;
alias c_garrow_function_find garrow_function_find;
alias c_garrow_function_equal garrow_function_equal;
alias c_garrow_function_execute garrow_function_execute;
alias c_garrow_function_get_default_options garrow_function_get_default_options;
alias c_garrow_function_get_doc garrow_function_get_doc;
alias c_garrow_function_get_name garrow_function_get_name;
alias c_garrow_function_get_options_type garrow_function_get_options_type;
alias c_garrow_function_to_string garrow_function_to_string;

// arrow.FunctionDoc

alias c_garrow_function_doc_get_type garrow_function_doc_get_type;
alias c_garrow_function_doc_get_arg_names garrow_function_doc_get_arg_names;
alias c_garrow_function_doc_get_description garrow_function_doc_get_description;
alias c_garrow_function_doc_get_options_class_name garrow_function_doc_get_options_class_name;
alias c_garrow_function_doc_get_summary garrow_function_doc_get_summary;

// arrow.FunctionOptions

alias c_garrow_function_options_get_type garrow_function_options_get_type;
alias c_garrow_function_options_equal garrow_function_options_equal;
alias c_garrow_function_options_to_string garrow_function_options_to_string;

// arrow.GCSFileSystem

alias c_garrow_gcs_file_system_get_type garrow_gcs_file_system_get_type;

// arrow.GIOInputStream

alias c_garrow_gio_input_stream_get_type garrow_gio_input_stream_get_type;
alias c_garrow_gio_input_stream_new garrow_gio_input_stream_new;
alias c_garrow_gio_input_stream_get_raw garrow_gio_input_stream_get_raw;

// arrow.GIOOutputStream

alias c_garrow_gio_output_stream_get_type garrow_gio_output_stream_get_type;
alias c_garrow_gio_output_stream_new garrow_gio_output_stream_new;
alias c_garrow_gio_output_stream_get_raw garrow_gio_output_stream_get_raw;

// arrow.HDFSFileSystem

alias c_garrow_hdfs_file_system_get_type garrow_hdfs_file_system_get_type;

// arrow.HalfFloatArray

alias c_garrow_half_float_array_get_type garrow_half_float_array_get_type;
alias c_garrow_half_float_array_new garrow_half_float_array_new;
alias c_garrow_half_float_array_get_value garrow_half_float_array_get_value;
alias c_garrow_half_float_array_get_values garrow_half_float_array_get_values;

// arrow.HalfFloatArrayBuilder

alias c_garrow_half_float_array_builder_get_type garrow_half_float_array_builder_get_type;
alias c_garrow_half_float_array_builder_new garrow_half_float_array_builder_new;
alias c_garrow_half_float_array_builder_append_value garrow_half_float_array_builder_append_value;
alias c_garrow_half_float_array_builder_append_values garrow_half_float_array_builder_append_values;

// arrow.HalfFloatDataType

alias c_garrow_half_float_data_type_get_type garrow_half_float_data_type_get_type;
alias c_garrow_half_float_data_type_new garrow_half_float_data_type_new;

// arrow.HalfFloatScalar

alias c_garrow_half_float_scalar_get_type garrow_half_float_scalar_get_type;
alias c_garrow_half_float_scalar_new garrow_half_float_scalar_new;
alias c_garrow_half_float_scalar_get_value garrow_half_float_scalar_get_value;

// arrow.HashJoinNodeOptions

alias c_garrow_hash_join_node_options_get_type garrow_hash_join_node_options_get_type;
alias c_garrow_hash_join_node_options_new garrow_hash_join_node_options_new;
alias c_garrow_hash_join_node_options_set_left_outputs garrow_hash_join_node_options_set_left_outputs;
alias c_garrow_hash_join_node_options_set_right_outputs garrow_hash_join_node_options_set_right_outputs;

// arrow.ISO8601TimestampParser

alias c_garrow_iso8601_timestamp_parser_get_type garrow_iso8601_timestamp_parser_get_type;
alias c_garrow_iso8601_timestamp_parser_new garrow_iso8601_timestamp_parser_new;

// arrow.IndexOptions

alias c_garrow_index_options_get_type garrow_index_options_get_type;
alias c_garrow_index_options_new garrow_index_options_new;

// arrow.InputStream

alias c_garrow_input_stream_get_type garrow_input_stream_get_type;
alias c_garrow_input_stream_advance garrow_input_stream_advance;
alias c_garrow_input_stream_align garrow_input_stream_align;
alias c_garrow_input_stream_read_record_batch garrow_input_stream_read_record_batch;
alias c_garrow_input_stream_read_tensor garrow_input_stream_read_tensor;

// arrow.Int16Array

alias c_garrow_int16_array_get_type garrow_int16_array_get_type;
alias c_garrow_int16_array_new garrow_int16_array_new;
alias c_garrow_int16_array_get_value garrow_int16_array_get_value;
alias c_garrow_int16_array_get_values garrow_int16_array_get_values;
alias c_garrow_int16_array_sum garrow_int16_array_sum;

// arrow.Int16ArrayBuilder

alias c_garrow_int16_array_builder_get_type garrow_int16_array_builder_get_type;
alias c_garrow_int16_array_builder_new garrow_int16_array_builder_new;
alias c_garrow_int16_array_builder_append garrow_int16_array_builder_append;
alias c_garrow_int16_array_builder_append_null garrow_int16_array_builder_append_null;
alias c_garrow_int16_array_builder_append_nulls garrow_int16_array_builder_append_nulls;
alias c_garrow_int16_array_builder_append_value garrow_int16_array_builder_append_value;
alias c_garrow_int16_array_builder_append_values garrow_int16_array_builder_append_values;

// arrow.Int16DataType

alias c_garrow_int16_data_type_get_type garrow_int16_data_type_get_type;
alias c_garrow_int16_data_type_new garrow_int16_data_type_new;

// arrow.Int16Scalar

alias c_garrow_int16_scalar_get_type garrow_int16_scalar_get_type;
alias c_garrow_int16_scalar_new garrow_int16_scalar_new;
alias c_garrow_int16_scalar_get_value garrow_int16_scalar_get_value;

// arrow.Int32Array

alias c_garrow_int32_array_get_type garrow_int32_array_get_type;
alias c_garrow_int32_array_new garrow_int32_array_new;
alias c_garrow_int32_array_get_value garrow_int32_array_get_value;
alias c_garrow_int32_array_get_values garrow_int32_array_get_values;
alias c_garrow_int32_array_sum garrow_int32_array_sum;

// arrow.Int32ArrayBuilder

alias c_garrow_int32_array_builder_get_type garrow_int32_array_builder_get_type;
alias c_garrow_int32_array_builder_new garrow_int32_array_builder_new;
alias c_garrow_int32_array_builder_append garrow_int32_array_builder_append;
alias c_garrow_int32_array_builder_append_null garrow_int32_array_builder_append_null;
alias c_garrow_int32_array_builder_append_nulls garrow_int32_array_builder_append_nulls;
alias c_garrow_int32_array_builder_append_value garrow_int32_array_builder_append_value;
alias c_garrow_int32_array_builder_append_values garrow_int32_array_builder_append_values;

// arrow.Int32DataType

alias c_garrow_int32_data_type_get_type garrow_int32_data_type_get_type;
alias c_garrow_int32_data_type_new garrow_int32_data_type_new;

// arrow.Int32Scalar

alias c_garrow_int32_scalar_get_type garrow_int32_scalar_get_type;
alias c_garrow_int32_scalar_new garrow_int32_scalar_new;
alias c_garrow_int32_scalar_get_value garrow_int32_scalar_get_value;

// arrow.Int64Array

alias c_garrow_int64_array_get_type garrow_int64_array_get_type;
alias c_garrow_int64_array_new garrow_int64_array_new;
alias c_garrow_int64_array_get_value garrow_int64_array_get_value;
alias c_garrow_int64_array_get_values garrow_int64_array_get_values;
alias c_garrow_int64_array_sum garrow_int64_array_sum;

// arrow.Int64ArrayBuilder

alias c_garrow_int64_array_builder_get_type garrow_int64_array_builder_get_type;
alias c_garrow_int64_array_builder_new garrow_int64_array_builder_new;
alias c_garrow_int64_array_builder_append garrow_int64_array_builder_append;
alias c_garrow_int64_array_builder_append_null garrow_int64_array_builder_append_null;
alias c_garrow_int64_array_builder_append_nulls garrow_int64_array_builder_append_nulls;
alias c_garrow_int64_array_builder_append_value garrow_int64_array_builder_append_value;
alias c_garrow_int64_array_builder_append_values garrow_int64_array_builder_append_values;

// arrow.Int64DataType

alias c_garrow_int64_data_type_get_type garrow_int64_data_type_get_type;
alias c_garrow_int64_data_type_new garrow_int64_data_type_new;

// arrow.Int64Scalar

alias c_garrow_int64_scalar_get_type garrow_int64_scalar_get_type;
alias c_garrow_int64_scalar_new garrow_int64_scalar_new;
alias c_garrow_int64_scalar_get_value garrow_int64_scalar_get_value;

// arrow.Int8Array

alias c_garrow_int8_array_get_type garrow_int8_array_get_type;
alias c_garrow_int8_array_new garrow_int8_array_new;
alias c_garrow_int8_array_get_value garrow_int8_array_get_value;
alias c_garrow_int8_array_get_values garrow_int8_array_get_values;
alias c_garrow_int8_array_sum garrow_int8_array_sum;

// arrow.Int8ArrayBuilder

alias c_garrow_int8_array_builder_get_type garrow_int8_array_builder_get_type;
alias c_garrow_int8_array_builder_new garrow_int8_array_builder_new;
alias c_garrow_int8_array_builder_append garrow_int8_array_builder_append;
alias c_garrow_int8_array_builder_append_null garrow_int8_array_builder_append_null;
alias c_garrow_int8_array_builder_append_nulls garrow_int8_array_builder_append_nulls;
alias c_garrow_int8_array_builder_append_value garrow_int8_array_builder_append_value;
alias c_garrow_int8_array_builder_append_values garrow_int8_array_builder_append_values;

// arrow.Int8DataType

alias c_garrow_int8_data_type_get_type garrow_int8_data_type_get_type;
alias c_garrow_int8_data_type_new garrow_int8_data_type_new;

// arrow.Int8Scalar

alias c_garrow_int8_scalar_get_type garrow_int8_scalar_get_type;
alias c_garrow_int8_scalar_new garrow_int8_scalar_new;
alias c_garrow_int8_scalar_get_value garrow_int8_scalar_get_value;

// arrow.IntArrayBuilder

alias c_garrow_int_array_builder_get_type garrow_int_array_builder_get_type;
alias c_garrow_int_array_builder_new garrow_int_array_builder_new;
alias c_garrow_int_array_builder_append garrow_int_array_builder_append;
alias c_garrow_int_array_builder_append_null garrow_int_array_builder_append_null;
alias c_garrow_int_array_builder_append_nulls garrow_int_array_builder_append_nulls;
alias c_garrow_int_array_builder_append_value garrow_int_array_builder_append_value;
alias c_garrow_int_array_builder_append_values garrow_int_array_builder_append_values;

// arrow.IntegerDataType

alias c_garrow_integer_data_type_get_type garrow_integer_data_type_get_type;
alias c_garrow_integer_data_type_is_signed garrow_integer_data_type_is_signed;

// arrow.IntervalDataType

alias c_garrow_interval_data_type_get_type garrow_interval_data_type_get_type;
alias c_garrow_interval_data_type_get_interval_type garrow_interval_data_type_get_interval_type;

// arrow.JSONReadOptions

alias c_garrow_json_read_options_get_type garrow_json_read_options_get_type;
alias c_garrow_json_read_options_new garrow_json_read_options_new;

// arrow.JSONReader

alias c_garrow_json_reader_get_type garrow_json_reader_get_type;
alias c_garrow_json_reader_new garrow_json_reader_new;
alias c_garrow_json_reader_read garrow_json_reader_read;

// arrow.LargeBinaryArray

alias c_garrow_large_binary_array_get_type garrow_large_binary_array_get_type;
alias c_garrow_large_binary_array_new garrow_large_binary_array_new;
alias c_garrow_large_binary_array_get_buffer garrow_large_binary_array_get_buffer;
alias c_garrow_large_binary_array_get_data_buffer garrow_large_binary_array_get_data_buffer;
alias c_garrow_large_binary_array_get_offsets_buffer garrow_large_binary_array_get_offsets_buffer;
alias c_garrow_large_binary_array_get_value garrow_large_binary_array_get_value;

// arrow.LargeBinaryArrayBuilder

alias c_garrow_large_binary_array_builder_get_type garrow_large_binary_array_builder_get_type;
alias c_garrow_large_binary_array_builder_new garrow_large_binary_array_builder_new;
alias c_garrow_large_binary_array_builder_append_null garrow_large_binary_array_builder_append_null;
alias c_garrow_large_binary_array_builder_append_nulls garrow_large_binary_array_builder_append_nulls;
alias c_garrow_large_binary_array_builder_append_value garrow_large_binary_array_builder_append_value;
alias c_garrow_large_binary_array_builder_append_value_bytes garrow_large_binary_array_builder_append_value_bytes;
alias c_garrow_large_binary_array_builder_append_values garrow_large_binary_array_builder_append_values;

// arrow.LargeBinaryDataType

alias c_garrow_large_binary_data_type_get_type garrow_large_binary_data_type_get_type;
alias c_garrow_large_binary_data_type_new garrow_large_binary_data_type_new;

// arrow.LargeBinaryScalar

alias c_garrow_large_binary_scalar_get_type garrow_large_binary_scalar_get_type;
alias c_garrow_large_binary_scalar_new garrow_large_binary_scalar_new;

// arrow.LargeListArray

alias c_garrow_large_list_array_get_type garrow_large_list_array_get_type;
alias c_garrow_large_list_array_new garrow_large_list_array_new;
alias c_garrow_large_list_array_get_value garrow_large_list_array_get_value;
alias c_garrow_large_list_array_get_value_length garrow_large_list_array_get_value_length;
alias c_garrow_large_list_array_get_value_offset garrow_large_list_array_get_value_offset;
alias c_garrow_large_list_array_get_value_offsets garrow_large_list_array_get_value_offsets;
alias c_garrow_large_list_array_get_value_type garrow_large_list_array_get_value_type;
alias c_garrow_large_list_array_get_values garrow_large_list_array_get_values;

// arrow.LargeListArrayBuilder

alias c_garrow_large_list_array_builder_get_type garrow_large_list_array_builder_get_type;
alias c_garrow_large_list_array_builder_new garrow_large_list_array_builder_new;
alias c_garrow_large_list_array_builder_append_null garrow_large_list_array_builder_append_null;
alias c_garrow_large_list_array_builder_append_value garrow_large_list_array_builder_append_value;
alias c_garrow_large_list_array_builder_get_value_builder garrow_large_list_array_builder_get_value_builder;

// arrow.LargeListDataType

alias c_garrow_large_list_data_type_get_type garrow_large_list_data_type_get_type;
alias c_garrow_large_list_data_type_new garrow_large_list_data_type_new;
alias c_garrow_large_list_data_type_get_field garrow_large_list_data_type_get_field;

// arrow.LargeListScalar

alias c_garrow_large_list_scalar_get_type garrow_large_list_scalar_get_type;
alias c_garrow_large_list_scalar_new garrow_large_list_scalar_new;

// arrow.LargeStringArray

alias c_garrow_large_string_array_get_type garrow_large_string_array_get_type;
alias c_garrow_large_string_array_new garrow_large_string_array_new;
alias c_garrow_large_string_array_get_string garrow_large_string_array_get_string;

// arrow.LargeStringArrayBuilder

alias c_garrow_large_string_array_builder_get_type garrow_large_string_array_builder_get_type;
alias c_garrow_large_string_array_builder_new garrow_large_string_array_builder_new;
alias c_garrow_large_string_array_builder_append_string garrow_large_string_array_builder_append_string;
alias c_garrow_large_string_array_builder_append_string_len garrow_large_string_array_builder_append_string_len;
alias c_garrow_large_string_array_builder_append_strings garrow_large_string_array_builder_append_strings;

// arrow.LargeStringDataType

alias c_garrow_large_string_data_type_get_type garrow_large_string_data_type_get_type;
alias c_garrow_large_string_data_type_new garrow_large_string_data_type_new;

// arrow.LargeStringScalar

alias c_garrow_large_string_scalar_get_type garrow_large_string_scalar_get_type;
alias c_garrow_large_string_scalar_new garrow_large_string_scalar_new;

// arrow.ListArray

alias c_garrow_list_array_get_type garrow_list_array_get_type;
alias c_garrow_list_array_new garrow_list_array_new;
alias c_garrow_list_array_get_value garrow_list_array_get_value;
alias c_garrow_list_array_get_value_length garrow_list_array_get_value_length;
alias c_garrow_list_array_get_value_offset garrow_list_array_get_value_offset;
alias c_garrow_list_array_get_value_offsets garrow_list_array_get_value_offsets;
alias c_garrow_list_array_get_value_type garrow_list_array_get_value_type;
alias c_garrow_list_array_get_values garrow_list_array_get_values;

// arrow.ListArrayBuilder

alias c_garrow_list_array_builder_get_type garrow_list_array_builder_get_type;
alias c_garrow_list_array_builder_new garrow_list_array_builder_new;
alias c_garrow_list_array_builder_append garrow_list_array_builder_append;
alias c_garrow_list_array_builder_append_null garrow_list_array_builder_append_null;
alias c_garrow_list_array_builder_append_value garrow_list_array_builder_append_value;
alias c_garrow_list_array_builder_get_value_builder garrow_list_array_builder_get_value_builder;

// arrow.ListDataType

alias c_garrow_list_data_type_get_type garrow_list_data_type_get_type;
alias c_garrow_list_data_type_new garrow_list_data_type_new;
alias c_garrow_list_data_type_get_field garrow_list_data_type_get_field;
alias c_garrow_list_data_type_get_value_field garrow_list_data_type_get_value_field;

// arrow.ListScalar

alias c_garrow_list_scalar_get_type garrow_list_scalar_get_type;
alias c_garrow_list_scalar_new garrow_list_scalar_new;

// arrow.LiteralExpression

alias c_garrow_literal_expression_get_type garrow_literal_expression_get_type;
alias c_garrow_literal_expression_new garrow_literal_expression_new;

// arrow.LocalFileSystem

alias c_garrow_local_file_system_get_type garrow_local_file_system_get_type;
alias c_garrow_local_file_system_new garrow_local_file_system_new;

// arrow.LocalFileSystemOptions

alias c_garrow_local_file_system_options_get_type garrow_local_file_system_options_get_type;
alias c_garrow_local_file_system_options_new garrow_local_file_system_options_new;

// arrow.MapArray

alias c_garrow_map_array_get_type garrow_map_array_get_type;
alias c_garrow_map_array_new garrow_map_array_new;
alias c_garrow_map_array_get_items garrow_map_array_get_items;
alias c_garrow_map_array_get_keys garrow_map_array_get_keys;

// arrow.MapArrayBuilder

alias c_garrow_map_array_builder_get_type garrow_map_array_builder_get_type;
alias c_garrow_map_array_builder_new garrow_map_array_builder_new;
alias c_garrow_map_array_builder_append_null garrow_map_array_builder_append_null;
alias c_garrow_map_array_builder_append_nulls garrow_map_array_builder_append_nulls;
alias c_garrow_map_array_builder_append_value garrow_map_array_builder_append_value;
alias c_garrow_map_array_builder_append_values garrow_map_array_builder_append_values;
alias c_garrow_map_array_builder_get_item_builder garrow_map_array_builder_get_item_builder;
alias c_garrow_map_array_builder_get_key_builder garrow_map_array_builder_get_key_builder;
alias c_garrow_map_array_builder_get_value_builder garrow_map_array_builder_get_value_builder;

// arrow.MapDataType

alias c_garrow_map_data_type_get_type garrow_map_data_type_get_type;
alias c_garrow_map_data_type_new garrow_map_data_type_new;
alias c_garrow_map_data_type_get_item_type garrow_map_data_type_get_item_type;
alias c_garrow_map_data_type_get_key_type garrow_map_data_type_get_key_type;

// arrow.MapScalar

alias c_garrow_map_scalar_get_type garrow_map_scalar_get_type;
alias c_garrow_map_scalar_new garrow_map_scalar_new;

// arrow.MatchSubstringOptions

alias c_garrow_match_substring_options_get_type garrow_match_substring_options_get_type;
alias c_garrow_match_substring_options_new garrow_match_substring_options_new;

// arrow.MemoryMappedInputStream

alias c_garrow_memory_mapped_input_stream_get_type garrow_memory_mapped_input_stream_get_type;
alias c_garrow_memory_mapped_input_stream_new garrow_memory_mapped_input_stream_new;

// arrow.MemoryPool

alias c_garrow_memory_pool_get_type garrow_memory_pool_get_type;
alias c_garrow_memory_pool_default garrow_memory_pool_default;
alias c_garrow_memory_pool_get_backend_name garrow_memory_pool_get_backend_name;
alias c_garrow_memory_pool_get_bytes_allocated garrow_memory_pool_get_bytes_allocated;
alias c_garrow_memory_pool_get_max_memory garrow_memory_pool_get_max_memory;

// arrow.MockFileSystem

alias c_garrow_mock_file_system_get_type garrow_mock_file_system_get_type;

// arrow.MonthDayNano

alias c_garrow_month_day_nano_get_type garrow_month_day_nano_get_type;
alias c_garrow_month_day_nano_new garrow_month_day_nano_new;
alias c_garrow_month_day_nano_equal garrow_month_day_nano_equal;

// arrow.MonthDayNanoIntervalArray

alias c_garrow_month_day_nano_interval_array_get_type garrow_month_day_nano_interval_array_get_type;
alias c_garrow_month_day_nano_interval_array_new garrow_month_day_nano_interval_array_new;
alias c_garrow_month_day_nano_interval_array_get_value garrow_month_day_nano_interval_array_get_value;
alias c_garrow_month_day_nano_interval_array_get_values garrow_month_day_nano_interval_array_get_values;

// arrow.MonthDayNanoIntervalArrayBuilder

alias c_garrow_month_day_nano_interval_array_builder_get_type garrow_month_day_nano_interval_array_builder_get_type;
alias c_garrow_month_day_nano_interval_array_builder_new garrow_month_day_nano_interval_array_builder_new;
alias c_garrow_month_day_nano_interval_array_builder_append_value garrow_month_day_nano_interval_array_builder_append_value;
alias c_garrow_month_day_nano_interval_array_builder_append_values garrow_month_day_nano_interval_array_builder_append_values;

// arrow.MonthDayNanoIntervalDataType

alias c_garrow_month_day_nano_interval_data_type_get_type garrow_month_day_nano_interval_data_type_get_type;
alias c_garrow_month_day_nano_interval_data_type_new garrow_month_day_nano_interval_data_type_new;

// arrow.MonthDayNanoIntervalScalar

alias c_garrow_month_day_nano_interval_scalar_get_type garrow_month_day_nano_interval_scalar_get_type;
alias c_garrow_month_day_nano_interval_scalar_new garrow_month_day_nano_interval_scalar_new;
alias c_garrow_month_day_nano_interval_scalar_get_value garrow_month_day_nano_interval_scalar_get_value;

// arrow.MonthIntervalArray

alias c_garrow_month_interval_array_get_type garrow_month_interval_array_get_type;
alias c_garrow_month_interval_array_new garrow_month_interval_array_new;
alias c_garrow_month_interval_array_get_value garrow_month_interval_array_get_value;
alias c_garrow_month_interval_array_get_values garrow_month_interval_array_get_values;

// arrow.MonthIntervalArrayBuilder

alias c_garrow_month_interval_array_builder_get_type garrow_month_interval_array_builder_get_type;
alias c_garrow_month_interval_array_builder_new garrow_month_interval_array_builder_new;
alias c_garrow_month_interval_array_builder_append_value garrow_month_interval_array_builder_append_value;
alias c_garrow_month_interval_array_builder_append_values garrow_month_interval_array_builder_append_values;

// arrow.MonthIntervalDataType

alias c_garrow_month_interval_data_type_get_type garrow_month_interval_data_type_get_type;
alias c_garrow_month_interval_data_type_new garrow_month_interval_data_type_new;

// arrow.MonthIntervalScalar

alias c_garrow_month_interval_scalar_get_type garrow_month_interval_scalar_get_type;
alias c_garrow_month_interval_scalar_new garrow_month_interval_scalar_new;
alias c_garrow_month_interval_scalar_get_value garrow_month_interval_scalar_get_value;

// arrow.MutableBuffer

alias c_garrow_mutable_buffer_get_type garrow_mutable_buffer_get_type;
alias c_garrow_mutable_buffer_new garrow_mutable_buffer_new;
alias c_garrow_mutable_buffer_new_bytes garrow_mutable_buffer_new_bytes;
alias c_garrow_mutable_buffer_set_data garrow_mutable_buffer_set_data;
alias c_garrow_mutable_buffer_slice garrow_mutable_buffer_slice;

// arrow.NullArray

alias c_garrow_null_array_get_type garrow_null_array_get_type;
alias c_garrow_null_array_new garrow_null_array_new;

// arrow.NullArrayBuilder

alias c_garrow_null_array_builder_get_type garrow_null_array_builder_get_type;
alias c_garrow_null_array_builder_new garrow_null_array_builder_new;
alias c_garrow_null_array_builder_append_null garrow_null_array_builder_append_null;
alias c_garrow_null_array_builder_append_nulls garrow_null_array_builder_append_nulls;

// arrow.NullDataType

alias c_garrow_null_data_type_get_type garrow_null_data_type_get_type;
alias c_garrow_null_data_type_new garrow_null_data_type_new;

// arrow.NullScalar

alias c_garrow_null_scalar_get_type garrow_null_scalar_get_type;
alias c_garrow_null_scalar_new garrow_null_scalar_new;

// arrow.NumericArray

alias c_garrow_numeric_array_get_type garrow_numeric_array_get_type;
alias c_garrow_numeric_array_mean garrow_numeric_array_mean;

// arrow.NumericDataType

alias c_garrow_numeric_data_type_get_type garrow_numeric_data_type_get_type;

// arrow.ORCFileReader

alias c_garrow_orc_file_reader_get_type garrow_orc_file_reader_get_type;
alias c_garrow_orc_file_reader_new garrow_orc_file_reader_new;
alias c_garrow_orc_file_reader_get_field_indexes garrow_orc_file_reader_get_field_indexes;
alias c_garrow_orc_file_reader_get_field_indices garrow_orc_file_reader_get_field_indices;
alias c_garrow_orc_file_reader_get_n_rows garrow_orc_file_reader_get_n_rows;
alias c_garrow_orc_file_reader_get_n_stripes garrow_orc_file_reader_get_n_stripes;
alias c_garrow_orc_file_reader_read_stripe garrow_orc_file_reader_read_stripe;
alias c_garrow_orc_file_reader_read_stripes garrow_orc_file_reader_read_stripes;
alias c_garrow_orc_file_reader_read_type garrow_orc_file_reader_read_type;
alias c_garrow_orc_file_reader_set_field_indexes garrow_orc_file_reader_set_field_indexes;
alias c_garrow_orc_file_reader_set_field_indices garrow_orc_file_reader_set_field_indices;

// arrow.OutputStream

alias c_garrow_output_stream_get_type garrow_output_stream_get_type;
alias c_garrow_output_stream_align garrow_output_stream_align;
alias c_garrow_output_stream_write_record_batch garrow_output_stream_write_record_batch;
alias c_garrow_output_stream_write_tensor garrow_output_stream_write_tensor;

// arrow.PrimitiveArray

alias c_garrow_primitive_array_get_type garrow_primitive_array_get_type;
alias c_garrow_primitive_array_get_buffer garrow_primitive_array_get_buffer;
alias c_garrow_primitive_array_get_data_buffer garrow_primitive_array_get_data_buffer;

// arrow.ProjectNodeOptions

alias c_garrow_project_node_options_get_type garrow_project_node_options_get_type;
alias c_garrow_project_node_options_new garrow_project_node_options_new;

// arrow.QuantileOptions

alias c_garrow_quantile_options_get_type garrow_quantile_options_get_type;
alias c_garrow_quantile_options_new garrow_quantile_options_new;
alias c_garrow_quantile_options_get_qs garrow_quantile_options_get_qs;
alias c_garrow_quantile_options_set_q garrow_quantile_options_set_q;
alias c_garrow_quantile_options_set_qs garrow_quantile_options_set_qs;

// arrow.RankOptions

alias c_garrow_rank_options_get_type garrow_rank_options_get_type;
alias c_garrow_rank_options_new garrow_rank_options_new;
alias c_garrow_rank_options_add_sort_key garrow_rank_options_add_sort_key;
alias c_garrow_rank_options_equal garrow_rank_options_equal;
alias c_garrow_rank_options_get_sort_keys garrow_rank_options_get_sort_keys;
alias c_garrow_rank_options_set_sort_keys garrow_rank_options_set_sort_keys;

// arrow.ReadOptions

alias c_garrow_read_options_get_type garrow_read_options_get_type;
alias c_garrow_read_options_new garrow_read_options_new;
alias c_garrow_read_options_get_included_fields garrow_read_options_get_included_fields;
alias c_garrow_read_options_set_included_fields garrow_read_options_set_included_fields;

// arrow.Readable

alias c_garrow_readable_get_type garrow_readable_get_type;
alias c_garrow_readable_read garrow_readable_read;
alias c_garrow_readable_read_bytes garrow_readable_read_bytes;

// arrow.RecordBatch

alias c_garrow_record_batch_get_type garrow_record_batch_get_type;
alias c_garrow_record_batch_new garrow_record_batch_new;
alias c_garrow_record_batch_import garrow_record_batch_import;
alias c_garrow_record_batch_add_column garrow_record_batch_add_column;
alias c_garrow_record_batch_equal garrow_record_batch_equal;
alias c_garrow_record_batch_equal_metadata garrow_record_batch_equal_metadata;
alias c_garrow_record_batch_export garrow_record_batch_export;
alias c_garrow_record_batch_filter garrow_record_batch_filter;
alias c_garrow_record_batch_get_column_data garrow_record_batch_get_column_data;
alias c_garrow_record_batch_get_column_name garrow_record_batch_get_column_name;
alias c_garrow_record_batch_get_n_columns garrow_record_batch_get_n_columns;
alias c_garrow_record_batch_get_n_rows garrow_record_batch_get_n_rows;
alias c_garrow_record_batch_get_schema garrow_record_batch_get_schema;
alias c_garrow_record_batch_remove_column garrow_record_batch_remove_column;
alias c_garrow_record_batch_serialize garrow_record_batch_serialize;
alias c_garrow_record_batch_slice garrow_record_batch_slice;
alias c_garrow_record_batch_sort_indices garrow_record_batch_sort_indices;
alias c_garrow_record_batch_take garrow_record_batch_take;
alias c_garrow_record_batch_to_string garrow_record_batch_to_string;

// arrow.RecordBatchBuilder

alias c_garrow_record_batch_builder_get_type garrow_record_batch_builder_get_type;
alias c_garrow_record_batch_builder_new garrow_record_batch_builder_new;
alias c_garrow_record_batch_builder_flush garrow_record_batch_builder_flush;
alias c_garrow_record_batch_builder_get_column_builder garrow_record_batch_builder_get_column_builder;
alias c_garrow_record_batch_builder_get_field garrow_record_batch_builder_get_field;
alias c_garrow_record_batch_builder_get_initial_capacity garrow_record_batch_builder_get_initial_capacity;
alias c_garrow_record_batch_builder_get_n_columns garrow_record_batch_builder_get_n_columns;
alias c_garrow_record_batch_builder_get_n_fields garrow_record_batch_builder_get_n_fields;
alias c_garrow_record_batch_builder_get_schema garrow_record_batch_builder_get_schema;
alias c_garrow_record_batch_builder_set_initial_capacity garrow_record_batch_builder_set_initial_capacity;

// arrow.RecordBatchDatum

alias c_garrow_record_batch_datum_get_type garrow_record_batch_datum_get_type;
alias c_garrow_record_batch_datum_new garrow_record_batch_datum_new;

// arrow.RecordBatchFileReader

alias c_garrow_record_batch_file_reader_get_type garrow_record_batch_file_reader_get_type;
alias c_garrow_record_batch_file_reader_new garrow_record_batch_file_reader_new;
alias c_garrow_record_batch_file_reader_get_n_record_batches garrow_record_batch_file_reader_get_n_record_batches;
alias c_garrow_record_batch_file_reader_get_record_batch garrow_record_batch_file_reader_get_record_batch;
alias c_garrow_record_batch_file_reader_get_schema garrow_record_batch_file_reader_get_schema;
alias c_garrow_record_batch_file_reader_get_version garrow_record_batch_file_reader_get_version;
alias c_garrow_record_batch_file_reader_read_record_batch garrow_record_batch_file_reader_read_record_batch;

// arrow.RecordBatchFileWriter

alias c_garrow_record_batch_file_writer_get_type garrow_record_batch_file_writer_get_type;
alias c_garrow_record_batch_file_writer_new garrow_record_batch_file_writer_new;

// arrow.RecordBatchIterator

alias c_garrow_record_batch_iterator_get_type garrow_record_batch_iterator_get_type;
alias c_garrow_record_batch_iterator_new garrow_record_batch_iterator_new;
alias c_garrow_record_batch_iterator_equal garrow_record_batch_iterator_equal;
alias c_garrow_record_batch_iterator_next garrow_record_batch_iterator_next;
alias c_garrow_record_batch_iterator_to_list garrow_record_batch_iterator_to_list;

// arrow.RecordBatchReader

alias c_garrow_record_batch_reader_get_type garrow_record_batch_reader_get_type;
alias c_garrow_record_batch_reader_new garrow_record_batch_reader_new;
alias c_garrow_record_batch_reader_import garrow_record_batch_reader_import;
alias c_garrow_record_batch_reader_export garrow_record_batch_reader_export;
alias c_garrow_record_batch_reader_get_next_record_batch garrow_record_batch_reader_get_next_record_batch;
alias c_garrow_record_batch_reader_get_schema garrow_record_batch_reader_get_schema;
alias c_garrow_record_batch_reader_get_sources garrow_record_batch_reader_get_sources;
alias c_garrow_record_batch_reader_read_all garrow_record_batch_reader_read_all;
alias c_garrow_record_batch_reader_read_next garrow_record_batch_reader_read_next;
alias c_garrow_record_batch_reader_read_next_record_batch garrow_record_batch_reader_read_next_record_batch;

// arrow.RecordBatchStreamReader

alias c_garrow_record_batch_stream_reader_get_type garrow_record_batch_stream_reader_get_type;
alias c_garrow_record_batch_stream_reader_new garrow_record_batch_stream_reader_new;

// arrow.RecordBatchStreamWriter

alias c_garrow_record_batch_stream_writer_get_type garrow_record_batch_stream_writer_get_type;
alias c_garrow_record_batch_stream_writer_new garrow_record_batch_stream_writer_new;

// arrow.RecordBatchWriter

alias c_garrow_record_batch_writer_get_type garrow_record_batch_writer_get_type;
alias c_garrow_record_batch_writer_close garrow_record_batch_writer_close;
alias c_garrow_record_batch_writer_is_closed garrow_record_batch_writer_is_closed;
alias c_garrow_record_batch_writer_write_record_batch garrow_record_batch_writer_write_record_batch;
alias c_garrow_record_batch_writer_write_table garrow_record_batch_writer_write_table;

// arrow.ResizableBuffer

alias c_garrow_resizable_buffer_get_type garrow_resizable_buffer_get_type;
alias c_garrow_resizable_buffer_new garrow_resizable_buffer_new;
alias c_garrow_resizable_buffer_reserve garrow_resizable_buffer_reserve;
alias c_garrow_resizable_buffer_resize garrow_resizable_buffer_resize;

// arrow.RoundOptions

alias c_garrow_round_options_get_type garrow_round_options_get_type;
alias c_garrow_round_options_new garrow_round_options_new;

// arrow.RoundToMultipleOptions

alias c_garrow_round_to_multiple_options_get_type garrow_round_to_multiple_options_get_type;
alias c_garrow_round_to_multiple_options_new garrow_round_to_multiple_options_new;

// arrow.RunEndEncodeOptions

alias c_garrow_run_end_encode_options_get_type garrow_run_end_encode_options_get_type;
alias c_garrow_run_end_encode_options_new garrow_run_end_encode_options_new;

// arrow.RunEndEncodedArray

alias c_garrow_run_end_encoded_array_get_type garrow_run_end_encoded_array_get_type;
alias c_garrow_run_end_encoded_array_new garrow_run_end_encoded_array_new;
alias c_garrow_run_end_encoded_array_decode garrow_run_end_encoded_array_decode;
alias c_garrow_run_end_encoded_array_find_physical_length garrow_run_end_encoded_array_find_physical_length;
alias c_garrow_run_end_encoded_array_find_physical_offset garrow_run_end_encoded_array_find_physical_offset;
alias c_garrow_run_end_encoded_array_get_logical_run_ends garrow_run_end_encoded_array_get_logical_run_ends;
alias c_garrow_run_end_encoded_array_get_logical_values garrow_run_end_encoded_array_get_logical_values;
alias c_garrow_run_end_encoded_array_get_run_ends garrow_run_end_encoded_array_get_run_ends;
alias c_garrow_run_end_encoded_array_get_values garrow_run_end_encoded_array_get_values;

// arrow.RunEndEncodedDataType

alias c_garrow_run_end_encoded_data_type_get_type garrow_run_end_encoded_data_type_get_type;
alias c_garrow_run_end_encoded_data_type_new garrow_run_end_encoded_data_type_new;
alias c_garrow_run_end_encoded_data_type_get_run_end_data_type garrow_run_end_encoded_data_type_get_run_end_data_type;
alias c_garrow_run_end_encoded_data_type_get_value_data_type garrow_run_end_encoded_data_type_get_value_data_type;

// arrow.S3FileSystem

alias c_garrow_s3_file_system_get_type garrow_s3_file_system_get_type;

// arrow.S3GlobalOptions

alias c_garrow_s3_global_options_get_type garrow_s3_global_options_get_type;
alias c_garrow_s3_global_options_new garrow_s3_global_options_new;

// arrow.Scalar

alias c_garrow_scalar_get_type garrow_scalar_get_type;
alias c_garrow_scalar_parse garrow_scalar_parse;
alias c_garrow_scalar_cast garrow_scalar_cast;
alias c_garrow_scalar_equal garrow_scalar_equal;
alias c_garrow_scalar_equal_options garrow_scalar_equal_options;
alias c_garrow_scalar_get_data_type garrow_scalar_get_data_type;
alias c_garrow_scalar_is_valid garrow_scalar_is_valid;
alias c_garrow_scalar_to_string garrow_scalar_to_string;

// arrow.ScalarAggregateOptions

alias c_garrow_scalar_aggregate_options_get_type garrow_scalar_aggregate_options_get_type;
alias c_garrow_scalar_aggregate_options_new garrow_scalar_aggregate_options_new;

// arrow.ScalarDatum

alias c_garrow_scalar_datum_get_type garrow_scalar_datum_get_type;
alias c_garrow_scalar_datum_new garrow_scalar_datum_new;

// arrow.Schema

alias c_garrow_schema_get_type garrow_schema_get_type;
alias c_garrow_schema_new garrow_schema_new;
alias c_garrow_schema_import garrow_schema_import;
alias c_garrow_schema_add_field garrow_schema_add_field;
alias c_garrow_schema_equal garrow_schema_equal;
alias c_garrow_schema_export garrow_schema_export;
alias c_garrow_schema_get_field garrow_schema_get_field;
alias c_garrow_schema_get_field_by_name garrow_schema_get_field_by_name;
alias c_garrow_schema_get_field_index garrow_schema_get_field_index;
alias c_garrow_schema_get_fields garrow_schema_get_fields;
alias c_garrow_schema_get_metadata garrow_schema_get_metadata;
alias c_garrow_schema_has_metadata garrow_schema_has_metadata;
alias c_garrow_schema_n_fields garrow_schema_n_fields;
alias c_garrow_schema_remove_field garrow_schema_remove_field;
alias c_garrow_schema_replace_field garrow_schema_replace_field;
alias c_garrow_schema_to_string garrow_schema_to_string;
alias c_garrow_schema_to_string_metadata garrow_schema_to_string_metadata;
alias c_garrow_schema_with_metadata garrow_schema_with_metadata;

// arrow.SeekableInputStream

alias c_garrow_seekable_input_stream_get_type garrow_seekable_input_stream_get_type;
alias c_garrow_seekable_input_stream_get_size garrow_seekable_input_stream_get_size;
alias c_garrow_seekable_input_stream_get_support_zero_copy garrow_seekable_input_stream_get_support_zero_copy;
alias c_garrow_seekable_input_stream_peek garrow_seekable_input_stream_peek;
alias c_garrow_seekable_input_stream_read_at garrow_seekable_input_stream_read_at;
alias c_garrow_seekable_input_stream_read_at_bytes garrow_seekable_input_stream_read_at_bytes;

// arrow.SetLookupOptions

alias c_garrow_set_lookup_options_get_type garrow_set_lookup_options_get_type;
alias c_garrow_set_lookup_options_new garrow_set_lookup_options_new;

// arrow.SinkNodeOptions

alias c_garrow_sink_node_options_get_type garrow_sink_node_options_get_type;
alias c_garrow_sink_node_options_new garrow_sink_node_options_new;
alias c_garrow_sink_node_options_get_reader garrow_sink_node_options_get_reader;

// arrow.SlowFileSystem

alias c_garrow_slow_file_system_get_type garrow_slow_file_system_get_type;
alias c_garrow_slow_file_system_new_average_latency garrow_slow_file_system_new_average_latency;
alias c_garrow_slow_file_system_new_average_latency_and_seed garrow_slow_file_system_new_average_latency_and_seed;

// arrow.SortKey

alias c_garrow_sort_key_get_type garrow_sort_key_get_type;
alias c_garrow_sort_key_new garrow_sort_key_new;
alias c_garrow_sort_key_equal garrow_sort_key_equal;

// arrow.SortOptions

alias c_garrow_sort_options_get_type garrow_sort_options_get_type;
alias c_garrow_sort_options_new garrow_sort_options_new;
alias c_garrow_sort_options_add_sort_key garrow_sort_options_add_sort_key;
alias c_garrow_sort_options_equal garrow_sort_options_equal;
alias c_garrow_sort_options_get_sort_keys garrow_sort_options_get_sort_keys;
alias c_garrow_sort_options_set_sort_keys garrow_sort_options_set_sort_keys;

// arrow.SourceNodeOptions

alias c_garrow_source_node_options_get_type garrow_source_node_options_get_type;
alias c_garrow_source_node_options_new_record_batch garrow_source_node_options_new_record_batch;
alias c_garrow_source_node_options_new_record_batch_reader garrow_source_node_options_new_record_batch_reader;
alias c_garrow_source_node_options_new_table garrow_source_node_options_new_table;

// arrow.SparseUnionArray

alias c_garrow_sparse_union_array_get_type garrow_sparse_union_array_get_type;
alias c_garrow_sparse_union_array_new garrow_sparse_union_array_new;
alias c_garrow_sparse_union_array_new_data_type garrow_sparse_union_array_new_data_type;

// arrow.SparseUnionArrayBuilder

alias c_garrow_sparse_union_array_builder_get_type garrow_sparse_union_array_builder_get_type;
alias c_garrow_sparse_union_array_builder_new garrow_sparse_union_array_builder_new;

// arrow.SparseUnionDataType

alias c_garrow_sparse_union_data_type_get_type garrow_sparse_union_data_type_get_type;
alias c_garrow_sparse_union_data_type_new garrow_sparse_union_data_type_new;

// arrow.SparseUnionScalar

alias c_garrow_sparse_union_scalar_get_type garrow_sparse_union_scalar_get_type;
alias c_garrow_sparse_union_scalar_new garrow_sparse_union_scalar_new;

// arrow.SplitPatternOptions

alias c_garrow_split_pattern_options_get_type garrow_split_pattern_options_get_type;
alias c_garrow_split_pattern_options_new garrow_split_pattern_options_new;

// arrow.StreamDecoder

alias c_garrow_stream_decoder_get_type garrow_stream_decoder_get_type;
alias c_garrow_stream_decoder_new garrow_stream_decoder_new;
alias c_garrow_stream_decoder_consume_buffer garrow_stream_decoder_consume_buffer;
alias c_garrow_stream_decoder_consume_bytes garrow_stream_decoder_consume_bytes;
alias c_garrow_stream_decoder_get_next_required_size garrow_stream_decoder_get_next_required_size;
alias c_garrow_stream_decoder_get_schema garrow_stream_decoder_get_schema;
alias c_garrow_stream_decoder_reset garrow_stream_decoder_reset;

// arrow.StreamListener

alias c_garrow_stream_listener_get_type garrow_stream_listener_get_type;
alias c_garrow_stream_listener_on_eos garrow_stream_listener_on_eos;
alias c_garrow_stream_listener_on_record_batch_decoded garrow_stream_listener_on_record_batch_decoded;
alias c_garrow_stream_listener_on_schema_decoded garrow_stream_listener_on_schema_decoded;

// arrow.StrftimeOptions

alias c_garrow_strftime_options_get_type garrow_strftime_options_get_type;
alias c_garrow_strftime_options_new garrow_strftime_options_new;

// arrow.StringArray

alias c_garrow_string_array_get_type garrow_string_array_get_type;
alias c_garrow_string_array_new garrow_string_array_new;
alias c_garrow_string_array_get_string garrow_string_array_get_string;

// arrow.StringArrayBuilder

alias c_garrow_string_array_builder_get_type garrow_string_array_builder_get_type;
alias c_garrow_string_array_builder_new garrow_string_array_builder_new;
alias c_garrow_string_array_builder_append garrow_string_array_builder_append;
alias c_garrow_string_array_builder_append_string garrow_string_array_builder_append_string;
alias c_garrow_string_array_builder_append_string_len garrow_string_array_builder_append_string_len;
alias c_garrow_string_array_builder_append_strings garrow_string_array_builder_append_strings;
alias c_garrow_string_array_builder_append_value garrow_string_array_builder_append_value;
alias c_garrow_string_array_builder_append_values garrow_string_array_builder_append_values;

// arrow.StringDataType

alias c_garrow_string_data_type_get_type garrow_string_data_type_get_type;
alias c_garrow_string_data_type_new garrow_string_data_type_new;

// arrow.StringDictionaryArrayBuilder

alias c_garrow_string_dictionary_array_builder_get_type garrow_string_dictionary_array_builder_get_type;
alias c_garrow_string_dictionary_array_builder_new garrow_string_dictionary_array_builder_new;
alias c_garrow_string_dictionary_array_builder_append_array garrow_string_dictionary_array_builder_append_array;
alias c_garrow_string_dictionary_array_builder_append_indices garrow_string_dictionary_array_builder_append_indices;
alias c_garrow_string_dictionary_array_builder_append_null garrow_string_dictionary_array_builder_append_null;
alias c_garrow_string_dictionary_array_builder_append_string garrow_string_dictionary_array_builder_append_string;
alias c_garrow_string_dictionary_array_builder_finish_delta garrow_string_dictionary_array_builder_finish_delta;
alias c_garrow_string_dictionary_array_builder_get_dictionary_length garrow_string_dictionary_array_builder_get_dictionary_length;
alias c_garrow_string_dictionary_array_builder_insert_memo_values garrow_string_dictionary_array_builder_insert_memo_values;
alias c_garrow_string_dictionary_array_builder_reset_full garrow_string_dictionary_array_builder_reset_full;

// arrow.StringScalar

alias c_garrow_string_scalar_get_type garrow_string_scalar_get_type;
alias c_garrow_string_scalar_new garrow_string_scalar_new;

// arrow.StrptimeOptions

alias c_garrow_strptime_options_get_type garrow_strptime_options_get_type;
alias c_garrow_strptime_options_new garrow_strptime_options_new;

// arrow.StrptimeTimestampParser

alias c_garrow_strptime_timestamp_parser_get_type garrow_strptime_timestamp_parser_get_type;
alias c_garrow_strptime_timestamp_parser_new garrow_strptime_timestamp_parser_new;
alias c_garrow_strptime_timestamp_parser_get_format garrow_strptime_timestamp_parser_get_format;

// arrow.StructArray

alias c_garrow_struct_array_get_type garrow_struct_array_get_type;
alias c_garrow_struct_array_new garrow_struct_array_new;
alias c_garrow_struct_array_flatten garrow_struct_array_flatten;
alias c_garrow_struct_array_get_field garrow_struct_array_get_field;
alias c_garrow_struct_array_get_fields garrow_struct_array_get_fields;

// arrow.StructArrayBuilder

alias c_garrow_struct_array_builder_get_type garrow_struct_array_builder_get_type;
alias c_garrow_struct_array_builder_new garrow_struct_array_builder_new;
alias c_garrow_struct_array_builder_append garrow_struct_array_builder_append;
alias c_garrow_struct_array_builder_append_null garrow_struct_array_builder_append_null;
alias c_garrow_struct_array_builder_append_value garrow_struct_array_builder_append_value;
alias c_garrow_struct_array_builder_get_field_builder garrow_struct_array_builder_get_field_builder;
alias c_garrow_struct_array_builder_get_field_builders garrow_struct_array_builder_get_field_builders;

// arrow.StructDataType

alias c_garrow_struct_data_type_get_type garrow_struct_data_type_get_type;
alias c_garrow_struct_data_type_new garrow_struct_data_type_new;
alias c_garrow_struct_data_type_get_field garrow_struct_data_type_get_field;
alias c_garrow_struct_data_type_get_field_by_name garrow_struct_data_type_get_field_by_name;
alias c_garrow_struct_data_type_get_field_index garrow_struct_data_type_get_field_index;
alias c_garrow_struct_data_type_get_fields garrow_struct_data_type_get_fields;
alias c_garrow_struct_data_type_get_n_fields garrow_struct_data_type_get_n_fields;

// arrow.StructFieldOptions

alias c_garrow_struct_field_options_get_type garrow_struct_field_options_get_type;
alias c_garrow_struct_field_options_new garrow_struct_field_options_new;
alias c_garrow_struct_field_options_set_field_ref garrow_struct_field_options_set_field_ref;

// arrow.StructScalar

alias c_garrow_struct_scalar_get_type garrow_struct_scalar_get_type;
alias c_garrow_struct_scalar_new garrow_struct_scalar_new;
alias c_garrow_struct_scalar_get_value garrow_struct_scalar_get_value;

// arrow.SubTreeFileSystem

alias c_garrow_sub_tree_file_system_get_type garrow_sub_tree_file_system_get_type;
alias c_garrow_sub_tree_file_system_new garrow_sub_tree_file_system_new;

// arrow.Table

alias c_garrow_table_get_type garrow_table_get_type;
alias c_garrow_table_new_arrays garrow_table_new_arrays;
alias c_garrow_table_new_chunked_arrays garrow_table_new_chunked_arrays;
alias c_garrow_table_new_record_batches garrow_table_new_record_batches;
alias c_garrow_table_new_values garrow_table_new_values;
alias c_garrow_table_add_column garrow_table_add_column;
alias c_garrow_table_combine_chunks garrow_table_combine_chunks;
alias c_garrow_table_concatenate garrow_table_concatenate;
alias c_garrow_table_equal garrow_table_equal;
alias c_garrow_table_equal_metadata garrow_table_equal_metadata;
alias c_garrow_table_filter garrow_table_filter;
alias c_garrow_table_filter_chunked_array garrow_table_filter_chunked_array;
alias c_garrow_table_get_column_data garrow_table_get_column_data;
alias c_garrow_table_get_n_columns garrow_table_get_n_columns;
alias c_garrow_table_get_n_rows garrow_table_get_n_rows;
alias c_garrow_table_get_schema garrow_table_get_schema;
alias c_garrow_table_remove_column garrow_table_remove_column;
alias c_garrow_table_replace_column garrow_table_replace_column;
alias c_garrow_table_slice garrow_table_slice;
alias c_garrow_table_sort_indices garrow_table_sort_indices;
alias c_garrow_table_take garrow_table_take;
alias c_garrow_table_take_chunked_array garrow_table_take_chunked_array;
alias c_garrow_table_to_string garrow_table_to_string;
alias c_garrow_table_write_as_feather garrow_table_write_as_feather;

// arrow.TableBatchReader

alias c_garrow_table_batch_reader_get_type garrow_table_batch_reader_get_type;
alias c_garrow_table_batch_reader_new garrow_table_batch_reader_new;
alias c_garrow_table_batch_reader_set_max_chunk_size garrow_table_batch_reader_set_max_chunk_size;

// arrow.TableConcatenateOptions

alias c_garrow_table_concatenate_options_get_type garrow_table_concatenate_options_get_type;
alias c_garrow_table_concatenate_options_new garrow_table_concatenate_options_new;

// arrow.TableDatum

alias c_garrow_table_datum_get_type garrow_table_datum_get_type;
alias c_garrow_table_datum_new garrow_table_datum_new;

// arrow.TakeOptions

alias c_garrow_take_options_get_type garrow_take_options_get_type;
alias c_garrow_take_options_new garrow_take_options_new;

// arrow.TemporalDataType

alias c_garrow_temporal_data_type_get_type garrow_temporal_data_type_get_type;

// arrow.Tensor

alias c_garrow_tensor_get_type garrow_tensor_get_type;
alias c_garrow_tensor_new garrow_tensor_new;
alias c_garrow_tensor_equal garrow_tensor_equal;
alias c_garrow_tensor_get_buffer garrow_tensor_get_buffer;
alias c_garrow_tensor_get_dimension_name garrow_tensor_get_dimension_name;
alias c_garrow_tensor_get_n_dimensions garrow_tensor_get_n_dimensions;
alias c_garrow_tensor_get_shape garrow_tensor_get_shape;
alias c_garrow_tensor_get_size garrow_tensor_get_size;
alias c_garrow_tensor_get_strides garrow_tensor_get_strides;
alias c_garrow_tensor_get_value_data_type garrow_tensor_get_value_data_type;
alias c_garrow_tensor_get_value_type garrow_tensor_get_value_type;
alias c_garrow_tensor_is_column_major garrow_tensor_is_column_major;
alias c_garrow_tensor_is_contiguous garrow_tensor_is_contiguous;
alias c_garrow_tensor_is_mutable garrow_tensor_is_mutable;
alias c_garrow_tensor_is_row_major garrow_tensor_is_row_major;

// arrow.Time32Array

alias c_garrow_time32_array_get_type garrow_time32_array_get_type;
alias c_garrow_time32_array_new garrow_time32_array_new;
alias c_garrow_time32_array_get_value garrow_time32_array_get_value;
alias c_garrow_time32_array_get_values garrow_time32_array_get_values;

// arrow.Time32ArrayBuilder

alias c_garrow_time32_array_builder_get_type garrow_time32_array_builder_get_type;
alias c_garrow_time32_array_builder_new garrow_time32_array_builder_new;
alias c_garrow_time32_array_builder_append garrow_time32_array_builder_append;
alias c_garrow_time32_array_builder_append_null garrow_time32_array_builder_append_null;
alias c_garrow_time32_array_builder_append_nulls garrow_time32_array_builder_append_nulls;
alias c_garrow_time32_array_builder_append_value garrow_time32_array_builder_append_value;
alias c_garrow_time32_array_builder_append_values garrow_time32_array_builder_append_values;

// arrow.Time32DataType

alias c_garrow_time32_data_type_get_type garrow_time32_data_type_get_type;
alias c_garrow_time32_data_type_new garrow_time32_data_type_new;

// arrow.Time32Scalar

alias c_garrow_time32_scalar_get_type garrow_time32_scalar_get_type;
alias c_garrow_time32_scalar_new garrow_time32_scalar_new;
alias c_garrow_time32_scalar_get_value garrow_time32_scalar_get_value;

// arrow.Time64Array

alias c_garrow_time64_array_get_type garrow_time64_array_get_type;
alias c_garrow_time64_array_new garrow_time64_array_new;
alias c_garrow_time64_array_get_value garrow_time64_array_get_value;
alias c_garrow_time64_array_get_values garrow_time64_array_get_values;

// arrow.Time64ArrayBuilder

alias c_garrow_time64_array_builder_get_type garrow_time64_array_builder_get_type;
alias c_garrow_time64_array_builder_new garrow_time64_array_builder_new;
alias c_garrow_time64_array_builder_append garrow_time64_array_builder_append;
alias c_garrow_time64_array_builder_append_null garrow_time64_array_builder_append_null;
alias c_garrow_time64_array_builder_append_nulls garrow_time64_array_builder_append_nulls;
alias c_garrow_time64_array_builder_append_value garrow_time64_array_builder_append_value;
alias c_garrow_time64_array_builder_append_values garrow_time64_array_builder_append_values;

// arrow.Time64DataType

alias c_garrow_time64_data_type_get_type garrow_time64_data_type_get_type;
alias c_garrow_time64_data_type_new garrow_time64_data_type_new;

// arrow.Time64Scalar

alias c_garrow_time64_scalar_get_type garrow_time64_scalar_get_type;
alias c_garrow_time64_scalar_new garrow_time64_scalar_new;
alias c_garrow_time64_scalar_get_value garrow_time64_scalar_get_value;

// arrow.TimeDataType

alias c_garrow_time_data_type_get_type garrow_time_data_type_get_type;
alias c_garrow_time_data_type_get_unit garrow_time_data_type_get_unit;

// arrow.TimestampArray

alias c_garrow_timestamp_array_get_type garrow_timestamp_array_get_type;
alias c_garrow_timestamp_array_new garrow_timestamp_array_new;
alias c_garrow_timestamp_array_get_value garrow_timestamp_array_get_value;
alias c_garrow_timestamp_array_get_values garrow_timestamp_array_get_values;

// arrow.TimestampArrayBuilder

alias c_garrow_timestamp_array_builder_get_type garrow_timestamp_array_builder_get_type;
alias c_garrow_timestamp_array_builder_new garrow_timestamp_array_builder_new;
alias c_garrow_timestamp_array_builder_append garrow_timestamp_array_builder_append;
alias c_garrow_timestamp_array_builder_append_null garrow_timestamp_array_builder_append_null;
alias c_garrow_timestamp_array_builder_append_nulls garrow_timestamp_array_builder_append_nulls;
alias c_garrow_timestamp_array_builder_append_value garrow_timestamp_array_builder_append_value;
alias c_garrow_timestamp_array_builder_append_values garrow_timestamp_array_builder_append_values;

// arrow.TimestampDataType

alias c_garrow_timestamp_data_type_get_type garrow_timestamp_data_type_get_type;
alias c_garrow_timestamp_data_type_new garrow_timestamp_data_type_new;
alias c_garrow_timestamp_data_type_get_unit garrow_timestamp_data_type_get_unit;

// arrow.TimestampParser

alias c_garrow_timestamp_parser_get_type garrow_timestamp_parser_get_type;
alias c_garrow_timestamp_parser_get_kind garrow_timestamp_parser_get_kind;

// arrow.TimestampScalar

alias c_garrow_timestamp_scalar_get_type garrow_timestamp_scalar_get_type;
alias c_garrow_timestamp_scalar_new garrow_timestamp_scalar_new;
alias c_garrow_timestamp_scalar_get_value garrow_timestamp_scalar_get_value;

// arrow.UInt16Array

alias c_garrow_uint16_array_get_type garrow_uint16_array_get_type;
alias c_garrow_uint16_array_new garrow_uint16_array_new;
alias c_garrow_uint16_array_get_value garrow_uint16_array_get_value;
alias c_garrow_uint16_array_get_values garrow_uint16_array_get_values;
alias c_garrow_uint16_array_sum garrow_uint16_array_sum;

// arrow.UInt16ArrayBuilder

alias c_garrow_uint16_array_builder_get_type garrow_uint16_array_builder_get_type;
alias c_garrow_uint16_array_builder_new garrow_uint16_array_builder_new;
alias c_garrow_uint16_array_builder_append garrow_uint16_array_builder_append;
alias c_garrow_uint16_array_builder_append_null garrow_uint16_array_builder_append_null;
alias c_garrow_uint16_array_builder_append_nulls garrow_uint16_array_builder_append_nulls;
alias c_garrow_uint16_array_builder_append_value garrow_uint16_array_builder_append_value;
alias c_garrow_uint16_array_builder_append_values garrow_uint16_array_builder_append_values;

// arrow.UInt16DataType

alias c_garrow_uint16_data_type_get_type garrow_uint16_data_type_get_type;
alias c_garrow_uint16_data_type_new garrow_uint16_data_type_new;

// arrow.UInt16Scalar

alias c_garrow_uint16_scalar_get_type garrow_uint16_scalar_get_type;
alias c_garrow_uint16_scalar_new garrow_uint16_scalar_new;
alias c_garrow_uint16_scalar_get_value garrow_uint16_scalar_get_value;

// arrow.UInt32Array

alias c_garrow_uint32_array_get_type garrow_uint32_array_get_type;
alias c_garrow_uint32_array_new garrow_uint32_array_new;
alias c_garrow_uint32_array_get_value garrow_uint32_array_get_value;
alias c_garrow_uint32_array_get_values garrow_uint32_array_get_values;
alias c_garrow_uint32_array_sum garrow_uint32_array_sum;

// arrow.UInt32ArrayBuilder

alias c_garrow_uint32_array_builder_get_type garrow_uint32_array_builder_get_type;
alias c_garrow_uint32_array_builder_new garrow_uint32_array_builder_new;
alias c_garrow_uint32_array_builder_append garrow_uint32_array_builder_append;
alias c_garrow_uint32_array_builder_append_null garrow_uint32_array_builder_append_null;
alias c_garrow_uint32_array_builder_append_nulls garrow_uint32_array_builder_append_nulls;
alias c_garrow_uint32_array_builder_append_value garrow_uint32_array_builder_append_value;
alias c_garrow_uint32_array_builder_append_values garrow_uint32_array_builder_append_values;

// arrow.UInt32DataType

alias c_garrow_uint32_data_type_get_type garrow_uint32_data_type_get_type;
alias c_garrow_uint32_data_type_new garrow_uint32_data_type_new;

// arrow.UInt32Scalar

alias c_garrow_uint32_scalar_get_type garrow_uint32_scalar_get_type;
alias c_garrow_uint32_scalar_new garrow_uint32_scalar_new;
alias c_garrow_uint32_scalar_get_value garrow_uint32_scalar_get_value;

// arrow.UInt64Array

alias c_garrow_uint64_array_get_type garrow_uint64_array_get_type;
alias c_garrow_uint64_array_new garrow_uint64_array_new;
alias c_garrow_uint64_array_get_value garrow_uint64_array_get_value;
alias c_garrow_uint64_array_get_values garrow_uint64_array_get_values;
alias c_garrow_uint64_array_sum garrow_uint64_array_sum;

// arrow.UInt64ArrayBuilder

alias c_garrow_uint64_array_builder_get_type garrow_uint64_array_builder_get_type;
alias c_garrow_uint64_array_builder_new garrow_uint64_array_builder_new;
alias c_garrow_uint64_array_builder_append garrow_uint64_array_builder_append;
alias c_garrow_uint64_array_builder_append_null garrow_uint64_array_builder_append_null;
alias c_garrow_uint64_array_builder_append_nulls garrow_uint64_array_builder_append_nulls;
alias c_garrow_uint64_array_builder_append_value garrow_uint64_array_builder_append_value;
alias c_garrow_uint64_array_builder_append_values garrow_uint64_array_builder_append_values;

// arrow.UInt64DataType

alias c_garrow_uint64_data_type_get_type garrow_uint64_data_type_get_type;
alias c_garrow_uint64_data_type_new garrow_uint64_data_type_new;

// arrow.UInt64Scalar

alias c_garrow_uint64_scalar_get_type garrow_uint64_scalar_get_type;
alias c_garrow_uint64_scalar_new garrow_uint64_scalar_new;
alias c_garrow_uint64_scalar_get_value garrow_uint64_scalar_get_value;

// arrow.UInt8Array

alias c_garrow_uint8_array_get_type garrow_uint8_array_get_type;
alias c_garrow_uint8_array_new garrow_uint8_array_new;
alias c_garrow_uint8_array_get_value garrow_uint8_array_get_value;
alias c_garrow_uint8_array_get_values garrow_uint8_array_get_values;
alias c_garrow_uint8_array_sum garrow_uint8_array_sum;

// arrow.UInt8ArrayBuilder

alias c_garrow_uint8_array_builder_get_type garrow_uint8_array_builder_get_type;
alias c_garrow_uint8_array_builder_new garrow_uint8_array_builder_new;
alias c_garrow_uint8_array_builder_append garrow_uint8_array_builder_append;
alias c_garrow_uint8_array_builder_append_null garrow_uint8_array_builder_append_null;
alias c_garrow_uint8_array_builder_append_nulls garrow_uint8_array_builder_append_nulls;
alias c_garrow_uint8_array_builder_append_value garrow_uint8_array_builder_append_value;
alias c_garrow_uint8_array_builder_append_values garrow_uint8_array_builder_append_values;

// arrow.UInt8DataType

alias c_garrow_uint8_data_type_get_type garrow_uint8_data_type_get_type;
alias c_garrow_uint8_data_type_new garrow_uint8_data_type_new;

// arrow.UInt8Scalar

alias c_garrow_uint8_scalar_get_type garrow_uint8_scalar_get_type;
alias c_garrow_uint8_scalar_new garrow_uint8_scalar_new;
alias c_garrow_uint8_scalar_get_value garrow_uint8_scalar_get_value;

// arrow.UIntArrayBuilder

alias c_garrow_uint_array_builder_get_type garrow_uint_array_builder_get_type;
alias c_garrow_uint_array_builder_new garrow_uint_array_builder_new;
alias c_garrow_uint_array_builder_append garrow_uint_array_builder_append;
alias c_garrow_uint_array_builder_append_null garrow_uint_array_builder_append_null;
alias c_garrow_uint_array_builder_append_nulls garrow_uint_array_builder_append_nulls;
alias c_garrow_uint_array_builder_append_value garrow_uint_array_builder_append_value;
alias c_garrow_uint_array_builder_append_values garrow_uint_array_builder_append_values;

// arrow.UTF8NormalizeOptions

alias c_garrow_utf8_normalize_options_get_type garrow_utf8_normalize_options_get_type;
alias c_garrow_utf8_normalize_options_new garrow_utf8_normalize_options_new;

// arrow.UnionArray

alias c_garrow_union_array_get_type garrow_union_array_get_type;
alias c_garrow_union_array_get_child_id garrow_union_array_get_child_id;
alias c_garrow_union_array_get_field garrow_union_array_get_field;
alias c_garrow_union_array_get_type_code garrow_union_array_get_type_code;

// arrow.UnionArrayBuilder

alias c_garrow_union_array_builder_get_type garrow_union_array_builder_get_type;
alias c_garrow_union_array_builder_append_child garrow_union_array_builder_append_child;
alias c_garrow_union_array_builder_append_value garrow_union_array_builder_append_value;

// arrow.UnionDataType

alias c_garrow_union_data_type_get_type garrow_union_data_type_get_type;
alias c_garrow_union_data_type_get_field garrow_union_data_type_get_field;
alias c_garrow_union_data_type_get_fields garrow_union_data_type_get_fields;
alias c_garrow_union_data_type_get_n_fields garrow_union_data_type_get_n_fields;
alias c_garrow_union_data_type_get_type_codes garrow_union_data_type_get_type_codes;

// arrow.UnionScalar

alias c_garrow_union_scalar_get_type garrow_union_scalar_get_type;
alias c_garrow_union_scalar_get_type_code garrow_union_scalar_get_type_code;
alias c_garrow_union_scalar_get_value garrow_union_scalar_get_value;

// arrow.VarianceOptions

alias c_garrow_variance_options_get_type garrow_variance_options_get_type;
alias c_garrow_variance_options_new garrow_variance_options_new;

// arrow.Writable

alias c_garrow_writable_get_type garrow_writable_get_type;
alias c_garrow_writable_flush garrow_writable_flush;
alias c_garrow_writable_write garrow_writable_write;

// arrow.WritableFile

alias c_garrow_writable_file_get_type garrow_writable_file_get_type;
alias c_garrow_writable_file_write_at garrow_writable_file_write_at;

// arrow.WriteOptions

alias c_garrow_write_options_get_type garrow_write_options_get_type;
alias c_garrow_write_options_new garrow_write_options_new;
