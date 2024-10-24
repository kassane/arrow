module arrowflight.c.types;

public import arrow.c.types;
public import glib.c.types;
public import gobject.c.types;


struct GAFlightCallOptions
{
	GObject parentInstance;
}

struct GAFlightCallOptionsClass
{
	GObjectClass parentClass;
}

struct GAFlightClient
{
	GObject parentInstance;
}

struct GAFlightClientClass
{
	GObjectClass parentClass;
}

struct GAFlightClientOptions
{
	GObject parentInstance;
}

struct GAFlightClientOptionsClass
{
	GObjectClass parentClass;
}

struct GAFlightCommandDescriptor
{
	GAFlightDescriptor parentInstance;
}

struct GAFlightCommandDescriptorClass
{
	GAFlightDescriptorClass parentClass;
}

struct GAFlightCriteria
{
	GObject parentInstance;
}

struct GAFlightCriteriaClass
{
	GObjectClass parentClass;
}

struct GAFlightDataStream
{
	GObject parentInstance;
}

struct GAFlightDataStreamClass
{
	GObjectClass parentClass;
}

struct GAFlightDescriptor
{
	GObject parentInstance;
}

struct GAFlightDescriptorClass
{
	GObjectClass parentClass;
}

struct GAFlightDoPutResult
{
	GObject parentInstance;
}

struct GAFlightDoPutResultClass
{
	GObjectClass parentClass;
}

struct GAFlightEndpoint
{
	GObject parentInstance;
}

struct GAFlightEndpointClass
{
	GObjectClass parentClass;
}

struct GAFlightInfo
{
	GObject parentInstance;
}

struct GAFlightInfoClass
{
	GObjectClass parentClass;
}

struct GAFlightLocation
{
	GObject parentInstance;
}

struct GAFlightLocationClass
{
	GObjectClass parentClass;
}

struct GAFlightMessageReader
{
	GAFlightRecordBatchReader parentInstance;
}

struct GAFlightMessageReaderClass
{
	GAFlightRecordBatchReaderClass parentClass;
}

struct GAFlightMetadataReader
{
	GObject parentInstance;
}

struct GAFlightMetadataReaderClass
{
	GObjectClass parentClass;
}

struct GAFlightMetadataWriter
{
	GObject parentInstance;
}

struct GAFlightMetadataWriterClass
{
	GObjectClass parentClass;
}

struct GAFlightPathDescriptor
{
	GAFlightDescriptor parentInstance;
}

struct GAFlightPathDescriptorClass
{
	GAFlightDescriptorClass parentClass;
}

struct GAFlightRecordBatchReader
{
	GObject parentInstance;
}

struct GAFlightRecordBatchReaderClass
{
	GObjectClass parentClass;
}

struct GAFlightRecordBatchStream
{
	GAFlightDataStream parentInstance;
}

struct GAFlightRecordBatchStreamClass
{
	GAFlightDataStreamClass parentClass;
}

struct GAFlightRecordBatchWriter
{
	GArrowRecordBatchWriter parentInstance;
}

struct GAFlightRecordBatchWriterClass
{
	GArrowRecordBatchWriterClass parentClass;
}

struct GAFlightServable;

struct GAFlightServableInterface;

struct GAFlightServer
{
	GObject parentInstance;
}

struct GAFlightServerAuthHandler
{
	GObject parentInstance;
}

struct GAFlightServerAuthHandlerClass
{
	GObjectClass parentClass;
}

struct GAFlightServerAuthReader
{
	GObject parentInstance;
}

struct GAFlightServerAuthReaderClass
{
	GObjectClass parentClass;
}

struct GAFlightServerAuthSender
{
	GObject parentInstance;
}

struct GAFlightServerAuthSenderClass
{
	GObjectClass parentClass;
}

struct GAFlightServerCallContext
{
	GObject parentInstance;
}

struct GAFlightServerCallContextClass
{
	GObjectClass parentClass;
}

