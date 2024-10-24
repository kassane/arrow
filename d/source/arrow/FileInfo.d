module arrow.FileInfo;

private import arrow.c.functions;
public  import arrow.c.types;
private import glib.ConstructionException;
private import glib.Str;
private import glib.c.functions;
private import gobject.ObjectG;


/** */
public class FileInfo : ObjectG
{
	/** the main Gtk struct */
	protected GArrowFileInfo* gArrowFileInfo;

	/** Get the main Gtk struct */
	public GArrowFileInfo* getFileInfoStruct(bool transferOwnership = false)
	{
		if (transferOwnership)
			ownedRef = false;
		return gArrowFileInfo;
	}

	/** the main Gtk struct as a void* */
	protected override void* getStruct()
	{
		return cast(void*)gArrowFileInfo;
	}

	/**
	 * Sets our main struct and passes it to the parent class.
	 */
	public this (GArrowFileInfo* gArrowFileInfo, bool ownedRef = false)
	{
		this.gArrowFileInfo = gArrowFileInfo;
		super(cast(GObject*)gArrowFileInfo, ownedRef);
	}


	/** */
	public static GType getType()
	{
		return garrow_file_info_get_type();
	}

	/**
	 * Returns: A newly created #GArrowFileInfo.
	 *
	 * Since: 0.17.0
	 *
	 * Throws: ConstructionException GTK+ fails to create the object.
	 */
	public this()
	{
		auto __p = garrow_file_info_new();

		if(__p is null)
		{
			throw new ConstructionException("null returned by new");
		}

		this(cast(GArrowFileInfo*) __p, true);
	}

	/**
	 *
	 * Params:
	 *     otherFileInfo = A #GArrowFileInfo to be compared.
	 * Returns: %TRUE if both of them have the same data, %FALSE
	 *     otherwise.
	 *
	 * Since: 0.17.0
	 */
	public bool equal(FileInfo otherFileInfo)
	{
		return garrow_file_info_equal(gArrowFileInfo, (otherFileInfo is null) ? null : otherFileInfo.getFileInfoStruct()) != 0;
	}

	/**
	 * Returns: %TRUE if the entry is a directory, %FALSE otherwise.
	 *
	 * Since: 0.17.0
	 */
	public bool isDir()
	{
		return garrow_file_info_is_dir(gArrowFileInfo) != 0;
	}

	/**
	 * Returns: %TRUE if the entry is a file, %FALSE otherwise.
	 *
	 * Since: 0.17.0
	 */
	public bool isFile()
	{
		return garrow_file_info_is_file(gArrowFileInfo) != 0;
	}

	/**
	 * Returns: The string representation of the file statistics.
	 *
	 *     It should be freed with g_free() when no longer needed.
	 *
	 * Since: 0.17.0
	 */
	public override string toString()
	{
		auto retStr = garrow_file_info_to_string(gArrowFileInfo);

		scope(exit) Str.freeString(retStr);
		return Str.toString(retStr);
	}
}
