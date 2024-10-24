module arrow.c.types;

public import gio.c.types;
public import glib.c.types;
public import gobject.c.types;


public alias long GArrowTimePoint;

/**
 * They are corresponding to `arrow::Compression::type` values.
 */
public enum GArrowCompressionType
{
	/**
	 * Not compressed.
	 */
	UNCOMPRESSED = 0,
	/**
	 * Snappy compression.
	 */
	SNAPPY = 1,
	/**
	 * gzip compression.
	 */
	GZIP = 2,
	/**
	 * Brotli compression.
	 */
	BROTLI = 3,
	/**
	 * Zstandard compression.
	 */
	ZSTD = 4,
	/**
	 * LZ4 compression.
	 */
	LZ4 = 5,
	/**
	 * LZO compression.
	 */
	LZO = 6,
	/**
	 * bzip2 compression.
	 */
	BZ2 = 7,
}
alias GArrowCompressionType CompressionType;

/**
 * They correspond to the values of `arrow::compute::CountOptions::CountMode`.
 */
public enum GArrowCountMode
{
	/**
	 * Only non-null values will be counted.
	 */
	ONLY_VALID = 0,
	/**
	 * Only null values will be counted.
	 */
	ONLY_NULL = 1,
	/**
	 * All will be counted.
	 */
	ALL = 2,
}
alias GArrowCountMode CountMode;

/**
 * The error codes are used by all arrow-glib functions.
 *
 * They are corresponding to `arrow::Status` values.
 */
public enum GArrowError
{
	/**
	 * Out of memory error.
	 */
	OUT_OF_MEMORY = 1,
	/**
	 * Key error.
	 */
	KEY = 2,
	/**
	 * Type error.
	 */
	TYPE = 3,
	/**
	 * Invalid value error.
	 */
	INVALID = 4,
	/**
	 * IO error.
	 */
	IO = 5,
	/**
	 * Capacity error.
	 */
	CAPACITY = 6,
	/**
	 * Index error.
	 */
	INDEX = 7,
	/**
	 * Unknown error.
	 */
	UNKNOWN = 9,
	/**
	 * The feature is not implemented.
	 */
	NOT_IMPLEMENTED = 10,
	/**
	 * Serialization error.
	 */
	SERIALIZATION = 11,
	/**
	 * Error generating code for expression evaluation
	 * in Gandiva.
	 */
	CODE_GENERATION = 40,
	/**
	 * Validation errors in expression given for code
	 * generation.
	 */
	EXPRESSION_VALIDATION = 41,
	/**
	 * Execution error while evaluating the expression against a
	 * record batch.
	 */
	EXECUTION = 42,
	/**
	 * Item already exists error.
	 */
	ALREADY_EXISTS = 45,
}
alias GArrowError Error;

/**
 * They are corresponding to `arrow::io::FileMode::type` values.
 */
public enum GArrowFileMode
{
	/**
	 * For read.
	 */
	READ = 0,
	/**
	 * For write.
	 */
	WRITE = 1,
	/**
	 * For read-write.
	 */
	READWRITE = 2,
}
alias GArrowFileMode FileMode;

/**
 * They are corresponding to `arrow::fs::FileType` values.
 *
 * Since: 1.0.0
 */
public enum GArrowFileType
{
	/**
	 * Entry is not found
	 */
	NOT_FOUND = 0,
	/**
	 * Entry exists but its type is unknown
	 */
	UNKNOWN = 1,
	/**
	 * Entry is a regular file
	 */
	FILE = 2,
	/**
	 * Entry is a directory
	 */
	DIR = 3,
}
alias GArrowFileType FileType;

/**
 * They are corresponding to
 * `arrow::compute::FilterOptions::NullSelectionBehavior` values.
 */
public enum GArrowFilterNullSelectionBehavior
{
	/**
	 * Filtered value will be removed in the output.
	 */
	DROP = 0,
	/**
	 * Filtered value will be null in the output.
	 */
	EMIT_NULL = 1,
}
alias GArrowFilterNullSelectionBehavior FilterNullSelectionBehavior;

/**
 * They are corresponding to `arrow::IntervalType::type` values.
 *
 * Since 7.0.0
 */
public enum GArrowIntervalType
{
	/**
	 * A number of months.
	 */
	MONTH = 0,
	/**
	 * A number of days and
	 * milliseconds (fraction of day).
	 */
	DAY_TIME = 1,
	/**
	 * A number of months, days and
	 * nanoseconds between two dates.
	 */
	MONTH_DAY_NANO = 2,
}
alias GArrowIntervalType IntervalType;

/**
 * They are corresponding to `arrow::json::UnexpectedFieldBehavior` values.
 */
public enum GArrowJSONReadUnexpectedFieldBehavior
{
	/**
	 * Ignore other fields.
	 */
	IGNORE = 0,
	/**
	 * Return error.
	 */
	ERROR = 1,
	/**
	 * Infer a type.
	 */
	INFER_TYPE = 2,
}
alias GArrowJSONReadUnexpectedFieldBehavior JSONReadUnexpectedFieldBehavior;

/**
 * They correspond to the values of `arrow::compute::JoinType`.
 *
 * Since: 7.0.0
 */
public enum GArrowJoinType
{
	LEFT_SEMI = 0,
	RIGHT_SEMI = 1,
	LEFT_ANTI = 2,
	RIGHT_ANTI = 3,
	INNER = 4,
	LEFT_OUTER = 5,
	RIGHT_OUTER = 6,
	FULL_OUTER = 7,
}
alias GArrowJoinType JoinType;

/**
 * They are corresponding to `arrow::ipc::MetadataVersion::type`
 * values.
 */
public enum GArrowMetadataVersion
{
	/**
	 * Version 1.
	 */
	V1 = 0,
	/**
	 * Version 2.
	 */
	V2 = 1,
	/**
	 * Version 3.
	 */
	V3 = 2,
}
alias GArrowMetadataVersion MetadataVersion;

/**
 * They are corresponding to `arrow::compute::NullPlacement` values.
 *
 * Since: 12.0.0
 */
public enum GArrowNullPlacement
{
	/**
	 * Place nulls and NaNs before any non-null values.
	 * NaNs will come after nulls.
	 */
	AT_START = 0,
	/**
	 * Place nulls and NaNs after any non-null values.
	 * NaNs will come before nulls.
	 */
	AT_END = 1,
}
alias GArrowNullPlacement NullPlacement;

/**
 * They correspond to the values of
 * `arrow::compute::QuantileOptions::Interpolation`.
 *
 * Since: 9.0.0
 */
public enum GArrowQuantileInterpolation
{
	/**
	 * Linear.
	 */
	LINEAR = 0,
	/**
	 * Lower.
	 */
	LOWER = 1,
	/**
	 * Higher.
	 */
	HIGHER = 2,
	/**
	 * Nearest.
	 */
	NEAREST = 3,
	/**
	 * Midpoint.
	 */
	MIDPOINT = 4,
}
alias GArrowQuantileInterpolation QuantileInterpolation;

public enum GArrowRankTiebreaker
{
	MIN = 0,
	MAX = 1,
	FIRST = 2,
	DENSE = 3,
}
alias GArrowRankTiebreaker RankTiebreaker;

/**
 * They correspond to the values of `arrow::compute::RoundMode`.
 *
 * Since: 7.0.0
 */
public enum GArrowRoundMode
{
	DOWN = 0,
	UP = 1,
	/**
	 * Get the integral part without fractional digits (aka "trunc")
	 * @GARROW_ROUND_TOWARDS_INFINITY,
	 * Round negative values with @GARROW_ROUND_MODE_DOWN rule
	 * and positive values with UP rule (aka "away from zero")
	 * @GARROW_ROUND_HALF_DOWN,
	 * Round ties with @GARROW_ROUND_MODE_DOWN rule
	 * (also called "round half towards negative infinity")
	 * @GARROW_ROUND_HALF_UP,
	 * Round ties with @GARROW_ROUND_MODE_UP rule
	 * (also called "round half towards positive infinity")
	 * @GARROW_ROUND_HALF_TOWARDS_ZERO,
	 * Round ties with GARROW_ROUND_MODE_TOWARDS_ZERO rule
	 * (also called "round half away from infinity")
	 * @GARROW_ROUND_HALF_TOWARDS_INFINITY,
	 * Round ties with GARROW_ROUND_MODE_TOWARDS_INFINITY rule
	 * (also called "round half away from zero")
	 * @GARROW_ROUND_HALF_TO_EVEN,
	 * Round ties to nearest even integer
	 * @GARROW_ROUND_HALF_TO_ODD,
	 * Round ties to nearest odd integer
	 */
	TOWARDS_ZERO = 2,
	TOWARDS_INFINITY = 3,
	HALF_DOWN = 4,
	HALF_UP = 5,
	HALF_TOWARDS_ZERO = 6,
	HALF_TOWARDS_INFINITY = 7,
	HALF_TO_EVEN = 8,
	HALF_TO_ODD = 9,
}
alias GArrowRoundMode RoundMode;

