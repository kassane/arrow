module arrow.FileInputStream;

private import arrow.SeekableInputStream;
private import arrow.c.functions;
public  import arrow.c.types;
private import glib.ConstructionException;
private import glib.ErrorG;
private import glib.GException;
private import glib.Str;
private import gobject.ObjectG;


/** */
public class FileInputStream : SeekableInputStream
{
	/** the main Gtk struct */
	protected GArrowFileInputStream* gArrowFileInputStream;

	/** Get the main Gtk struct */
	public GArrowFileInputStream* getFileInputStreamStruct(bool transferOwnership = false)
	{
		if (transferOwnership)
			ownedRef = false;
		return gArrowFileInputStream;
	}

	/** the main Gtk struct as a void* */
	protected override void* getStruct()
	{
		return cast(void*)gArrowFileInputStream;
	}

	/**
	 * Sets our main struct and passes it to the parent class.
	 */
	public this (GArrowFileInputStream* gArrowFileInputStream, bool ownedRef = false)
	{
		this.gArrowFileInputStream = gArrowFileInputStream;
		super(cast(GArrowSeekableInputStream*)gArrowFileInputStream, ownedRef);
	}


	/** */
	public static GType getType()
	{
		return garrow_file_input_stream_get_type();
	}

	/**
	 *
	 * Params:
	 *     path = The path of the file to be opened.
	 * Returns: A newly created #GArrowFileInputStream
	 *     or %NULL on error.
	 *
	 * Since: 6.0.0
	 *
	 * Throws: GException on failure.
	 * Throws: ConstructionException GTK+ fails to create the object.
	 */
	public this(string path)
	{
		GError* err = null;

		auto __p = garrow_file_input_stream_new(Str.toStringz(path), &err);

		if (err !is null)
		{
			throw new GException( new ErrorG(err) );
		}

		if(__p is null)
		{
			throw new ConstructionException("null returned by new");
		}

		this(cast(GArrowFileInputStream*) __p, true);
	}

	/**
	 *
	 * Params:
	 *     fileDescriptor = The file descriptor of this input stream.
	 * Returns: A newly created #GArrowFileInputStream
	 *     or %NULL on error.
	 *
	 * Since: 6.0.0
	 *
	 * Throws: GException on failure.
	 * Throws: ConstructionException GTK+ fails to create the object.
	 */
	public this(int fileDescriptor)
	{
		GError* err = null;

		auto __p = garrow_file_input_stream_new_file_descriptor(fileDescriptor, &err);

		if (err !is null)
		{
			throw new GException( new ErrorG(err) );
		}

		if(__p is null)
		{
			throw new ConstructionException("null returned by new_file_descriptor");
		}

		this(cast(GArrowFileInputStream*) __p, true);
	}

	/**
	 * Returns: The file descriptor of @stream.
	 *
	 * Since: 6.0.0
	 */
	public int getFileDescriptor()
	{
		return garrow_file_input_stream_get_file_descriptor(gArrowFileInputStream);
	}
}
