module arrow.RankOptions;

private import arrow.FunctionOptions;
private import arrow.SortKey;
private import arrow.c.functions;
public  import arrow.c.types;
private import glib.ConstructionException;
private import glib.ListG;
private import gobject.ObjectG;


/** */
public class RankOptions : FunctionOptions
{
	/** the main Gtk struct */
	protected GArrowRankOptions* gArrowRankOptions;

	/** Get the main Gtk struct */
	public GArrowRankOptions* getRankOptionsStruct(bool transferOwnership = false)
	{
		if (transferOwnership)
			ownedRef = false;
		return gArrowRankOptions;
	}

	/** the main Gtk struct as a void* */
	protected override void* getStruct()
	{
		return cast(void*)gArrowRankOptions;
	}

	/**
	 * Sets our main struct and passes it to the parent class.
	 */
	public this (GArrowRankOptions* gArrowRankOptions, bool ownedRef = false)
	{
		this.gArrowRankOptions = gArrowRankOptions;
		super(cast(GArrowFunctionOptions*)gArrowRankOptions, ownedRef);
	}


	/** */
	public static GType getType()
	{
		return garrow_rank_options_get_type();
	}

	/**
	 * Returns: A newly created #GArrowRankOptions.
	 *
	 * Since: 12.0.0
	 *
	 * Throws: ConstructionException GTK+ fails to create the object.
	 */
	public this()
	{
		auto __p = garrow_rank_options_new();

		if(__p is null)
		{
			throw new ConstructionException("null returned by new");
		}

		this(cast(GArrowRankOptions*) __p, true);
	}

	/**
	 * Add a sort key to be used.
	 *
	 * Params:
	 *     sortKey = The sort key to be added.
	 *
	 * Since: 12.0.0
	 */
	public void addSortKey(SortKey sortKey)
	{
		garrow_rank_options_add_sort_key(gArrowRankOptions, (sortKey is null) ? null : sortKey.getSortKeyStruct());
	}

	/**
	 *
	 * Params:
	 *     otherOptions = A #GArrowRankOptions to be compared.
	 * Returns: %TRUE if both of them have the same option values, %FALSE
	 *     otherwise.
	 *
	 * Since: 12.0.0
	 */
	public bool equal(RankOptions otherOptions)
	{
		return garrow_rank_options_equal(gArrowRankOptions, (otherOptions is null) ? null : otherOptions.getRankOptionsStruct()) != 0;
	}

	/**
	 * Returns: The sort keys to be used.
	 *
	 * Since: 12.0.0
	 */
	public ListG getSortKeys()
	{
		auto __p = garrow_rank_options_get_sort_keys(gArrowRankOptions);

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
	 * Since: 12.0.0
	 */
	public void setSortKeys(ListG sortKeys)
	{
		garrow_rank_options_set_sort_keys(gArrowRankOptions, (sortKeys is null) ? null : sortKeys.getListGStruct());
	}
}
