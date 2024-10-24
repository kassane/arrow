module arrowdataset.c.functions;

import std.stdio;
import arrowdataset.c.types;
version (Windows)
	static immutable LIBRARY_ARROWDATASET = ["glib-1800.dll;g.dll;g.dll"];
else version (OSX)
	static immutable LIBRARY_ARROWDATASET = ["glib.1800.dylib"];
else
	static immutable LIBRARY_ARROWDATASET = ["libarrow-dataset-glib.so.1800"];

__gshared extern(C)
{

	// arrowdataset.CSVFileFormat

	GType gadataset_csv_file_format_get_type();
	GADatasetCSVFileFormat* gadataset_csv_file_format_new();

	// arrowdataset.Dataset

	GType gadataset_dataset_get_type();
	GADatasetScannerBuilder* gadataset_dataset_begin_scan(GADatasetDataset* dataset, GError** err);
	char* gadataset_dataset_get_type_name(GADatasetDataset* dataset);
	GArrowRecordBatchReader* gadataset_dataset_to_record_batch_reader(GADatasetDataset* dataset, GError** err);
	GArrowTable* gadataset_dataset_to_table(GADatasetDataset* dataset, GError** err);

	// arrowdataset.DatasetFactory

	GType gadataset_dataset_factory_get_type();
	GADatasetDataset* gadataset_dataset_factory_finish(GADatasetDatasetFactory* factory, GADatasetFinishOptions* options, GError** err);

	// arrowdataset.DirectoryPartitioning

	GType gadataset_directory_partitioning_get_type();
	GADatasetDirectoryPartitioning* gadataset_directory_partitioning_new(GArrowSchema* schema, GList* dictionaries, GADatasetKeyValuePartitioningOptions* options, GError** err);

	// arrowdataset.FileFormat

	GType gadataset_file_format_get_type();
	int gadataset_file_format_equal(GADatasetFileFormat* format, GADatasetFileFormat* otherFormat);
	GADatasetFileWriteOptions* gadataset_file_format_get_default_write_options(GADatasetFileFormat* format);
	char* gadataset_file_format_get_type_name(GADatasetFileFormat* format);
	GADatasetFileWriter* gadataset_file_format_open_writer(GADatasetFileFormat* format, GArrowOutputStream* destination, GArrowFileSystem* fileSystem, const(char)* path, GArrowSchema* schema, GADatasetFileWriteOptions* options, GError** err);

	// arrowdataset.FileSystemDataset

	GType gadataset_file_system_dataset_get_type();
	int gadataset_file_system_dataset_write_scanner(GADatasetScanner* scanner, GADatasetFileSystemDatasetWriteOptions* options, GError** err);

	// arrowdataset.FileSystemDatasetFactory

	GType gadataset_file_system_dataset_factory_get_type();
	GADatasetFileSystemDatasetFactory* gadataset_file_system_dataset_factory_new(GADatasetFileFormat* fileFormat);
	int gadataset_file_system_dataset_factory_add_path(GADatasetFileSystemDatasetFactory* factory, const(char)* path, GError** err);
	GADatasetFileSystemDataset* gadataset_file_system_dataset_factory_finish(GADatasetFileSystemDatasetFactory* factory, GADatasetFinishOptions* options, GError** err);
	int gadataset_file_system_dataset_factory_set_file_system(GADatasetFileSystemDatasetFactory* factory, GArrowFileSystem* fileSystem, GError** err);
	int gadataset_file_system_dataset_factory_set_file_system_uri(GADatasetFileSystemDatasetFactory* factory, const(char)* uri, GError** err);

	// arrowdataset.FileSystemDatasetWriteOptions

	GType gadataset_file_system_dataset_write_options_get_type();
	GADatasetFileSystemDatasetWriteOptions* gadataset_file_system_dataset_write_options_new();

	// arrowdataset.FileWriteOptions

	GType gadataset_file_write_options_get_type();

	// arrowdataset.FileWriter

	GType gadataset_file_writer_get_type();
	int gadataset_file_writer_finish(GADatasetFileWriter* writer, GError** err);
	int gadataset_file_writer_write_record_batch(GADatasetFileWriter* writer, GArrowRecordBatch* recordBatch, GError** err);
	int gadataset_file_writer_write_record_batch_reader(GADatasetFileWriter* writer, GArrowRecordBatchReader* reader, GError** err);

	// arrowdataset.FinishOptions

	GType gadataset_finish_options_get_type();
	GADatasetFinishOptions* gadataset_finish_options_new();

	// arrowdataset.Fragment

	GType gadataset_fragment_get_type();

	// arrowdataset.HivePartitioning

	GType gadataset_hive_partitioning_get_type();
	GADatasetHivePartitioning* gadataset_hive_partitioning_new(GArrowSchema* schema, GList* dictionaries, GADatasetHivePartitioningOptions* options, GError** err);
	char* gadataset_hive_partitioning_get_null_fallback(GADatasetHivePartitioning* partitioning);

	// arrowdataset.HivePartitioningOptions

	GType gadataset_hive_partitioning_options_get_type();
	GADatasetHivePartitioningOptions* gadataset_hive_partitioning_options_new();

	// arrowdataset.IPCFileFormat

	GType gadataset_ipc_file_format_get_type();
	GADatasetIPCFileFormat* gadataset_ipc_file_format_new();

	// arrowdataset.InMemoryFragment

	GType gadataset_in_memory_fragment_get_type();
	GADatasetInMemoryFragment* gadataset_in_memory_fragment_new(GArrowSchema* schema, GArrowRecordBatch** recordBatches, size_t nRecordBatches);

	// arrowdataset.KeyValuePartitioning

	GType gadataset_key_value_partitioning_get_type();

	// arrowdataset.KeyValuePartitioningOptions

	GType gadataset_key_value_partitioning_options_get_type();
	GADatasetKeyValuePartitioningOptions* gadataset_key_value_partitioning_options_new();

	// arrowdataset.ParquetFileFormat

	GType gadataset_parquet_file_format_get_type();
	GADatasetParquetFileFormat* gadataset_parquet_file_format_new();

	// arrowdataset.Partitioning

	GType gadataset_partitioning_get_type();
	GADatasetPartitioning* gadataset_partitioning_create_default();
	char* gadataset_partitioning_get_type_name(GADatasetPartitioning* partitioning);

	// arrowdataset.PartitioningFactoryOptions

	GType gadataset_partitioning_factory_options_get_type();
	GADatasetPartitioningFactoryOptions* gadataset_partitioning_factory_options_new();

	// arrowdataset.Scanner

	GType gadataset_scanner_get_type();
	GArrowRecordBatchReader* gadataset_scanner_to_record_batch_reader(GADatasetScanner* scanner, GError** err);
	GArrowTable* gadataset_scanner_to_table(GADatasetScanner* scanner, GError** err);

	// arrowdataset.ScannerBuilder

	GType gadataset_scanner_builder_get_type();
	GADatasetScannerBuilder* gadataset_scanner_builder_new(GADatasetDataset* dataset, GError** err);
	GADatasetScannerBuilder* gadataset_scanner_builder_new_record_batch_reader(GArrowRecordBatchReader* reader);
	GADatasetScanner* gadataset_scanner_builder_finish(GADatasetScannerBuilder* builder, GError** err);
	int gadataset_scanner_builder_set_filter(GADatasetScannerBuilder* builder, GArrowExpression* expression, GError** err);
}