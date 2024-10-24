module arrowflight.Info;

private import arrow.ReadOptions;
private import arrow.Schema;
private import arrowflight.Descriptor;
private import arrowflight.Endpoint;
private import arrowflight.c.functions;
public  import arrowflight.c.types;
private import glib.ConstructionException;
private import glib.ErrorG;
private import glib.GException;
private import glib.ListG;
private import gobject.ObjectG;


/** */
public class Info : ObjectG
{
	/** the main Gtk struct */
	protected GAFlightInfo* gAFlightInfo;

	/** Get the main Gtk struct */
	public GAFlightInfo* getInfoStruct(bool transferOwnership = false)
	{
		if (transferOwnership)
			ownedRef = false;
		return gAFlightInfo;
	}

	/** the main Gtk struct as a void* */
	protected override void* getStruct()
	{
		return cast(void*)gAFlightInfo;
	}

	/**
	 * Sets our main struct and passes it to the parent class.
	 */
	public this (GAFlightInfo* gAFlightInfo, bool ownedRef = false)
	{
		this.gAFlightInfo = gAFlightInfo;
		super(cast(GObject*)gAFlightInfo, ownedRef);
	}


	/** */
	public static GType getType()
	{
		return gaflight_info_get_type();
	}

	/**
	 *
	 * Params:
	 *     schema = A #GArrowSchema.
	 *     descriptor = A #GAFlightDescriptor.
	 *     endpoints = A list of #GAFlightEndpoint.
	 *     totalRecords = The number of total records.
	 *     totalBytes = The number of total bytes.
	 * Returns: The newly created #GAFlightInfo, %NULL on error.
	 *
	 * Since: 5.0.0
	 *
	 * Throws: GException on failure.
	 * Throws: ConstructionException GTK+ fails to create the object.
	 */
	public this(Schema schema, Descriptor descriptor, ListG endpoints, long totalRecords, long totalBytes)
	{
		GError* err = null;

		auto __p = gaflight_info_new((schema is null) ? null : schema.getSchemaStruct(), (descriptor is null) ? null : descriptor.getDescriptorStruct(), (endpoints is null) ? null : endpoints.getListGStruct(), totalRecords, totalBytes, &err);

		if (err !is null)
		{
			throw new GException( new ErrorG(err) );
		}

		if(__p is null)
		{
			throw new ConstructionException("null returned by new");
		}

		this(cast(GAFlightInfo*) __p, true);
	}

	/**
	 *
	 * Params:
	 *     otherInfo = A #GAFlightInfo to be compared.
	 * Returns: %TRUE if both of them represents the same information,
	 *     %FALSE otherwise.
	 *
	 * Since: 5.0.0
	 */
	public bool equal(Info otherInfo)
	{
		return gaflight_info_equal(gAFlightInfo, (otherInfo is null) ? null : otherInfo.getInfoStruct()) != 0;
	}

	/**
	 * Returns: The #GAFlightDescriptor of the information.
	 *
	 * Since: 5.0.0
	 */
	public Descriptor getDescriptor()
	{
		auto __p = gaflight_info_get_descriptor(gAFlightInfo);

		if(__p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(Descriptor)(cast(GAFlightDescriptor*) __p, true);
	}

	/**
	 * Returns: The list of #GAFlightEndpoint of the information.
	 *
	 * Since: 5.0.0
	 */
	public ListG getEndpoints()
	{
		auto __p = gaflight_info_get_endpoints(gAFlightInfo);

		if(__p is null)
		{
			return null;
		}

		return new ListG(cast(GList*) __p, true);
	}

	/**
	 *
	 * Params:
	 *     options = A #GArrowReadOptions.
	 * Returns: Deserialized #GArrowSchema, %NULL on error.
	 *
	 * Since: 5.0.0
	 *
	 * Throws: GException on failure.
	 */
	public Schema getSchema(ReadOptions options)
	{
		GError* err = null;

		auto __p = gaflight_info_get_schema(gAFlightInfo, (options is null) ? null : options.getReadOptionsStruct(), &err);

		if (err !is null)
		{
			throw new GException( new ErrorG(err) );
		}

		if(__p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(Schema)(cast(GArrowSchema*) __p, true);
	}

	/**
	 * Returns: The number of total bytes of the information.
	 *
	 * Since: 5.0.0
	 */
	public long getTotalBytes()
	{
		return gaflight_info_get_total_bytes(gAFlightInfo);
	}

	/**
	 * Returns: The number of total records of the information.
	 *
	 * Since: 5.0.0
	 */
	public long getTotalRecords()
	{
		return gaflight_info_get_total_records(gAFlightInfo);
	}
}
