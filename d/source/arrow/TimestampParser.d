module arrow.TimestampParser;

private import arrow.c.functions;
public  import arrow.c.types;
private import glib.Str;
private import glib.c.functions;
private import gobject.ObjectG;


/** */
public class TimestampParser : ObjectG
{
	/** the main Gtk struct */
	protected GArrowTimestampParser* gArrowTimestampParser;

	/** Get the main Gtk struct */
	public GArrowTimestampParser* getTimestampParserStruct(bool transferOwnership = false)
	{
		if (transferOwnership)
			ownedRef = false;
		return gArrowTimestampParser;
	}

	/** the main Gtk struct as a void* */
	protected override void* getStruct()
	{
		return cast(void*)gArrowTimestampParser;
	}

	/**
	 * Sets our main struct and passes it to the parent class.
	 */
	public this (GArrowTimestampParser* gArrowTimestampParser, bool ownedRef = false)
	{
		this.gArrowTimestampParser = gArrowTimestampParser;
		super(cast(GObject*)gArrowTimestampParser, ownedRef);
	}


	/** */
	public static GType getType()
	{
		return garrow_timestamp_parser_get_type();
	}

	/**
	 * Returns: The kind of this timestamp parser.
	 *
	 * Since: 16.0.0
	 */
	public string getKind()
	{
		return Str.toString(garrow_timestamp_parser_get_kind(gArrowTimestampParser));
	}
}
