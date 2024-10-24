module arrow.SlowFileSystem;

private import arrow.FileSystem;
private import arrow.c.functions;
public  import arrow.c.types;
private import glib.ConstructionException;
private import gobject.ObjectG;


/** */
public class SlowFileSystem : FileSystem
{
	/** the main Gtk struct */
	protected GArrowSlowFileSystem* gArrowSlowFileSystem;

	/** Get the main Gtk struct */
	public GArrowSlowFileSystem* getSlowFileSystemStruct(bool transferOwnership = false)
	{
		if (transferOwnership)
			ownedRef = false;
		return gArrowSlowFileSystem;
	}

	/** the main Gtk struct as a void* */
	protected override void* getStruct()
	{
		return cast(void*)gArrowSlowFileSystem;
	}

	/**
	 * Sets our main struct and passes it to the parent class.
	 */
	public this (GArrowSlowFileSystem* gArrowSlowFileSystem, bool ownedRef = false)
	{
		this.gArrowSlowFileSystem = gArrowSlowFileSystem;
		super(cast(GArrowFileSystem*)gArrowSlowFileSystem, ownedRef);
	}


	/** */
	public static GType getType()
	{
		return garrow_slow_file_system_get_type();
	}

	/**
	 * The latency is normally distributed with a standard deviation of
	 * @average_latency * 0.1.
	 *
	 * The random seed is given by the default random device.
	 *
	 * Params:
	 *     baseFileSystem = A #GArrowFileSystem as the base file system.
	 *     averageLatency = The average value of the latency.
	 *
	 * Returns: A newly created #GArrowSlowFileSystem.
	 *
	 * Since: 0.17.0
	 *
	 * Throws: ConstructionException GTK+ fails to create the object.
	 */
	public this(FileSystem baseFileSystem, double averageLatency)
	{
		auto __p = garrow_slow_file_system_new_average_latency((baseFileSystem is null) ? null : baseFileSystem.getFileSystemStruct(), averageLatency);

		if(__p is null)
		{
			throw new ConstructionException("null returned by new_average_latency");
		}

		this(cast(GArrowSlowFileSystem*) __p, true);
	}

	/**
	 * The latency is normally distributed with a standard deviation of
	 * @average_latency * 0.1.
	 *
	 * Params:
	 *     baseFileSystem = A #GArrowFileSystem as the base file system.
	 *     averageLatency = The average value of the latency.
	 *     seed = A random seed.
	 *
	 * Returns: A newly created #GArrowSlowFileSystem.
	 *
	 * Since: 0.17.0
	 *
	 * Throws: ConstructionException GTK+ fails to create the object.
	 */
	public this(FileSystem baseFileSystem, double averageLatency, int seed)
	{
		auto __p = garrow_slow_file_system_new_average_latency_and_seed((baseFileSystem is null) ? null : baseFileSystem.getFileSystemStruct(), averageLatency, seed);

		if(__p is null)
		{
			throw new ConstructionException("null returned by new_average_latency_and_seed");
		}

		this(cast(GArrowSlowFileSystem*) __p, true);
	}
}
