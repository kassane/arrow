module arrow.IntervalDataType;

private import arrow.TemporalDataType;
private import arrow.c.functions;
public  import arrow.c.types;


/** */
public class IntervalDataType : TemporalDataType
{
	/** the main Gtk struct */
	protected GArrowIntervalDataType* gArrowIntervalDataType;

	/** Get the main Gtk struct */
	public GArrowIntervalDataType* getIntervalDataTypeStruct(bool transferOwnership = false)
	{
		if (transferOwnership)
			ownedRef = false;
		return gArrowIntervalDataType;
	}

	/** the main Gtk struct as a void* */
	protected override void* getStruct()
	{
		return cast(void*)gArrowIntervalDataType;
	}

	/**
	 * Sets our main struct and passes it to the parent class.
	 */
	public this (GArrowIntervalDataType* gArrowIntervalDataType, bool ownedRef = false)
	{
		this.gArrowIntervalDataType = gArrowIntervalDataType;
		super(cast(GArrowTemporalDataType*)gArrowIntervalDataType, ownedRef);
	}


	/** */
	public static GType getType()
	{
		return garrow_interval_data_type_get_type();
	}

	/**
	 * Returns: The interval type of the given @type.
	 *
	 * Since: 7.0.0
	 */
	public GArrowIntervalType getIntervalType()
	{
		return garrow_interval_data_type_get_interval_type(gArrowIntervalDataType);
	}
}
