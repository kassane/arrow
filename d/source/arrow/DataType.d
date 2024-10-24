module arrow.DataType;

private import arrow.c.functions;
public  import arrow.c.types;
private import glib.ErrorG;
private import glib.GException;
private import glib.Str;
private import glib.c.functions;
private import gobject.ObjectG;


/** */
public class DataType : ObjectG
{
	/** the main Gtk struct */
	protected GArrowDataType* gArrowDataType;

	/** Get the main Gtk struct */
	public GArrowDataType* getDataTypeStruct(bool transferOwnership = false)
	{
		if (transferOwnership)
			ownedRef = false;
		return gArrowDataType;
	}

	/** the main Gtk struct as a void* */
	protected override void* getStruct()
	{
		return cast(void*)gArrowDataType;
	}

	/**
	 * Sets our main struct and passes it to the parent class.
	 */
	public this (GArrowDataType* gArrowDataType, bool ownedRef = false)
	{
		this.gArrowDataType = gArrowDataType;
		super(cast(GObject*)gArrowDataType, ownedRef);
	}


	/** */
	public static GType getType()
	{
		return garrow_data_type_get_type();
	}

	/**
	 *
	 * Params:
	 *     cAbiSchema = A `struct ArrowSchema *`.
	 * Returns: An imported #GArrowDataType on success,
	 *     %NULL on error.
	 *
	 *     You don't need to release the passed `struct ArrowSchema *`,
	 *     even if this function reports an error.
	 *
	 * Since: 6.0.0
	 *
	 * Throws: GException on failure.
	 */
	public static DataType import_(void* cAbiSchema)
	{
		GError* err = null;

		auto __p = garrow_data_type_import(cAbiSchema, &err);

		if (err !is null)
		{
			throw new GException( new ErrorG(err) );
		}

		if(__p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(DataType)(cast(GArrowDataType*) __p, true);
	}

	/**
	 *
	 * Params:
	 *     otherDataType = A #GArrowDataType to be compared.
	 * Returns: %TRUE if both of them have the same data, %FALSE
	 *     otherwise.
	 */
	public bool equal(DataType otherDataType)
	{
		return garrow_data_type_equal(gArrowDataType, (otherDataType is null) ? null : otherDataType.getDataTypeStruct()) != 0;
	}

	alias expor = export_;
	/**
	 * Returns: An exported #GArrowDataType as
	 *     `struct ArrowStruct *` on success, %NULL on error.
	 *
	 *     It should be freed with the `ArrowSchema::release` callback then
	 *     g_free() when no longer needed.
	 *
	 * Since: 6.0.0
	 *
	 * Throws: GException on failure.
	 */
	public void* export_()
	{
		GError* err = null;

		auto __p = garrow_data_type_export(gArrowDataType, &err);

		if (err !is null)
		{
			throw new GException( new ErrorG(err) );
		}

		return __p;
	}

	/**
	 * Returns: The #GArrowType of the data type.
	 */
	public GArrowType getId()
	{
		return garrow_data_type_get_id(gArrowDataType);
	}

	/**
	 * Returns: The name of the data type.
	 *
	 *     It should be freed with g_free() when no longer needed.
	 *
	 * Since: 3.0.0
	 */
	public string getName()
	{
		auto retStr = garrow_data_type_get_name(gArrowDataType);

		scope(exit) Str.freeString(retStr);
		return Str.toString(retStr);
	}

	/**
	 * Returns: The string representation of the data type.
	 *
	 *     It should be freed with g_free() when no longer needed.
	 */
	public override string toString()
	{
		auto retStr = garrow_data_type_to_string(gArrowDataType);

		scope(exit) Str.freeString(retStr);
		return Str.toString(retStr);
	}
}
