module arrow.UnionArray;

private import arrow.Array;
private import arrow.c.functions;
public  import arrow.c.types;
private import gobject.ObjectG;


/** */
public class UnionArray : Array
{
	/** the main Gtk struct */
	protected GArrowUnionArray* gArrowUnionArray;

	/** Get the main Gtk struct */
	public GArrowUnionArray* getUnionArrayStruct(bool transferOwnership = false)
	{
		if (transferOwnership)
			ownedRef = false;
		return gArrowUnionArray;
	}

	/** the main Gtk struct as a void* */
	protected override void* getStruct()
	{
		return cast(void*)gArrowUnionArray;
	}

	/**
	 * Sets our main struct and passes it to the parent class.
	 */
	public this (GArrowUnionArray* gArrowUnionArray, bool ownedRef = false)
	{
		this.gArrowUnionArray = gArrowUnionArray;
		super(cast(GArrowArray*)gArrowUnionArray, ownedRef);
	}


	/** */
	public static GType getType()
	{
		return garrow_union_array_get_type();
	}

	/**
	 *
	 * Params:
	 *     i = The index of the physical child ID containing value in the union.
	 * Returns: The physical child ID containing the i-th value.
	 *
	 * Since: 12.0.0
	 */
	public int getChildId(long i)
	{
		return garrow_union_array_get_child_id(gArrowUnionArray, i);
	}

	/**
	 *
	 * Params:
	 *     i = The index of the field in the union.
	 * Returns: The i-th field values as a
	 *     #GArrowArray or %NULL on out of range.
	 */
	public Array getField(int i)
	{
		auto __p = garrow_union_array_get_field(gArrowUnionArray, i);

		if(__p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(Array)(cast(GArrowArray*) __p, true);
	}

	/**
	 *
	 * Params:
	 *     i = The index of the logical type code of the value in the union.
	 * Returns: The i-th logical type code of the value.
	 *
	 * Since: 12.0.0
	 */
	public byte getTypeCode(long i)
	{
		return garrow_union_array_get_type_code(gArrowUnionArray, i);
	}
}
