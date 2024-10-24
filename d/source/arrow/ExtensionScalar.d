module arrow.ExtensionScalar;

private import arrow.Scalar;
private import arrow.c.functions;
public  import arrow.c.types;


/** */
public class ExtensionScalar : Scalar
{
	/** the main Gtk struct */
	protected GArrowExtensionScalar* gArrowExtensionScalar;

	/** Get the main Gtk struct */
	public GArrowExtensionScalar* getExtensionScalarStruct(bool transferOwnership = false)
	{
		if (transferOwnership)
			ownedRef = false;
		return gArrowExtensionScalar;
	}

	/** the main Gtk struct as a void* */
	protected override void* getStruct()
	{
		return cast(void*)gArrowExtensionScalar;
	}

	/**
	 * Sets our main struct and passes it to the parent class.
	 */
	public this (GArrowExtensionScalar* gArrowExtensionScalar, bool ownedRef = false)
	{
		this.gArrowExtensionScalar = gArrowExtensionScalar;
		super(cast(GArrowScalar*)gArrowExtensionScalar, ownedRef);
	}


	/** */
	public static GType getType()
	{
		return garrow_extension_scalar_get_type();
	}
}
