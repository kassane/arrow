module arrow.RunEndEncodedArray;

private import arrow.Array;
private import arrow.DataType;
private import arrow.c.functions;
public  import arrow.c.types;
private import glib.ConstructionException;
private import glib.ErrorG;
private import glib.GException;
private import gobject.ObjectG;


/** */
public class RunEndEncodedArray : Array
{
	/** the main Gtk struct */
	protected GArrowRunEndEncodedArray* gArrowRunEndEncodedArray;

	/** Get the main Gtk struct */
	public GArrowRunEndEncodedArray* getRunEndEncodedArrayStruct(bool transferOwnership = false)
	{
		if (transferOwnership)
			ownedRef = false;
		return gArrowRunEndEncodedArray;
	}

	/** the main Gtk struct as a void* */
	protected override void* getStruct()
	{
		return cast(void*)gArrowRunEndEncodedArray;
	}

	/**
	 * Sets our main struct and passes it to the parent class.
	 */
	public this (GArrowRunEndEncodedArray* gArrowRunEndEncodedArray, bool ownedRef = false)
	{
		this.gArrowRunEndEncodedArray = gArrowRunEndEncodedArray;
		super(cast(GArrowArray*)gArrowRunEndEncodedArray, ownedRef);
	}


	/** */
	public static GType getType()
	{
		return garrow_run_end_encoded_array_get_type();
	}

	/**
	 *
	 * Params:
	 *     dataType = The data type of the run-end encoded array.
	 *     logicalLength = The logical length of the run-end encoded array.
	 *     runEnds = The run-ends of the run-end encoded array.
	 *     values = The values of the run-end encoded array.
	 *     logicalOffset = The offset of the run-end encoded array.
	 * Returns: A newly created #GArrowRunEndEncodedArray
	 *     or %NULL on error.
	 *
	 * Since: 13.0.0
	 *
	 * Throws: GException on failure.
	 * Throws: ConstructionException GTK+ fails to create the object.
	 */
	public this(DataType dataType, long logicalLength, Array runEnds, Array values, long logicalOffset)
	{
		GError* err = null;

		auto __p = garrow_run_end_encoded_array_new((dataType is null) ? null : dataType.getDataTypeStruct(), logicalLength, (runEnds is null) ? null : runEnds.getArrayStruct(), (values is null) ? null : values.getArrayStruct(), logicalOffset, &err);

		if (err !is null)
		{
			throw new GException( new ErrorG(err) );
		}

		if(__p is null)
		{
			throw new ConstructionException("null returned by new");
		}

		this(cast(GArrowRunEndEncodedArray*) __p, true);
	}

	/**
	 * Returns: A newly decoded #GArrowArray for the @array on success,
	 *     %NULL on error.
	 *
	 * Since: 13.0.0
	 *
	 * Throws: GException on failure.
	 */
	public Array decode()
	{
		GError* err = null;

		auto __p = garrow_run_end_encoded_array_decode(gArrowRunEndEncodedArray, &err);

		if (err !is null)
		{
			throw new GException( new ErrorG(err) );
		}

		if(__p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(Array)(cast(GArrowArray*) __p, true);
	}

	/**
	 * Returns: Find the physical length of this array.
	 *
	 *     The physical length of an run-end encoded array is the number of
	 *     physical values (and run-ends) necessary to represent the logical
	 *     range of values from offset to length.
	 *
	 *     Avoid calling this function if the physical length can be
	 *     established in some other way (e.g. when iterating over the runs
	 *     sequentially until the end). This function uses binary-search, so
	 *     it has a O(log N) cost.
	 *
	 * Since: 13.0.0
	 */
	public long findPhysicalLength()
	{
		return garrow_run_end_encoded_array_find_physical_length(gArrowRunEndEncodedArray);
	}

	/**
	 * Returns: Find the physical offset of this array.
	 *
	 *     This function uses binary-search, so it has a O(log N) cost.
	 *
	 * Since: 13.0.0
	 */
	public long findPhysicalOffset()
	{
		return garrow_run_end_encoded_array_find_physical_offset(gArrowRunEndEncodedArray);
	}

	/**
	 * Returns: The logical indexes of each run-end or
	 *     %NULL on error.
	 *
	 *     If a non-zero logical offset is set, this function allocates a
	 *     new array and rewrites all the run end values to be relative to
	 *     the logical offset and cuts the end of the array to the logical
	 *     length.
	 *
	 * Since: 13.0.0
	 *
	 * Throws: GException on failure.
	 */
	public Array getLogicalRunEnds()
	{
		GError* err = null;

		auto __p = garrow_run_end_encoded_array_get_logical_run_ends(gArrowRunEndEncodedArray, &err);

		if (err !is null)
		{
			throw new GException( new ErrorG(err) );
		}

		if(__p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(Array)(cast(GArrowArray*) __p, true);
	}

	/**
	 * Returns: The logical values of each run.
	 *
	 *     If a non-zero logical offset is set, this function allocates a
	 *     new array containing only the values within the logical range.
	 *
	 * Since: 13.0.0
	 */
	public Array getLogicalValues()
	{
		auto __p = garrow_run_end_encoded_array_get_logical_values(gArrowRunEndEncodedArray);

		if(__p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(Array)(cast(GArrowArray*) __p, true);
	}

	/**
	 * Returns: The indexes of each run-end.
	 *
	 *     The physical offset to the array is applied.
	 *
	 * Since: 13.0.0
	 */
	public Array getRunEnds()
	{
		auto __p = garrow_run_end_encoded_array_get_run_ends(gArrowRunEndEncodedArray);

		if(__p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(Array)(cast(GArrowArray*) __p, true);
	}

	/**
	 * Returns: The values of each run.
	 *
	 *     The physical offset to the array is applied.
	 *
	 * Since: 13.0.0
	 */
	public Array getValues()
	{
		auto __p = garrow_run_end_encoded_array_get_values(gArrowRunEndEncodedArray);

		if(__p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(Array)(cast(GArrowArray*) __p, true);
	}
}
