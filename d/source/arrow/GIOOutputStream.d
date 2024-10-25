module arrow.GIOOutputStream;

private import arrow.OutputStream;
private import arrow.c.functions;
public  import arrow.c.types;
static import gio.OutputStream;
private import glib.ConstructionException;
private import gobject.ObjectG;


/** */
public class GIOOutputStream : OutputStream
{
	/** the main Gtk struct */
	protected GArrowGIOOutputStream* gArrowGIOOutputStream;

	/** Get the main Gtk struct */
	public GArrowGIOOutputStream* getGIOOutputStreamStruct(bool transferOwnership = false)
	{
		if (transferOwnership)
			ownedRef = false;
		return gArrowGIOOutputStream;
	}

	/** the main Gtk struct as a void* */
	protected override void* getStruct()
	{
		return cast(void*)gArrowGIOOutputStream;
	}

	/**
	 * Sets our main struct and passes it to the parent class.
	 */
	public this (GArrowGIOOutputStream* gArrowGIOOutputStream, bool ownedRef = false)
	{
		this.gArrowGIOOutputStream = gArrowGIOOutputStream;
		super(cast(GArrowOutputStream*)gArrowGIOOutputStream, ownedRef);
	}


	/** */
	public static GType getType()
	{
		return garrow_gio_output_stream_get_type();
	}

	/**
	 *
	 * Params:
	 *     gioOutputStream = The stream to be output.
	 * Returns: A newly created #GArrowGIOOutputStream.
	 *
	 * Throws: ConstructionException GTK+ fails to create the object.
	 */
	public this(OutputStream gioOutputStream)
	{
		auto __p = garrow_gio_output_stream_new((gioOutputStream is null) ? null : cast(GOutputStream*)gioOutputStream.getOutputStreamStruct());

		if(__p is null)
		{
			throw new ConstructionException("null returned by new");
		}

		this(cast(GArrowGIOOutputStream*) __p, true);
	}

	/**
	 *
	 *
	 * Deprecated: Use GArrowGIOOutputStream::raw property instead.
	 *
	 * Returns: The wrapped #GOutputStream.
	 *
	 * Since: 0.5.0
	 */
	public OutputStream getRaw()
	{
		auto __p = garrow_gio_output_stream_get_raw(gArrowGIOOutputStream);

		if(__p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(OutputStream)(cast(GArrowOutputStream*) __p);
	}
}
