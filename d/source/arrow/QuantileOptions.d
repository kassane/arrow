module arrow.QuantileOptions;

private import arrow.FunctionOptions;
private import arrow.c.functions;
public  import arrow.c.types;
private import glib.ConstructionException;
private import gobject.ObjectG;


/** */
public class QuantileOptions : FunctionOptions
{
	/** the main Gtk struct */
	protected GArrowQuantileOptions* gArrowQuantileOptions;

	/** Get the main Gtk struct */
	public GArrowQuantileOptions* getQuantileOptionsStruct(bool transferOwnership = false)
	{
		if (transferOwnership)
			ownedRef = false;
		return gArrowQuantileOptions;
	}

	/** the main Gtk struct as a void* */
	protected override void* getStruct()
	{
		return cast(void*)gArrowQuantileOptions;
	}

	/**
	 * Sets our main struct and passes it to the parent class.
	 */
	public this (GArrowQuantileOptions* gArrowQuantileOptions, bool ownedRef = false)
	{
		this.gArrowQuantileOptions = gArrowQuantileOptions;
		super(cast(GArrowFunctionOptions*)gArrowQuantileOptions, ownedRef);
	}


	/** */
	public static GType getType()
	{
		return garrow_quantile_options_get_type();
	}

	/**
	 * Returns: A newly created #GArrowQuantileOptions.
	 *
	 * Since: 9.0.0
	 *
	 * Throws: ConstructionException GTK+ fails to create the object.
	 */
	public this()
	{
		auto __p = garrow_quantile_options_new();

		if(__p is null)
		{
			throw new ConstructionException("null returned by new");
		}

		this(cast(GArrowQuantileOptions*) __p, true);
	}

	/**
	 * Returns: The `q`s to be used.
	 *
	 * Since: 9.0.0
	 */
	public double[] getQs()
	{
		size_t n;

		auto __p = garrow_quantile_options_get_qs(gArrowQuantileOptions, &n);

		return __p[0 .. n];
	}

	/** */
	public void setQ(double q)
	{
		garrow_quantile_options_set_q(gArrowQuantileOptions, q);
	}

	/** */
	public void setQs(double[] qs)
	{
		garrow_quantile_options_set_qs(gArrowQuantileOptions, qs.ptr, cast(size_t)qs.length);
	}
}
