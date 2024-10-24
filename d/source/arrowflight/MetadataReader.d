module arrowflight.MetadataReader;

private import arrow.Buffer;
private import arrowflight.c.functions;
public  import arrowflight.c.types;
private import glib.ErrorG;
private import glib.GException;
private import gobject.ObjectG;


/** */
public class MetadataReader : ObjectG
{
	/** the main Gtk struct */
	protected GAFlightMetadataReader* gAFlightMetadataReader;

	/** Get the main Gtk struct */
	public GAFlightMetadataReader* getMetadataReaderStruct(bool transferOwnership = false)
	{
		if (transferOwnership)
			ownedRef = false;
		return gAFlightMetadataReader;
	}

	/** the main Gtk struct as a void* */
	protected override void* getStruct()
	{
		return cast(void*)gAFlightMetadataReader;
	}

	/**
	 * Sets our main struct and passes it to the parent class.
	 */
	public this (GAFlightMetadataReader* gAFlightMetadataReader, bool ownedRef = false)
	{
		this.gAFlightMetadataReader = gAFlightMetadataReader;
		super(cast(GObject*)gAFlightMetadataReader, ownedRef);
	}


	/** */
	public static GType getType()
	{
		return gaflight_metadata_reader_get_type();
	}

	/**
	 * Returns: The metadata on success, %NULL on error.
	 *
	 * Since: 18.0.0
	 *
	 * Throws: GException on failure.
	 */
	public Buffer read()
	{
		GError* err = null;

		auto __p = gaflight_metadata_reader_read(gAFlightMetadataReader, &err);

		if (err !is null)
		{
			throw new GException( new ErrorG(err) );
		}

		if(__p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(Buffer)(cast(GArrowBuffer*) __p, true);
	}
}
