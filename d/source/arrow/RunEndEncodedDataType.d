module arrow.RunEndEncodedDataType;

private import arrow.DataType;
private import arrow.FixedWidthDataType;
private import arrow.c.functions;
public  import arrow.c.types;
private import glib.ConstructionException;
private import gobject.ObjectG;


/** */
public class RunEndEncodedDataType : FixedWidthDataType
{
	/** the main Gtk struct */
	protected GArrowRunEndEncodedDataType* gArrowRunEndEncodedDataType;

	/** Get the main Gtk struct */
	public GArrowRunEndEncodedDataType* getRunEndEncodedDataTypeStruct(bool transferOwnership = false)
	{
		if (transferOwnership)
			ownedRef = false;
		return gArrowRunEndEncodedDataType;
	}

	/** the main Gtk struct as a void* */
	protected override void* getStruct()
	{
		return cast(void*)gArrowRunEndEncodedDataType;
	}

	/**
	 * Sets our main struct and passes it to the parent class.
	 */
	public this (GArrowRunEndEncodedDataType* gArrowRunEndEncodedDataType, bool ownedRef = false)
	{
		this.gArrowRunEndEncodedDataType = gArrowRunEndEncodedDataType;
		super(cast(GArrowFixedWidthDataType*)gArrowRunEndEncodedDataType, ownedRef);
	}


	/** */
	public static GType getType()
	{
		return garrow_run_end_encoded_data_type_get_type();
	}

	/**
	 *
	 * Params:
	 *     runEndDataType = The data type of run-end.
	 *     valueDataType = The data type of value.
	 * Returns: The newly created run-end encoded data type.
	 *
	 * Since: 13.0.0
	 *
	 * Throws: ConstructionException GTK+ fails to create the object.
	 */
	public this(DataType runEndDataType, DataType valueDataType)
	{
		auto __p = garrow_run_end_encoded_data_type_new((runEndDataType is null) ? null : runEndDataType.getDataTypeStruct(), (valueDataType is null) ? null : valueDataType.getDataTypeStruct());

		if(__p is null)
		{
			throw new ConstructionException("null returned by new");
		}

		this(cast(GArrowRunEndEncodedDataType*) __p, true);
	}

	/**
	 * Returns: The #GArrowDataType of run-end.
	 *
	 * Since: 13.0.0
	 */
	public DataType getRunEndDataType()
	{
		auto __p = garrow_run_end_encoded_data_type_get_run_end_data_type(gArrowRunEndEncodedDataType);

		if(__p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(DataType)(cast(GArrowDataType*) __p, true);
	}

	/**
	 * Returns: The #GArrowDataType of value.
	 *
	 * Since: 13.0.0
	 */
	public DataType getValueDataType()
	{
		auto __p = garrow_run_end_encoded_data_type_get_value_data_type(gArrowRunEndEncodedDataType);

		if(__p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(DataType)(cast(GArrowDataType*) __p, true);
	}
}