/**
 * They are corresponding to `arrow::fs::S3LogLevel` values.
 *
 * Since: 7.0.0
 */
public enum GArrowS3LogLevel
{
	/**
	 * Off.
	 */
	OFF = 0,
	/**
	 * Fatal. This is the default.
	 */
	FATAL = 1,
	/**
	 * Error.
	 */
	ERROR = 2,
	/**
	 * Warn.
	 */
	WARN = 3,
	/**
	 * Info.
	 */
	INFO = 4,
	/**
	 * Debug.
	 */
	DEBUG = 5,
	/**
	 * Trace.
	 */
	TRACE = 6,
}
alias GArrowS3LogLevel S3LogLevel;

/**
 * They are corresponding to `arrow::compute::SortOrder` values.
 *
 * Since: 3.0.0
 */
public enum GArrowSortOrder
{
	/**
	 * Sort in ascending order.
	 */
	ASCENDING = 0,
	/**
	 * Sort in descending order.
	 */
	DESCENDING = 1,
}
alias GArrowSortOrder SortOrder;

/**
 * They are corresponding to `arrow::TimeUnit::type` values.
 */
public enum GArrowTimeUnit
{
	/**
	 * Second.
	 */
	SECOND = 0,
	/**
	 * Millisecond.
	 */
	MILLI = 1,
	/**
	 * Microsecond.
	 */
	MICRO = 2,
	/**
	 * Nanosecond.
	 */
	NANO = 3,
}
alias GArrowTimeUnit TimeUnit;

/**
 * They are corresponding to `arrow::Type::type` values.
 */
public enum GArrowType
{
	/**
	 * A degenerate NULL type represented as 0 bytes/bits.
	 */
	NA = 0,
	/**
	 * A boolean value represented as 1-bit.
	 */
	BOOLEAN = 1,
	/**
	 * Little-endian 8-bit unsigned integer.
	 */
	UINT8 = 2,
	/**
	 * Little-endian 8-bit signed integer.
	 */
	INT8 = 3,
	/**
	 * Little-endian 16-bit unsigned integer.
	 */
	UINT16 = 4,
	/**
	 * Little-endian 16-bit signed integer.
	 */
	INT16 = 5,
	/**
	 * Little-endian 32-bit unsigned integer.
	 */
	UINT32 = 6,
	/**
	 * Little-endian 32-bit signed integer.
	 */
	INT32 = 7,
	/**
	 * Little-endian 64-bit unsigned integer.
	 */
	UINT64 = 8,
	/**
	 * Little-endian 64-bit signed integer.
	 */
	INT64 = 9,
	/**
	 * 2-byte floating point value.
	 */
	HALF_FLOAT = 10,
	/**
	 * 4-byte floating point value.
	 */
	FLOAT = 11,
	/**
	 * 8-byte floating point value.
	 */
	DOUBLE = 12,
	/**
	 * UTF-8 variable-length string.
	 */
	STRING = 13,
	/**
	 * Variable-length bytes (no guarantee of UTF-8-ness).
	 */
	BINARY = 14,
	/**
	 * Fixed-size binary. Each value occupies
	 * the same number of bytes.
	 */
	FIXED_SIZE_BINARY = 15,
	/**
	 * int32 days since the UNIX epoch.
	 */
	DATE32 = 16,
	/**
	 * int64 milliseconds since the UNIX epoch.
	 */
	DATE64 = 17,
	/**
	 * Exact timestamp encoded with int64 since UNIX epoch.
	 * Default unit millisecond.
	 */
	TIMESTAMP = 18,
	/**
	 * Exact time encoded with int32, supporting seconds or milliseconds
	 */
	TIME32 = 19,
	/**
	 * Exact time encoded with int64, supporting micro- or nanoseconds
	 */
	TIME64 = 20,
	/**
	 * YEAR_MONTH interval in SQL style.
	 */
	MONTH_INTERVAL = 21,
	/**
	 * DAY_TIME interval in SQL style.
	 */
	DAY_TIME_INTERVAL = 22,
	/**
	 * Precision- and scale-based decimal
	 * type with 128-bit. Storage type depends on the parameters.
	 */
	DECIMAL128 = 23,
	/**
	 * Precision- and scale-based decimal
	 * type with 256-bit. Storage type depends on the parameters.
	 */
	DECIMAL256 = 24,
	/**
	 * A list of some logical data type.
	 */
	LIST = 25,
	/**
	 * Struct of logical types.
	 */
	STRUCT = 26,
	/**
	 * Sparse unions of logical types.
	 */
	SPARSE_UNION = 27,
	/**
	 * Dense unions of logical types.
	 */
	DENSE_UNION = 28,
	/**
	 * Dictionary aka Category type.
	 */
	DICTIONARY = 29,
	/**
	 * A repeated struct logical type.
	 */
	MAP = 30,
	/**
	 * Custom data type, implemented by user.
	 */
	EXTENSION = 31,
	/**
	 * Fixed size list of some logical type.
	 */
	FIXED_SIZE_LIST = 32,
	/**
	 * Measure of elapsed time in either seconds,
	 * milliseconds, microseconds or nanoseconds.
	 */
	DURATION = 33,
	/**
	 * 64bit offsets UTF-8 variable-length string.
	 */
	LARGE_STRING = 34,
	/**
	 * 64bit offsets Variable-length bytes (no guarantee of
	 * UTF-8-ness).
	 */
	LARGE_BINARY = 35,
	/**
	 * A list of some logical data type with 64-bit offsets.
	 */
	LARGE_LIST = 36,
	/**
	 * MONTH_DAY_NANO interval in SQL style.
	 */
	MONTH_DAY_NANO_INTERVAL = 37,
	/**
	 * Run-end encoded data.
	 */
	RUN_END_ENCODED = 38,
}
alias GArrowType Type;

/**
 * They correspond to the values of `arrow::compute::Utf8NormalizeOptions::Form`.
 *
 * Since: 8.0.0
 */
public enum GArrowUTF8NormalizeForm
{
	/**
	 * Normalization Form Canonical Composition.
	 */
	NFC = 0,
	/**
	 * Normalization Form Compatibility
	 * Composition.
	 */
	NFKC = 1,
	/**
	 * Normalization Form Canonical Decomposition.
	 */
	NFD = 2,
	/**
	 * Normalization Form Compatibility
	 * Decomposition.
	 */
	NFKD = 3,
}
alias GArrowUTF8NormalizeForm UTF8NormalizeForm;

struct GArrowAggregateNodeOptions
{
	GArrowExecuteNodeOptions parentInstance;
}

struct GArrowAggregateNodeOptionsClass
{
	GArrowExecuteNodeOptionsClass parentClass;
}

struct GArrowAggregation
{
	GObject parentInstance;
}

struct GArrowAggregationClass
{
	GObjectClass parentClass;
}

struct GArrowArray
{
	GObject parentInstance;
}

struct GArrowArrayBuilder
{
	GObject parentInstance;
}

struct GArrowArrayBuilderClass
{
	GObjectClass parentClass;
}

struct GArrowArrayClass
{
	GObjectClass parentClass;
}

struct GArrowArrayDatum
{
	GArrowDatum parentInstance;
}

struct GArrowArrayDatumClass
{
	GArrowDatumClass parentClass;
}

struct GArrowArraySortOptions
{
	GArrowFunctionOptions parentInstance;
}

struct GArrowArraySortOptionsClass
{
	GArrowFunctionOptionsClass parentClass;
}

struct GArrowAzureFileSystem
{
	GArrowFileSystem parentInstance;
}

struct GArrowAzureFileSystemClass
{
	GArrowFileSystemClass parentClass;
}

struct GArrowBaseBinaryScalar
{
	GArrowScalar parentInstance;
}

struct GArrowBaseBinaryScalarClass
{
	GArrowScalarClass parentClass;
}

struct GArrowBaseListScalar
{
	GArrowScalar parentInstance;
}

struct GArrowBaseListScalarClass
{
	GArrowScalarClass parentClass;
}

struct GArrowBinaryArray
{
	GArrowArray parentInstance;
}

struct GArrowBinaryArrayBuilder
{
	GArrowArrayBuilder parentInstance;
}

struct GArrowBinaryArrayBuilderClass
{
	GArrowArrayBuilderClass parentClass;
}

struct GArrowBinaryArrayClass
{
	GArrowArrayClass parentClass;
}

struct GArrowBinaryDataType
{
	GArrowDataType parentInstance;
}

struct GArrowBinaryDataTypeClass
{
	GArrowDataTypeClass parentClass;
}

struct GArrowBinaryDictionaryArrayBuilder
{
	GArrowArrayBuilder parentInstance;
}

