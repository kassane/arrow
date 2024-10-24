module arrow.MemoryPool;

private import arrow.c.functions;
public  import arrow.c.types;
private import glib.Str;
private import glib.c.functions;
private import gobject.ObjectG;


/** */
public class MemoryPool : ObjectG
{
	/** the main Gtk struct */
	protected GArrowMemoryPool* gArrowMemoryPool;

	/** Get the main Gtk struct */
	public GArrowMemoryPool* getMemoryPoolStruct(bool transferOwnership = false)
	{
		if (transferOwnership)
			ownedRef = false;
		return gArrowMemoryPool;
	}

	/** the main Gtk struct as a void* */
	protected override void* getStruct()
	{
		return cast(void*)gArrowMemoryPool;
	}

	/**
	 * Sets our main struct and passes it to the parent class.
	 */
	public this (GArrowMemoryPool* gArrowMemoryPool, bool ownedRef = false)
	{
		this.gArrowMemoryPool = gArrowMemoryPool;
		super(cast(GObject*)gArrowMemoryPool, ownedRef);
	}


	/** */
	public static GType getType()
	{
		return garrow_memory_pool_get_type();
	}

	/**
	 * Returns: The process-wide default memory pool.
	 *
	 * Since: 9.0.0
	 */
	public static MemoryPool default_()
	{
		auto __p = garrow_memory_pool_default();

		if(__p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(MemoryPool)(cast(GArrowMemoryPool*) __p, true);
	}

	/**
	 * Returns: The name of the backend used by this MemoryPool
	 *     (e.g. "system" or "jemalloc").
	 *
	 *     It should be freed with g_free() when no longer needed.
	 *
	 * Since: 9.0.0
	 */
	public string getBackendName()
	{
		auto retStr = garrow_memory_pool_get_backend_name(gArrowMemoryPool);

		scope(exit) Str.freeString(retStr);
		return Str.toString(retStr);
	}

	/**
	 * Returns: The number of bytes that were allocated and not yet free’d
	 *     through this allocator.
	 *
	 * Since: 9.0.0
	 */
	public long getBytesAllocated()
	{
		return garrow_memory_pool_get_bytes_allocated(gArrowMemoryPool);
	}

	/**
	 * Return peak memory allocation in this memory pool.
	 *
	 * Returns: Maximum bytes allocated. If not known (or not implemented),
	 *     returns -1.
	 *
	 * Since: 9.0.0
	 */
	public long getMaxMemory()
	{
		return garrow_memory_pool_get_max_memory(gArrowMemoryPool);
	}
}
