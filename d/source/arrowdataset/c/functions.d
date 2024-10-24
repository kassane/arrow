module arrowdataset.c.functions;

import std.stdio;
import arrowdataset.c.types;
import gtkd.Loader;

version (Windows)
	static immutable LIBRARY_ARROWDATASET = ["glib-1800.dll;g.dll;g.dll"];
else version (OSX)
	static immutable LIBRARY_ARROWDATASET = ["glib.1800.dylib"];
else
	static immutable LIBRARY_ARROWDATASET = ["libarrow-dataset-glib.so.1800"];

shared static this()
{
	// arrowdataset.CSVFileFormat

	Linker.link(gadataset_csv_file_format_get_type, "gadataset_csv_file_format_get_type", LIBRARY_ARROWDATASET);
	Linker.link(gadataset_csv_file_format_new, "gadataset_csv_file_format_new", LIBRARY_ARROWDATASET);

	// arrowdataset.Dataset

	Linker.link(gadataset_dataset_get_type, "gadataset_dataset_get_type", LIBRARY_ARROWDATASET);
	Linker.link(gadataset_dataset_begin_scan, "gadataset_dataset_begin_scan", LIBRARY_ARROWDATASET);
	Linker.link(gadataset_dataset_get_type_name, "gadataset_dataset_get_type_name", LIBRARY_ARROWDATASET);
	Linker.link(gadataset_dataset_to_record_batch_reader, "gadataset_dataset_to_record_batch_reader", LIBRARY_ARROWDATASET);
	Linker.link(gadataset_dataset_to_table, "gadataset_dataset_to_table", LIBRARY_ARROWDATASET);

	// arrowdataset.DatasetFactory

	Linker.link(gadataset_dataset_factory_get_type, "gadataset_dataset_factory_get_type", LIBRARY_ARROWDATASET);
	Linker.link(gadataset_dataset_factory_finish, "gadataset_dataset_factory_finish", LIBRARY_ARROWDATASET);

	// arrowdataset.DirectoryPartitioning

	Linker.link(gadataset_directory_partitioning_get_type, "gadataset_directory_partitioning_get_type", LIBRARY_ARROWDATASET);
	Linker.link(gadataset_directory_partitioning_new, "gadataset_directory_partitioning_new", LIBRARY_ARROWDATASET);

	// arrowdataset.FileFormat

	Linker.link(gadataset_file_format_get_type, "gadataset_file_format_get_type", LIBRARY_ARROWDATASET);
	Linker.link(gadataset_file_format_equal, "gadataset_file_format_equal", LIBRARY_ARROWDATASET);
	Linker.link(gadataset_file_format_get_default_write_options, "gadataset_file_format_get_default_write_options", LIBRARY_ARROWDATASET);
	Linker.link(gadataset_file_format_get_type_name, "gadataset_file_format_get_type_name", LIBRARY_ARROWDATASET);
	Linker.link(gadataset_file_format_open_writer, "gadataset_file_format_open_writer", LIBRARY_ARROWDATASET);

	// arrowdataset.FileSystemDataset

	Linker.link(gadataset_file_system_dataset_get_type, "gadataset_file_system_dataset_get_type", LIBRARY_ARROWDATASET);
	Linker.link(gadataset_file_system_dataset_write_scanner, "gadataset_file_system_dataset_write_scanner", LIBRARY_ARROWDATASET);

	// arrowdataset.FileSystemDatasetFactory

	Linker.link(gadataset_file_system_dataset_factory_get_type, "gadataset_file_system_dataset_factory_get_type", LIBRARY_ARROWDATASET);
	Linker.link(gadataset_file_system_dataset_factory_new, "gadataset_file_system_dataset_factory_new", LIBRARY_ARROWDATASET);
	Linker.link(gadataset_file_system_dataset_factory_add_path, "gadataset_file_system_dataset_factory_add_path", LIBRARY_ARROWDATASET);
	Linker.link(gadataset_file_system_dataset_factory_finish, "gadataset_file_system_dataset_factory_finish", LIBRARY_ARROWDATASET);
	Linker.link(gadataset_file_system_dataset_factory_set_file_system, "gadataset_file_system_dataset_factory_set_file_system", LIBRARY_ARROWDATASET);
	Linker.link(gadataset_file_system_dataset_factory_set_file_system_uri, "gadataset_file_system_dataset_factory_set_file_system_uri", LIBRARY_ARROWDATASET);

	// arrowdataset.FileSystemDatasetWriteOptions

	Linker.link(gadataset_file_system_dataset_write_options_get_type, "gadataset_file_system_dataset_write_options_get_type", LIBRARY_ARROWDATASET);
	Linker.link(gadataset_file_system_dataset_write_options_new, "gadataset_file_system_dataset_write_options_new", LIBRARY_ARROWDATASET);

	// arrowdataset.FileWriteOptions

	Linker.link(gadataset_file_write_options_get_type, "gadataset_file_write_options_get_type", LIBRARY_ARROWDATASET);

	// arrowdataset.FileWriter

	Linker.link(gadataset_file_writer_get_type, "gadataset_file_writer_get_type", LIBRARY_ARROWDATASET);
	Linker.link(gadataset_file_writer_finish, "gadataset_file_writer_finish", LIBRARY_ARROWDATASET);
	Linker.link(gadataset_file_writer_write_record_batch, "gadataset_file_writer_write_record_batch", LIBRARY_ARROWDATASET);
	Linker.link(gadataset_file_writer_write_record_batch_reader, "gadataset_file_writer_write_record_batch_reader", LIBRARY_ARROWDATASET);

	// arrowdataset.FinishOptions

	Linker.link(gadataset_finish_options_get_type, "gadataset_finish_options_get_type", LIBRARY_ARROWDATASET);
	Linker.link(gadataset_finish_options_new, "gadataset_finish_options_new", LIBRARY_ARROWDATASET);

	// arrowdataset.Fragment

	Linker.link(gadataset_fragment_get_type, "gadataset_fragment_get_type", LIBRARY_ARROWDATASET);

	// arrowdataset.HivePartitioning

	Linker.link(gadataset_hive_partitioning_get_type, "gadataset_hive_partitioning_get_type", LIBRARY_ARROWDATASET);
	Linker.link(gadataset_hive_partitioning_new, "gadataset_hive_partitioning_new", LIBRARY_ARROWDATASET);
	Linker.link(gadataset_hive_partitioning_get_null_fallback, "gadataset_hive_partitioning_get_null_fallback", LIBRARY_ARROWDATASET);

	// arrowdataset.HivePartitioningOptions

	Linker.link(gadataset_hive_partitioning_options_get_type, "gadataset_hive_partitioning_options_get_type", LIBRARY_ARROWDATASET);
	Linker.link(gadataset_hive_partitioning_options_new, "gadataset_hive_partitioning_options_new", LIBRARY_ARROWDATASET);

	// arrowdataset.IPCFileFormat

	Linker.link(gadataset_ipc_file_format_get_type, "gadataset_ipc_file_format_get_type", LIBRARY_ARROWDATASET);
	Linker.link(gadataset_ipc_file_format_new, "gadataset_ipc_file_format_new", LIBRARY_ARROWDATASET);

	// arrowdataset.InMemoryFragment

	Linker.link(gadataset_in_memory_fragment_get_type, "gadataset_in_memory_fragment_get_type", LIBRARY_ARROWDATASET);
	Linker.link(gadataset_in_memory_fragment_new, "gadataset_in_memory_fragment_new", LIBRARY_ARROWDATASET);

	// arrowdataset.KeyValuePartitioning

	Linker.link(gadataset_key_value_partitioning_get_type, "gadataset_key_value_partitioning_get_type", LIBRARY_ARROWDATASET);

	// arrowdataset.KeyValuePartitioningOptions

	Linker.link(gadataset_key_value_partitioning_options_get_type, "gadataset_key_value_partitioning_options_get_type", LIBRARY_ARROWDATASET);
	Linker.link(gadataset_key_value_partitioning_options_new, "gadataset_key_value_partitioning_options_new", LIBRARY_ARROWDATASET);

	// arrowdataset.ParquetFileFormat

	Linker.link(gadataset_parquet_file_format_get_type, "gadataset_parquet_file_format_get_type", LIBRARY_ARROWDATASET);
	Linker.link(gadataset_parquet_file_format_new, "gadataset_parquet_file_format_new", LIBRARY_ARROWDATASET);

	// arrowdataset.Partitioning

	Linker.link(gadataset_partitioning_get_type, "gadataset_partitioning_get_type", LIBRARY_ARROWDATASET);
	Linker.link(gadataset_partitioning_create_default, "gadataset_partitioning_create_default", LIBRARY_ARROWDATASET);
	Linker.link(gadataset_partitioning_get_type_name, "gadataset_partitioning_get_type_name", LIBRARY_ARROWDATASET);

	// arrowdataset.PartitioningFactoryOptions

	Linker.link(gadataset_partitioning_factory_options_get_type, "gadataset_partitioning_factory_options_get_type", LIBRARY_ARROWDATASET);
	Linker.link(gadataset_partitioning_factory_options_new, "gadataset_partitioning_factory_options_new", LIBRARY_ARROWDATASET);

	// arrowdataset.Scanner

	Linker.link(gadataset_scanner_get_type, "gadataset_scanner_get_type", LIBRARY_ARROWDATASET);
	Linker.link(gadataset_scanner_to_record_batch_reader, "gadataset_scanner_to_record_batch_reader", LIBRARY_ARROWDATASET);
	Linker.link(gadataset_scanner_to_table, "gadataset_scanner_to_table", LIBRARY_ARROWDATASET);

	// arrowdataset.ScannerBuilder

	Linker.link(gadataset_scanner_builder_get_type, "gadataset_scanner_builder_get_type", LIBRARY_ARROWDATASET);
	Linker.link(gadataset_scanner_builder_new, "gadataset_scanner_builder_new", LIBRARY_ARROWDATASET);
	Linker.link(gadataset_scanner_builder_new_record_batch_reader, "gadataset_scanner_builder_new_record_batch_reader", LIBRARY_ARROWDATASET);
	Linker.link(gadataset_scanner_builder_finish, "gadataset_scanner_builder_finish", LIBRARY_ARROWDATASET);
	Linker.link(gadataset_scanner_builder_set_filter, "gadataset_scanner_builder_set_filter", LIBRARY_ARROWDATASET);
}

