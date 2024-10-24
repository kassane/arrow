module arrow.S3GlobalOptions;

private import arrow.c.functions;
public  import arrow.c.types;
private import glib.ConstructionException;
private import gobject.ObjectG;


/** */
public class S3GlobalOptions : ObjectG
{
	/** the main Gtk struct */
	protected GArrowS3GlobalOptions* gArrowS3GlobalOptions;

	/** Get the main Gtk struct */
	public GArrowS3GlobalOptions* getS3GlobalOptionsStruct(bool transferOwnership = false)
	{
		if (transferOwnership)
			ownedRef = false;
		return gArrowS3GlobalOptions;
	}

	/** the main Gtk struct as a void* */
	protected override void* getStruct()
	{
		return cast(void*)gArrowS3GlobalOptions;
	}

	/**
	 * Sets our main struct and passes it to the parent class.
	 */
	public this (GArrowS3GlobalOptions* gArrowS3GlobalOptions, bool ownedRef = false)
	{
		this.gArrowS3GlobalOptions = gArrowS3GlobalOptions;
		super(cast(GObject*)gArrowS3GlobalOptions, ownedRef);
	}


	/** */
	public static GType getType()
	{
		return garrow_s3_global_options_get_type();
	}

	/**
	 * Returns: A newly created #GArrowS3GlobalOptions.
	 *
	 * Since: 7.0.0
	 *
	 * Throws: ConstructionException GTK+ fails to create the object.
	 */
	public this()
	{
		auto __p = garrow_s3_global_options_new();

		if(__p is null)
		{
			throw new ConstructionException("null returned by new");
		}

		this(cast(GArrowS3GlobalOptions*) __p, true);
	}
}
