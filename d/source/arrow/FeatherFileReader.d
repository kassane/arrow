module arrow.FeatherFileReader;

private import arrow.SeekableInputStream;
private import arrow.Table;
private import arrow.c.functions;
public  import arrow.c.types;
private import glib.ConstructionException;
private import glib.ErrorG;
private import glib.GException;
private import glib.Str;
private import gobject.ObjectG;


/** */
public class FeatherFileReader : ObjectG
{
	/** the main Gtk struct */
	protected GArrowFeatherFileReader* gArrowFeatherFileReader;

	/** Get the main Gtk struct */
	public GArrowFeatherFileReader* getFeatherFileReaderStruct(bool transferOwnership = false)
	{
		if (transferOwnership)
			ownedRef = false;
		return gArrowFeatherFileReader;
	}

	/** the main Gtk struct as a void* */
	protected override void* getStruct()
	{
		return cast(void*)gArrowFeatherFileReader;
	}

	/**
	 * Sets our main struct and passes it to the parent class.
	 */
	public this (GArrowFeatherFileReader* gArrowFeatherFileReader, bool ownedRef = false)
	{
		this.gArrowFeatherFileReader = gArrowFeatherFileReader;
		super(cast(GObject*)gArrowFeatherFileReader, ownedRef);
	}


	/** */
	public static GType getType()
	{
		return garrow_feather_file_reader_get_type();
	}

	/**
	 *
	 * Params:
	 *     file = The file to be read.
	 * Returns: A newly created #GArrowFeatherFileReader
	 *     or %NULL on error.
	 *
	 * Since: 0.4.0
	 *
	 * Throws: GException on failure.
	 * Throws: ConstructionException GTK+ fails to create the object.
	 */
	public this(SeekableInputStream file)
	{
		GError* err = null;

		auto __p = garrow_feather_file_reader_new((file is null) ? null : file.getSeekableInputStreamStruct(), &err);

		if (err !is null)
		{
			throw new GException( new ErrorG(err) );
		}

		if(__p is null)
		{
			throw new ConstructionException("null returned by new");
		}

		this(cast(GArrowFeatherFileReader*) __p, true);
	}

	/**
	 * Returns: The format version of the file.
	 *
	 * Since: 0.4.0
	 */
	public int getVersion()
	{
		return garrow_feather_file_reader_get_version(gArrowFeatherFileReader);
	}

	/**
	 * Returns: The table in the file that has all columns.
	 *
	 * Since: 0.12.0
	 *
	 * Throws: GException on failure.
	 */
	public Table read()
	{
		GError* err = null;

		auto __p = garrow_feather_file_reader_read(gArrowFeatherFileReader, &err);

		if (err !is null)
		{
			throw new GException( new ErrorG(err) );
		}

		if(__p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(Table)(cast(GArrowTable*) __p, true);
	}

	/**
	 *
	 * Params:
	 *     indices = The indices of column to be read.
	 * Returns: The table in the file that has only the
	 *     specified columns.
	 *
	 * Since: 0.12.0
	 *
	 * Throws: GException on failure.
	 */
	public Table readIndices(int[] indices)
	{
		GError* err = null;

		auto __p = garrow_feather_file_reader_read_indices(gArrowFeatherFileReader, indices.ptr, cast(uint)indices.length, &err);

		if (err !is null)
		{
			throw new GException( new ErrorG(err) );
		}

		if(__p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(Table)(cast(GArrowTable*) __p, true);
	}

	/**
	 *
	 * Params:
	 *     names = The names of column to be read.
	 * Returns: The table in the file that has only the
	 *     specified columns.
	 *
	 * Since: 0.12.0
	 *
	 * Throws: GException on failure.
	 */
	public Table readNames(string[] names)
	{
		GError* err = null;

		auto __p = garrow_feather_file_reader_read_names(gArrowFeatherFileReader, Str.toStringzArray(names), cast(uint)names.length, &err);

		if (err !is null)
		{
			throw new GException( new ErrorG(err) );
		}

		if(__p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(Table)(cast(GArrowTable*) __p, true);
	}
}
