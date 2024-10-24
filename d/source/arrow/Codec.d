module arrow.Codec;

private import arrow.c.functions;
public  import arrow.c.types;
private import glib.ConstructionException;
private import glib.ErrorG;
private import glib.GException;
private import glib.Str;
private import glib.c.functions;
private import gobject.ObjectG;


/** */
public class Codec : ObjectG
{
	/** the main Gtk struct */
	protected GArrowCodec* gArrowCodec;

	/** Get the main Gtk struct */
	public GArrowCodec* getCodecStruct(bool transferOwnership = false)
	{
		if (transferOwnership)
			ownedRef = false;
		return gArrowCodec;
	}

	/** the main Gtk struct as a void* */
	protected override void* getStruct()
	{
		return cast(void*)gArrowCodec;
	}

	/**
	 * Sets our main struct and passes it to the parent class.
	 */
	public this (GArrowCodec* gArrowCodec, bool ownedRef = false)
	{
		this.gArrowCodec = gArrowCodec;
		super(cast(GObject*)gArrowCodec, ownedRef);
	}


	/** */
	public static GType getType()
	{
		return garrow_codec_get_type();
	}

	/**
	 *
	 * Params:
	 *     type = A #GArrowCompressionType.
	 * Returns: A newly created #GArrowCodec on success, %NULL on error.
	 *
	 * Since: 0.12.0
	 *
	 * Throws: GException on failure.
	 * Throws: ConstructionException GTK+ fails to create the object.
	 */
	public this(GArrowCompressionType type)
	{
		GError* err = null;

		auto __p = garrow_codec_new(type, &err);

		if (err !is null)
		{
			throw new GException( new ErrorG(err) );
		}

		if(__p is null)
		{
			throw new ConstructionException("null returned by new");
		}

		this(cast(GArrowCodec*) __p, true);
	}

	/**
	 * Returns: The compression level of the codec.
	 *
	 * Since: 2.0.0
	 */
	public int getCompressionLevel()
	{
		return garrow_codec_get_compression_level(gArrowCodec);
	}

	/**
	 * Returns: The compression type of the codec.
	 *
	 * Since: 2.0.0
	 */
	public GArrowCompressionType getCompressionType()
	{
		return garrow_codec_get_compression_type(gArrowCodec);
	}

	/**
	 * Returns: The name of the codec.
	 *
	 * Since: 0.12.0
	 */
	public string getName()
	{
		return Str.toString(garrow_codec_get_name(gArrowCodec));
	}
}
