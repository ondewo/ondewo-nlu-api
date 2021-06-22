# Protocol Documentation
<a name="top"></a>

## Table of Contents

- [ondewo/nlu/entity_type.proto](#ondewo/nlu/entity_type.proto)
    - [BatchCreateEntitiesRequest](#ondewo.nlu.BatchCreateEntitiesRequest)
    - [BatchCreateEntitiesRequest.CreateEntityRequest](#ondewo.nlu.BatchCreateEntitiesRequest.CreateEntityRequest)
    - [BatchDeleteEntitiesRequest](#ondewo.nlu.BatchDeleteEntitiesRequest)
    - [BatchDeleteEntitiesResponse](#ondewo.nlu.BatchDeleteEntitiesResponse)
    - [BatchDeleteEntitiesResponse.DeleteEntityStatus](#ondewo.nlu.BatchDeleteEntitiesResponse.DeleteEntityStatus)
    - [BatchDeleteEntityTypesRequest](#ondewo.nlu.BatchDeleteEntityTypesRequest)
    - [BatchEntitiesResponse](#ondewo.nlu.BatchEntitiesResponse)
    - [BatchEntitiesResponse.EntityStatus](#ondewo.nlu.BatchEntitiesResponse.EntityStatus)
    - [BatchGetEntitiesRequest](#ondewo.nlu.BatchGetEntitiesRequest)
    - [BatchUpdateEntitiesRequest](#ondewo.nlu.BatchUpdateEntitiesRequest)
    - [BatchUpdateEntityTypesRequest](#ondewo.nlu.BatchUpdateEntityTypesRequest)
    - [BatchUpdateEntityTypesResponse](#ondewo.nlu.BatchUpdateEntityTypesResponse)
    - [CreateEntityTypeRequest](#ondewo.nlu.CreateEntityTypeRequest)
    - [DeleteEntityTypeRequest](#ondewo.nlu.DeleteEntityTypeRequest)
    - [EntityType](#ondewo.nlu.EntityType)
    - [EntityType.Entity](#ondewo.nlu.EntityType.Entity)
    - [EntityTypeBatch](#ondewo.nlu.EntityTypeBatch)
    - [EntityTypeSorting](#ondewo.nlu.EntityTypeSorting)
    - [GetEntityTypeRequest](#ondewo.nlu.GetEntityTypeRequest)
    - [ListEntitiesRequest](#ondewo.nlu.ListEntitiesRequest)
    - [ListEntitiesResponse](#ondewo.nlu.ListEntitiesResponse)
    - [ListEntityTypesRequest](#ondewo.nlu.ListEntityTypesRequest)
    - [ListEntityTypesResponse](#ondewo.nlu.ListEntityTypesResponse)
    - [UpdateEntityTypeRequest](#ondewo.nlu.UpdateEntityTypeRequest)
  
    - [EntityType.AutoExpansionMode](#ondewo.nlu.EntityType.AutoExpansionMode)
    - [EntityType.EntityTypeStatus](#ondewo.nlu.EntityType.EntityTypeStatus)
    - [EntityType.Kind](#ondewo.nlu.EntityType.Kind)
    - [EntityTypeCategory](#ondewo.nlu.EntityTypeCategory)
    - [EntityTypeSorting.EntityTypeSortingField](#ondewo.nlu.EntityTypeSorting.EntityTypeSortingField)
    - [EntityTypeView](#ondewo.nlu.EntityTypeView)
  
    - [EntityTypes](#ondewo.nlu.EntityTypes)
  
- [Scalar Value Types](#scalar-value-types)



<a name="ondewo/nlu/entity_type.proto"></a>
<p align="right"><a href="#top">Top</a></p>

## ondewo/nlu/entity_type.proto



<a name="ondewo.nlu.BatchCreateEntitiesRequest"></a>

### BatchCreateEntitiesRequest



| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| create_entity_requests | [BatchCreateEntitiesRequest.CreateEntityRequest](#ondewo.nlu.BatchCreateEntitiesRequest.CreateEntityRequest) | repeated |  |






<a name="ondewo.nlu.BatchCreateEntitiesRequest.CreateEntityRequest"></a>

### BatchCreateEntitiesRequest.CreateEntityRequest



| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| entity_type_name | [string](#string) |  | Required. Name of the entity type in which to create the entity value. Format: `projects/&lt;Project ID&gt;/agent/entityTypes/&lt;Entity Type ID&gt;`. |
| entity | [EntityType.Entity](#ondewo.nlu.EntityType.Entity) |  | The entity value to create |






<a name="ondewo.nlu.BatchDeleteEntitiesRequest"></a>

### BatchDeleteEntitiesRequest



| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| names | [string](#string) | repeated | The unique identifiers of the entities. Format: `projects/&lt;Project ID&gt;/agent/entityTypes/&lt;Entity Type ID&gt;/entities/&lt;Entity ID&gt;`. |






<a name="ondewo.nlu.BatchDeleteEntitiesResponse"></a>

### BatchDeleteEntitiesResponse



| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| delete_statuses | [BatchDeleteEntitiesResponse.DeleteEntityStatus](#ondewo.nlu.BatchDeleteEntitiesResponse.DeleteEntityStatus) | repeated |  |
| has_errors | [bool](#bool) |  |  |






<a name="ondewo.nlu.BatchDeleteEntitiesResponse.DeleteEntityStatus"></a>

### BatchDeleteEntitiesResponse.DeleteEntityStatus



| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| successfully_deleted | [google.protobuf.Empty](#google.protobuf.Empty) |  |  |
| error_message | [string](#string) |  |  |






<a name="ondewo.nlu.BatchDeleteEntityTypesRequest"></a>

### BatchDeleteEntityTypesRequest
The request message for [EntityTypes.BatchDeleteEntityTypes][google.cloud.dialogflow.v2.EntityTypes.BatchDeleteEntityTypes].


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| parent | [string](#string) |  | Required. The name of the agent to delete all entities types for. Format: `projects/&lt;Project ID&gt;/agent`. |
| entity_type_names | [string](#string) | repeated | Required. The names entity types to delete. All names must point to the same agent as `parent`. |






<a name="ondewo.nlu.BatchEntitiesResponse"></a>

### BatchEntitiesResponse



| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| entity_statuses | [BatchEntitiesResponse.EntityStatus](#ondewo.nlu.BatchEntitiesResponse.EntityStatus) | repeated |  |
| has_errors | [bool](#bool) |  | indicates if statuses of some of the training phrases have errors |






<a name="ondewo.nlu.BatchEntitiesResponse.EntityStatus"></a>

### BatchEntitiesResponse.EntityStatus



| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| entity | [EntityType.Entity](#ondewo.nlu.EntityType.Entity) |  |  |
| error_message | [string](#string) |  |  |






<a name="ondewo.nlu.BatchGetEntitiesRequest"></a>

### BatchGetEntitiesRequest



| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| names | [string](#string) | repeated | The unique identifiers of the entities. Format: `projects/&lt;Project ID&gt;/agent/entityTypes/&lt;Entity Type ID&gt;/entities/&lt;Entity ID&gt;`. |






<a name="ondewo.nlu.BatchUpdateEntitiesRequest"></a>

### BatchUpdateEntitiesRequest



| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| entities | [EntityType.Entity](#ondewo.nlu.EntityType.Entity) | repeated | The entities to update |






<a name="ondewo.nlu.BatchUpdateEntityTypesRequest"></a>

### BatchUpdateEntityTypesRequest
The request message for [EntityTypes.BatchUpdateEntityTypes][google.cloud.dialogflow.v2.EntityTypes.BatchUpdateEntityTypes].


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| parent | [string](#string) |  | Required. The name of the agent to update or create entity types in. Format: `projects/&lt;Project ID&gt;/agent`. |
| entity_type_batch_uri | [string](#string) |  | The URI to a Google Cloud Storage file containing entity types to update or create. The file format can either be a serialized proto (of EntityBatch type) or a JSON object. Note: The URI must start with &#34;gs://&#34;. |
| entity_type_batch_inline | [EntityTypeBatch](#ondewo.nlu.EntityTypeBatch) |  | The collection of entity type to update or create. |
| language_code | [string](#string) |  | Optional. The language of entity synonyms defined in `entity_types`. If not specified, the agent&#39;s default language is used. [More than a dozen languages](https://dialogflow.com/docs/reference/language) are supported. Note: languages must be enabled in the agent, before they can be used. |
| update_mask | [google.protobuf.FieldMask](#google.protobuf.FieldMask) |  | Optional. The mask to control which fields get updated. |






<a name="ondewo.nlu.BatchUpdateEntityTypesResponse"></a>

### BatchUpdateEntityTypesResponse
The response message for [EntityTypes.BatchUpdateEntityTypes][google.cloud.dialogflow.v2.EntityTypes.BatchUpdateEntityTypes].


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| entity_types | [EntityType](#ondewo.nlu.EntityType) | repeated | The collection of updated or created entity types. |






<a name="ondewo.nlu.CreateEntityTypeRequest"></a>

### CreateEntityTypeRequest
The request message for [EntityTypes.CreateEntityType][google.cloud.dialogflow.v2.EntityTypes.CreateEntityType].


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| parent | [string](#string) |  | Required. The agent to create a entity type for. Format: `projects/&lt;Project ID&gt;/agent`. |
| entity_type | [EntityType](#ondewo.nlu.EntityType) |  | Required. The entity type to create. |
| language_code | [string](#string) |  | Optional. The language of entity synonyms defined in `entity_type`. If not specified, the agent&#39;s default language is used. [More than a dozen languages](https://dialogflow.com/docs/reference/language) are supported. Note: languages must be enabled in the agent, before they can be used. |






<a name="ondewo.nlu.DeleteEntityTypeRequest"></a>

### DeleteEntityTypeRequest
The request message for [EntityTypes.DeleteEntityType][google.cloud.dialogflow.v2.EntityTypes.DeleteEntityType].


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| name | [string](#string) |  | Required. The name of the entity type to delete. Format: `projects/&lt;Project ID&gt;/agent/entityTypes/&lt;EntityType ID&gt;`. |






<a name="ondewo.nlu.EntityType"></a>

### EntityType
Represents an entity type.
Entity types serve as a tool for extracting parameter values from natural
language queries.


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| name | [string](#string) |  | Required for all methods except `create` (`create` populates the name automatically. The unique identifier of the entity type. Format: `projects/&lt;Project ID&gt;/agent/entityTypes/&lt;Entity Type ID&gt;`. |
| display_name | [string](#string) |  | Required. The name of the entity type. |
| kind | [EntityType.Kind](#ondewo.nlu.EntityType.Kind) |  | Required. Indicates the kind of entity type. |
| auto_expansion_mode | [EntityType.AutoExpansionMode](#ondewo.nlu.EntityType.AutoExpansionMode) |  | Optional. Indicates whether the entity type can be automatically expanded. |
| entities | [EntityType.Entity](#ondewo.nlu.EntityType.Entity) | repeated | Optional. The collection of entities associated with the entity type. |
| next_page_token | [string](#string) |  |  |
| entity_count | [int32](#int32) |  | Read-Only field. Total count of entity values of the entity type |
| status | [EntityType.EntityTypeStatus](#ondewo.nlu.EntityType.EntityTypeStatus) |  | Indicates whether the entity type is active or not |
| synonym_count | [int32](#int32) |  | Read-Only field. Total count of entity synonyms of the entity type |






<a name="ondewo.nlu.EntityType.Entity"></a>

### EntityType.Entity
Optional. Represents an entity.


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| value | [string](#string) |  | Required. For `KIND_MAP` entity types: A canonical name to be used in place of synonyms. For `KIND_LIST` entity types: A string that can contain references to other entity types (with or without aliases). |
| synonyms | [string](#string) | repeated | Required. A collection of synonyms. For `KIND_LIST` entity types this must contain exactly one synonym equal to `value`. |
| name | [string](#string) |  | The unique identifier of the entity. Format: `projects/&lt;Project ID&gt;/agent/entityTypes/&lt;Entity Type ID&gt;/entities/&lt;Entity ID&gt;`. |
| display_name | [string](#string) |  | The name of the entity. |
| synonym_count | [int32](#int32) |  | Optional. Total count of entity synonyms |
| language_code | [string](#string) |  | Required. The language to list entity synonyms for. |






<a name="ondewo.nlu.EntityTypeBatch"></a>

### EntityTypeBatch
This message is a wrapper around a collection of entity types.


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| entity_types | [EntityType](#ondewo.nlu.EntityType) | repeated | A collection of entity types. |






<a name="ondewo.nlu.EntityTypeSorting"></a>

### EntityTypeSorting



| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| sorting_field | [EntityTypeSorting.EntityTypeSortingField](#ondewo.nlu.EntityTypeSorting.EntityTypeSortingField) |  |  |
| sorting_mode | [SortingMode](#ondewo.nlu.SortingMode) |  |  |






<a name="ondewo.nlu.GetEntityTypeRequest"></a>

### GetEntityTypeRequest
The request message for [EntityTypes.GetEntityType][google.cloud.dialogflow.v2.EntityTypes.GetEntityType].


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| name | [string](#string) |  | Required. The name of the entity type. Format: `projects/&lt;Project ID&gt;/agent/entityTypes/&lt;EntityType ID&gt;`. |
| language_code | [string](#string) |  | Optional. The language to retrieve entity synonyms for. If not specified, the agent&#39;s default language is used. [More than a dozen languages](https://dialogflow.com/docs/reference/language) are supported. Note: languages must be enabled in the agent, before they can be used. |
| page_token | [string](#string) |  |  |






<a name="ondewo.nlu.ListEntitiesRequest"></a>

### ListEntitiesRequest



| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| entity_type_name | [string](#string) |  | The unique identifier of the entity type. Format: `projects/&lt;Project ID&gt;/agent/entityTypes/&lt;Entity Type ID&gt; |
| language_code | [string](#string) |  | Optional. The language to list training phrases, parameters and rich messages for. If not specified, the agent&#39;s default language is used. |
| page_token | [string](#string) |  | Optional. The next_page_token value returned from a previous list request. |
| entity_type_view | [EntityTypeView](#ondewo.nlu.EntityTypeView) |  | Optional. The resource view to apply to the returned entity type. |






<a name="ondewo.nlu.ListEntitiesResponse"></a>

### ListEntitiesResponse



| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| entities | [EntityType.Entity](#ondewo.nlu.EntityType.Entity) | repeated | The list of entities |
| next_page_token | [string](#string) |  | Token to retrieve the next page of results, or empty if there are no more results in the list. |






<a name="ondewo.nlu.ListEntityTypesRequest"></a>

### ListEntityTypesRequest
The request message for [EntityTypes.ListEntityTypes][google.cloud.dialogflow.v2.EntityTypes.ListEntityTypes].


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| parent | [string](#string) |  | Required. The agent to list all entity types from. Format: `projects/&lt;Project ID&gt;/agent`. |
| language_code | [string](#string) |  | Optional. The language to list entity synonyms for. If not specified, the agent&#39;s default language is used. [More than a dozen languages](https://dialogflow.com/docs/reference/language) are supported. Note: languages must be enabled in the agent, before they can be used. |
| page_token | [string](#string) |  | Optional. The next_page_token value returned from a previous list request. |
| entity_type_view | [EntityTypeView](#ondewo.nlu.EntityTypeView) |  | Optional. The resource view to apply to the returned entity type. |
| filter_by_category | [EntityTypeCategory](#ondewo.nlu.EntityTypeCategory) |  | Optional. Applies a filter to the list. Default, no filter. |
| sort_by_field | [EntityTypeSorting](#ondewo.nlu.EntityTypeSorting) |  | Optional. Defines the sorting of the list. Default, no sorting. |






<a name="ondewo.nlu.ListEntityTypesResponse"></a>

### ListEntityTypesResponse
The response message for [EntityTypes.ListEntityTypes][google.cloud.dialogflow.v2.EntityTypes.ListEntityTypes].


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| entity_types | [EntityType](#ondewo.nlu.EntityType) | repeated | The list of agent entity types. There will be a maximum number of items returned based on the page_token field in the request. |
| next_page_token | [string](#string) |  | Token to retrieve the next page of results, or empty if there are no more results in the list. |






<a name="ondewo.nlu.UpdateEntityTypeRequest"></a>

### UpdateEntityTypeRequest
The request message for [EntityTypes.UpdateEntityType][google.cloud.dialogflow.v2.EntityTypes.UpdateEntityType].


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| entity_type | [EntityType](#ondewo.nlu.EntityType) |  | Required. The entity type to update. Format: `projects/&lt;Project ID&gt;/agent/entityTypes/&lt;EntityType ID&gt;`. |
| language_code | [string](#string) |  | Optional. The language of entity synonyms defined in `entity_type`. If not specified, the agent&#39;s default language is used. [More than a dozen languages](https://dialogflow.com/docs/reference/language) are supported. Note: languages must be enabled in the agent, before they can be used. |
| update_mask | [google.protobuf.FieldMask](#google.protobuf.FieldMask) |  | Optional. The mask to control which fields get updated. |





 


<a name="ondewo.nlu.EntityType.AutoExpansionMode"></a>

### EntityType.AutoExpansionMode
Represents different entity type expansion modes. Automated expansion
allows an agent to recognize values that have not been explicitly listed in
the entity (for example, new kinds of shopping list items).

| Name | Number | Description |
| ---- | ------ | ----------- |
| AUTO_EXPANSION_MODE_UNSPECIFIED | 0 | Auto expansion disabled for the entity. |
| AUTO_EXPANSION_MODE_DEFAULT | 1 | Allows an agent to recognize values that have not been explicitly listed in the entity. |



<a name="ondewo.nlu.EntityType.EntityTypeStatus"></a>

### EntityType.EntityTypeStatus


| Name | Number | Description |
| ---- | ------ | ----------- |
| ACTIVE | 0 |  |
| INACTIVE | 1 |  |



<a name="ondewo.nlu.EntityType.Kind"></a>

### EntityType.Kind
Represents kinds of entities.

| Name | Number | Description |
| ---- | ------ | ----------- |
| KIND_UNSPECIFIED | 0 | Not specified. This value should be never used. |
| KIND_MAP | 1 | Map entity types allow mapping of a group of synonyms to a canonical value. |
| KIND_LIST | 2 | List entity types contain a set of entries that do not map to canonical values. However, list entity types can contain references to other entity types (with or without aliases). |



<a name="ondewo.nlu.EntityTypeCategory"></a>

### EntityTypeCategory
Represents the category of entity types to filter by in the &#34;List Entity Types&#34; request

| Name | Number | Description |
| ---- | ------ | ----------- |
| ALL_ENTITY_TYPES | 0 | represent all entity types |
| DEFAULT_ENTITY_TYPES | 1 | represent the default entity types |
| USER_DEFINED_ENTITY_TYPES | 2 | represent the user defined (custom) entity types |



<a name="ondewo.nlu.EntityTypeSorting.EntityTypeSortingField"></a>

### EntityTypeSorting.EntityTypeSortingField


| Name | Number | Description |
| ---- | ------ | ----------- |
| NO_ENTITY_TYPE_SORTING | 0 |  |
| SORT_ENTITY_TYPE_BY_NAME | 1 |  |
| SORT_ENTITY_TYPE_BY_CREATION_DATE | 2 |  |
| SORT_ENTITY_TYPE_BY_LAST_UPDATED | 3 |  |
| SORT_ENTITY_TYPE_BY_ENTITY_VALUE_COUNT | 4 |  |
| SORT_ENTITY_TYPE_BY_SYNONYM_COUNT | 5 |  |



<a name="ondewo.nlu.EntityTypeView"></a>

### EntityTypeView
Represents the options for views of an entity type.
An entity type can be a sizable object. Therefore, we provide a resource view that
does not return all values and synonyms besides the full view that is set by default.

| Name | Number | Description |
| ---- | ------ | ----------- |
| ENTITY_TYPE_VIEW_UNSPECIFIED | 0 | Same as ENTITY_TYPE_VIEW_FULL |
| ENTITY_TYPE_VIEW_FULL | 1 | All fields are populated. |
| ENTITY_TYPE_VIEW_PARTIAL | 2 | The amount of entity values and synonyms is limited |
| ENTITY_TYPE_VIEW_SHALLOW | 3 | No entity synonyms are returned, only entity values |


 

 


<a name="ondewo.nlu.EntityTypes"></a>

### EntityTypes
Entities are extracted from user input and represent parameters that are
meaningful to your application. For example, a date range, a proper name
such as a geographic location or landmark, and so on. Entities represent
actionable data for your application.

When you define an entity, you can also include synonyms that all map to
that entity. For example, &#34;soft drink&#34;, &#34;soda&#34;, &#34;pop&#34;, and so on.

There are three types of entities:

*   **System** - entities that are defined by the Dialogflow API for common
    data types such as date, time, currency, and so on. A system entity is
    represented by the `EntityType` type.

*   **Developer** - entities that are defined by you that represent
    actionable data that is meaningful to your application. For example,
    you could define a `pizza.sauce` entity for red or white pizza sauce,
    a `pizza.cheese` entity for the different types of cheese on a pizza,
    a `pizza.topping` entity for different toppings, and so on. A developer
    entity is represented by the `EntityType` type.

*   **User** - entities that are built for an individual user such as
    favorites, preferences, playlists, and so on. A user entity is
    represented by the [SessionEntityType][google.cloud.dialogflow.v2.SessionEntityType] type.

For more information about entity types, see the
[Dialogflow documentation](https://dialogflow.com/docs/entities).

| Method Name | Request Type | Response Type | Description |
| ----------- | ------------ | ------------- | ------------|
| ListEntityTypes | [ListEntityTypesRequest](#ondewo.nlu.ListEntityTypesRequest) | [ListEntityTypesResponse](#ondewo.nlu.ListEntityTypesResponse) | Returns the list of all entity types in the specified agent. |
| GetEntityType | [GetEntityTypeRequest](#ondewo.nlu.GetEntityTypeRequest) | [EntityType](#ondewo.nlu.EntityType) | Retrieves the specified entity type. |
| CreateEntityType | [CreateEntityTypeRequest](#ondewo.nlu.CreateEntityTypeRequest) | [EntityType](#ondewo.nlu.EntityType) | Creates an entity type in the specified agent. |
| UpdateEntityType | [UpdateEntityTypeRequest](#ondewo.nlu.UpdateEntityTypeRequest) | [EntityType](#ondewo.nlu.EntityType) | Updates the specified entity type. |
| DeleteEntityType | [DeleteEntityTypeRequest](#ondewo.nlu.DeleteEntityTypeRequest) | [.google.protobuf.Empty](#google.protobuf.Empty) | Deletes the specified entity type. |
| BatchUpdateEntityTypes | [BatchUpdateEntityTypesRequest](#ondewo.nlu.BatchUpdateEntityTypesRequest) | [.google.longrunning.Operation](#google.longrunning.Operation) | Updates/Creates multiple entity types in the specified agent.

Operation &lt;response: [BatchUpdateEntityTypesResponse][google.cloud.dialogflow.v2.BatchUpdateEntityTypesResponse], metadata: [google.protobuf.Struct][google.protobuf.Struct]&gt; |
| BatchDeleteEntityTypes | [BatchDeleteEntityTypesRequest](#ondewo.nlu.BatchDeleteEntityTypesRequest) | [.google.longrunning.Operation](#google.longrunning.Operation) | Deletes entity types in the specified agent.

Operation &lt;response: [google.protobuf.Empty][google.protobuf.Empty], metadata: [google.protobuf.Struct][google.protobuf.Struct]&gt; |
| BatchCreateEntities | [BatchCreateEntitiesRequest](#ondewo.nlu.BatchCreateEntitiesRequest) | [BatchEntitiesResponse](#ondewo.nlu.BatchEntitiesResponse) | Creates an entity value in an entity type. |
| BatchUpdateEntities | [BatchUpdateEntitiesRequest](#ondewo.nlu.BatchUpdateEntitiesRequest) | [BatchEntitiesResponse](#ondewo.nlu.BatchEntitiesResponse) | Updates a specific entity value. |
| BatchGetEntities | [BatchGetEntitiesRequest](#ondewo.nlu.BatchGetEntitiesRequest) | [BatchEntitiesResponse](#ondewo.nlu.BatchEntitiesResponse) | Gets a specific entity value. |
| BatchDeleteEntities | [BatchDeleteEntitiesRequest](#ondewo.nlu.BatchDeleteEntitiesRequest) | [BatchDeleteEntitiesResponse](#ondewo.nlu.BatchDeleteEntitiesResponse) | Deletes the specified entity value. |
| ListEntities | [ListEntitiesRequest](#ondewo.nlu.ListEntitiesRequest) | [ListEntitiesResponse](#ondewo.nlu.ListEntitiesResponse) | List entities of an entity type |

 



## Scalar Value Types

| .proto Type | Notes | C++ | Java | Python | Go | C# | PHP | Ruby |
| ----------- | ----- | --- | ---- | ------ | -- | -- | --- | ---- |
| <a name="double" /> double |  | double | double | float | float64 | double | float | Float |
| <a name="float" /> float |  | float | float | float | float32 | float | float | Float |
| <a name="int32" /> int32 | Uses variable-length encoding. Inefficient for encoding negative numbers – if your field is likely to have negative values, use sint32 instead. | int32 | int | int | int32 | int | integer | Bignum or Fixnum (as required) |
| <a name="int64" /> int64 | Uses variable-length encoding. Inefficient for encoding negative numbers – if your field is likely to have negative values, use sint64 instead. | int64 | long | int/long | int64 | long | integer/string | Bignum |
| <a name="uint32" /> uint32 | Uses variable-length encoding. | uint32 | int | int/long | uint32 | uint | integer | Bignum or Fixnum (as required) |
| <a name="uint64" /> uint64 | Uses variable-length encoding. | uint64 | long | int/long | uint64 | ulong | integer/string | Bignum or Fixnum (as required) |
| <a name="sint32" /> sint32 | Uses variable-length encoding. Signed int value. These more efficiently encode negative numbers than regular int32s. | int32 | int | int | int32 | int | integer | Bignum or Fixnum (as required) |
| <a name="sint64" /> sint64 | Uses variable-length encoding. Signed int value. These more efficiently encode negative numbers than regular int64s. | int64 | long | int/long | int64 | long | integer/string | Bignum |
| <a name="fixed32" /> fixed32 | Always four bytes. More efficient than uint32 if values are often greater than 2^28. | uint32 | int | int | uint32 | uint | integer | Bignum or Fixnum (as required) |
| <a name="fixed64" /> fixed64 | Always eight bytes. More efficient than uint64 if values are often greater than 2^56. | uint64 | long | int/long | uint64 | ulong | integer/string | Bignum |
| <a name="sfixed32" /> sfixed32 | Always four bytes. | int32 | int | int | int32 | int | integer | Bignum or Fixnum (as required) |
| <a name="sfixed64" /> sfixed64 | Always eight bytes. | int64 | long | int/long | int64 | long | integer/string | Bignum |
| <a name="bool" /> bool |  | bool | boolean | boolean | bool | bool | boolean | TrueClass/FalseClass |
| <a name="string" /> string | A string must always contain UTF-8 encoded or 7-bit ASCII text. | string | String | str/unicode | string | string | string | String (UTF-8) |
| <a name="bytes" /> bytes | May contain any arbitrary sequence of bytes. | string | ByteString | str | []byte | ByteString | string | String (ASCII-8BIT) |

