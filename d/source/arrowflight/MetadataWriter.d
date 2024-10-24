module arrowflight.MetadataWriter;

private import arrow.Buffer;
private import arrowflight.c.functions;
public  import arrowflight.c.types;
private import glib.ErrorG;
private import glib.GException;
private import gobject.ObjectG;


/** */
public class MetadataWriter : ObjectG
{
	/** the main Gtk struct */
	protected GAFlightMetadataWriter* gAFlightMetadataWriter;

	/** Get the main Gtk struct */
	public GAFlightMetadataWriter* getMetadataWriterStruct(bool transferOwnership = false)
	{
		if (transferOwnership)
			ownedRef = false;
		return gAFlightMetadataWriter;
	}

	/** the main Gtk struct as a void* */
	protected override void* getStruct()
	{
		return cast(void*)gAFlightMetadataWriter;
	}

	/**
	 * Sets our main struct and passes it to the parent class.
	 */
	public this (GAFlightMetadataWriter* gAFlightMetadataWriter, bool ownedRef = false)
	{
		this.gAFlightMetadataWriter = gAFlightMetadataWriter;
		super(cast(GObject*)gAFlightMetadataWriter, ownedRef);
	}


	/** */
	public static GType getType()
	{
		return gaflight_metadata_writer_get_type();
	}

	/**
	 * Writes metadata to the client.
	 *
	 * Params:
	 *     metadata = A #GArrowBuffer to be sent.
	 *
	 * Returns: %TRUE on success, %FALSE on error.
	 *
	 * Since: 18.0.0
	 *
	 * Throws: GException on failure.
	 */
	public bool write(Buffer metadata)
	{
		GError* err = null;

		auto __p = gaflight_metadata_writer_write(gAFlightMetadataWriter, (metadata is null) ? null : metadata.getBufferStruct(), &err) != 0;

		if (err !is null)
		{
			throw new GException( new ErrorG(err) );
		}

		return __p;
	}
}
