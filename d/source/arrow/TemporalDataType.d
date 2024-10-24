module arrow.TemporalDataType;

private import arrow.FixedWidthDataType;
private import arrow.c.functions;
public  import arrow.c.types;


/** */
public class TemporalDataType : FixedWidthDataType
{
	/** the main Gtk struct */
	protected GArrowTemporalDataType* gArrowTemporalDataType;

	/** Get the main Gtk struct */
	public GArrowTemporalDataType* getTemporalDataTypeStruct(bool transferOwnership = false)
	{
		if (transferOwnership)
			ownedRef = false;
		return gArrowTemporalDataType;
	}

	/** the main Gtk struct as a void* */
	protected override void* getStruct()
	{
		return cast(void*)gArrowTemporalDataType;
	}

	/**
	 * Sets our main struct and passes it to the parent class.
	 */
	public this (GArrowTemporalDataType* gArrowTemporalDataType, bool ownedRef = false)
	{
		this.gArrowTemporalDataType = gArrowTemporalDataType;
		super(cast(GArrowFixedWidthDataType*)gArrowTemporalDataType, ownedRef);
	}


	/** */
	public static GType getType()
	{
		return garrow_temporal_data_type_get_type();
	}
}