struct GArrowBinaryDictionaryArrayBuilderClass
{
	GArrowArrayBuilderClass parentClass;
}

struct GArrowBinaryScalar
{
	GArrowBaseBinaryScalar parentInstance;
}

struct GArrowBinaryScalarClass
{
	GArrowBaseBinaryScalarClass parentClass;
}

struct GArrowBooleanArray
{
	GArrowPrimitiveArray parentInstance;
}

struct GArrowBooleanArrayBuilder
{
	GArrowArrayBuilder parentInstance;
}

struct GArrowBooleanArrayBuilderClass
{
	GArrowArrayBuilderClass parentClass;
}

struct GArrowBooleanArrayClass
{
	GArrowPrimitiveArrayClass parentClass;
}

struct GArrowBooleanDataType
{
	GArrowFixedWidthDataType parentInstance;
}

struct GArrowBooleanDataTypeClass
{
	GArrowFixedWidthDataTypeClass parentClass;
}

struct GArrowBooleanScalar
{
	GArrowScalar parentInstance;
}

struct GArrowBooleanScalarClass
{
	GArrowScalarClass parentClass;
}

struct GArrowBuffer
{
	GObject parentInstance;
}

struct GArrowBufferClass
{
	GObjectClass parentClass;
}

struct GArrowBufferInputStream
{
	GArrowSeekableInputStream parentInstance;
}

struct GArrowBufferInputStreamClass
{
	GArrowSeekableInputStreamClass parentClass;
}

struct GArrowBufferOutputStream
{
	GArrowOutputStream parentInstance;
}

struct GArrowBufferOutputStreamClass
{
	GArrowOutputStreamClass parentClass;
}

struct GArrowCSVReadOptions
{
	GObject parentInstance;
}

struct GArrowCSVReadOptionsClass
{
	GObjectClass parentClass;
}

struct GArrowCSVReader
{
	GObject parentInstance;
}

struct GArrowCSVReaderClass
{
	GObjectClass parentClass;
}

struct GArrowCallExpression
{
	GArrowExpression parentInstance;
}

struct GArrowCallExpressionClass
{
	GArrowExpressionClass parentClass;
}

struct GArrowCastOptions
{
	GArrowFunctionOptions parentInstance;
}

struct GArrowCastOptionsClass
{
	GArrowFunctionOptionsClass parentClass;
}

struct GArrowChunkedArray
{
	GObject parentInstance;
}

struct GArrowChunkedArrayClass
{
	GObjectClass parentClass;
}

struct GArrowChunkedArrayDatum
{
	GArrowDatum parentInstance;
}

struct GArrowChunkedArrayDatumClass
{
	GArrowDatumClass parentClass;
}

struct GArrowCodec
{
	GObject parentInstance;
}

struct GArrowCodecClass
{
	GObjectClass parentClass;
}

struct GArrowCompressedInputStream
{
	GArrowInputStream parentInstance;
}

struct GArrowCompressedInputStreamClass
{
	GArrowInputStreamClass parentClass;
}

struct GArrowCompressedOutputStream
{
	GArrowOutputStream parentInstance;
}

struct GArrowCompressedOutputStreamClass
{
	GArrowOutputStreamClass parentClass;
}

struct GArrowCountOptions
{
	GArrowFunctionOptions parentInstance;
}

struct GArrowCountOptionsClass
{
	GArrowFunctionOptionsClass parentClass;
}

struct GArrowDataType
{
	GObject parentInstance;
}

struct GArrowDataTypeClass
{
	GObjectClass parentClass;
}

struct GArrowDate32Array
{
	GArrowNumericArray parentInstance;
}

struct GArrowDate32ArrayBuilder
{
	GArrowArrayBuilder parentInstance;
}

struct GArrowDate32ArrayBuilderClass
{
	GArrowArrayBuilderClass parentClass;
}

struct GArrowDate32ArrayClass
{
	GArrowNumericArrayClass parentClass;
}

struct GArrowDate32DataType
{
	GArrowTemporalDataType parentInstance;
}

struct GArrowDate32DataTypeClass
{
	GArrowTemporalDataTypeClass parentClass;
}

struct GArrowDate32Scalar
{
	GArrowScalar parentInstance;
}

struct GArrowDate32ScalarClass
{
	GArrowScalarClass parentClass;
}

struct GArrowDate64Array
{
	GArrowNumericArray parentInstance;
}

struct GArrowDate64ArrayBuilder
{
	GArrowArrayBuilder parentInstance;
}

struct GArrowDate64ArrayBuilderClass
{
	GArrowArrayBuilderClass parentClass;
}

struct GArrowDate64ArrayClass
{
	GArrowNumericArrayClass parentClass;
}

struct GArrowDate64DataType
{
	GArrowTemporalDataType parentInstance;
}

struct GArrowDate64DataTypeClass
{
	GArrowTemporalDataTypeClass parentClass;
}

struct GArrowDate64Scalar
{
	GArrowScalar parentInstance;
}

struct GArrowDate64ScalarClass
{
	GArrowScalarClass parentClass;
}

struct GArrowDatum
{
	GObject parentInstance;
}

struct GArrowDatumClass
{
	GObjectClass parentClass;
}

struct GArrowDayMillisecond
{
	GObject parentInstance;
}

struct GArrowDayMillisecondClass
{
	GObjectClass parentClass;
}

struct GArrowDayTimeIntervalArray
{
	GArrowPrimitiveArray parentInstance;
}

struct GArrowDayTimeIntervalArrayBuilder
{
	GArrowArrayBuilder parentInstance;
}

struct GArrowDayTimeIntervalArrayBuilderClass
{
	GArrowArrayBuilderClass parentClass;
}

struct GArrowDayTimeIntervalArrayClass
{
	GArrowPrimitiveArrayClass parentClass;
}

struct GArrowDayTimeIntervalDataType
{
	GArrowIntervalDataType parentInstance;
}

struct GArrowDayTimeIntervalDataTypeClass
{
	GArrowIntervalDataTypeClass parentClass;
}

struct GArrowDayTimeIntervalScalar
{
	GArrowScalar parentInstance;
}

struct GArrowDayTimeIntervalScalarClass
{
	GArrowScalarClass parentClass;
}

struct GArrowDecimal128
{
	GObject parentInstance;
}

struct GArrowDecimal128Array
{
	GArrowFixedSizeBinaryArray parentInstance;
}

struct GArrowDecimal128ArrayBuilder
{
	GArrowFixedSizeBinaryArrayBuilder parentInstance;
}

struct GArrowDecimal128ArrayBuilderClass
{
	GArrowFixedSizeBinaryArrayBuilderClass parentClass;
}

struct GArrowDecimal128ArrayClass
{
	GArrowFixedSizeBinaryArrayClass parentClass;
}

struct GArrowDecimal128Class
{
	GObjectClass parentClass;
}

struct GArrowDecimal128DataType
{
	GArrowDecimalDataType parentInstance;
}

struct GArrowDecimal128DataTypeClass
{
	GArrowDecimalDataTypeClass parentClass;
}

struct GArrowDecimal128Scalar
{
	GArrowScalar parentInstance;
}

struct GArrowDecimal128ScalarClass
{
	GArrowScalarClass parentClass;
}

struct GArrowDecimal256
{
	GObject parentInstance;
}

struct GArrowDecimal256Array
{
	GArrowFixedSizeBinaryArray parentInstance;
}

struct GArrowDecimal256ArrayBuilder
{
	GArrowFixedSizeBinaryArrayBuilder parentInstance;
}

struct GArrowDecimal256ArrayBuilderClass
{
	GArrowFixedSizeBinaryArrayBuilderClass parentClass;
}

struct GArrowDecimal256ArrayClass
{
	GArrowFixedSizeBinaryArrayClass parentClass;
}

struct GArrowDecimal256Class
{
	GObjectClass parentClass;
}

struct GArrowDecimal256DataType
{
	GArrowDecimalDataType parentInstance;
}

struct GArrowDecimal256DataTypeClass
{
	GArrowDecimalDataTypeClass parentClass;
}

struct GArrowDecimal256Scalar
{
	GArrowScalar parentInstance;
}

struct GArrowDecimal256ScalarClass
{
	GArrowScalarClass parentClass;
}

struct GArrowDecimalDataType
{
	GArrowFixedSizeBinaryDataType parentInstance;
}

struct GArrowDecimalDataTypeClass
{
	GArrowFixedSizeBinaryDataTypeClass parentClass;
}

struct GArrowDenseUnionArray
{
	GArrowUnionArray parentInstance;
}

struct GArrowDenseUnionArrayBuilder
{
	GArrowUnionArrayBuilder parentInstance;
}

struct GArrowDenseUnionArrayBuilderClass
{
	GArrowUnionArrayBuilderClass parentClass;
}

struct GArrowDenseUnionArrayClass
{
	GArrowUnionArrayClass parentClass;
}

