module arrow.ArrayBuilder;

private import arrow.Array;
private import arrow.DataType;
private import arrow.c.functions;
public  import arrow.c.types;
private import glib.ErrorG;
private import glib.GException;
private import glib.ListG;
private import gobject.ObjectG;


/** */
public class ArrayBuilder : ObjectG
{
	/** the main Gtk struct */
	protected GArrowArrayBuilder* gArrowArrayBuilder;

	/** Get the main Gtk struct */
	public GArrowArrayBuilder* getArrayBuilderStruct(bool transferOwnership = false)
	{
		if (transferOwnership)
			ownedRef = false;
		return gArrowArrayBuilder;
	}

	/** the main Gtk struct as a void* */
	protected override void* getStruct()
	{
		return cast(void*)gArrowArrayBuilder;
	}

	/**
	 * Sets our main struct and passes it to the parent class.
	 */
	public this (GArrowArrayBuilder* gArrowArrayBuilder, bool ownedRef = false)
	{
		this.gArrowArrayBuilder = gArrowArrayBuilder;
		super(cast(GObject*)gArrowArrayBuilder, ownedRef);
	}


	/** */
	public static GType getType()
	{
		return garrow_array_builder_get_type();
	}

	/**
	 * Returns: %TRUE on success, %FALSE if there was an error.
	 *
	 * Since: 3.0.0
	 *
	 * Throws: GException on failure.
	 */
	public bool appendEmptyValue()
	{
		GError* err = null;

		auto __p = garrow_array_builder_append_empty_value(gArrowArrayBuilder, &err) != 0;

		if (err !is null)
		{
			throw new GException( new ErrorG(err) );
		}

		return __p;
	}

	/**
	 * Append multiple empty values at once. It's more efficient than multiple
	 * garrow_array_builder_append_empty_value() calls.
	 *
	 * Params:
	 *     n = The number of null values to be appended.
	 *
	 * Returns: %TRUE on success, %FALSE if there was an error.
	 *
	 * Since: 3.0.0
	 *
	 * Throws: GException on failure.
	 */
	public bool appendEmptyValues(long n)
	{
		GError* err = null;

		auto __p = garrow_array_builder_append_empty_values(gArrowArrayBuilder, n, &err) != 0;

		if (err !is null)
		{
			throw new GException( new ErrorG(err) );
		}

		return __p;
	}

	/**
	 * Returns: %TRUE on success, %FALSE if there was an error.
	 *
	 * Since: 3.0.0
	 *
	 * Throws: GException on failure.
	 */
	public bool appendNull()
	{
		GError* err = null;

		auto __p = garrow_array_builder_append_null(gArrowArrayBuilder, &err) != 0;

		if (err !is null)
		{
			throw new GException( new ErrorG(err) );
		}

		return __p;
	}

	/**
	 * Append multiple nulls at once. It's more efficient than multiple
	 * garrow_array_builder_append_null() calls.
	 *
	 * Params:
	 *     n = The number of null values to be appended.
	 *
	 * Returns: %TRUE on success, %FALSE if there was an error.
	 *
	 * Since: 3.0.0
	 *
	 * Throws: GException on failure.
	 */
	public bool appendNulls(long n)
	{
		GError* err = null;

		auto __p = garrow_array_builder_append_nulls(gArrowArrayBuilder, n, &err) != 0;

		if (err !is null)
		{
			throw new GException( new ErrorG(err) );
		}

		return __p;
	}

	/**
	 * Returns: The built #GArrowArray on success,
	 *     %NULL on error.
	 *
	 * Throws: GException on failure.
	 */
	public Array finish()
	{
		GError* err = null;

		auto __p = garrow_array_builder_finish(gArrowArrayBuilder, &err);

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
	 * Returns: The capacity of the building array.
	 *
	 * Since: 2.0.0
	 */
	public long getCapacity()
	{
		return garrow_array_builder_get_capacity(gArrowArrayBuilder);
	}

	/**
	 *
	 * Params:
	 *     i = The index of the child.
	 * Returns: The #GArrowArrayBuilder for the i-th child.
	 *
	 * Since: 12.0.0
	 */
	public ArrayBuilder getChild(int i)
	{
		auto __p = garrow_array_builder_get_child(gArrowArrayBuilder, i);

		if(__p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(ArrayBuilder)(cast(GArrowArrayBuilder*) __p);
	}

	/**
	 * Returns: The #GArrowArrayBuilder for all fields.
	 *
	 * Since: 12.0.0
	 */
	public ListG getChildren()
	{
		auto __p = garrow_array_builder_get_children(gArrowArrayBuilder);

		if(__p is null)
		{
			return null;
		}

		return new ListG(cast(GList*) __p);
	}

	/**
	 * Returns: The current length of the building array.
	 *
	 * Since: 2.0.0
	 */
	public long getLength()
	{
		return garrow_array_builder_get_length(gArrowArrayBuilder);
	}

	/**
	 * Returns: The current number of null elements in the building array.
	 *
	 * Since: 2.0.0
	 */
	public long getNNulls()
	{
		return garrow_array_builder_get_n_nulls(gArrowArrayBuilder);
	}

	/**
	 * Returns: The #GArrowDataType of the value of
	 *     the array builder.
	 *
	 * Since: 0.9.0
	 */
	public DataType getValueDataType()
	{
		auto __p = garrow_array_builder_get_value_data_type(gArrowArrayBuilder);

		if(__p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(DataType)(cast(GArrowDataType*) __p, true);
	}

	/**
	 * Returns: The #GArrowType of the value of the array builder.
	 *
	 * Since: 0.9.0
	 */
	public GArrowType getValueType()
	{
		return garrow_array_builder_get_value_type(gArrowArrayBuilder);
	}

	/**
	 *
	 * Params:
	 *     additionalCapacity = The additional capacity to be reserved.
	 * Returns: %TRUE on success, %FALSE if there was an error.
	 *
	 * Since: 2.0.0
	 *
	 * Throws: GException on failure.
	 */
	public bool reserve(long additionalCapacity)
	{
		GError* err = null;

		auto __p = garrow_array_builder_reserve(gArrowArrayBuilder, additionalCapacity, &err) != 0;

		if (err !is null)
		{
			throw new GException( new ErrorG(err) );
		}

		return __p;
	}

	/** */
	public void reset()
	{
		garrow_array_builder_reset(gArrowArrayBuilder);
	}

	/**
	 *
	 * Params:
	 *     capacity = A new capacity.
	 * Returns: %TRUE on success, %FALSE if there was an error.
	 *
	 * Since: 2.0.0
	 *
	 * Throws: GException on failure.
	 */
	public bool resize(long capacity)
	{
		GError* err = null;

		auto __p = garrow_array_builder_resize(gArrowArrayBuilder, capacity, &err) != 0;

		if (err !is null)
		{
			throw new GException( new ErrorG(err) );
		}

		return __p;
	}
}
