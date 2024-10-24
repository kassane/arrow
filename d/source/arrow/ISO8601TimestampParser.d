module arrow.ISO8601TimestampParser;

private import arrow.TimestampParser;
private import arrow.c.functions;
public  import arrow.c.types;
private import glib.ConstructionException;
private import gobject.ObjectG;


/** */
public class ISO8601TimestampParser : TimestampParser
{
	/** the main Gtk struct */
	protected GArrowISO8601TimestampParser* gArrowISO8601TimestampParser;

	/** Get the main Gtk struct */
	public GArrowISO8601TimestampParser* getISO8601TimestampParserStruct(bool transferOwnership = false)
	{
		if (transferOwnership)
			ownedRef = false;
		return gArrowISO8601TimestampParser;
	}

	/** the main Gtk struct as a void* */
	protected override void* getStruct()
	{
		return cast(void*)gArrowISO8601TimestampParser;
	}

	/**
	 * Sets our main struct and passes it to the parent class.
	 */
	public this (GArrowISO8601TimestampParser* gArrowISO8601TimestampParser, bool ownedRef = false)
	{
		this.gArrowISO8601TimestampParser = gArrowISO8601TimestampParser;
		super(cast(GArrowTimestampParser*)gArrowISO8601TimestampParser, ownedRef);
	}


	/** */
	public static GType getType()
	{
		return garrow_iso8601_timestamp_parser_get_type();
	}

	/**
	 * Returns: A newly allocated #GArrowISO8601TimestampParser.
	 *
	 * Since: 16.0.0
	 *
	 * Throws: ConstructionException GTK+ fails to create the object.
	 */
	public this()
	{
		auto __p = garrow_iso8601_timestamp_parser_new();

		if(__p is null)
		{
			throw new ConstructionException("null returned by new");
		}

		this(cast(GArrowISO8601TimestampParser*) __p, true);
	}
}
