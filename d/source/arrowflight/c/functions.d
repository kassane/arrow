module arrowflight.c.functions;

import std.stdio;
import arrowflight.c.types;
version (Windows)
	static immutable LIBRARY_ARROWFLIGHT = ["glib-1800.dll;g.dll;g.dll"];
else version (OSX)
	static immutable LIBRARY_ARROWFLIGHT = ["glib.1800.dylib"];
else
	static immutable LIBRARY_ARROWFLIGHT = ["libarrow-flight-glib.so.1800"];

__gshared extern(C)
{

	// arrowflight.CallOptions

	GType gaflight_call_options_get_type();
	GAFlightCallOptions* gaflight_call_options_new();
	void gaflight_call_options_add_header(GAFlightCallOptions* options, const(char)* name, const(char)* value);
	void gaflight_call_options_clear_headers(GAFlightCallOptions* options);
	void gaflight_call_options_foreach_header(GAFlightCallOptions* options, GAFlightHeaderFunc func, void* userData);

	// arrowflight.Client

	GType gaflight_client_get_type();
	GAFlightClient* gaflight_client_new(GAFlightLocation* location, GAFlightClientOptions* options, GError** err);
	int gaflight_client_authenticate_basic_token(GAFlightClient* client, const(char)* user, const(char)* password, GAFlightCallOptions* options, char** bearerName, char** bearerValue, GError** err);
	int gaflight_client_close(GAFlightClient* client, GError** err);
	GAFlightStreamReader* gaflight_client_do_get(GAFlightClient* client, GAFlightTicket* ticket, GAFlightCallOptions* options, GError** err);
	GAFlightDoPutResult* gaflight_client_do_put(GAFlightClient* client, GAFlightDescriptor* descriptor, GArrowSchema* schema, GAFlightCallOptions* options, GError** err);
	GAFlightInfo* gaflight_client_get_flight_info(GAFlightClient* client, GAFlightDescriptor* descriptor, GAFlightCallOptions* options, GError** err);
	GList* gaflight_client_list_flights(GAFlightClient* client, GAFlightCriteria* criteria, GAFlightCallOptions* options, GError** err);

	// arrowflight.ClientOptions

	GType gaflight_client_options_get_type();
	GAFlightClientOptions* gaflight_client_options_new();

	// arrowflight.CommandDescriptor

	GType gaflight_command_descriptor_get_type();
	GAFlightCommandDescriptor* gaflight_command_descriptor_new(const(char)* command);
	char* gaflight_command_descriptor_get_command(GAFlightCommandDescriptor* descriptor);

	// arrowflight.Criteria

	GType gaflight_criteria_get_type();
	GAFlightCriteria* gaflight_criteria_new(GBytes* expression);

	// arrowflight.DataStream

	GType gaflight_data_stream_get_type();

	// arrowflight.Descriptor

	GType gaflight_descriptor_get_type();
	int gaflight_descriptor_equal(GAFlightDescriptor* descriptor, GAFlightDescriptor* otherDescriptor);
	char* gaflight_descriptor_to_string(GAFlightDescriptor* descriptor);

	// arrowflight.DoPutResult

	GType gaflight_do_put_result_get_type();

	// arrowflight.Endpoint

	GType gaflight_endpoint_get_type();
	GAFlightEndpoint* gaflight_endpoint_new(GAFlightTicket* ticket, GList* locations);
	int gaflight_endpoint_equal(GAFlightEndpoint* endpoint, GAFlightEndpoint* otherEndpoint);
	GList* gaflight_endpoint_get_locations(GAFlightEndpoint* endpoint);

	// arrowflight.Info

	GType gaflight_info_get_type();
	GAFlightInfo* gaflight_info_new(GArrowSchema* schema, GAFlightDescriptor* descriptor, GList* endpoints, long totalRecords, long totalBytes, GError** err);
	int gaflight_info_equal(GAFlightInfo* info, GAFlightInfo* otherInfo);
	GAFlightDescriptor* gaflight_info_get_descriptor(GAFlightInfo* info);
	GList* gaflight_info_get_endpoints(GAFlightInfo* info);
	GArrowSchema* gaflight_info_get_schema(GAFlightInfo* info, GArrowReadOptions* options, GError** err);
	long gaflight_info_get_total_bytes(GAFlightInfo* info);
	long gaflight_info_get_total_records(GAFlightInfo* info);

	// arrowflight.Location

	GType gaflight_location_get_type();
	GAFlightLocation* gaflight_location_new(const(char)* uri, GError** err);
	int gaflight_location_equal(GAFlightLocation* location, GAFlightLocation* otherLocation);
	char* gaflight_location_get_scheme(GAFlightLocation* location);
	char* gaflight_location_to_string(GAFlightLocation* location);

	// arrowflight.MessageReader

	GType gaflight_message_reader_get_type();
	GAFlightDescriptor* gaflight_message_reader_get_descriptor(GAFlightMessageReader* reader);

	// arrowflight.MetadataReader

	GType gaflight_metadata_reader_get_type();
	GArrowBuffer* gaflight_metadata_reader_read(GAFlightMetadataReader* reader, GError** err);

	// arrowflight.MetadataWriter

	GType gaflight_metadata_writer_get_type();
	int gaflight_metadata_writer_write(GAFlightMetadataWriter* writer, GArrowBuffer* metadata, GError** err);

	// arrowflight.PathDescriptor

	GType gaflight_path_descriptor_get_type();
	GAFlightPathDescriptor* gaflight_path_descriptor_new(char** paths, size_t nPaths);
	char** gaflight_path_descriptor_get_paths(GAFlightPathDescriptor* descriptor);

	// arrowflight.RecordBatchReader

	GType gaflight_record_batch_reader_get_type();
	GArrowTable* gaflight_record_batch_reader_read_all(GAFlightRecordBatchReader* reader, GError** err);
	GAFlightStreamChunk* gaflight_record_batch_reader_read_next(GAFlightRecordBatchReader* reader, GError** err);

	// arrowflight.RecordBatchStream

	GType gaflight_record_batch_stream_get_type();
	GAFlightRecordBatchStream* gaflight_record_batch_stream_new(GArrowRecordBatchReader* reader, GArrowWriteOptions* options);

	// arrowflight.RecordBatchWriter

	GType gaflight_record_batch_writer_get_type();
	int gaflight_record_batch_writer_begin(GAFlightRecordBatchWriter* writer, GArrowSchema* schema, GArrowWriteOptions* options, GError** err);
	int gaflight_record_batch_writer_write_metadata(GAFlightRecordBatchWriter* writer, GArrowBuffer* metadata, GError** err);
	int gaflight_record_batch_writer_write_record_batch(GAFlightRecordBatchWriter* writer, GArrowRecordBatch* recordBatch, GArrowBuffer* metadata, GError** err);

	// arrowflight.Servable

	GType gaflight_servable_get_type();

	// arrowflight.Server

	GType gaflight_server_get_type();
	GAFlightDataStream* gaflight_server_do_get(GAFlightServer* server, GAFlightServerCallContext* context, GAFlightTicket* ticket, GError** err);
	int gaflight_server_do_put(GAFlightServer* server, GAFlightServerCallContext* context, GAFlightMessageReader* reader, GAFlightMetadataWriter* writer, GError** err);
	GAFlightInfo* gaflight_server_get_flight_info(GAFlightServer* server, GAFlightServerCallContext* context, GAFlightDescriptor* request, GError** err);
	int gaflight_server_get_port(GAFlightServer* server);
	GList* gaflight_server_list_flights(GAFlightServer* server, GAFlightServerCallContext* context, GAFlightCriteria* criteria, GError** err);
	int gaflight_server_listen(GAFlightServer* server, GAFlightServerOptions* options, GError** err);
	int gaflight_server_shutdown(GAFlightServer* server, GError** err);
	int gaflight_server_wait(GAFlightServer* server, GError** err);

	// arrowflight.ServerAuthHandler

	GType gaflight_server_auth_handler_get_type();

	// arrowflight.ServerAuthReader

	GType gaflight_server_auth_reader_get_type();
	GBytes* gaflight_server_auth_reader_read(GAFlightServerAuthReader* reader, GError** err);

	// arrowflight.ServerAuthSender

	GType gaflight_server_auth_sender_get_type();
	int gaflight_server_auth_sender_write(GAFlightServerAuthSender* sender, GBytes* message, GError** err);

	// arrowflight.ServerCallContext

	GType gaflight_server_call_context_get_type();
	void gaflight_server_call_context_foreach_incoming_header(GAFlightServerCallContext* context, GAFlightHeaderFunc func, void* userData);

	// arrowflight.ServerCustomAuthHandler

	GType gaflight_server_custom_auth_handler_get_type();
	void gaflight_server_custom_auth_handler_authenticate(GAFlightServerCustomAuthHandler* handler, GAFlightServerCallContext* context, GAFlightServerAuthSender* sender, GAFlightServerAuthReader* reader, GError** err);
	GBytes* gaflight_server_custom_auth_handler_is_valid(GAFlightServerCustomAuthHandler* handler, GAFlightServerCallContext* context, GBytes* token, GError** err);

	// arrowflight.ServerOptions

	GType gaflight_server_options_get_type();
	GAFlightServerOptions* gaflight_server_options_new(GAFlightLocation* location);

	// arrowflight.StreamChunk

	GType gaflight_stream_chunk_get_type();
	GArrowRecordBatch* gaflight_stream_chunk_get_data(GAFlightStreamChunk* chunk);
	GArrowBuffer* gaflight_stream_chunk_get_metadata(GAFlightStreamChunk* chunk);

	// arrowflight.StreamReader

	GType gaflight_stream_reader_get_type();

	// arrowflight.StreamWriter

	GType gaflight_stream_writer_get_type();
	int gaflight_stream_writer_done_writing(GAFlightStreamWriter* writer, GError** err);

	// arrowflight.Ticket

	GType gaflight_ticket_get_type();
	GAFlightTicket* gaflight_ticket_new(GBytes* data);
	int gaflight_ticket_equal(GAFlightTicket* ticket, GAFlightTicket* otherTicket);
}