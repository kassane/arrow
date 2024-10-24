module arrow.LargeListArrayBuilder;

private import arrow.ArrayBuilder;
private import arrow.LargeListDataType;
private import arrow.c.functions;
public  import arrow.c.types;
private import glib.ConstructionException;
private import glib.ErrorG;
private import glib.GException;
private import gobject.ObjectG;


/** */
public class LargeListArrayBuilder : ArrayBuilder
{
	/** the main Gtk struct */
	protected GArrowLargeListArrayBuilder* gArrowLargeListArrayBuilder;

	/** Get the main Gtk struct */
	public GArrowLargeListArrayBuilder* getLargeListArrayBuilderStruct(bool transferOwnership = false)
	{
		if (transferOwnership)
			ownedRef = false;
		return gArrowLargeListArrayBuilder;
	}

	/** the main Gtk struct as a void* */
	protected override void* getStruct()
	{
		return cast(void*)gArrowLargeListArrayBuilder;
	}

	/**
	 * Sets our main struct and passes it to the parent class.
	 */
	public this (GArrowLargeListArrayBuilder* gArrowLargeListArrayBuilder, bool ownedRef = false)
	{
		this.gArrowLargeListArrayBuilder = gArrowLargeListArrayBuilder;
		super(cast(GArrowArrayBuilder*)gArrowLargeListArrayBuilder, ownedRef);
	}


	/** */
	public static GType getType()
	{
		return garrow_large_list_array_builder_get_type();
	}

	/**
	 *
	 * Params:
	 *     dataType = A #GArrowLargeListDataType for value.
	 * Returns: A newly created #GArrowLargeListArrayBuilder.
	 *
	 * Since: 0.16.0
	 *
	 * Throws: GException on failure.
	 * Throws: ConstructionException GTK+ fails to create the object.
	 */
	public this(LargeListDataType dataType)
	{
		GError* err = null;

		auto __p = garrow_large_list_array_builder_new((dataType is null) ? null : dataType.getLargeListDataTypeStruct(), &err);

		if (err !is null)
		{
			throw new GException( new ErrorG(err) );
		}

		if(__p is null)
		{
			throw new ConstructionException("null returned by new");
		}

		this(cast(GArrowLargeListArrayBuilder*) __p, true);
	}

	/**
	 *
	 *
	 * Deprecated: Use garrow_array_builder_append_null() instead.
	 *
	 * Returns: %TRUE on success, %FALSE if there was an error.
	 *
	 *     It appends a new NULL element.
	 *
	 * Since: 0.16.0
	 *
	 * Throws: GException on failure.
	 */
	public override bool appendNull()
	{
		GError* err = null;

		auto __p = garrow_large_list_array_builder_append_null(gArrowLargeListArrayBuilder, &err) != 0;

		if (err !is null)
		{
			throw new GException( new ErrorG(err) );
		}

		return __p;
	}

	/**
	 * Returns: %TRUE on success, %FALSE if there was an error.
	 *
	 *     It appends a new list element. To append a new list element, you
	 *     need to call this function then append list element values to
	 *     `value_builder`. `value_builder` is the #GArrowArrayBuilder
	 *     specified to constructor. You can get `value_builder` by
	 *     garrow_large_list_array_builder_get_value_builder().
	 *
	 * Since: 0.16.0
	 *
	 * Throws: GException on failure.
	 */
	public bool appendValue()
	{
		GError* err = null;

		auto __p = garrow_large_list_array_builder_append_value(gArrowLargeListArrayBuilder, &err) != 0;

		if (err !is null)
		{
			throw new GException( new ErrorG(err) );
		}

		return __p;
	}

	/**
	 * Returns: The #GArrowArrayBuilder for values.
	 *
	 * Since: 0.16.0
	 */
	public ArrayBuilder getValueBuilder()
	{
		auto __p = garrow_large_list_array_builder_get_value_builder(gArrowLargeListArrayBuilder);

		if(__p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(ArrayBuilder)(cast(GArrowArrayBuilder*) __p);
	}
}
