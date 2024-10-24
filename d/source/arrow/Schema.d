module arrow.Schema;

private import arrow.Field;
private import arrow.c.functions;
public  import arrow.c.types;
private import glib.ConstructionException;
private import glib.ErrorG;
private import glib.GException;
private import glib.HashTable;
private import glib.ListG;
private import glib.Str;
private import glib.c.functions;
private import gobject.ObjectG;


/** */
public class Schema : ObjectG
{
	/** the main Gtk struct */
	protected GArrowSchema* gArrowSchema;

	/** Get the main Gtk struct */
	public GArrowSchema* getSchemaStruct(bool transferOwnership = false)
	{
		if (transferOwnership)
			ownedRef = false;
		return gArrowSchema;
	}

	/** the main Gtk struct as a void* */
	protected override void* getStruct()
	{
		return cast(void*)gArrowSchema;
	}

	/**
	 * Sets our main struct and passes it to the parent class.
	 */
	public this (GArrowSchema* gArrowSchema, bool ownedRef = false)
	{
		this.gArrowSchema = gArrowSchema;
		super(cast(GObject*)gArrowSchema, ownedRef);
	}


	/** */
	public static GType getType()
	{
		return garrow_schema_get_type();
	}

	/**
	 *
	 * Params:
	 *     fields = The fields of the schema.
	 * Returns: A newly created #GArrowSchema.
	 *
	 * Throws: ConstructionException GTK+ fails to create the object.
	 */
	public this(ListG fields)
	{
		auto __p = garrow_schema_new((fields is null) ? null : fields.getListGStruct());

		if(__p is null)
		{
			throw new ConstructionException("null returned by new");
		}

		this(cast(GArrowSchema*) __p, true);
	}

