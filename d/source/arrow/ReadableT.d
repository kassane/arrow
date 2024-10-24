module arrow.ReadableT;

public  import arrow.Buffer;
public  import arrow.c.functions;
public  import arrow.c.types;
public  import glib.Bytes;
public  import glib.ErrorG;
public  import glib.GException;
public  import gobject.ObjectG;


/** */
public template ReadableT(TStruct)
{
	/** Get the main Gtk struct */
	public GArrowReadable* getReadableStruct(bool transferOwnership = false)
	{
		if (transferOwnership)
			ownedRef = false;
		return cast(GArrowReadable*)getStruct();
	}


	/**
	 *
	 * Params:
	 *     nBytes = The number of bytes to be read.
	 * Returns: #GArrowBuffer that has read
	 *     data on success, %NULL if there was an error.
	 *
	 * Throws: GException on failure.
	 */
	public Buffer read(long nBytes)
	{
		GError* err = null;

		auto __p = garrow_readable_read(getReadableStruct(), nBytes, &err);

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

	/**
	 *
	 * Params:
	 *     nBytes = The number of bytes to be read.
	 * Returns: #GBytes that has read data on
	 *     success, %NULL if there was an error.
	 *
	 * Since: 0.17.0
	 *
	 * Throws: GException on failure.
	 */
	public Bytes readBytes(long nBytes)
	{
		GError* err = null;

		auto __p = garrow_readable_read_bytes(getReadableStruct(), nBytes, &err);

		if (err !is null)
		{
			throw new GException( new ErrorG(err) );
		}

		if(__p is null)
		{
			return null;
		}

		return new Bytes(cast(GBytes*) __p, true);
	}
}
