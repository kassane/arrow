module arrowflight.c.functions;

import std.stdio;
import arrowflight.c.types;
import gtkd.Loader;

version (Windows)
	static immutable LIBRARY_ARROWFLIGHT = ["glib-1800.dll;g.dll;g.dll"];
else version (OSX)
	static immutable LIBRARY_ARROWFLIGHT = ["glib.1800.dylib"];
else
	static immutable LIBRARY_ARROWFLIGHT = ["libarrow-flight-glib.so.1800"];

shared static this()
{
	// arrowflight.CallOptions

	Linker.link(gaflight_call_options_get_type, "gaflight_call_options_get_type", LIBRARY_ARROWFLIGHT);
	Linker.link(gaflight_call_options_new, "gaflight_call_options_new", LIBRARY_ARROWFLIGHT);
	Linker.link(gaflight_call_options_add_header, "gaflight_call_options_add_header", LIBRARY_ARROWFLIGHT);
	Linker.link(gaflight_call_options_clear_headers, "gaflight_call_options_clear_headers", LIBRARY_ARROWFLIGHT);
	Linker.link(gaflight_call_options_foreach_header, "gaflight_call_options_foreach_header", LIBRARY_ARROWFLIGHT);

	// arrowflight.Client

	Linker.link(gaflight_client_get_type, "gaflight_client_get_type", LIBRARY_ARROWFLIGHT);
	Linker.link(gaflight_client_new, "gaflight_client_new", LIBRARY_ARROWFLIGHT);
	Linker.link(gaflight_client_authenticate_basic_token, "gaflight_client_authenticate_basic_token", LIBRARY_ARROWFLIGHT);
	Linker.link(gaflight_client_close, "gaflight_client_close", LIBRARY_ARROWFLIGHT);
	Linker.link(gaflight_client_do_get, "gaflight_client_do_get", LIBRARY_ARROWFLIGHT);
	Linker.link(gaflight_client_do_put, "gaflight_client_do_put", LIBRARY_ARROWFLIGHT);
	Linker.link(gaflight_client_get_flight_info, "gaflight_client_get_flight_info", LIBRARY_ARROWFLIGHT);
	Linker.link(gaflight_client_list_flights, "gaflight_client_list_flights", LIBRARY_ARROWFLIGHT);

	// arrowflight.ClientOptions

	Linker.link(gaflight_client_options_get_type, "gaflight_client_options_get_type", LIBRARY_ARROWFLIGHT);
	Linker.link(gaflight_client_options_new, "gaflight_client_options_new", LIBRARY_ARROWFLIGHT);

	// arrowflight.CommandDescriptor

	Linker.link(gaflight_command_descriptor_get_type, "gaflight_command_descriptor_get_type", LIBRARY_ARROWFLIGHT);
	Linker.link(gaflight_command_descriptor_new, "gaflight_command_descriptor_new", LIBRARY_ARROWFLIGHT);
	Linker.link(gaflight_command_descriptor_get_command, "gaflight_command_descriptor_get_command", LIBRARY_ARROWFLIGHT);

	// arrowflight.Criteria

	Linker.link(gaflight_criteria_get_type, "gaflight_criteria_get_type", LIBRARY_ARROWFLIGHT);
	Linker.link(gaflight_criteria_new, "gaflight_criteria_new", LIBRARY_ARROWFLIGHT);

	// arrowflight.DataStream

	Linker.link(gaflight_data_stream_get_type, "gaflight_data_stream_get_type", LIBRARY_ARROWFLIGHT);

	// arrowflight.Descriptor

	Linker.link(gaflight_descriptor_get_type, "gaflight_descriptor_get_type", LIBRARY_ARROWFLIGHT);
	Linker.link(gaflight_descriptor_equal, "gaflight_descriptor_equal", LIBRARY_ARROWFLIGHT);
	Linker.link(gaflight_descriptor_to_string, "gaflight_descriptor_to_string", LIBRARY_ARROWFLIGHT);

	// arrowflight.DoPutResult

	Linker.link(gaflight_do_put_result_get_type, "gaflight_do_put_result_get_type", LIBRARY_ARROWFLIGHT);

	// arrowflight.Endpoint

	Linker.link(gaflight_endpoint_get_type, "gaflight_endpoint_get_type", LIBRARY_ARROWFLIGHT);
	Linker.link(gaflight_endpoint_new, "gaflight_endpoint_new", LIBRARY_ARROWFLIGHT);
	Linker.link(gaflight_endpoint_equal, "gaflight_endpoint_equal", LIBRARY_ARROWFLIGHT);
	Linker.link(gaflight_endpoint_get_locations, "gaflight_endpoint_get_locations", LIBRARY_ARROWFLIGHT);

	// arrowflight.Info

	Linker.link(gaflight_info_get_type, "gaflight_info_get_type", LIBRARY_ARROWFLIGHT);
	Linker.link(gaflight_info_new, "gaflight_info_new", LIBRARY_ARROWFLIGHT);
	Linker.link(gaflight_info_equal, "gaflight_info_equal", LIBRARY_ARROWFLIGHT);
	Linker.link(gaflight_info_get_descriptor, "gaflight_info_get_descriptor", LIBRARY_ARROWFLIGHT);
	Linker.link(gaflight_info_get_endpoints, "gaflight_info_get_endpoints", LIBRARY_ARROWFLIGHT);
	Linker.link(gaflight_info_get_schema, "gaflight_info_get_schema", LIBRARY_ARROWFLIGHT);
	Linker.link(gaflight_info_get_total_bytes, "gaflight_info_get_total_bytes", LIBRARY_ARROWFLIGHT);
	Linker.link(gaflight_info_get_total_records, "gaflight_info_get_total_records", LIBRARY_ARROWFLIGHT);

	// arrowflight.Location

	Linker.link(gaflight_location_get_type, "gaflight_location_get_type", LIBRARY_ARROWFLIGHT);
	Linker.link(gaflight_location_new, "gaflight_location_new", LIBRARY_ARROWFLIGHT);
	Linker.link(gaflight_location_equal, "gaflight_location_equal", LIBRARY_ARROWFLIGHT);
	Linker.link(gaflight_location_get_scheme, "gaflight_location_get_scheme", LIBRARY_ARROWFLIGHT);
	Linker.link(gaflight_location_to_string, "gaflight_location_to_string", LIBRARY_ARROWFLIGHT);

	// arrowflight.MessageReader

	Linker.link(gaflight_message_reader_get_type, "gaflight_message_reader_get_type", LIBRARY_ARROWFLIGHT);
	Linker.link(gaflight_message_reader_get_descriptor, "gaflight_message_reader_get_descriptor", LIBRARY_ARROWFLIGHT);

	// arrowflight.MetadataReader

	Linker.link(gaflight_metadata_reader_get_type, "gaflight_metadata_reader_get_type", LIBRARY_ARROWFLIGHT);
	Linker.link(gaflight_metadata_reader_read, "gaflight_metadata_reader_read", LIBRARY_ARROWFLIGHT);

	// arrowflight.MetadataWriter

	Linker.link(gaflight_metadata_writer_get_type, "gaflight_metadata_writer_get_type", LIBRARY_ARROWFLIGHT);
	Linker.link(gaflight_metadata_writer_write, "gaflight_metadata_writer_write", LIBRARY_ARROWFLIGHT);

	// arrowflight.PathDescriptor

	Linker.link(gaflight_path_descriptor_get_type, "gaflight_path_descriptor_get_type", LIBRARY_ARROWFLIGHT);
	Linker.link(gaflight_path_descriptor_new, "gaflight_path_descriptor_new", LIBRARY_ARROWFLIGHT);
	Linker.link(gaflight_path_descriptor_get_paths, "gaflight_path_descriptor_get_paths", LIBRARY_ARROWFLIGHT);

	// arrowflight.RecordBatchReader

	Linker.link(gaflight_record_batch_reader_get_type, "gaflight_record_batch_reader_get_type", LIBRARY_ARROWFLIGHT);
	Linker.link(gaflight_record_batch_reader_read_all, "gaflight_record_batch_reader_read_all", LIBRARY_ARROWFLIGHT);
	Linker.link(gaflight_record_batch_reader_read_next, "gaflight_record_batch_reader_read_next", LIBRARY_ARROWFLIGHT);

	// arrowflight.RecordBatchStream

	Linker.link(gaflight_record_batch_stream_get_type, "gaflight_record_batch_stream_get_type", LIBRARY_ARROWFLIGHT);
	Linker.link(gaflight_record_batch_stream_new, "gaflight_record_batch_stream_new", LIBRARY_ARROWFLIGHT);

	// arrowflight.RecordBatchWriter

	Linker.link(gaflight_record_batch_writer_get_type, "gaflight_record_batch_writer_get_type", LIBRARY_ARROWFLIGHT);
	Linker.link(gaflight_record_batch_writer_begin, "gaflight_record_batch_writer_begin", LIBRARY_ARROWFLIGHT);
	Linker.link(gaflight_record_batch_writer_write_metadata, "gaflight_record_batch_writer_write_metadata", LIBRARY_ARROWFLIGHT);
	Linker.link(gaflight_record_batch_writer_write_record_batch, "gaflight_record_batch_writer_write_record_batch", LIBRARY_ARROWFLIGHT);

	// arrowflight.Servable

	Linker.link(gaflight_servable_get_type, "gaflight_servable_get_type", LIBRARY_ARROWFLIGHT);

	// arrowflight.Server

	Linker.link(gaflight_server_get_type, "gaflight_server_get_type", LIBRARY_ARROWFLIGHT);
	Linker.link(gaflight_server_do_get, "gaflight_server_do_get", LIBRARY_ARROWFLIGHT);
	Linker.link(gaflight_server_do_put, "gaflight_server_do_put", LIBRARY_ARROWFLIGHT);
	Linker.link(gaflight_server_get_flight_info, "gaflight_server_get_flight_info", LIBRARY_ARROWFLIGHT);
	Linker.link(gaflight_server_get_port, "gaflight_server_get_port", LIBRARY_ARROWFLIGHT);
	Linker.link(gaflight_server_list_flights, "gaflight_server_list_flights", LIBRARY_ARROWFLIGHT);
	Linker.link(gaflight_server_listen, "gaflight_server_listen", LIBRARY_ARROWFLIGHT);
	Linker.link(gaflight_server_shutdown, "gaflight_server_shutdown", LIBRARY_ARROWFLIGHT);
	Linker.link(gaflight_server_wait, "gaflight_server_wait", LIBRARY_ARROWFLIGHT);

	// arrowflight.ServerAuthHandler

	Linker.link(gaflight_server_auth_handler_get_type, "gaflight_server_auth_handler_get_type", LIBRARY_ARROWFLIGHT);

	// arrowflight.ServerAuthReader

	Linker.link(gaflight_server_auth_reader_get_type, "gaflight_server_auth_reader_get_type", LIBRARY_ARROWFLIGHT);
	Linker.link(gaflight_server_auth_reader_read, "gaflight_server_auth_reader_read", LIBRARY_ARROWFLIGHT);

	// arrowflight.ServerAuthSender

	Linker.link(gaflight_server_auth_sender_get_type, "gaflight_server_auth_sender_get_type", LIBRARY_ARROWFLIGHT);
	Linker.link(gaflight_server_auth_sender_write, "gaflight_server_auth_sender_write", LIBRARY_ARROWFLIGHT);

	// arrowflight.ServerCallContext

	Linker.link(gaflight_server_call_context_get_type, "gaflight_server_call_context_get_type", LIBRARY_ARROWFLIGHT);
	Linker.link(gaflight_server_call_context_foreach_incoming_header, "gaflight_server_call_context_foreach_incoming_header", LIBRARY_ARROWFLIGHT);

	// arrowflight.ServerCustomAuthHandler

	Linker.link(gaflight_server_custom_auth_handler_get_type, "gaflight_server_custom_auth_handler_get_type", LIBRARY_ARROWFLIGHT);
	Linker.link(gaflight_server_custom_auth_handler_authenticate, "gaflight_server_custom_auth_handler_authenticate", LIBRARY_ARROWFLIGHT);
	Linker.link(gaflight_server_custom_auth_handler_is_valid, "gaflight_server_custom_auth_handler_is_valid", LIBRARY_ARROWFLIGHT);

	// arrowflight.ServerOptions

	Linker.link(gaflight_server_options_get_type, "gaflight_server_options_get_type", LIBRARY_ARROWFLIGHT);
	Linker.link(gaflight_server_options_new, "gaflight_server_options_new", LIBRARY_ARROWFLIGHT);

	// arrowflight.StreamChunk

	Linker.link(gaflight_stream_chunk_get_type, "gaflight_stream_chunk_get_type", LIBRARY_ARROWFLIGHT);
	Linker.link(gaflight_stream_chunk_get_data, "gaflight_stream_chunk_get_data", LIBRARY_ARROWFLIGHT);
	Linker.link(gaflight_stream_chunk_get_metadata, "gaflight_stream_chunk_get_metadata", LIBRARY_ARROWFLIGHT);

	// arrowflight.StreamReader

	Linker.link(gaflight_stream_reader_get_type, "gaflight_stream_reader_get_type", LIBRARY_ARROWFLIGHT);

	// arrowflight.StreamWriter

	Linker.link(gaflight_stream_writer_get_type, "gaflight_stream_writer_get_type", LIBRARY_ARROWFLIGHT);
	Linker.link(gaflight_stream_writer_done_writing, "gaflight_stream_writer_done_writing", LIBRARY_ARROWFLIGHT);

	// arrowflight.Ticket

	Linker.link(gaflight_ticket_get_type, "gaflight_ticket_get_type", LIBRARY_ARROWFLIGHT);
	Linker.link(gaflight_ticket_new, "gaflight_ticket_new", LIBRARY_ARROWFLIGHT);
	Linker.link(gaflight_ticket_equal, "gaflight_ticket_equal", LIBRARY_ARROWFLIGHT);
}

