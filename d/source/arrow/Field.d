module arrow.Field;

private import arrow.DataType;
private import arrow.c.functions;
public  import arrow.c.types;
private import glib.ConstructionException;
private import glib.ErrorG;
private import glib.GException;
private import glib.HashTable;
private import glib.Str;
private import glib.c.functions;
private import gobject.ObjectG;


/** */
public class Field : ObjectG
{
	/** the main Gtk struct */
	protected GArrowField* gArrowField;

	/** Get the main Gtk struct */
	public GArrowField* getFieldStruct(bool transferOwnership = false)
	{
		if (transferOwnership)
			ownedRef = false;
		return gArrowField;
	}

	/** the main Gtk struct as a void* */
	protected override void* getStruct()
	{
		return cast(void*)gArrowField;
	}

	/**
	 * Sets our main struct and passes it to the parent class.
	 */
	public this (GArrowField* gArrowField, bool ownedRef = false)
	{
		this.gArrowField = gArrowField;
		super(cast(GObject*)gArrowField, ownedRef);
	}


	/** */
	public static GType getType()
	{
		return garrow_field_get_type();
	}

	/**
	 *
	 * Params:
	 *     name = The name of the field.
	 *     dataType = The data type of the field.
	 * Returns: A newly created #GArrowField.
	 *
	 * Throws: ConstructionException GTK+ fails to create the object.
	 */
	public this(string name, DataType dataType)
	{
		auto __p = garrow_field_new(Str.toStringz(name), (dataType is null) ? null : dataType.getDataTypeStruct());

		if(__p is null)
		{
			throw new ConstructionException("null returned by new");
		}

		this(cast(GArrowField*) __p, true);
	}

	/**
	 *
	 * Params:
	 *     name = The name of the field.
	 *     dataType = The data type of the field.
	 *     nullable = Whether null may be included or not.
	 * Returns: A newly created #GArrowField.
	 *
	 * Throws: ConstructionException GTK+ fails to create the object.
	 */
	public this(string name, DataType dataType, bool nullable)
	{
		auto __p = garrow_field_new_full(Str.toStringz(name), (dataType is null) ? null : dataType.getDataTypeStruct(), nullable);

		if(__p is null)
		{
			throw new ConstructionException("null returned by new_full");
		}

		this(cast(GArrowField*) __p, true);
	}

	/**
	 *
	 * Params:
	 *     cAbiSchema = A `struct ArrowSchema *`.
	 * Returns: An imported #GArrowField on success,
	 *     %NULL on error.
	 *
	 *     You don't need to release the passed `struct ArrowSchema *`,
	 *     even if this function reports an error.
	 *
	 * Since: 6.0.0
	 *
	 * Throws: GException on failure.
	 */
	public static Field import_(void* cAbiSchema)
	{
		GError* err = null;

		auto __p = garrow_field_import(cAbiSchema, &err);

		if (err !is null)
		{
			throw new GException( new ErrorG(err) );
		}

		if(__p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(Field)(cast(GArrowField*) __p, true);
	}

	/**
	 *
	 * Params:
	 *     otherField = A #GArrowField to be compared.
	 * Returns: %TRUE if both of them have the same data, %FALSE
	 *     otherwise.
	 */
	public bool equal(Field otherField)
	{
		return garrow_field_equal(gArrowField, (otherField is null) ? null : otherField.getFieldStruct()) != 0;
	}

	alias expor = export_;
	/**
	 * Returns: An exported #GArrowField as
	 *     `struct ArrowStruct *` on success, %NULL on error.
	 *
	 *     It should be freed with the `ArrowSchema::release` callback then
	 *     g_free() when no longer needed.
	 *
	 * Since: 6.0.0
	 *
	 * Throws: GException on failure.
	 */
	public void* export_()
	{
		GError* err = null;

		auto __p = garrow_field_export(gArrowField, &err);

		if (err !is null)
		{
			throw new GException( new ErrorG(err) );
		}

		return __p;
	}

	/**
	 * Returns: The data type of the field.
	 */
	public DataType getDataType()
	{
		auto __p = garrow_field_get_data_type(gArrowField);

		if(__p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(DataType)(cast(GArrowDataType*) __p);
	}

	/**
	 * Returns: The
	 *     metadata in the field.
	 *
	 *     It should be freed with g_hash_table_unref() when no longer needed.
	 *
	 * Since: 3.0.0
	 */
	public HashTable getMetadata()
	{
		auto __p = garrow_field_get_metadata(gArrowField);

		if(__p is null)
		{
			return null;
		}

		return new HashTable(cast(GHashTable*) __p, true);
	}

	/**
	 * Returns: The name of the field.
	 */
	public string getName()
	{
		return Str.toString(garrow_field_get_name(gArrowField));
	}

	/**
	 * Returns: %TRUE if the field has metadata, %FALSE otherwise.
	 *
	 * Since: 3.0.0
	 */
	public bool hasMetadata()
	{
		return garrow_field_has_metadata(gArrowField) != 0;
	}

	/**
	 * Returns: Whether the filed may include null or not.
	 */
	public bool isNullable()
	{
		return garrow_field_is_nullable(gArrowField) != 0;
	}

	/**
	 * Returns: The new field that doesn't have metadata.
	 *
	 * Since: 3.0.0
	 */
	public Field removeMetadata()
	{
		auto __p = garrow_field_remove_metadata(gArrowField);

		if(__p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(Field)(cast(GArrowField*) __p, true);
	}

	/**
	 * Returns: The string representation of the field.
	 */
	public override string toString()
	{
		auto retStr = garrow_field_to_string(gArrowField);

		scope(exit) Str.freeString(retStr);
		return Str.toString(retStr);
	}

	/**
	 *
	 * Params:
	 *     showMetadata = Whether include metadata or not.
	 * Returns: The string representation of the field.
	 *
	 *     It should be freed with g_free() when no longer needed.
	 *
	 * Since: 3.0.0
	 */
	public string toStringMetadata(bool showMetadata)
	{
		auto retStr = garrow_field_to_string_metadata(gArrowField, showMetadata);

		scope(exit) Str.freeString(retStr);
		return Str.toString(retStr);
	}

	/**
	 *
	 * Params:
	 *     metadata = An additional associated metadata.
	 * Returns: The new field that also has the given
	 *     metadata. If both of the existing metadata and the given metadata
	 *     have the same keys, the values in the given metadata are used.
	 *
	 * Since: 3.0.0
	 */
	public Field withMergedMetadata(HashTable metadata)
	{
		auto __p = garrow_field_with_merged_metadata(gArrowField, (metadata is null) ? null : metadata.getHashTableStruct());

		if(__p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(Field)(cast(GArrowField*) __p, true);
	}

	/**
	 *
	 * Params:
	 *     metadata = A new associated metadata.
	 * Returns: The new field with the given metadata.
	 *
	 * Since: 3.0.0
	 */
	public Field withMetadata(HashTable metadata)
	{
		auto __p = garrow_field_with_metadata(gArrowField, (metadata is null) ? null : metadata.getHashTableStruct());

		if(__p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(Field)(cast(GArrowField*) __p, true);
	}
}
