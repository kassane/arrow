module arrowdataset.c.types;

public import arrow.c.types;
public import glib.c.types;
public import gobject.c.types;


/**
 * They are corresponding to `arrow::dataset::SegmentEncoding` values.
 *
 * Since: 6.0.0
 */
public enum GADatasetSegmentEncoding
{
	/**
	 * No encoding.
	 */
	NONE = 0,
	/**
	 * Segment values are URL-encoded.
	 */
	URI = 1,
}
alias GADatasetSegmentEncoding SegmentEncoding;

struct GADatasetCSVFileFormat
{
	GADatasetFileFormat parentInstance;
}

struct GADatasetCSVFileFormatClass
{
	GADatasetFileFormatClass parentClass;
}

struct GADatasetDataset
{
	GObject parentInstance;
}

struct GADatasetDatasetClass
{
	GObjectClass parentClass;
}

struct GADatasetDatasetFactory
{
	GObject parentInstance;
}

struct GADatasetDatasetFactoryClass
{
	GObjectClass parentClass;
}

struct GADatasetDirectoryPartitioning
{
	GADatasetKeyValuePartitioning parentInstance;
}

struct GADatasetDirectoryPartitioningClass
{
	GADatasetKeyValuePartitioningClass parentClass;
}

struct GADatasetFileFormat
{
	GObject parentInstance;
}

struct GADatasetFileFormatClass
{
	GObjectClass parentClass;
}

struct GADatasetFileSystemDataset
{
	GADatasetDataset parentInstance;
}

struct GADatasetFileSystemDatasetClass
{
	GADatasetDatasetClass parentClass;
}

struct GADatasetFileSystemDatasetFactory
{
	GADatasetDatasetFactory parentInstance;
}

struct GADatasetFileSystemDatasetFactoryClass
{
	GADatasetDatasetFactoryClass parentClass;
}

struct GADatasetFileSystemDatasetWriteOptions
{
	GObject parentInstance;
}

struct GADatasetFileSystemDatasetWriteOptionsClass
{
	GObjectClass parentClass;
}

struct GADatasetFileWriteOptions
{
	GObject parentInstance;
}

struct GADatasetFileWriteOptionsClass
{
	GObjectClass parentClass;
}

struct GADatasetFileWriter
{
	GObject parentInstance;
}

struct GADatasetFileWriterClass
{
	GObjectClass parentClass;
}

struct GADatasetFinishOptions
{
	GObject parentInstance;
}

struct GADatasetFinishOptionsClass
{
	GObjectClass parentClass;
}

struct GADatasetFragment
{
	GObject parentInstance;
}

struct GADatasetFragmentClass
{
	GObjectClass parentClass;
}

struct GADatasetHivePartitioning
{
	GADatasetKeyValuePartitioning parentInstance;
}

struct GADatasetHivePartitioningClass
{
	GADatasetKeyValuePartitioningClass parentClass;
}

struct GADatasetHivePartitioningOptions
{
	GADatasetKeyValuePartitioningOptions parentInstance;
}

struct GADatasetHivePartitioningOptionsClass
{
	GADatasetKeyValuePartitioningOptionsClass parentClass;
}

struct GADatasetIPCFileFormat
{
	GADatasetFileFormat parentInstance;
}

struct GADatasetIPCFileFormatClass
{
	GADatasetFileFormatClass parentClass;
}

struct GADatasetInMemoryFragment
{
	GADatasetFragment parentInstance;
}

struct GADatasetInMemoryFragmentClass
{
	GADatasetFragmentClass parentClass;
}

struct GADatasetKeyValuePartitioning
{
	GADatasetPartitioning parentInstance;
}

struct GADatasetKeyValuePartitioningClass
{
	GADatasetPartitioningClass parentClass;
}

struct GADatasetKeyValuePartitioningOptions
{
	GObject parentInstance;
}

struct GADatasetKeyValuePartitioningOptionsClass
{
	GObjectClass parentClass;
}

struct GADatasetParquetFileFormat
{
	GADatasetFileFormat parentInstance;
}

struct GADatasetParquetFileFormatClass
{
	GADatasetFileFormatClass parentClass;
}

struct GADatasetPartitioning
{
	GObject parentInstance;
}

struct GADatasetPartitioningClass
{
	GObjectClass parentClass;
}

struct GADatasetPartitioningFactoryOptions
{
	GObject parentInstance;
}

struct GADatasetPartitioningFactoryOptionsClass
{
	GObjectClass parentClass;
}

struct GADatasetScanner
{
	GObject parentInstance;
}

struct GADatasetScannerBuilder
{
	GObject parentInstance;
}

struct GADatasetScannerBuilderClass
{
	GObjectClass parentClass;
}

struct GADatasetScannerClass
{
	GObjectClass parentClass;
}

/**
 * The major version.
 */
enum VERSION_MAJOR = 18;
alias GADATASET_VERSION_MAJOR = VERSION_MAJOR;

/**
 * The micro version.
 */
enum VERSION_MICRO = 0;
alias GADATASET_VERSION_MICRO = VERSION_MICRO;

/**
 * The minor version.
 */
enum VERSION_MINOR = 0;
alias GADATASET_VERSION_MINOR = VERSION_MINOR;

/**
 * The version tag. Normally, it's an empty string. It's "SNAPSHOT"
 * for snapshot version.
 */
enum VERSION_TAG = "SNAPSHOT";
alias GADATASET_VERSION_TAG = VERSION_TAG;
