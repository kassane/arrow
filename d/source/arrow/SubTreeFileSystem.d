module arrow.SubTreeFileSystem;

private import arrow.FileSystem;
private import arrow.c.functions;
public  import arrow.c.types;
private import glib.ConstructionException;
private import glib.Str;
private import gobject.ObjectG;


/** */
public class SubTreeFileSystem : FileSystem
{
	/** the main Gtk struct */
	protected GArrowSubTreeFileSystem* gArrowSubTreeFileSystem;

	/** Get the main Gtk struct */
	public GArrowSubTreeFileSystem* getSubTreeFileSystemStruct(bool transferOwnership = false)
	{
		if (transferOwnership)
			ownedRef = false;
		return gArrowSubTreeFileSystem;
	}

	/** the main Gtk struct as a void* */
	protected override void* getStruct()
	{
		return cast(void*)gArrowSubTreeFileSystem;
	}

	/**
	 * Sets our main struct and passes it to the parent class.
	 */
	public this (GArrowSubTreeFileSystem* gArrowSubTreeFileSystem, bool ownedRef = false)
	{
		this.gArrowSubTreeFileSystem = gArrowSubTreeFileSystem;
		super(cast(GArrowFileSystem*)gArrowSubTreeFileSystem, ownedRef);
	}


	/** */
	public static GType getType()
	{
		return garrow_sub_tree_file_system_get_type();
	}

	/**
	 *
	 * Params:
	 *     basePath = A base path of the sub tree file system.
	 *     baseFileSystem = A #GArrowFileSystem as the base file system.
	 * Returns: A newly created #GArrowSubTreeFileSystem.
	 *
	 * Since: 0.17.0
	 *
	 * Throws: ConstructionException GTK+ fails to create the object.
	 */
	public this(string basePath, FileSystem baseFileSystem)
	{
		auto __p = garrow_sub_tree_file_system_new(Str.toStringz(basePath), (baseFileSystem is null) ? null : baseFileSystem.getFileSystemStruct());

		if(__p is null)
		{
			throw new ConstructionException("null returned by new");
		}

		this(cast(GArrowSubTreeFileSystem*) __p, true);
	}
}
