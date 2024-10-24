module arrow.PrimitiveArray;

private import arrow.Array;
private import arrow.Buffer;
private import arrow.c.functions;
public  import arrow.c.types;
private import gobject.ObjectG;


/** */
public class PrimitiveArray : Array
{
	/** the main Gtk struct */
	protected GArrowPrimitiveArray* gArrowPrimitiveArray;

	/** Get the main Gtk struct */
	public GArrowPrimitiveArray* getPrimitiveArrayStruct(bool transferOwnership = false)
	{
		if (transferOwnership)
			ownedRef = false;
		return gArrowPrimitiveArray;
	}

	/** the main Gtk struct as a void* */
	protected override void* getStruct()
	{
		return cast(void*)gArrowPrimitiveArray;
	}

	/**
	 * Sets our main struct and passes it to the parent class.
	 */
	public this (GArrowPrimitiveArray* gArrowPrimitiveArray, bool ownedRef = false)
	{
		this.gArrowPrimitiveArray = gArrowPrimitiveArray;
		super(cast(GArrowArray*)gArrowPrimitiveArray, ownedRef);
	}


	/** */
	public static GType getType()
	{
		return garrow_primitive_array_get_type();
	}

	/**
	 *
	 *
	 * Deprecated: Use garrow_primitive_array_get_data_buffer() instead.
	 *
	 * Returns: The data of the array as #GArrowBuffer.
	 */
	public Buffer getBuffer()
	{
		auto __p = garrow_primitive_array_get_buffer(gArrowPrimitiveArray);

		if(__p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(Buffer)(cast(GArrowBuffer*) __p, true);
	}

	/**
	 * Returns: The data of the array as #GArrowBuffer.
	 *
	 * Since: 1.0.0
	 */
	public Buffer getDataBuffer()
	{
		auto __p = garrow_primitive_array_get_data_buffer(gArrowPrimitiveArray);

		if(__p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(Buffer)(cast(GArrowBuffer*) __p, true);
	}
}