struct GArrowDenseUnionDataType
{
	GArrowUnionDataType parentInstance;
}

struct GArrowDenseUnionDataTypeClass
{
	GArrowUnionDataTypeClass parentClass;
}

struct GArrowDenseUnionScalar
{
	GArrowUnionScalar parentInstance;
}

struct GArrowDenseUnionScalarClass
{
	GArrowUnionScalarClass parentClass;
}

struct GArrowDictionaryArray
{
	GArrowArray parentInstance;
}

struct GArrowDictionaryArrayClass
{
	GArrowArrayClass parentClass;
}

struct GArrowDictionaryDataType
{
	GArrowFixedWidthDataType parentInstance;
}

struct GArrowDictionaryDataTypeClass
{
	GArrowFixedWidthDataTypeClass parentClass;
}

struct GArrowDoubleArray
{
	GArrowNumericArray parentInstance;
}

struct GArrowDoubleArrayBuilder
{
	GArrowArrayBuilder parentInstance;
}

struct GArrowDoubleArrayBuilderClass
{
	GArrowArrayBuilderClass parentClass;
}

struct GArrowDoubleArrayClass
{
	GArrowNumericArrayClass parentClass;
}

struct GArrowDoubleDataType
{
	GArrowFloatingPointDataType parentInstance;
}

struct GArrowDoubleDataTypeClass
{
	GArrowFloatingPointDataTypeClass parentClass;
}

struct GArrowDoubleScalar
{
	GArrowScalar parentInstance;
}

struct GArrowDoubleScalarClass
{
	GArrowScalarClass parentClass;
}

struct GArrowEqualOptions
{
	GObject parentInstance;
}

struct GArrowEqualOptionsClass
{
	GObjectClass parentClass;
}

struct GArrowExecuteContext
{
	GObject parentInstance;
}

struct GArrowExecuteContextClass
{
	GObjectClass parentClass;
}

struct GArrowExecuteNode
{
	GObject parentInstance;
}

struct GArrowExecuteNodeClass
{
	GObjectClass parentClass;
}

struct GArrowExecuteNodeOptions
{
	GObject parentInstance;
}

struct GArrowExecuteNodeOptionsClass
{
	GObjectClass parentClass;
}

struct GArrowExecutePlan
{
	GObject parentInstance;
}

struct GArrowExecutePlanClass
{
	GObjectClass parentClass;
}

struct GArrowExpression
{
	GObject parentInstance;
}

struct GArrowExpressionClass
{
	GObjectClass parentClass;
}

struct GArrowExtensionArray
{
	GArrowArray parentInstance;
}

struct GArrowExtensionArrayClass
{
	GArrowArrayClass parentClass;
}

struct GArrowExtensionDataType
{
	GArrowDataType parentInstance;
}

struct GArrowExtensionDataTypeClass
{
	GArrowDataTypeClass parentClass;
	/**
	 *
	 * Params:
	 *     dataType = A #GArrowExtensionDataType.
	 * Returns: The extension name of the type.
	 *
	 *     It should be freed with g_free() when no longer needed.
	 */
	extern(C) char* function(GArrowExtensionDataType* dataType) getExtensionName;
	/** */
	extern(C) int function(GArrowExtensionDataType* dataType, GArrowExtensionDataType* otherDataType) equal;
	/** */
	extern(C) GArrowDataType* function(GArrowExtensionDataType* dataType, GArrowDataType* storageDataType, GBytes* serializedData, GError** err) deserialize;
	/** */
	extern(C) GBytes* function(GArrowExtensionDataType* dataType) serialize;
	/** */
	extern(C) GType function(GArrowExtensionDataType* dataType) getArrayGtype;
}

struct GArrowExtensionDataTypeRegistry
{
	GObject parentInstance;
}

struct GArrowExtensionDataTypeRegistryClass
{
	GObjectClass parentClass;
}

struct GArrowExtensionScalar
{
	GArrowScalar parentInstance;
}

struct GArrowExtensionScalarClass
{
	GArrowScalarClass parentClass;
}

struct GArrowFeatherFileReader
{
	GObject parentInstance;
}

struct GArrowFeatherFileReaderClass
{
	GObjectClass parentClass;
}

struct GArrowFeatherWriteProperties
{
	GObject parentInstance;
}

struct GArrowFeatherWritePropertiesClass
{
	GObjectClass parentClass;
}

struct GArrowField
{
	GObject parentInstance;
}

struct GArrowFieldClass
{
	GObjectClass parentClass;
}

struct GArrowFieldExpression
{
	GArrowExpression parentInstance;
}

struct GArrowFieldExpressionClass
{
	GArrowExpressionClass parentClass;
}

struct GArrowFile;

struct GArrowFileInfo
{
	GObject parentInstance;
}

struct GArrowFileInfoClass
{
	GObjectClass parentClass;
}

struct GArrowFileInputStream
{
	GArrowSeekableInputStream parentInstance;
}

struct GArrowFileInputStreamClass
{
	GArrowSeekableInputStreamClass parentClass;
}

struct GArrowFileInterface;

struct GArrowFileOutputStream
{
	GArrowOutputStream parentInstance;
}

struct GArrowFileOutputStreamClass
{
	GArrowOutputStreamClass parentClass;
}

struct GArrowFileSelector
{
	GObject parentInstance;
}

struct GArrowFileSelectorClass
{
	GObjectClass parentClass;
}

struct GArrowFileSystem
{
	GObject parentInstance;
}

struct GArrowFileSystemClass
{
	GObjectClass parentClass;
}

struct GArrowFilterNodeOptions
{
	GArrowExecuteNodeOptions parentInstance;
}

struct GArrowFilterNodeOptionsClass
{
	GArrowExecuteNodeOptionsClass parentClass;
}

struct GArrowFilterOptions
{
	GArrowFunctionOptions parentInstance;
}

struct GArrowFilterOptionsClass
{
	GArrowFunctionOptionsClass parentClass;
}

struct GArrowFixedSizeBinaryArray
{
	GArrowPrimitiveArray parentInstance;
}

struct GArrowFixedSizeBinaryArrayBuilder
{
	GArrowArrayBuilder parentInstance;
}

struct GArrowFixedSizeBinaryArrayBuilderClass
{
	GArrowArrayBuilderClass parentClass;
}

struct GArrowFixedSizeBinaryArrayClass
{
	GArrowPrimitiveArrayClass parentClass;
}

struct GArrowFixedSizeBinaryDataType
{
	GArrowDataType parentInstance;
}

struct GArrowFixedSizeBinaryDataTypeClass
{
	GArrowFixedWidthDataTypeClass parentClass;
}

struct GArrowFixedSizeBinaryScalar
{
	GArrowBaseBinaryScalar parentInstance;
}

struct GArrowFixedSizeBinaryScalarClass
{
	GArrowBaseBinaryScalarClass parentClass;
}

struct GArrowFixedWidthDataType
{
	GArrowDataType parentInstance;
}

struct GArrowFixedWidthDataTypeClass
{
	GArrowDataTypeClass parentClass;
}

struct GArrowFloatArray
{
	GArrowNumericArray parentInstance;
}

struct GArrowFloatArrayBuilder
{
	GArrowArrayBuilder parentInstance;
}

struct GArrowFloatArrayBuilderClass
{
	GArrowArrayBuilderClass parentClass;
}

struct GArrowFloatArrayClass
{
	GArrowNumericArrayClass parentClass;
}

struct GArrowFloatDataType
{
	GArrowFloatingPointDataType parentInstance;
}

struct GArrowFloatDataTypeClass
{
	GArrowFloatingPointDataTypeClass parentClass;
}

struct GArrowFloatScalar
{
	GArrowScalar parentInstance;
}

struct GArrowFloatScalarClass
{
	GArrowScalarClass parentClass;
}

struct GArrowFloatingPointDataType
{
	GArrowNumericDataType parentInstance;
}

struct GArrowFloatingPointDataTypeClass
{
	GArrowNumericDataTypeClass parentClass;
}

struct GArrowFunction
{
	GObject parentInstance;
}

struct GArrowFunctionClass
{
	GObjectClass parentClass;
}

struct GArrowFunctionDoc
{
	GObject parentInstance;
}

struct GArrowFunctionDocClass
{
	GObjectClass parentClass;
}

struct GArrowFunctionOptions
{
	GObject parentInstance;
}

struct GArrowFunctionOptionsClass
{
	GObjectClass parentClass;
}

struct GArrowGCSFileSystem
{
	GArrowFileSystem parentInstance;
}

struct GArrowGCSFileSystemClass
{
	GArrowFileSystemClass parentClass;
}

struct GArrowGIOInputStream
{
	GArrowSeekableInputStream parentInstance;
}

struct GArrowGIOInputStreamClass
{
	GArrowSeekableInputStreamClass parentClass;
}

struct GArrowGIOOutputStream
{
	GArrowOutputStream parentInstance;
}

