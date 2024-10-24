module arrow.RunEndEncodeOptions;

private import arrow.DataType;
private import arrow.FunctionOptions;
private import arrow.c.functions;
public  import arrow.c.types;
private import glib.ConstructionException;
private import gobject.ObjectG;


/** */
public class RunEndEncodeOptions : FunctionOptions
{
	/** the main Gtk struct */
	protected GArrowRunEndEncodeOptions* gArrowRunEndEncodeOptions;

	/** Get the main Gtk struct */
	public GArrowRunEndEncodeOptions* getRunEndEncodeOptionsStruct(bool transferOwnership = false)
	{
		if (transferOwnership)
			ownedRef = false;
		return gArrowRunEndEncodeOptions;
	}

	/** the main Gtk struct as a void* */
	protected override void* getStruct()
	{
		return cast(void*)gArrowRunEndEncodeOptions;
	}

	/**
	 * Sets our main struct and passes it to the parent class.
	 */
	public this (GArrowRunEndEncodeOptions* gArrowRunEndEncodeOptions, bool ownedRef = false)
	{
		this.gArrowRunEndEncodeOptions = gArrowRunEndEncodeOptions;
		super(cast(GArrowFunctionOptions*)gArrowRunEndEncodeOptions, ownedRef);
	}


	/** */
	public static GType getType()
	{
		return garrow_run_end_encode_options_get_type();
	}

	/**
	 *
	 * Params:
	 *     runEndDataType = A #GArrowDataType for run-end. If this
	 *         is %NULL, garrow_int32_data_type_new() is used.
	 * Returns: A newly created #GArrowRunEndEncodeOptions.
	 *
	 * Since: 13.0.0
	 *
	 * Throws: ConstructionException GTK+ fails to create the object.
	 */
	public this(DataType runEndDataType)
	{
		auto __p = garrow_run_end_encode_options_new((runEndDataType is null) ? null : runEndDataType.getDataTypeStruct());

		if(__p is null)
		{
			throw new ConstructionException("null returned by new");
		}

		this(cast(GArrowRunEndEncodeOptions*) __p, true);
	}
}