struct GAFlightServerClass
{
	GObjectClass parentClass;
	/**
	 *
	 * Params:
	 *     server = A #GAFlightServer.
	 *     context = A #GAFlightServerCallContext.
	 *     criteria = A #GAFlightCriteria.
	 * Returns: #GList of #GAFlightInfo on success, %NULL on error.
	 *
	 * Throws: GException on failure.
	 */
	extern(C) GList* function(GAFlightServer* server, GAFlightServerCallContext* context, GAFlightCriteria* criteria, GError** err) listFlights;
	/**
	 *
	 * Params:
	 *     server = A #GAFlightServer.
	 *     context = A #GAFlightServerCallContext.
	 *     request = A #GAFlightDescriptor.
	 * Returns: A #GAFlightInfo on success, %NULL on error.
	 *
	 * Throws: GException on failure.
	 */
	extern(C) GAFlightInfo* function(GAFlightServer* server, GAFlightServerCallContext* context, GAFlightDescriptor* request, GError** err) getFlightInfo;
	/**
	 *
	 * Params:
	 *     server = A #GAFlightServer.
	 *     context = A #GAFlightServerCallContext.
	 *     ticket = A #GAFlightTicket.
	 * Returns: #GAFlightDataStream on success, %NULL on error.
	 *
	 * Throws: GException on failure.
	 */
	extern(C) GAFlightDataStream* function(GAFlightServer* server, GAFlightServerCallContext* context, GAFlightTicket* ticket, GError** err) doGet;
	/**
	 *
	 * Params:
	 *     server = A #GAFlightServer.
	 *     context = A #GAFlightServerCallContext.
	 *     reader = A #GAFlightMessageReader.
	 *     writer = A #GAFlightMetadataWriter.
	 * Returns: %TRUE on success, %FALSE on error.
	 *
	 * Throws: GException on failure.
	 */
	extern(C) int function(GAFlightServer* server, GAFlightServerCallContext* context, GAFlightMessageReader* reader, GAFlightMetadataWriter* writer, GError** err) doPut;
}

struct GAFlightServerCustomAuthHandler
{
	GAFlightServerAuthHandler parentInstance;
}

struct GAFlightServerCustomAuthHandlerClass
{
	GAFlightServerAuthHandlerClass parentClass;
	/** */
	extern(C) void function(GAFlightServerCustomAuthHandler* handler, GAFlightServerCallContext* context, GAFlightServerAuthSender* sender, GAFlightServerAuthReader* reader, GError** err) authenticate;
	/**
	 *
	 * Params:
	 *     handler = A #GAFlightServerCustomAuthHandler.
	 *     context = A #GAFlightServerCallContext.
	 *     token = The client token. May be the empty string if the client does not
	 *         provide a token.
	 * Returns: The identity of the peer, if
	 *     this authentication method supports it.
	 *
	 * Throws: GException on failure.
	 */
	extern(C) GBytes* function(GAFlightServerCustomAuthHandler* handler, GAFlightServerCallContext* context, GBytes* token, GError** err) isValid;
}

struct GAFlightServerOptions
{
	GObject parentInstance;
}

struct GAFlightServerOptionsClass
{
	GObjectClass parentClass;
}

struct GAFlightStreamChunk
{
	GObject parentInstance;
}

struct GAFlightStreamChunkClass
{
	GObjectClass parentClass;
}

struct GAFlightStreamReader
{
	GAFlightRecordBatchReader parentInstance;
}

struct GAFlightStreamReaderClass
{
	GAFlightRecordBatchReaderClass parentClass;
}

struct GAFlightStreamWriter
{
	GAFlightRecordBatchWriter parentInstance;
}

struct GAFlightStreamWriterClass
{
	GAFlightRecordBatchWriterClass parentClass;
}

struct GAFlightTicket
{
	GObject parentInstance;
}

struct GAFlightTicketClass
{
	GObjectClass parentClass;
}

/**
 * It is called with each header name/value pair, together with the
 * @user_data parameter which is passed to
 * gaflight_call_options_foreach_header() and so on.
 *
 * Params:
 *     name = A header name.
 *     value = The value corresponding to the name.
 *     userData = User data passed to gaflight_call_options_foreach_header()
 *         and so on.
 *
 * Since: 9.0.0
 */
public alias extern(C) void function(const(char)* name, const(char)* value, void* userData) GAFlightHeaderFunc;

/**
 * The major version.
 */
enum VERSION_MAJOR = 18;
alias GAFLIGHT_VERSION_MAJOR = VERSION_MAJOR;

/**
 * The micro version.
 */
enum VERSION_MICRO = 0;
alias GAFLIGHT_VERSION_MICRO = VERSION_MICRO;

/**
 * The minor version.
 */
enum VERSION_MINOR = 0;
alias GAFLIGHT_VERSION_MINOR = VERSION_MINOR;

/**
 * The version tag. Normally, it's an empty string. It's "SNAPSHOT"
 * for snapshot version.
 */
enum VERSION_TAG = "SNAPSHOT";
alias GAFLIGHT_VERSION_TAG = VERSION_TAG;
