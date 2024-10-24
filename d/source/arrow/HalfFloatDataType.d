module arrow.HalfFloatDataType;

private import arrow.FloatingPointDataType;
private import arrow.c.functions;
public  import arrow.c.types;
private import glib.ConstructionException;
private import gobject.ObjectG;


/** */
public class HalfFloatDataType : FloatingPointDataType
{
	/** the main Gtk struct */
	protected GArrowHalfFloatDataType* gArrowHalfFloatDataType;

	/** Get the main Gtk struct */
	public GArrowHalfFloatDataType* getHalfFloatDataTypeStruct(bool transferOwnership = false)
	{
		if (transferOwnership)
			ownedRef = false;
		return gArrowHalfFloatDataType;
	}

	/** the main Gtk struct as a void* */
	protected override void* getStruct()
	{
		return cast(void*)gArrowHalfFloatDataType;
	}

	/**
	 * Sets our main struct and passes it to the parent class.
	 */
	public this (GArrowHalfFloatDataType* gArrowHalfFloatDataType, bool ownedRef = false)
	{
		this.gArrowHalfFloatDataType = gArrowHalfFloatDataType;
		super(cast(GArrowFloatingPointDataType*)gArrowHalfFloatDataType, ownedRef);
	}


	/** */
	public static GType getType()
	{
		return garrow_half_float_data_type_get_type();
	}

	/**
	 * Returns: The newly created half float data type.
	 *
	 * Since: 11.0.0
	 *
	 * Throws: ConstructionException GTK+ fails to create the object.
	 */
	public this()
	{
		auto __p = garrow_half_float_data_type_new();

		if(__p is null)
		{
			throw new ConstructionException("null returned by new");
		}

		this(cast(GArrowHalfFloatDataType*) __p, true);
	}
}