struct GArrowGIOOutputStreamClass
{
	GArrowOutputStreamClass parentClass;
}

struct GArrowHDFSFileSystem
{
	GArrowFileSystem parentInstance;
}

struct GArrowHDFSFileSystemClass
{
	GArrowFileSystemClass parentClass;
}

struct GArrowHalfFloatArray
{
	GArrowNumericArray parentInstance;
}

struct GArrowHalfFloatArrayBuilder
{
	GArrowArrayBuilder parentInstance;
}

struct GArrowHalfFloatArrayBuilderClass
{
	GArrowArrayBuilderClass parentClass;
}

struct GArrowHalfFloatArrayClass
{
	GArrowNumericArrayClass parentClass;
}

struct GArrowHalfFloatDataType
{
	GArrowFloatingPointDataType parentInstance;
}

struct GArrowHalfFloatDataTypeClass
{
	GArrowFloatingPointDataTypeClass parentClass;
}

struct GArrowHalfFloatScalar
{
	GArrowScalar parentInstance;
}

struct GArrowHalfFloatScalarClass
{
	GArrowScalarClass parentClass;
}

struct GArrowHashJoinNodeOptions
{
	GArrowExecuteNodeOptions parentInstance;
}

struct GArrowHashJoinNodeOptionsClass
{
	GArrowExecuteNodeOptionsClass parentClass;
}

struct GArrowISO8601TimestampParser
{
	GArrowTimestampParser parentInstance;
}

struct GArrowISO8601TimestampParserClass
{
	GArrowTimestampParserClass parentClass;
}

struct GArrowIndexOptions
{
	GArrowFunctionOptions parentInstance;
}

struct GArrowIndexOptionsClass
{
	GArrowFunctionOptionsClass parentClass;
}

struct GArrowInputStream
{
	GInputStream parentInstance;
}

struct GArrowInputStreamClass
{
	GInputStreamClass parentClass;
}

struct GArrowInt16Array
{
	GArrowNumericArray parentInstance;
}

struct GArrowInt16ArrayBuilder
{
	GArrowArrayBuilder parentInstance;
}

struct GArrowInt16ArrayBuilderClass
{
	GArrowArrayBuilderClass parentClass;
}

struct GArrowInt16ArrayClass
{
	GArrowNumericArrayClass parentClass;
}

struct GArrowInt16DataType
{
	GArrowIntegerDataType parentInstance;
}

struct GArrowInt16DataTypeClass
{
	GArrowIntegerDataTypeClass parentClass;
}

struct GArrowInt16Scalar
{
	GArrowScalar parentInstance;
}

struct GArrowInt16ScalarClass
{
	GArrowScalarClass parentClass;
}

struct GArrowInt32Array
{
	GArrowNumericArray parentInstance;
}

struct GArrowInt32ArrayBuilder
{
	GArrowArrayBuilder parentInstance;
}

struct GArrowInt32ArrayBuilderClass
{
	GArrowArrayBuilderClass parentClass;
}

struct GArrowInt32ArrayClass
{
	GArrowNumericArrayClass parentClass;
}

struct GArrowInt32DataType
{
	GArrowIntegerDataType parentInstance;
}

struct GArrowInt32DataTypeClass
{
	GArrowIntegerDataTypeClass parentClass;
}

struct GArrowInt32Scalar
{
	GArrowScalar parentInstance;
}

struct GArrowInt32ScalarClass
{
	GArrowScalarClass parentClass;
}

struct GArrowInt64Array
{
	GArrowNumericArray parentInstance;
}

struct GArrowInt64ArrayBuilder
{
	GArrowArrayBuilder parentInstance;
}

struct GArrowInt64ArrayBuilderClass
{
	GArrowArrayBuilderClass parentClass;
}

struct GArrowInt64ArrayClass
{
	GArrowNumericArrayClass parentClass;
}

struct GArrowInt64DataType
{
	GArrowIntegerDataType parentInstance;
}

struct GArrowInt64DataTypeClass
{
	GArrowIntegerDataTypeClass parentClass;
}

struct GArrowInt64Scalar
{
	GArrowScalar parentInstance;
}

struct GArrowInt64ScalarClass
{
	GArrowScalarClass parentClass;
}

struct GArrowInt8Array
{
	GArrowNumericArray parentInstance;
}

struct GArrowInt8ArrayBuilder
{
	GArrowArrayBuilder parentInstance;
}

struct GArrowInt8ArrayBuilderClass
{
	GArrowArrayBuilderClass parentClass;
}

struct GArrowInt8ArrayClass
{
	GArrowNumericArrayClass parentClass;
}

struct GArrowInt8DataType
{
	GArrowIntegerDataType parentInstance;
}

struct GArrowInt8DataTypeClass
{
	GArrowIntegerDataTypeClass parentClass;
}

struct GArrowInt8Scalar
{
	GArrowScalar parentInstance;
}

struct GArrowInt8ScalarClass
{
	GArrowScalarClass parentClass;
}

struct GArrowIntArrayBuilder
{
	GArrowArrayBuilder parentInstance;
}

struct GArrowIntArrayBuilderClass
{
	GArrowArrayBuilderClass parentClass;
}

struct GArrowIntegerDataType
{
	GArrowNumericDataType parentInstance;
}

struct GArrowIntegerDataTypeClass
{
	GArrowNumericDataTypeClass parentClass;
}

struct GArrowIntervalDataType
{
	GArrowTimeDataType parentInstance;
}

struct GArrowIntervalDataTypeClass
{
	GArrowTimeDataTypeClass parentClass;
}

struct GArrowJSONReadOptions
{
	GObject parentInstance;
}

struct GArrowJSONReadOptionsClass
{
	GObjectClass parentClass;
}

struct GArrowJSONReader
{
	GObject parentInstance;
}

struct GArrowJSONReaderClass
{
	GObjectClass parentClass;
}

struct GArrowLargeBinaryArray
{
	GArrowArray parentInstance;
}

struct GArrowLargeBinaryArrayBuilder
{
	GArrowArrayBuilder parentInstance;
}

struct GArrowLargeBinaryArrayBuilderClass
{
	GArrowArrayBuilderClass parentClass;
}

struct GArrowLargeBinaryArrayClass
{
	GArrowArrayClass parentClass;
}

struct GArrowLargeBinaryDataType
{
	GArrowDataType parentInstance;
}

struct GArrowLargeBinaryDataTypeClass
{
	GArrowDataTypeClass parentClass;
}

struct GArrowLargeBinaryScalar
{
	GArrowBaseBinaryScalar parentInstance;
}

struct GArrowLargeBinaryScalarClass
{
	GArrowBaseBinaryScalarClass parentClass;
}

struct GArrowLargeListArray
{
	GArrowArray parentInstance;
}

struct GArrowLargeListArrayBuilder
{
	GArrowArrayBuilder parentInstance;
}

struct GArrowLargeListArrayBuilderClass
{
	GArrowArrayBuilderClass parentClass;
}

struct GArrowLargeListArrayClass
{
	GArrowArrayClass parentClass;
}

struct GArrowLargeListDataType
{
	GArrowDataType parentInstance;
}

struct GArrowLargeListDataTypeClass
{
	GArrowDataTypeClass parentClass;
}

struct GArrowLargeListScalar
{
	GArrowBaseListScalar parentInstance;
}

struct GArrowLargeListScalarClass
{
	GArrowBaseListScalarClass parentClass;
}

struct GArrowLargeStringArray
{
	GArrowLargeBinaryArray parentInstance;
}

struct GArrowLargeStringArrayBuilder
{
	GArrowLargeBinaryArrayBuilder parentInstance;
}

struct GArrowLargeStringArrayBuilderClass
{
	GArrowLargeBinaryArrayBuilderClass parentClass;
}

struct GArrowLargeStringArrayClass
{
	GArrowLargeBinaryArrayClass parentClass;
}

struct GArrowLargeStringDataType
{
	GArrowLargeBinaryDataType parentInstance;
}

struct GArrowLargeStringDataTypeClass
{
	GArrowLargeBinaryDataTypeClass parentClass;
}

struct GArrowLargeStringScalar
{
	GArrowBaseBinaryScalar parentInstance;
}

struct GArrowLargeStringScalarClass
{
	GArrowBaseBinaryScalarClass parentClass;
}

struct GArrowListArray
{
	GArrowArray parentInstance;
}

struct GArrowListArrayBuilder
{
	GArrowArrayBuilder parentInstance;
}

struct GArrowListArrayBuilderClass
{
	GArrowArrayBuilderClass parentClass;
}

struct GArrowListArrayClass
{
	GArrowArrayClass parentClass;
}

struct GArrowListDataType
{
	GArrowDataType parentInstance;
}

struct GArrowListDataTypeClass
{
	GArrowDataTypeClass parentClass;
}