__gshared extern(C)
{

	// arrowflight.CallOptions

	GType function() c_gaflight_call_options_get_type;
	GAFlightCallOptions* function() c_gaflight_call_options_new;
	void function(GAFlightCallOptions* options, const(char)* name, const(char)* value) c_gaflight_call_options_add_header;
	void function(GAFlightCallOptions* options) c_gaflight_call_options_clear_headers;
	void function(GAFlightCallOptions* options, GAFlightHeaderFunc func, void* userData) c_gaflight_call_options_foreach_header;

	// arrowflight.Client

	GType function() c_gaflight_client_get_type;
	GAFlightClient* function(GAFlightLocation* location, GAFlightClientOptions* options, GError** err) c_gaflight_client_new;
	int function(GAFlightClient* client, const(char)* user, const(char)* password, GAFlightCallOptions* options, char** bearerName, char** bearerValue, GError** err) c_gaflight_client_authenticate_basic_token;
	int function(GAFlightClient* client, GError** err) c_gaflight_client_close;
	GAFlightStreamReader* function(GAFlightClient* client, GAFlightTicket* ticket, GAFlightCallOptions* options, GError** err) c_gaflight_client_do_get;
	GAFlightDoPutResult* function(GAFlightClient* client, GAFlightDescriptor* descriptor, GArrowSchema* schema, GAFlightCallOptions* options, GError** err) c_gaflight_client_do_put;
	GAFlightInfo* function(GAFlightClient* client, GAFlightDescriptor* descriptor, GAFlightCallOptions* options, GError** err) c_gaflight_client_get_flight_info;
	GList* function(GAFlightClient* client, GAFlightCriteria* criteria, GAFlightCallOptions* options, GError** err) c_gaflight_client_list_flights;

	// arrowflight.ClientOptions

	GType function() c_gaflight_client_options_get_type;
	GAFlightClientOptions* function() c_gaflight_client_options_new;

	// arrowflight.CommandDescriptor

	GType function() c_gaflight_command_descriptor_get_type;
	GAFlightCommandDescriptor* function(const(char)* command) c_gaflight_command_descriptor_new;
	char* function(GAFlightCommandDescriptor* descriptor) c_gaflight_command_descriptor_get_command;

	// arrowflight.Criteria

	GType function() c_gaflight_criteria_get_type;
	GAFlightCriteria* function(GBytes* expression) c_gaflight_criteria_new;

	// arrowflight.DataStream

	GType function() c_gaflight_data_stream_get_type;

	// arrowflight.Descriptor

	GType function() c_gaflight_descriptor_get_type;
	int function(GAFlightDescriptor* descriptor, GAFlightDescriptor* otherDescriptor) c_gaflight_descriptor_equal;
	char* function(GAFlightDescriptor* descriptor) c_gaflight_descriptor_to_string;

	// arrowflight.DoPutResult

	GType function() c_gaflight_do_put_result_get_type;

	// arrowflight.Endpoint

	GType function() c_gaflight_endpoint_get_type;
	GAFlightEndpoint* function(GAFlightTicket* ticket, GList* locations) c_gaflight_endpoint_new;
	int function(GAFlightEndpoint* endpoint, GAFlightEndpoint* otherEndpoint) c_gaflight_endpoint_equal;
	GList* function(GAFlightEndpoint* endpoint) c_gaflight_endpoint_get_locations;

	// arrowflight.Info

	GType function() c_gaflight_info_get_type;
	GAFlightInfo* function(GArrowSchema* schema, GAFlightDescriptor* descriptor, GList* endpoints, long totalRecords, long totalBytes, GError** err) c_gaflight_info_new;
	int function(GAFlightInfo* info, GAFlightInfo* otherInfo) c_gaflight_info_equal;
	GAFlightDescriptor* function(GAFlightInfo* info) c_gaflight_info_get_descriptor;
	GList* function(GAFlightInfo* info) c_gaflight_info_get_endpoints;
	GArrowSchema* function(GAFlightInfo* info, GArrowReadOptions* options, GError** err) c_gaflight_info_get_schema;
	long function(GAFlightInfo* info) c_gaflight_info_get_total_bytes;
	long function(GAFlightInfo* info) c_gaflight_info_get_total_records;

	// arrowflight.Location

	GType function() c_gaflight_location_get_type;
	GAFlightLocation* function(const(char)* uri, GError** err) c_gaflight_location_new;
	int function(GAFlightLocation* location, GAFlightLocation* otherLocation) c_gaflight_location_equal;
	char* function(GAFlightLocation* location) c_gaflight_location_get_scheme;
	char* function(GAFlightLocation* location) c_gaflight_location_to_string;

	// arrowflight.MessageReader

	GType function() c_gaflight_message_reader_get_type;
	GAFlightDescriptor* function(GAFlightMessageReader* reader) c_gaflight_message_reader_get_descriptor;

	// arrowflight.MetadataReader

	GType function() c_gaflight_metadata_reader_get_type;
	GArrowBuffer* function(GAFlightMetadataReader* reader, GError** err) c_gaflight_metadata_reader_read;

	// arrowflight.MetadataWriter

	GType function() c_gaflight_metadata_writer_get_type;
	int function(GAFlightMetadataWriter* writer, GArrowBuffer* metadata, GError** err) c_gaflight_metadata_writer_write;

	// arrowflight.PathDescriptor

	GType function() c_gaflight_path_descriptor_get_type;
	GAFlightPathDescriptor* function(char** paths, size_t nPaths) c_gaflight_path_descriptor_new;
	char** function(GAFlightPathDescriptor* descriptor) c_gaflight_path_descriptor_get_paths;

	// arrowflight.RecordBatchReader

	GType function() c_gaflight_record_batch_reader_get_type;
	GArrowTable* function(GAFlightRecordBatchReader* reader, GError** err) c_gaflight_record_batch_reader_read_all;
	GAFlightStreamChunk* function(GAFlightRecordBatchReader* reader, GError** err) c_gaflight_record_batch_reader_read_next;

	// arrowflight.RecordBatchStream

	GType function() c_gaflight_record_batch_stream_get_type;
	GAFlightRecordBatchStream* function(GArrowRecordBatchReader* reader, GArrowWriteOptions* options) c_gaflight_record_batch_stream_new;

	// arrowflight.RecordBatchWriter

	GType function() c_gaflight_record_batch_writer_get_type;
	int function(GAFlightRecordBatchWriter* writer, GArrowSchema* schema, GArrowWriteOptions* options, GError** err) c_gaflight_record_batch_writer_begin;
	int function(GAFlightRecordBatchWriter* writer, GArrowBuffer* metadata, GError** err) c_gaflight_record_batch_writer_write_metadata;
	int function(GAFlightRecordBatchWriter* writer, GArrowRecordBatch* recordBatch, GArrowBuffer* metadata, GError** err) c_gaflight_record_batch_writer_write_record_batch;

	// arrowflight.Servable

	GType function() c_gaflight_servable_get_type;

	// arrowflight.Server

	GType function() c_gaflight_server_get_type;
	GAFlightDataStream* function(GAFlightServer* server, GAFlightServerCallContext* context, GAFlightTicket* ticket, GError** err) c_gaflight_server_do_get;
	int function(GAFlightServer* server, GAFlightServerCallContext* context, GAFlightMessageReader* reader, GAFlightMetadataWriter* writer, GError** err) c_gaflight_server_do_put;
	GAFlightInfo* function(GAFlightServer* server, GAFlightServerCallContext* context, GAFlightDescriptor* request, GError** err) c_gaflight_server_get_flight_info;
	int function(GAFlightServer* server) c_gaflight_server_get_port;
	GList* function(GAFlightServer* server, GAFlightServerCallContext* context, GAFlightCriteria* criteria, GError** err) c_gaflight_server_list_flights;
	int function(GAFlightServer* server, GAFlightServerOptions* options, GError** err) c_gaflight_server_listen;
	int function(GAFlightServer* server, GError** err) c_gaflight_server_shutdown;
	int function(GAFlightServer* server, GError** err) c_gaflight_server_wait;

	// arrowflight.ServerAuthHandler

	GType function() c_gaflight_server_auth_handler_get_type;

	// arrowflight.ServerAuthReader

	GType function() c_gaflight_server_auth_reader_get_type;
	GBytes* function(GAFlightServerAuthReader* reader, GError** err) c_gaflight_server_auth_reader_read;

	// arrowflight.ServerAuthSender

	GType function() c_gaflight_server_auth_sender_get_type;
	int function(GAFlightServerAuthSender* sender, GBytes* message, GError** err) c_gaflight_server_auth_sender_write;

	// arrowflight.ServerCallContext

	GType function() c_gaflight_server_call_context_get_type;
	void function(GAFlightServerCallContext* context, GAFlightHeaderFunc func, void* userData) c_gaflight_server_call_context_foreach_incoming_header;

	// arrowflight.ServerCustomAuthHandler

	GType function() c_gaflight_server_custom_auth_handler_get_type;
	void function(GAFlightServerCustomAuthHandler* handler, GAFlightServerCallContext* context, GAFlightServerAuthSender* sender, GAFlightServerAuthReader* reader, GError** err) c_gaflight_server_custom_auth_handler_authenticate;
	GBytes* function(GAFlightServerCustomAuthHandler* handler, GAFlightServerCallContext* context, GBytes* token, GError** err) c_gaflight_server_custom_auth_handler_is_valid;

	// arrowflight.ServerOptions

	GType function() c_gaflight_server_options_get_type;
	GAFlightServerOptions* function(GAFlightLocation* location) c_gaflight_server_options_new;

	// arrowflight.StreamChunk

	GType function() c_gaflight_stream_chunk_get_type;
	GArrowRecordBatch* function(GAFlightStreamChunk* chunk) c_gaflight_stream_chunk_get_data;
	GArrowBuffer* function(GAFlightStreamChunk* chunk) c_gaflight_stream_chunk_get_metadata;

	// arrowflight.StreamReader

	GType function() c_gaflight_stream_reader_get_type;

	// arrowflight.StreamWriter

	GType function() c_gaflight_stream_writer_get_type;
	int function(GAFlightStreamWriter* writer, GError** err) c_gaflight_stream_writer_done_writing;

	// arrowflight.Ticket

	GType function() c_gaflight_ticket_get_type;
	GAFlightTicket* function(GBytes* data) c_gaflight_ticket_new;
	int function(GAFlightTicket* ticket, GAFlightTicket* otherTicket) c_gaflight_ticket_equal;
}