__gshared extern(C)
{

	// arrowdataset.CSVFileFormat

	GType function() c_gadataset_csv_file_format_get_type;
	GADatasetCSVFileFormat* function() c_gadataset_csv_file_format_new;

	// arrowdataset.Dataset

	GType function() c_gadataset_dataset_get_type;
	GADatasetScannerBuilder* function(GADatasetDataset* dataset, GError** err) c_gadataset_dataset_begin_scan;
	char* function(GADatasetDataset* dataset) c_gadataset_dataset_get_type_name;
	GArrowRecordBatchReader* function(GADatasetDataset* dataset, GError** err) c_gadataset_dataset_to_record_batch_reader;
	GArrowTable* function(GADatasetDataset* dataset, GError** err) c_gadataset_dataset_to_table;

	// arrowdataset.DatasetFactory

	GType function() c_gadataset_dataset_factory_get_type;
	GADatasetDataset* function(GADatasetDatasetFactory* factory, GADatasetFinishOptions* options, GError** err) c_gadataset_dataset_factory_finish;

	// arrowdataset.DirectoryPartitioning

	GType function() c_gadataset_directory_partitioning_get_type;
	GADatasetDirectoryPartitioning* function(GArrowSchema* schema, GList* dictionaries, GADatasetKeyValuePartitioningOptions* options, GError** err) c_gadataset_directory_partitioning_new;

	// arrowdataset.FileFormat

	GType function() c_gadataset_file_format_get_type;
	int function(GADatasetFileFormat* format, GADatasetFileFormat* otherFormat) c_gadataset_file_format_equal;
	GADatasetFileWriteOptions* function(GADatasetFileFormat* format) c_gadataset_file_format_get_default_write_options;
	char* function(GADatasetFileFormat* format) c_gadataset_file_format_get_type_name;
	GADatasetFileWriter* function(GADatasetFileFormat* format, GArrowOutputStream* destination, GArrowFileSystem* fileSystem, const(char)* path, GArrowSchema* schema, GADatasetFileWriteOptions* options, GError** err) c_gadataset_file_format_open_writer;

	// arrowdataset.FileSystemDataset

	GType function() c_gadataset_file_system_dataset_get_type;
	int function(GADatasetScanner* scanner, GADatasetFileSystemDatasetWriteOptions* options, GError** err) c_gadataset_file_system_dataset_write_scanner;

	// arrowdataset.FileSystemDatasetFactory

	GType function() c_gadataset_file_system_dataset_factory_get_type;
	GADatasetFileSystemDatasetFactory* function(GADatasetFileFormat* fileFormat) c_gadataset_file_system_dataset_factory_new;
	int function(GADatasetFileSystemDatasetFactory* factory, const(char)* path, GError** err) c_gadataset_file_system_dataset_factory_add_path;
	GADatasetFileSystemDataset* function(GADatasetFileSystemDatasetFactory* factory, GADatasetFinishOptions* options, GError** err) c_gadataset_file_system_dataset_factory_finish;
	int function(GADatasetFileSystemDatasetFactory* factory, GArrowFileSystem* fileSystem, GError** err) c_gadataset_file_system_dataset_factory_set_file_system;
	int function(GADatasetFileSystemDatasetFactory* factory, const(char)* uri, GError** err) c_gadataset_file_system_dataset_factory_set_file_system_uri;

	// arrowdataset.FileSystemDatasetWriteOptions

	GType function() c_gadataset_file_system_dataset_write_options_get_type;
	GADatasetFileSystemDatasetWriteOptions* function() c_gadataset_file_system_dataset_write_options_new;

	// arrowdataset.FileWriteOptions

	GType function() c_gadataset_file_write_options_get_type;

	// arrowdataset.FileWriter

	GType function() c_gadataset_file_writer_get_type;
	int function(GADatasetFileWriter* writer, GError** err) c_gadataset_file_writer_finish;
	int function(GADatasetFileWriter* writer, GArrowRecordBatch* recordBatch, GError** err) c_gadataset_file_writer_write_record_batch;
	int function(GADatasetFileWriter* writer, GArrowRecordBatchReader* reader, GError** err) c_gadataset_file_writer_write_record_batch_reader;

	// arrowdataset.FinishOptions

	GType function() c_gadataset_finish_options_get_type;
	GADatasetFinishOptions* function() c_gadataset_finish_options_new;

	// arrowdataset.Fragment

	GType function() c_gadataset_fragment_get_type;

	// arrowdataset.HivePartitioning

	GType function() c_gadataset_hive_partitioning_get_type;
	GADatasetHivePartitioning* function(GArrowSchema* schema, GList* dictionaries, GADatasetHivePartitioningOptions* options, GError** err) c_gadataset_hive_partitioning_new;
	char* function(GADatasetHivePartitioning* partitioning) c_gadataset_hive_partitioning_get_null_fallback;

	// arrowdataset.HivePartitioningOptions

	GType function() c_gadataset_hive_partitioning_options_get_type;
	GADatasetHivePartitioningOptions* function() c_gadataset_hive_partitioning_options_new;

	// arrowdataset.IPCFileFormat

	GType function() c_gadataset_ipc_file_format_get_type;
	GADatasetIPCFileFormat* function() c_gadataset_ipc_file_format_new;

	// arrowdataset.InMemoryFragment

	GType function() c_gadataset_in_memory_fragment_get_type;
	GADatasetInMemoryFragment* function(GArrowSchema* schema, GArrowRecordBatch** recordBatches, size_t nRecordBatches) c_gadataset_in_memory_fragment_new;

	// arrowdataset.KeyValuePartitioning

	GType function() c_gadataset_key_value_partitioning_get_type;

	// arrowdataset.KeyValuePartitioningOptions

	GType function() c_gadataset_key_value_partitioning_options_get_type;
	GADatasetKeyValuePartitioningOptions* function() c_gadataset_key_value_partitioning_options_new;

	// arrowdataset.ParquetFileFormat

	GType function() c_gadataset_parquet_file_format_get_type;
	GADatasetParquetFileFormat* function() c_gadataset_parquet_file_format_new;

	// arrowdataset.Partitioning

	GType function() c_gadataset_partitioning_get_type;
	GADatasetPartitioning* function() c_gadataset_partitioning_create_default;
	char* function(GADatasetPartitioning* partitioning) c_gadataset_partitioning_get_type_name;

	// arrowdataset.PartitioningFactoryOptions

	GType function() c_gadataset_partitioning_factory_options_get_type;
	GADatasetPartitioningFactoryOptions* function() c_gadataset_partitioning_factory_options_new;

	// arrowdataset.Scanner

	GType function() c_gadataset_scanner_get_type;
	GArrowRecordBatchReader* function(GADatasetScanner* scanner, GError** err) c_gadataset_scanner_to_record_batch_reader;
	GArrowTable* function(GADatasetScanner* scanner, GError** err) c_gadataset_scanner_to_table;

	// arrowdataset.ScannerBuilder

	GType function() c_gadataset_scanner_builder_get_type;
	GADatasetScannerBuilder* function(GADatasetDataset* dataset, GError** err) c_gadataset_scanner_builder_new;
	GADatasetScannerBuilder* function(GArrowRecordBatchReader* reader) c_gadataset_scanner_builder_new_record_batch_reader;
	GADatasetScanner* function(GADatasetScannerBuilder* builder, GError** err) c_gadataset_scanner_builder_finish;
	int function(GADatasetScannerBuilder* builder, GArrowExpression* expression, GError** err) c_gadataset_scanner_builder_set_filter;
}