struct GArrowListScalar
{
	GArrowBaseListScalar parentInstance;
}

struct GArrowListScalarClass
{
	GArrowBaseListScalarClass parentClass;
}

struct GArrowLiteralExpression
{
	GArrowExpression parentInstance;
}

struct GArrowLiteralExpressionClass
{
	GArrowExpressionClass parentClass;
}

struct GArrowLocalFileSystem
{
	GArrowFileSystem parentInstance;
}

struct GArrowLocalFileSystemClass
{
	GArrowFileSystemClass parentClass;
}

struct GArrowLocalFileSystemOptions
{
	GObject parentInstance;
}

struct GArrowLocalFileSystemOptionsClass
{
	GObjectClass parentClass;
}

struct GArrowMapArray
{
	GArrowListArray parentInstance;
}

struct GArrowMapArrayBuilder
{
	GArrowArrayBuilder parentInstance;
}

struct GArrowMapArrayBuilderClass
{
	GArrowArrayBuilderClass parentClass;
}

struct GArrowMapArrayClass
{
	GArrowListArrayClass parentClass;
}

struct GArrowMapDataType
{
	GArrowListDataType parentInstance;
}

struct GArrowMapDataTypeClass
{
	GArrowListDataTypeClass parentClass;
}

struct GArrowMapScalar
{
	GArrowBaseListScalar parentInstance;
}

struct GArrowMapScalarClass
{
	GArrowBaseListScalarClass parentClass;
}

struct GArrowMatchSubstringOptions
{
	GArrowFunctionOptions parentInstance;
}

struct GArrowMatchSubstringOptionsClass
{
	GArrowFunctionOptionsClass parentClass;
}

struct GArrowMemoryMappedInputStream
{
	GArrowSeekableInputStream parentInstance;
}

struct GArrowMemoryMappedInputStreamClass
{
	GArrowSeekableInputStreamClass parentClass;
}

struct GArrowMemoryPool
{
	GObject parentInstance;
}

struct GArrowMemoryPoolClass
{
	GObjectClass parentClass;
}

struct GArrowMockFileSystem
{
	GArrowFileSystem parentInstance;
}

struct GArrowMockFileSystemClass
{
	GArrowFileSystemClass parentClass;
}

struct GArrowMonthDayNano
{
	GObject parentInstance;
}

struct GArrowMonthDayNanoClass
{
	GObjectClass parentClass;
}

struct GArrowMonthDayNanoIntervalArray
{
	GArrowPrimitiveArray parentInstance;
}

struct GArrowMonthDayNanoIntervalArrayBuilder
{
	GArrowArrayBuilder parentInstance;
}

struct GArrowMonthDayNanoIntervalArrayBuilderClass
{
	GArrowArrayBuilderClass parentClass;
}

struct GArrowMonthDayNanoIntervalArrayClass
{
	GArrowPrimitiveArrayClass parentClass;
}

struct GArrowMonthDayNanoIntervalDataType
{
	GArrowIntervalDataType parentInstance;
}

struct GArrowMonthDayNanoIntervalDataTypeClass
{
	GArrowIntervalDataTypeClass parentClass;
}

struct GArrowMonthDayNanoIntervalScalar
{
	GArrowScalar parentInstance;
}

struct GArrowMonthDayNanoIntervalScalarClass
{
	GArrowScalarClass parentClass;
}

struct GArrowMonthIntervalArray
{
	GArrowNumericArray parentInstance;
}

struct GArrowMonthIntervalArrayBuilder
{
	GArrowArrayBuilder parentInstance;
}

struct GArrowMonthIntervalArrayBuilderClass
{
	GArrowArrayBuilderClass parentClass;
}

struct GArrowMonthIntervalArrayClass
{
	GArrowNumericArrayClass parentClass;
}

struct GArrowMonthIntervalDataType
{
	GArrowIntervalDataType parentInstance;
}

struct GArrowMonthIntervalDataTypeClass
{
	GArrowIntervalDataTypeClass parentClass;
}

struct GArrowMonthIntervalScalar
{
	GArrowScalar parentInstance;
}

struct GArrowMonthIntervalScalarClass
{
	GArrowScalarClass parentClass;
}

struct GArrowMutableBuffer
{
	GArrowBuffer parentInstance;
}

struct GArrowMutableBufferClass
{
	GArrowBufferClass parentClass;
}

struct GArrowNullArray
{
	GArrowArray parentInstance;
}

struct GArrowNullArrayBuilder
{
	GArrowArrayBuilder parentInstance;
}

struct GArrowNullArrayBuilderClass
{
	GArrowArrayBuilderClass parentClass;
}

struct GArrowNullArrayClass
{
	GArrowArrayClass parentClass;
}

struct GArrowNullDataType
{
	GArrowDataType parentInstance;
}

struct GArrowNullDataTypeClass
{
	GArrowDataTypeClass parentClass;
}

struct GArrowNullScalar
{
	GArrowScalar parentInstance;
}

struct GArrowNullScalarClass
{
	GArrowScalarClass parentClass;
}

struct GArrowNumericArray
{
	GArrowPrimitiveArray parentInstance;
}

struct GArrowNumericArrayClass
{
	GArrowPrimitiveArrayClass parentClass;
}

struct GArrowNumericDataType
{
	GArrowFixedWidthDataType parentInstance;
}

struct GArrowNumericDataTypeClass
{
	GArrowFixedWidthDataTypeClass parentClass;
}

struct GArrowORCFileReader
{
	GObject parentInstance;
}

struct GArrowORCFileReaderClass
{
	GObjectClass parentClass;
}

struct GArrowOutputStream
{
	GObject parentInstance;
}

struct GArrowOutputStreamClass
{
	GObjectClass parentClass;
}

struct GArrowPrimitiveArray
{
	GArrowArray parentInstance;
}

struct GArrowPrimitiveArrayClass
{
	GArrowArrayClass parentClass;
}

struct GArrowProjectNodeOptions
{
	GArrowExecuteNodeOptions parentInstance;
}

struct GArrowProjectNodeOptionsClass
{
	GArrowExecuteNodeOptionsClass parentClass;
}

struct GArrowQuantileOptions
{
	GArrowFunctionOptions parentInstance;
}

struct GArrowQuantileOptionsClass
{
	GArrowFunctionOptionsClass parentClass;
}

struct GArrowRankOptions
{
	GArrowFunctionOptions parentInstance;
}

struct GArrowRankOptionsClass
{
	GArrowFunctionOptionsClass parentClass;
}

struct GArrowReadOptions
{
	GObject parentInstance;
}

struct GArrowReadOptionsClass
{
	GObjectClass parentClass;
}

struct GArrowReadable;

struct GArrowReadableInterface;

struct GArrowRecordBatch
{
	GObject parentInstance;
}

struct GArrowRecordBatchBuilder
{
	GObject parentInstance;
}

struct GArrowRecordBatchBuilderClass
{
	GObjectClass parentClass;
}

struct GArrowRecordBatchClass
{
	GObjectClass parentClass;
}

struct GArrowRecordBatchDatum
{
	GArrowDatum parentInstance;
}

struct GArrowRecordBatchDatumClass
{
	GArrowDatumClass parentClass;
}

struct GArrowRecordBatchFileReader
{
	GObject parentInstance;
}

struct GArrowRecordBatchFileReaderClass
{
	GObjectClass parentClass;
}

struct GArrowRecordBatchFileWriter
{
	GArrowRecordBatchStreamWriter parentInstance;
}

struct GArrowRecordBatchFileWriterClass
{
	GArrowRecordBatchStreamWriterClass parentClass;
}

struct GArrowRecordBatchIterator
{
	GObject parentInstance;
}

struct GArrowRecordBatchIteratorClass
{
	GObjectClass parentClass;
}

struct GArrowRecordBatchReader
{
	GObject parentInstance;
}

struct GArrowRecordBatchReaderClass
{
	GObjectClass parentClass;
}

struct GArrowRecordBatchStreamReader
{
	GArrowRecordBatchReader parentInstance;
}

struct GArrowRecordBatchStreamReaderClass
{
	GArrowRecordBatchReaderClass parentClass;
}

struct GArrowRecordBatchStreamWriter
{
	GArrowRecordBatchWriter parentInstance;
}

struct GArrowRecordBatchStreamWriterClass
{
	GArrowRecordBatchWriterClass parentClass;
}

struct GArrowRecordBatchWriter
{
	GObject parentInstance;
}

struct GArrowRecordBatchWriterClass
{
	GObjectClass parentClass;
}

struct GArrowResizableBuffer
{
	GArrowMutableBuffer parentInstance;
}

struct GArrowResizableBufferClass
{
	GArrowMutableBufferClass parentClass;
}

struct GArrowRoundOptions
{
	GArrowFunctionOptions parentInstance;
}

struct GArrowRoundOptionsClass
{
	GArrowFunctionOptionsClass parentClass;
}