// arrowflight.CallOptions

alias c_gaflight_call_options_get_type gaflight_call_options_get_type;
alias c_gaflight_call_options_new gaflight_call_options_new;
alias c_gaflight_call_options_add_header gaflight_call_options_add_header;
alias c_gaflight_call_options_clear_headers gaflight_call_options_clear_headers;
alias c_gaflight_call_options_foreach_header gaflight_call_options_foreach_header;

// arrowflight.Client

alias c_gaflight_client_get_type gaflight_client_get_type;
alias c_gaflight_client_new gaflight_client_new;
alias c_gaflight_client_authenticate_basic_token gaflight_client_authenticate_basic_token;
alias c_gaflight_client_close gaflight_client_close;
alias c_gaflight_client_do_get gaflight_client_do_get;
alias c_gaflight_client_do_put gaflight_client_do_put;
alias c_gaflight_client_get_flight_info gaflight_client_get_flight_info;
alias c_gaflight_client_list_flights gaflight_client_list_flights;

// arrowflight.ClientOptions

alias c_gaflight_client_options_get_type gaflight_client_options_get_type;
alias c_gaflight_client_options_new gaflight_client_options_new;

// arrowflight.CommandDescriptor

alias c_gaflight_command_descriptor_get_type gaflight_command_descriptor_get_type;
alias c_gaflight_command_descriptor_new gaflight_command_descriptor_new;
alias c_gaflight_command_descriptor_get_command gaflight_command_descriptor_get_command;