// arrowdataset.CSVFileFormat

alias c_gadataset_csv_file_format_get_type gadataset_csv_file_format_get_type;
alias c_gadataset_csv_file_format_new gadataset_csv_file_format_new;

// arrowdataset.Dataset

alias c_gadataset_dataset_get_type gadataset_dataset_get_type;
alias c_gadataset_dataset_begin_scan gadataset_dataset_begin_scan;
alias c_gadataset_dataset_get_type_name gadataset_dataset_get_type_name;
alias c_gadataset_dataset_to_record_batch_reader gadataset_dataset_to_record_batch_reader;
alias c_gadataset_dataset_to_table gadataset_dataset_to_table;

// arrowdataset.DatasetFactory

alias c_gadataset_dataset_factory_get_type gadataset_dataset_factory_get_type;
alias c_gadataset_dataset_factory_finish gadataset_dataset_factory_finish;

// arrowdataset.DirectoryPartitioning

alias c_gadataset_directory_partitioning_get_type gadataset_directory_partitioning_get_type;
alias c_gadataset_directory_partitioning_new gadataset_directory_partitioning_new;

// arrowdataset.FileFormat

alias c_gadataset_file_format_get_type gadataset_file_format_get_type;
alias c_gadataset_file_format_equal gadataset_file_format_equal;
alias c_gadataset_file_format_get_default_write_options gadataset_file_format_get_default_write_options;
alias c_gadataset_file_format_get_type_name gadataset_file_format_get_type_name;
alias c_gadataset_file_format_open_writer gadataset_file_format_open_writer;

