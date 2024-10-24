module arrow.SortKey;

private import arrow.c.functions;
public  import arrow.c.types;
private import glib.ConstructionException;
private import glib.ErrorG;
private import glib.GException;
private import glib.Str;
private import gobject.ObjectG;


/** */
public class SortKey : ObjectG
{
	/** the main Gtk struct */
	protected GArrowSortKey* gArrowSortKey;

	/** Get the main Gtk struct */
	public GArrowSortKey* getSortKeyStruct(bool transferOwnership = false)
	{
		if (transferOwnership)
			ownedRef = false;
		return gArrowSortKey;
	}

	/** the main Gtk struct as a void* */
	protected override void* getStruct()
	{
		return cast(void*)gArrowSortKey;
	}

	/**
	 * Sets our main struct and passes it to the parent class.
	 */
	public this (GArrowSortKey* gArrowSortKey, bool ownedRef = false)
	{
		this.gArrowSortKey = gArrowSortKey;
		super(cast(GObject*)gArrowSortKey, ownedRef);
	}


	/** */
	public static GType getType()
	{
		return garrow_sort_key_get_type();
	}

	/**
	 *
	 * Params:
	 *     target = A name or dot path for sort target.
	 *     order = How to order by this sort key.
	 * Returns: A newly created #GArrowSortKey.
	 *
	 * Since: 3.0.0
	 *
	 * Throws: GException on failure.
	 * Throws: ConstructionException GTK+ fails to create the object.
	 */
	public this(string target, GArrowSortOrder order)
	{
		GError* err = null;

		auto __p = garrow_sort_key_new(Str.toStringz(target), order, &err);

		if (err !is null)
		{
			throw new GException( new ErrorG(err) );
		}

		if(__p is null)
		{
			throw new ConstructionException("null returned by new");
		}

		this(cast(GArrowSortKey*) __p, true);
	}

	/**
	 *
	 * Params:
	 *     otherSortKey = A #GArrowSortKey to be compared.
	 * Returns: %TRUE if both of them have the same name and order, %FALSE
	 *     otherwise.
	 *
	 * Since: 3.0.0
	 */
	public bool equal(SortKey otherSortKey)
	{
		return garrow_sort_key_equal(gArrowSortKey, (otherSortKey is null) ? null : otherSortKey.getSortKeyStruct()) != 0;
	}
}