struct GArrowRoundToMultipleOptions
{
	GArrowFunctionOptions parentInstance;
}

struct GArrowRoundToMultipleOptionsClass
{
	GArrowFunctionOptionsClass parentClass;
}

struct GArrowRunEndEncodeOptions
{
	GArrowFunctionOptions parentInstance;
}

struct GArrowRunEndEncodeOptionsClass
{
	GArrowFunctionOptionsClass parentClass;
}

struct GArrowRunEndEncodedArray
{
	GArrowArray parentInstance;
}

struct GArrowRunEndEncodedArrayClass
{
	GArrowArrayClass parentClass;
}

struct GArrowRunEndEncodedDataType
{
	GArrowFixedWidthDataType parentInstance;
}

struct GArrowRunEndEncodedDataTypeClass
{
	GArrowFixedWidthDataTypeClass parentClass;
}

struct GArrowS3FileSystem
{
	GArrowFileSystem parentInstance;
}

struct GArrowS3FileSystemClass
{
	GArrowFileSystemClass parentClass;
}

struct GArrowS3GlobalOptions
{
	GObject parentInstance;
}

struct GArrowS3GlobalOptionsClass
{
	GObjectClass parentClass;
}

struct GArrowScalar
{
	GObject parentInstance;
}

struct GArrowScalarAggregateOptions
{
	GArrowFunctionOptions parentInstance;
}

struct GArrowScalarAggregateOptionsClass
{
	GArrowFunctionOptionsClass parentClass;
}

struct GArrowScalarClass
{
	GObjectClass parentClass;
}

struct GArrowScalarDatum
{
	GArrowDatum parentInstance;
}

struct GArrowScalarDatumClass
{
	GArrowDatumClass parentClass;
}

struct GArrowSchema
{
	GObject parentInstance;
}

struct GArrowSchemaClass
{
	GObjectClass parentClass;
}

struct GArrowSeekableInputStream
{
	GArrowInputStream parentInstance;
}

struct GArrowSeekableInputStreamClass
{
	GArrowInputStreamClass parentClass;
}

struct GArrowSetLookupOptions
{
	GArrowFunctionOptions parentInstance;
}

struct GArrowSetLookupOptionsClass
{
	GArrowFunctionOptionsClass parentClass;
}

struct GArrowSinkNodeOptions
{
	GArrowExecuteNodeOptions parentInstance;
}

struct GArrowSinkNodeOptionsClass
{
	GArrowExecuteNodeOptionsClass parentClass;
}

struct GArrowSlowFileSystem
{
	GArrowFileSystem parentInstance;
}

struct GArrowSlowFileSystemClass
{
	GArrowFileSystemClass parentClass;
}

struct GArrowSortKey
{
	GObject parentInstance;
}

struct GArrowSortKeyClass
{
	GObjectClass parentClass;
}

struct GArrowSortOptions
{
	GArrowFunctionOptions parentInstance;
}

struct GArrowSortOptionsClass
{
	GArrowFunctionOptionsClass parentClass;
}

struct GArrowSourceNodeOptions
{
	GArrowExecuteNodeOptions parentInstance;
}

struct GArrowSourceNodeOptionsClass
{
	GArrowExecuteNodeOptionsClass parentClass;
}

struct GArrowSparseUnionArray
{
	GArrowUnionArray parentInstance;
}

struct GArrowSparseUnionArrayBuilder
{
	GArrowUnionArrayBuilder parentInstance;
}

struct GArrowSparseUnionArrayBuilderClass
{
	GArrowUnionArrayBuilderClass parentClass;
}

struct GArrowSparseUnionArrayClass
{
	GArrowUnionArrayClass parentClass;
}

struct GArrowSparseUnionDataType
{
	GArrowUnionDataType parentInstance;
}

struct GArrowSparseUnionDataTypeClass
{
	GArrowUnionDataTypeClass parentClass;
}

struct GArrowSparseUnionScalar
{
	GArrowUnionScalar parentInstance;
}

struct GArrowSparseUnionScalarClass
{
	GArrowUnionScalarClass parentClass;
}

struct GArrowSplitPatternOptions
{
	GArrowFunctionOptions parentInstance;
}

struct GArrowSplitPatternOptionsClass
{
	GArrowFunctionOptionsClass parentClass;
}

struct GArrowStreamDecoder
{
	GObject parentInstance;
}

struct GArrowStreamDecoderClass
{
	GObjectClass parentClass;
}

struct GArrowStreamListener
{
	GObject parentInstance;
}

struct GArrowStreamListenerClass
{
	GObjectClass parentClass;
	/**
	 *
	 * Params:
	 *     listener = A #GArrowStreamListener.
	 * Returns: %TRUE on success, %FALSE on error.
	 *
	 * Throws: GException on failure.
	 */
	extern(C) int function(GArrowStreamListener* listener, GError** err) onEos;
	/**
	 *
	 * Params:
	 *     listener = A #GArrowStreamListener.
	 *     recordBatch = A decoded #GArrowRecordBatch.
	 *     metadata = A decoded metadata.
	 * Returns: %TRUE on success, %FALSE on error.
	 *
	 * Throws: GException on failure.
	 */
	extern(C) int function(GArrowStreamListener* listener, GArrowRecordBatch* recordBatch, GHashTable* metadata, GError** err) onRecordBatchDecoded;
	/**
	 *
	 * Params:
	 *     listener = A #GArrowStreamListener.
	 *     schema = A decoded #GArrowSchema.
	 *     filteredSchema = A decoded #GArrowSchema that only has read fields.
	 * Returns: %TRUE on success, %FALSE on error.
	 *
	 * Throws: GException on failure.
	 */
	extern(C) int function(GArrowStreamListener* listener, GArrowSchema* schema, GArrowSchema* filteredSchema, GError** err) onSchemaDecoded;
}

struct GArrowStrftimeOptions
{
	GArrowFunctionOptions parentInstance;
}

struct GArrowStrftimeOptionsClass
{
	GArrowFunctionOptionsClass parentClass;
}

struct GArrowStringArray
{
	GArrowBinaryArray parentInstance;
}

struct GArrowStringArrayBuilder
{
	GArrowBinaryArrayBuilder parentInstance;
}

struct GArrowStringArrayBuilderClass
{
	GArrowBinaryArrayBuilderClass parentClass;
}

struct GArrowStringArrayClass
{
	GArrowBinaryArrayClass parentClass;
}

struct GArrowStringDataType
{
	GArrowBinaryDataType parentInstance;
}

struct GArrowStringDataTypeClass
{
	GArrowBinaryDataTypeClass parentClass;
}

struct GArrowStringDictionaryArrayBuilder
{
	GArrowArrayBuilder parentInstance;
}

struct GArrowStringDictionaryArrayBuilderClass
{
	GArrowArrayBuilderClass parentClass;
}

struct GArrowStringScalar
{
	GArrowBaseBinaryScalar parentInstance;
}

struct GArrowStringScalarClass
{
	GArrowBaseBinaryScalarClass parentClass;
}

struct GArrowStrptimeOptions
{
	GArrowFunctionOptions parentInstance;
}

struct GArrowStrptimeOptionsClass
{
	GArrowFunctionOptionsClass parentClass;
}

struct GArrowStrptimeTimestampParser
{
	GArrowTimestampParser parentInstance;
}

struct GArrowStrptimeTimestampParserClass
{
	GArrowTimestampParserClass parentClass;
}

struct GArrowStructArray
{
	GArrowArray parentInstance;
}

struct GArrowStructArrayBuilder
{
	GArrowArrayBuilder parentInstance;
}

struct GArrowStructArrayBuilderClass
{
	GArrowArrayBuilderClass parentClass;
}

struct GArrowStructArrayClass
{
	GArrowArrayClass parentClass;
}

struct GArrowStructDataType
{
	GArrowDataType parentInstance;
}

struct GArrowStructDataTypeClass
{
	GArrowDataTypeClass parentClass;
}

struct GArrowStructFieldOptions
{
	GArrowFunctionOptions parentInstance;
}

struct GArrowStructFieldOptionsClass
{
	GArrowFunctionOptionsClass parentClass;
}

struct GArrowStructScalar
{
	GArrowScalar parentInstance;
}

struct GArrowStructScalarClass
{
	GArrowScalarClass parentClass;
}

struct GArrowSubTreeFileSystem
{
	GArrowFileSystem parentInstance;
}

struct GArrowSubTreeFileSystemClass
{
	GArrowFileSystemClass parentClass;
}

struct GArrowTable
{
	GObject parentInstance;
}

struct GArrowTableBatchReader
{
	GArrowRecordBatchReader parentInstance;
}

struct GArrowTableBatchReaderClass
{
	GArrowRecordBatchReaderClass parentClass;
}

struct GArrowTableClass
{
	GObjectClass parentClass;
}