// arrowdataset.FileSystemDataset

alias c_gadataset_file_system_dataset_get_type gadataset_file_system_dataset_get_type;
alias c_gadataset_file_system_dataset_write_scanner gadataset_file_system_dataset_write_scanner;

// arrowdataset.FileSystemDatasetFactory

alias c_gadataset_file_system_dataset_factory_get_type gadataset_file_system_dataset_factory_get_type;
alias c_gadataset_file_system_dataset_factory_new gadataset_file_system_dataset_factory_new;
alias c_gadataset_file_system_dataset_factory_add_path gadataset_file_system_dataset_factory_add_path;
alias c_gadataset_file_system_dataset_factory_finish gadataset_file_system_dataset_factory_finish;
alias c_gadataset_file_system_dataset_factory_set_file_system gadataset_file_system_dataset_factory_set_file_system;
alias c_gadataset_file_system_dataset_factory_set_file_system_uri gadataset_file_system_dataset_factory_set_file_system_uri;

// arrowdataset.FileSystemDatasetWriteOptions

alias c_gadataset_file_system_dataset_write_options_get_type gadataset_file_system_dataset_write_options_get_type;
alias c_gadataset_file_system_dataset_write_options_new gadataset_file_system_dataset_write_options_new;

// arrowdataset.FileWriteOptions