	/**
	 *
	 * Params:
	 *     cAbiSchema = A `struct ArrowSchema *`.
	 * Returns: An imported #GArrowSchema on success,
	 *     %NULL on error.
	 *
	 *     You don't need to release the passed `struct ArrowSchema *`,
	 *     even if this function reports an error.
	 *
	 * Since: 6.0.0
	 *
	 * Throws: GException on failure.
	 */
	public static Schema import_(void* cAbiSchema)
	{
		GError* err = null;

		auto __p = garrow_schema_import(cAbiSchema, &err);

		if (err !is null)
		{
			throw new GException( new ErrorG(err) );
		}

		if(__p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(Schema)(cast(GArrowSchema*) __p, true);
	}

	/**
	 *
	 * Params:
	 *     i = The index of the new field.
	 *     field = The field to be added.
	 * Returns: The newly allocated
	 *     #GArrowSchema that has a new field or %NULL on error.
	 *
	 * Since: 0.10.0
	 *
	 * Throws: GException on failure.
	 */
	public Schema addField(uint i, Field field)
	{
		GError* err = null;

		auto __p = garrow_schema_add_field(gArrowSchema, i, (field is null) ? null : field.getFieldStruct(), &err);

		if (err !is null)
		{
			throw new GException( new ErrorG(err) );
		}

		if(__p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(Schema)(cast(GArrowSchema*) __p, true);
	}

	/**
	 *
	 * Params:
	 *     otherSchema = A #GArrowSchema to be compared.
	 * Returns: %TRUE if both of them have the same data, %FALSE
	 *     otherwise.
	 *
	 * Since: 0.4.0
	 */
	public bool equal(Schema otherSchema)
	{
		return garrow_schema_equal(gArrowSchema, (otherSchema is null) ? null : otherSchema.getSchemaStruct()) != 0;
	}

	alias expor = export_;
	/**
	 * Returns: An exported #GArrowSchema as
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

		auto __p = garrow_schema_export(gArrowSchema, &err);

		if (err !is null)
		{
			throw new GException( new ErrorG(err) );
		}

		return __p;
	}

	/**
	 *
	 * Params:
	 *     i = The index of the target field.
	 * Returns: The i-th field of the schema.
	 */
	public Field getField(uint i)
	{
		auto __p = garrow_schema_get_field(gArrowSchema, i);

		if(__p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(Field)(cast(GArrowField*) __p, true);
	}

	/**
	 *
	 * Params:
	 *     name = The name of the field to be found.
	 * Returns: The found field or %NULL.
	 */
	public Field getFieldByName(string name)
	{
		auto __p = garrow_schema_get_field_by_name(gArrowSchema, Str.toStringz(name));

		if(__p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(Field)(cast(GArrowField*) __p, true);
	}

	/**
	 *
	 * Params:
	 *     name = The name of the field to be found.
	 * Returns: The index of the found field, -1 on not found.
	 *
	 * Since: 0.15.0
	 */
	public int getFieldIndex(string name)
	{
		return garrow_schema_get_field_index(gArrowSchema, Str.toStringz(name));
	}

	/**
	 * Returns: The fields of the schema.
	 */
	public ListG getFields()
	{
		auto __p = garrow_schema_get_fields(gArrowSchema);

		if(__p is null)
		{
			return null;
		}

		return new ListG(cast(GList*) __p, true);
	}

	/**
	 * Returns: The
	 *     metadata in the schema.
	 *
	 *     It should be freed with g_hash_table_unref() when no longer needed.
	 *
	 * Since: 0.17.0
	 */
	public HashTable getMetadata()
	{
		auto __p = garrow_schema_get_metadata(gArrowSchema);

		if(__p is null)
		{
			return null;
		}

		return new HashTable(cast(GHashTable*) __p, true);
	}

	/**
	 * Returns: %TRUE if the schema has metadata, %FALSE otherwise.
	 *
	 * Since: 3.0.0
	 */
	public bool hasMetadata()
	{
		return garrow_schema_has_metadata(gArrowSchema) != 0;
	}

	/**
	 * Returns: The number of fields of the schema.
	 */
	public uint nFields()
	{
		return garrow_schema_n_fields(gArrowSchema);
	}

	/**
	 *
	 * Params:
	 *     i = The index of the field to be removed.
	 * Returns: The newly allocated
	 *     #GArrowSchema that doesn't have the field or %NULL on error.
	 *
	 * Since: 0.10.0
	 *
	 * Throws: GException on failure.
	 */
	public Schema removeField(uint i)
	{
		GError* err = null;

		auto __p = garrow_schema_remove_field(gArrowSchema, i, &err);

		if (err !is null)
		{
			throw new GException( new ErrorG(err) );
		}

		if(__p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(Schema)(cast(GArrowSchema*) __p, true);
	}

	/**
	 *
	 * Params:
	 *     i = The index of the field to be replaced.
	 *     field = The newly added #GArrowField.
	 * Returns: The newly allocated
	 *     #GArrowSchema that has @field as the @i-th field or %NULL on error.
	 *
	 * Since: 0.10.0
	 *
	 * Throws: GException on failure.
	 */
	public Schema replaceField(uint i, Field field)
	{
		GError* err = null;

		auto __p = garrow_schema_replace_field(gArrowSchema, i, (field is null) ? null : field.getFieldStruct(), &err);

		if (err !is null)
		{
			throw new GException( new ErrorG(err) );
		}

		if(__p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(Schema)(cast(GArrowSchema*) __p, true);
	}

	/**
	 * Returns: The string representation of the schema.
	 */
	public override string toString()
	{
		auto retStr = garrow_schema_to_string(gArrowSchema);

		scope(exit) Str.freeString(retStr);
		return Str.toString(retStr);
	}

	/**
	 *
	 * Params:
	 *     showMetadata = Whether include metadata or not.
	 * Returns: The string representation of the schema.
	 *
	 *     It should be freed with g_free() when no longer needed.
	 *
	 * Since: 0.17.0
	 */
	public string toStringMetadata(bool showMetadata)
	{
		auto retStr = garrow_schema_to_string_metadata(gArrowSchema, showMetadata);

		scope(exit) Str.freeString(retStr);
		return Str.toString(retStr);
	}

	/**
	 *
	 * Params:
	 *     metadata = A new associated metadata.
	 * Returns: The new schema with the given metadata.
	 *
	 * Since: 0.17.0
	 */
	public Schema withMetadata(HashTable metadata)
	{
		auto __p = garrow_schema_with_metadata(gArrowSchema, (metadata is null) ? null : metadata.getHashTableStruct());

		if(__p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(Schema)(cast(GArrowSchema*) __p, true);
	}
}