// arrowflight.Criteria

alias c_gaflight_criteria_get_type gaflight_criteria_get_type;
alias c_gaflight_criteria_new gaflight_criteria_new;

// arrowflight.DataStream

alias c_gaflight_data_stream_get_type gaflight_data_stream_get_type;

// arrowflight.Descriptor

alias c_gaflight_descriptor_get_type gaflight_descriptor_get_type;
alias c_gaflight_descriptor_equal gaflight_descriptor_equal;
alias c_gaflight_descriptor_to_string gaflight_descriptor_to_string;

// arrowflight.DoPutResult

alias c_gaflight_do_put_result_get_type gaflight_do_put_result_get_type;

// arrowflight.Endpoint

alias c_gaflight_endpoint_get_type gaflight_endpoint_get_type;
alias c_gaflight_endpoint_new gaflight_endpoint_new;
alias c_gaflight_endpoint_equal gaflight_endpoint_equal;
alias c_gaflight_endpoint_get_locations gaflight_endpoint_get_locations;

// arrowflight.Info

alias c_gaflight_info_get_type gaflight_info_get_type;
alias c_gaflight_info_new gaflight_info_new;
alias c_gaflight_info_equal gaflight_info_equal;
alias c_gaflight_info_get_descriptor gaflight_info_get_descriptor;
alias c_gaflight_info_get_endpoints gaflight_info_get_endpoints;
alias c_gaflight_info_get_schema gaflight_info_get_schema;
alias c_gaflight_info_get_total_bytes gaflight_info_get_total_bytes;
alias c_gaflight_info_get_total_records gaflight_info_get_total_records;