alias c_gadataset_file_write_options_get_type gadataset_file_write_options_get_type;

// arrowdataset.FileWriter

alias c_gadataset_file_writer_get_type gadataset_file_writer_get_type;
alias c_gadataset_file_writer_finish gadataset_file_writer_finish;
alias c_gadataset_file_writer_write_record_batch gadataset_file_writer_write_record_batch;
alias c_gadataset_file_writer_write_record_batch_reader gadataset_file_writer_write_record_batch_reader;

// arrowdataset.FinishOptions

alias c_gadataset_finish_options_get_type gadataset_finish_options_get_type;
alias c_gadataset_finish_options_new gadataset_finish_options_new;

// arrowdataset.Fragment

alias c_gadataset_fragment_get_type gadataset_fragment_get_type;

// arrowdataset.HivePartitioning

alias c_gadataset_hive_partitioning_get_type gadataset_hive_partitioning_get_type;
alias c_gadataset_hive_partitioning_new gadataset_hive_partitioning_new;
alias c_gadataset_hive_partitioning_get_null_fallback gadataset_hive_partitioning_get_null_fallback;

// arrowdataset.HivePartitioningOptions

alias c_gadataset_hive_partitioning_options_get_type gadataset_hive_partitioning_options_get_type;
alias c_gadataset_hive_partitioning_options_new gadataset_hive_partitioning_options_new;

