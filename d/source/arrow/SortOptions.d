module arrow.SortOptions;

private import arrow.FunctionOptions;
private import arrow.SortKey;
private import arrow.c.functions;
public  import arrow.c.types;
private import glib.ConstructionException;
private import glib.ListG;
private import gobject.ObjectG;


/** */
public class SortOptions : FunctionOptions
{
	alias equal = FunctionOptions.equal;
	/** the main Gtk struct */
	protected GArrowSortOptions* gArrowSortOptions;

	/** Get the main Gtk struct */
	public GArrowSortOptions* getSortOptionsStruct(bool transferOwnership = false)
	{
		if (transferOwnership)
			ownedRef = false;
		return gArrowSortOptions;
	}

	/** the main Gtk struct as a void* */
	protected override void* getStruct()
	{
		return cast(void*)gArrowSortOptions;
	}

	/**
	 * Sets our main struct and passes it to the parent class.
	 */
	public this (GArrowSortOptions* gArrowSortOptions, bool ownedRef = false)
	{
		this.gArrowSortOptions = gArrowSortOptions;
		super(cast(GArrowFunctionOptions*)gArrowSortOptions, ownedRef);
	}


	/** */
	public static GType getType()
	{
		return garrow_sort_options_get_type();
	}

	/**
	 *
	 * Params:
	 *     sortKeys = The sort keys to be used.
	 * Returns: A newly created #GArrowSortOptions.
	 *
	 * Since: 3.0.0
	 *
	 * Throws: ConstructionException GTK+ fails to create the object.
	 */
	public this(ListG sortKeys)
	{
		auto __p = garrow_sort_options_new((sortKeys is null) ? null : sortKeys.getListGStruct());

		if(__p is null)
		{
			throw new ConstructionException("null returned by new");
		}

		this(cast(GArrowSortOptions*) __p, true);
	}

	/**
	 * Add a sort key to be used.
	 *
	 * Params:
	 *     sortKey = The sort key to be added.
	 *
	 * Since: 3.0.0
	 */
	public void addSortKey(SortKey sortKey)
	{
		garrow_sort_options_add_sort_key(gArrowSortOptions, (sortKey is null) ? null : sortKey.getSortKeyStruct());
	}

	/**
	 *
	 * Params:
	 *     otherOptions = A #GArrowSortOptions to be compared.
	 * Returns: %TRUE if both of them have the same sort keys, %FALSE
	 *     otherwise.
	 *
	 * Since: 3.0.0
	 */
	public bool equal(SortOptions otherOptions)
	{
		return garrow_sort_options_equal(gArrowSortOptions, (otherOptions is null) ? null : otherOptions.getSortOptionsStruct()) != 0;
	}

	/**
	 * Returns: The sort keys to be used.
	 *
	 * Since: 3.0.0
	 */
	public ListG getSortKeys()
	{
		auto __p = garrow_sort_options_get_sort_keys(gArrowSortOptions);

		if(__p is null)
		{
			return null;
		}

		return new ListG(cast(GList*) __p, true);
	}

	/**
	 * Set sort keys to be used.
	 *
	 * Params:
	 *     sortKeys = The sort keys to be used.
	 *
	 * Since: 3.0.0
	 */
	public void setSortKeys(ListG sortKeys)
	{
		garrow_sort_options_set_sort_keys(gArrowSortOptions, (sortKeys is null) ? null : sortKeys.getListGStruct());
	}
}