struct GArrowTableConcatenateOptions
{
	GObject parentInstance;
}

struct GArrowTableConcatenateOptionsClass
{
	GObjectClass parentClass;
}

struct GArrowTableDatum
{
	GArrowDatum parentInstance;
}

struct GArrowTableDatumClass
{
	GArrowDatumClass parentClass;
}

struct GArrowTakeOptions
{
	GArrowFunctionOptions parentInstance;
}

struct GArrowTakeOptionsClass
{
	GArrowFunctionOptionsClass parentClass;
}

struct GArrowTemporalDataType
{
	GArrowFixedWidthDataType parentInstance;
}

struct GArrowTemporalDataTypeClass
{
	GArrowFixedWidthDataTypeClass parentClass;
}

struct GArrowTensor
{
	GObject parentInstance;
}

struct GArrowTensorClass
{
	GObjectClass parentClass;
}

struct GArrowTime32Array
{
	GArrowNumericArray parentInstance;
}

struct GArrowTime32ArrayBuilder
{
	GArrowArrayBuilder parentInstance;
}

struct GArrowTime32ArrayBuilderClass
{
	GArrowArrayBuilderClass parentClass;
}

struct GArrowTime32ArrayClass
{
	GArrowNumericArrayClass parentClass;
}

struct GArrowTime32DataType
{
	GArrowTimeDataType parentInstance;
}

struct GArrowTime32DataTypeClass
{
	GArrowTimeDataTypeClass parentClass;
}

struct GArrowTime32Scalar
{
	GArrowScalar parentInstance;
}

struct GArrowTime32ScalarClass
{
	GArrowScalarClass parentClass;
}

struct GArrowTime64Array
{
	GArrowNumericArray parentInstance;
}

struct GArrowTime64ArrayBuilder
{
	GArrowArrayBuilder parentInstance;
}

struct GArrowTime64ArrayBuilderClass
{
	GArrowArrayBuilderClass parentClass;
}

struct GArrowTime64ArrayClass
{
	GArrowNumericArrayClass parentClass;
}

struct GArrowTime64DataType
{
	GArrowTimeDataType parentInstance;
}

struct GArrowTime64DataTypeClass
{
	GArrowTimeDataTypeClass parentClass;
}

struct GArrowTime64Scalar
{
	GArrowScalar parentInstance;
}

struct GArrowTime64ScalarClass
{
	GArrowScalarClass parentClass;
}

struct GArrowTimeDataType
{
	GArrowTemporalDataType parentInstance;
}

struct GArrowTimeDataTypeClass
{
	GArrowTemporalDataTypeClass parentClass;
}

struct GArrowTimestampArray
{
	GArrowNumericArray parentInstance;
}

struct GArrowTimestampArrayBuilder
{
	GArrowArrayBuilder parentInstance;
}

struct GArrowTimestampArrayBuilderClass
{
	GArrowArrayBuilderClass parentClass;
}

struct GArrowTimestampArrayClass
{
	GArrowNumericArrayClass parentClass;
}

struct GArrowTimestampDataType
{
	GArrowTemporalDataType parentInstance;
}

struct GArrowTimestampDataTypeClass
{
	GArrowTemporalDataTypeClass parentClass;
}

struct GArrowTimestampParser
{
	GObject parentInstance;
}

struct GArrowTimestampParserClass
{
	GObjectClass parentClass;
}

struct GArrowTimestampScalar
{
	GArrowScalar parentInstance;
}

struct GArrowTimestampScalarClass
{
	GArrowScalarClass parentClass;
}

struct GArrowUInt16Array
{
	GArrowNumericArray parentInstance;
}

struct GArrowUInt16ArrayBuilder
{
	GArrowArrayBuilder parentInstance;
}

struct GArrowUInt16ArrayBuilderClass
{
	GArrowArrayBuilderClass parentClass;
}

struct GArrowUInt16ArrayClass
{
	GArrowNumericArrayClass parentClass;
}

struct GArrowUInt16DataType
{
	GArrowIntegerDataType parentInstance;
}

struct GArrowUInt16DataTypeClass
{
	GArrowIntegerDataTypeClass parentClass;
}

struct GArrowUInt16Scalar
{
	GArrowScalar parentInstance;
}

struct GArrowUInt16ScalarClass
{
	GArrowScalarClass parentClass;
}

struct GArrowUInt32Array
{
	GArrowNumericArray parentInstance;
}

struct GArrowUInt32ArrayBuilder
{
	GArrowArrayBuilder parentInstance;
}

struct GArrowUInt32ArrayBuilderClass
{
	GArrowArrayBuilderClass parentClass;
}

struct GArrowUInt32ArrayClass
{
	GArrowNumericArrayClass parentClass;
}

struct GArrowUInt32DataType
{
	GArrowIntegerDataType parentInstance;
}

struct GArrowUInt32DataTypeClass
{
	GArrowIntegerDataTypeClass parentClass;
}

struct GArrowUInt32Scalar
{
	GArrowScalar parentInstance;
}

struct GArrowUInt32ScalarClass
{
	GArrowScalarClass parentClass;
}

struct GArrowUInt64Array
{
	GArrowNumericArray parentInstance;
}

struct GArrowUInt64ArrayBuilder
{
	GArrowArrayBuilder parentInstance;
}

struct GArrowUInt64ArrayBuilderClass
{
	GArrowArrayBuilderClass parentClass;
}

struct GArrowUInt64ArrayClass
{
	GArrowNumericArrayClass parentClass;
}

struct GArrowUInt64DataType
{
	GArrowIntegerDataType parentInstance;
}

struct GArrowUInt64DataTypeClass
{
	GArrowIntegerDataTypeClass parentClass;
}

struct GArrowUInt64Scalar
{
	GArrowScalar parentInstance;
}

struct GArrowUInt64ScalarClass
{
	GArrowScalarClass parentClass;
}

struct GArrowUInt8Array
{
	GArrowNumericArray parentInstance;
}

struct GArrowUInt8ArrayBuilder
{
	GArrowArrayBuilder parentInstance;
}

struct GArrowUInt8ArrayBuilderClass
{
	GArrowArrayBuilderClass parentClass;
}

struct GArrowUInt8ArrayClass
{
	GArrowNumericArrayClass parentClass;
}

struct GArrowUInt8DataType
{
	GArrowIntegerDataType parentInstance;
}

struct GArrowUInt8DataTypeClass
{
	GArrowIntegerDataTypeClass parentClass;
}

struct GArrowUInt8Scalar
{
	GArrowScalar parentInstance;
}

struct GArrowUInt8ScalarClass
{
	GArrowScalarClass parentClass;
}

struct GArrowUIntArrayBuilder
{
	GArrowArrayBuilder parentInstance;
}

struct GArrowUIntArrayBuilderClass
{
	GArrowArrayBuilderClass parentClass;
}

struct GArrowUTF8NormalizeOptions
{
	GArrowFunctionOptions parentInstance;
}

struct GArrowUTF8NormalizeOptionsClass
{
	GArrowFunctionOptionsClass parentClass;
}

struct GArrowUnionArray
{
	GArrowArray parentInstance;
}

struct GArrowUnionArrayBuilder
{
	GArrowArrayBuilder parentInstance;
}

struct GArrowUnionArrayBuilderClass
{
	GArrowArrayBuilderClass parentClass;
}

struct GArrowUnionArrayClass
{
	GArrowArrayClass parentClass;
}

struct GArrowUnionDataType
{
	GArrowDataType parentInstance;
}

struct GArrowUnionDataTypeClass
{
	GArrowDataTypeClass parentClass;
}

struct GArrowUnionScalar
{
	GArrowScalar parentInstance;
}

struct GArrowUnionScalarClass
{
	GArrowScalarClass parentClass;
}

struct GArrowVarianceOptions
{
	GArrowFunctionOptions parentInstance;
}

struct GArrowVarianceOptionsClass
{
	GArrowFunctionOptionsClass parentClass;
}

struct GArrowWritable;

struct GArrowWritableFile;

struct GArrowWritableFileInterface;

struct GArrowWritableInterface;

struct GArrowWriteOptions
{
	GObject parentInstance;
}

struct GArrowWriteOptionsClass
{
	GObjectClass parentClass;
}

/**
 * The major version.
 */
enum VERSION_MAJOR = 18;
alias GARROW_VERSION_MAJOR = VERSION_MAJOR;

/**
 * The micro version.
 */
enum VERSION_MICRO = 0;
alias GARROW_VERSION_MICRO = VERSION_MICRO;

/**
 * The minor version.
 */
enum VERSION_MINOR = 0;
alias GARROW_VERSION_MINOR = VERSION_MINOR;

/**
 * The version tag. Normally, it's an empty string. It's "SNAPSHOT"
 * for snapshot version.
 */
enum VERSION_TAG = "SNAPSHOT";
alias GARROW_VERSION_TAG = VERSION_TAG;