// arrowdataset.IPCFileFormat

alias c_gadataset_ipc_file_format_get_type gadataset_ipc_file_format_get_type;
alias c_gadataset_ipc_file_format_new gadataset_ipc_file_format_new;

// arrowdataset.InMemoryFragment

alias c_gadataset_in_memory_fragment_get_type gadataset_in_memory_fragment_get_type;
alias c_gadataset_in_memory_fragment_new gadataset_in_memory_fragment_new;

// arrowdataset.KeyValuePartitioning

alias c_gadataset_key_value_partitioning_get_type gadataset_key_value_partitioning_get_type;

// arrowdataset.KeyValuePartitioningOptions

alias c_gadataset_key_value_partitioning_options_get_type gadataset_key_value_partitioning_options_get_type;
alias c_gadataset_key_value_partitioning_options_new gadataset_key_value_partitioning_options_new;

// arrowdataset.ParquetFileFormat

alias c_gadataset_parquet_file_format_get_type gadataset_parquet_file_format_get_type;
alias c_gadataset_parquet_file_format_new gadataset_parquet_file_format_new;

// arrowdataset.Partitioning

alias c_gadataset_partitioning_get_type gadataset_partitioning_get_type;
alias c_gadataset_partitioning_create_default gadataset_partitioning_create_default;
alias c_gadataset_partitioning_get_type_name gadataset_partitioning_get_type_name;

// arrowdataset.PartitioningFactoryOptions

alias c_gadataset_partitioning_factory_options_get_type gadataset_partitioning_factory_options_get_type;
alias c_gadataset_partitioning_factory_options_new gadataset_partitioning_factory_options_new;

// arrowdataset.Scanner

alias c_gadataset_scanner_get_type gadataset_scanner_get_type;
alias c_gadataset_scanner_to_record_batch_reader gadataset_scanner_to_record_batch_reader;
alias c_gadataset_scanner_to_table gadataset_scanner_to_table;

// arrowdataset.ScannerBuilder

alias c_gadataset_scanner_builder_get_type gadataset_scanner_builder_get_type;
alias c_gadataset_scanner_builder_new gadataset_scanner_builder_new;
alias c_gadataset_scanner_builder_new_record_batch_reader gadataset_scanner_builder_new_record_batch_reader;
alias c_gadataset_scanner_builder_finish gadataset_scanner_builder_finish;
alias c_gadataset_scanner_builder_set_filter gadataset_scanner_builder_set_filter;