// arrowflight.Location

alias c_gaflight_location_get_type gaflight_location_get_type;
alias c_gaflight_location_new gaflight_location_new;
alias c_gaflight_location_equal gaflight_location_equal;
alias c_gaflight_location_get_scheme gaflight_location_get_scheme;
alias c_gaflight_location_to_string gaflight_location_to_string;

// arrowflight.MessageReader

alias c_gaflight_message_reader_get_type gaflight_message_reader_get_type;
alias c_gaflight_message_reader_get_descriptor gaflight_message_reader_get_descriptor;

// arrowflight.MetadataReader

alias c_gaflight_metadata_reader_get_type gaflight_metadata_reader_get_type;
alias c_gaflight_metadata_reader_read gaflight_metadata_reader_read;

// arrowflight.MetadataWriter

alias c_gaflight_metadata_writer_get_type gaflight_metadata_writer_get_type;
alias c_gaflight_metadata_writer_write gaflight_metadata_writer_write;

// arrowflight.PathDescriptor

alias c_gaflight_path_descriptor_get_type gaflight_path_descriptor_get_type;
alias c_gaflight_path_descriptor_new gaflight_path_descriptor_new;
alias c_gaflight_path_descriptor_get_paths gaflight_path_descriptor_get_paths;

// arrowflight.RecordBatchReader

