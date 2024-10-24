module arrow.ArraySortOptions;

private import arrow.FunctionOptions;
private import arrow.c.functions;
public  import arrow.c.types;
private import glib.ConstructionException;
private import gobject.ObjectG;


/** */
public class ArraySortOptions : FunctionOptions
{
	/** the main Gtk struct */
	protected GArrowArraySortOptions* gArrowArraySortOptions;

	/** Get the main Gtk struct */
	public GArrowArraySortOptions* getArraySortOptionsStruct(bool transferOwnership = false)
	{
		if (transferOwnership)
			ownedRef = false;
		return gArrowArraySortOptions;
	}

	/** the main Gtk struct as a void* */
	protected override void* getStruct()
	{
		return cast(void*)gArrowArraySortOptions;
	}

	/**
	 * Sets our main struct and passes it to the parent class.
	 */
	public this (GArrowArraySortOptions* gArrowArraySortOptions, bool ownedRef = false)
	{
		this.gArrowArraySortOptions = gArrowArraySortOptions;
		super(cast(GArrowFunctionOptions*)gArrowArraySortOptions, ownedRef);
	}


	/** */
	public static GType getType()
	{
		return garrow_array_sort_options_get_type();
	}

	/**
	 *
	 * Params:
	 *     order = How to order by values.
	 * Returns: A newly created #GArrowArraySortOptions.
	 *
	 * Since: 3.0.0
	 *
	 * Throws: ConstructionException GTK+ fails to create the object.
	 */
	public this(GArrowSortOrder order)
	{
		auto __p = garrow_array_sort_options_new(order);

		if(__p is null)
		{
			throw new ConstructionException("null returned by new");
		}

		this(cast(GArrowArraySortOptions*) __p, true);
	}

	/**
	 *
	 * Params:
	 *     otherOptions = A #GArrowArraySortOptions to be compared.
	 * Returns: %TRUE if both of them have the same order, %FALSE
	 *     otherwise.
	 *
	 * Since: 3.0.0
	 */
	public bool equal(ArraySortOptions otherOptions)
	{
		return garrow_array_sort_options_equal(gArrowArraySortOptions, (otherOptions is null) ? null : otherOptions.getArraySortOptionsStruct()) != 0;
	}
}
