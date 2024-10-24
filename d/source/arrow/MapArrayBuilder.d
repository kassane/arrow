module arrow.MapArrayBuilder;

private import arrow.ArrayBuilder;
private import arrow.MapDataType;
private import arrow.c.functions;
public  import arrow.c.types;
private import glib.ConstructionException;
private import glib.ErrorG;
private import glib.GException;
private import gobject.ObjectG;


/** */
public class MapArrayBuilder : ArrayBuilder
{
	/** the main Gtk struct */
	protected GArrowMapArrayBuilder* gArrowMapArrayBuilder;

	/** Get the main Gtk struct */
	public GArrowMapArrayBuilder* getMapArrayBuilderStruct(bool transferOwnership = false)
	{
		if (transferOwnership)
			ownedRef = false;
		return gArrowMapArrayBuilder;
	}

	/** the main Gtk struct as a void* */
	protected override void* getStruct()
	{
		return cast(void*)gArrowMapArrayBuilder;
	}

	/**
	 * Sets our main struct and passes it to the parent class.
	 */
	public this (GArrowMapArrayBuilder* gArrowMapArrayBuilder, bool ownedRef = false)
	{
		this.gArrowMapArrayBuilder = gArrowMapArrayBuilder;
		super(cast(GArrowArrayBuilder*)gArrowMapArrayBuilder, ownedRef);
	}


	/** */
	public static GType getType()
	{
		return garrow_map_array_builder_get_type();
	}

	/**
	 *
	 * Params:
	 *     dataType = #GArrowMapDataType for the map.
	 * Returns: A newly created #GArrowMapArrayBuilder on success,
	 *     %NULL on error.
	 *
	 * Since: 0.17.0
	 *
	 * Throws: GException on failure.
	 * Throws: ConstructionException GTK+ fails to create the object.
	 */
	public this(MapDataType dataType)
	{
		GError* err = null;

		auto __p = garrow_map_array_builder_new((dataType is null) ? null : dataType.getMapDataTypeStruct(), &err);

		if (err !is null)
		{
			throw new GException( new ErrorG(err) );
		}

		if(__p is null)
		{
			throw new ConstructionException("null returned by new");
		}

		this(cast(GArrowMapArrayBuilder*) __p, true);
	}

	/**
	 *
	 *
	 * Deprecated: Use garrow_array_builder_append_null() instead.
	 *
	 * Returns: %TRUE on success, %FALSE if there was an error.
	 *
	 * Since: 0.17.0
	 *
	 * Throws: GException on failure.
	 */
	public override bool appendNull()
	{
		GError* err = null;

		auto __p = garrow_map_array_builder_append_null(gArrowMapArrayBuilder, &err) != 0;

		if (err !is null)
		{
			throw new GException( new ErrorG(err) );
		}

		return __p;
	}

	/**
	 * Append multiple nulls at once. It's more efficient than multiple
	 * `append_null` calls.
	 *
	 * Deprecated: Use garrow_array_builder_append_nulls() instead.
	 *
	 * Params:
	 *     n = The number of null values to be appended.
	 *
	 * Returns: %TRUE on success, %FALSE if there was an error.
	 *
	 * Since: 0.17.0
	 *
	 * Throws: GException on failure.
	 */
	public override bool appendNulls(long n)
	{
		GError* err = null;

		auto __p = garrow_map_array_builder_append_nulls(gArrowMapArrayBuilder, n, &err) != 0;

		if (err !is null)
		{
			throw new GException( new ErrorG(err) );
		}

		return __p;
	}

	/**
	 * Returns: %TRUE on success, %FALSE if there was an error.
	 *
	 * Since: 0.17.0
	 *
	 * Throws: GException on failure.
	 */
	public bool appendValue()
	{
		GError* err = null;

		auto __p = garrow_map_array_builder_append_value(gArrowMapArrayBuilder, &err) != 0;

		if (err !is null)
		{
			throw new GException( new ErrorG(err) );
		}

		return __p;
	}

	/**
	 * Append multiple values at once. It's more efficient than multiple
	 * `append` and `append_null` calls.
	 *
	 * Params:
	 *     offsets = The array of signed int.
	 *     isValids = The array of
	 *         boolean that shows whether the Nth value is valid or not. If the
	 *         Nth `is_valids` is %TRUE, the Nth `values` is valid value. Otherwise
	 *         the Nth value is null value.
	 *
	 * Returns: %TRUE on success, %FALSE if there was an error.
	 *
	 * Since: 0.17.0
	 *
	 * Throws: GException on failure.
	 */
	public bool appendValues(int[] offsets, bool[] isValids)
	{
		int[] isValidsArray = new int[isValids.length];
		for ( int i = 0; i < isValids.length; i++ )
		{
			isValidsArray[i] = isValids[i] ? 1 : 0;
		}

		GError* err = null;

		auto __p = garrow_map_array_builder_append_values(gArrowMapArrayBuilder, offsets.ptr, cast(long)offsets.length, isValidsArray.ptr, cast(long)isValids.length, &err) != 0;

		if (err !is null)
		{
			throw new GException( new ErrorG(err) );
		}

		return __p;
	}

	/**
	 * Returns: The #GArrowArrayBuilder for item values.
	 *
	 * Since: 0.17.0
	 */
	public ArrayBuilder getItemBuilder()
	{
		auto __p = garrow_map_array_builder_get_item_builder(gArrowMapArrayBuilder);

		if(__p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(ArrayBuilder)(cast(GArrowArrayBuilder*) __p);
	}

	/**
	 * Returns: The #GArrowArrayBuilder for key values.
	 *
	 * Since: 0.17.0
	 */
	public ArrayBuilder getKeyBuilder()
	{
		auto __p = garrow_map_array_builder_get_key_builder(gArrowMapArrayBuilder);

		if(__p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(ArrayBuilder)(cast(GArrowArrayBuilder*) __p);
	}

	/**
	 * Returns: The #GArrowArrayBuilder to add map entries as struct values.
	 *     This can be used instead of garrow_map_array_builder_get_key_builder() and
	 *     garrow_map_array_builder_get_item_builder(). You can build map entries as a list of
	 *     struct values with this builder.
	 *
	 * Since: 0.17.0
	 */
	public ArrayBuilder getValueBuilder()
	{
		auto __p = garrow_map_array_builder_get_value_builder(gArrowMapArrayBuilder);

		if(__p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(ArrayBuilder)(cast(GArrowArrayBuilder*) __p);
	}
}