alias c_gaflight_record_batch_reader_get_type gaflight_record_batch_reader_get_type;
alias c_gaflight_record_batch_reader_read_all gaflight_record_batch_reader_read_all;
alias c_gaflight_record_batch_reader_read_next gaflight_record_batch_reader_read_next;

// arrowflight.RecordBatchStream

alias c_gaflight_record_batch_stream_get_type gaflight_record_batch_stream_get_type;
alias c_gaflight_record_batch_stream_new gaflight_record_batch_stream_new;

// arrowflight.RecordBatchWriter

alias c_gaflight_record_batch_writer_get_type gaflight_record_batch_writer_get_type;
alias c_gaflight_record_batch_writer_begin gaflight_record_batch_writer_begin;
alias c_gaflight_record_batch_writer_write_metadata gaflight_record_batch_writer_write_metadata;
alias c_gaflight_record_batch_writer_write_record_batch gaflight_record_batch_writer_write_record_batch;

// arrowflight.Servable

alias c_gaflight_servable_get_type gaflight_servable_get_type;

// arrowflight.Server

alias c_gaflight_server_get_type gaflight_server_get_type;
alias c_gaflight_server_do_get gaflight_server_do_get;
alias c_gaflight_server_do_put gaflight_server_do_put;
alias c_gaflight_server_get_flight_info gaflight_server_get_flight_info;
alias c_gaflight_server_get_port gaflight_server_get_port;
alias c_gaflight_server_list_flights gaflight_server_list_flights;
alias c_gaflight_server_listen gaflight_server_listen;
alias c_gaflight_server_shutdown gaflight_server_shutdown;
alias c_gaflight_server_wait gaflight_server_wait;

