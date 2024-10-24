module arrow.StrptimeTimestampParser;

private import arrow.TimestampParser;
private import arrow.c.functions;
public  import arrow.c.types;
private import glib.ConstructionException;
private import glib.Str;
private import glib.c.functions;
private import gobject.ObjectG;


/** */
public class StrptimeTimestampParser : TimestampParser
{
	/** the main Gtk struct */
	protected GArrowStrptimeTimestampParser* gArrowStrptimeTimestampParser;

	/** Get the main Gtk struct */
	public GArrowStrptimeTimestampParser* getStrptimeTimestampParserStruct(bool transferOwnership = false)
	{
		if (transferOwnership)
			ownedRef = false;
		return gArrowStrptimeTimestampParser;
	}

	/** the main Gtk struct as a void* */
	protected override void* getStruct()
	{
		return cast(void*)gArrowStrptimeTimestampParser;
	}

	/**
	 * Sets our main struct and passes it to the parent class.
	 */
	public this (GArrowStrptimeTimestampParser* gArrowStrptimeTimestampParser, bool ownedRef = false)
	{
		this.gArrowStrptimeTimestampParser = gArrowStrptimeTimestampParser;
		super(cast(GArrowTimestampParser*)gArrowStrptimeTimestampParser, ownedRef);
	}


	/** */
	public static GType getType()
	{
		return garrow_strptime_timestamp_parser_get_type();
	}

	/**
	 *
	 * Params:
	 *     format = A format used by strptime(3).
	 * Returns: A newly allocated #GArrowStrptimeTimestampParser.
	 *
	 * Since: 16.0.0
	 *
	 * Throws: ConstructionException GTK+ fails to create the object.
	 */
	public this(string format)
	{
		auto __p = garrow_strptime_timestamp_parser_new(Str.toStringz(format));

		if(__p is null)
		{
			throw new ConstructionException("null returned by new");
		}

		this(cast(GArrowStrptimeTimestampParser*) __p, true);
	}

	/**
	 * Returns: The format used by this parser.
	 *
	 * Since: 16.0.0
	 */
	public string getFormat()
	{
		return Str.toString(garrow_strptime_timestamp_parser_get_format(gArrowStrptimeTimestampParser));
	}
}