// arrowflight.ServerAuthHandler

alias c_gaflight_server_auth_handler_get_type gaflight_server_auth_handler_get_type;

// arrowflight.ServerAuthReader

alias c_gaflight_server_auth_reader_get_type gaflight_server_auth_reader_get_type;
alias c_gaflight_server_auth_reader_read gaflight_server_auth_reader_read;

// arrowflight.ServerAuthSender

alias c_gaflight_server_auth_sender_get_type gaflight_server_auth_sender_get_type;
alias c_gaflight_server_auth_sender_write gaflight_server_auth_sender_write;

// arrowflight.ServerCallContext

alias c_gaflight_server_call_context_get_type gaflight_server_call_context_get_type;
alias c_gaflight_server_call_context_foreach_incoming_header gaflight_server_call_context_foreach_incoming_header;

// arrowflight.ServerCustomAuthHandler

alias c_gaflight_server_custom_auth_handler_get_type gaflight_server_custom_auth_handler_get_type;
alias c_gaflight_server_custom_auth_handler_authenticate gaflight_server_custom_auth_handler_authenticate;
alias c_gaflight_server_custom_auth_handler_is_valid gaflight_server_custom_auth_handler_is_valid;

// arrowflight.ServerOptions

alias c_gaflight_server_options_get_type gaflight_server_options_get_type;
alias c_gaflight_server_options_new gaflight_server_options_new;

// arrowflight.StreamChunk

alias c_gaflight_stream_chunk_get_type gaflight_stream_chunk_get_type;
alias c_gaflight_stream_chunk_get_data gaflight_stream_chunk_get_data;
alias c_gaflight_stream_chunk_get_metadata gaflight_stream_chunk_get_metadata;

// arrowflight.StreamReader

alias c_gaflight_stream_reader_get_type gaflight_stream_reader_get_type;

// arrowflight.StreamWriter

alias c_gaflight_stream_writer_get_type gaflight_stream_writer_get_type;
alias c_gaflight_stream_writer_done_writing gaflight_stream_writer_done_writing;

// arrowflight.Ticket

alias c_gaflight_ticket_get_type gaflight_ticket_get_type;
alias c_gaflight_ticket_new gaflight_ticket_new;
alias c_gaflight_ticket_equal gaflight_ticket_equal;
