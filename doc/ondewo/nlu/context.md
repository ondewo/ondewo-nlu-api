# Protocol Documentation
<a name="top"></a>

## Table of Contents

- [ondewo/nlu/context.proto](#ondewo/nlu/context.proto)
    - [Context](#ondewo.nlu.Context)
    - [Context.Parameter](#ondewo.nlu.Context.Parameter)
    - [Context.ParametersEntry](#ondewo.nlu.Context.ParametersEntry)
    - [CreateContextRequest](#ondewo.nlu.CreateContextRequest)
    - [DeleteAllContextsRequest](#ondewo.nlu.DeleteAllContextsRequest)
    - [DeleteContextRequest](#ondewo.nlu.DeleteContextRequest)
    - [GetContextRequest](#ondewo.nlu.GetContextRequest)
    - [ListContextsRequest](#ondewo.nlu.ListContextsRequest)
    - [ListContextsResponse](#ondewo.nlu.ListContextsResponse)
    - [UpdateContextRequest](#ondewo.nlu.UpdateContextRequest)
  
    - [Contexts](#ondewo.nlu.Contexts)
  
- [Scalar Value Types](#scalar-value-types)



<a name="ondewo/nlu/context.proto"></a>
<p align="right"><a href="#top">Top</a></p>

## ondewo/nlu/context.proto



<a name="ondewo.nlu.Context"></a>

### Context
Represents a context.


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| name | [string](#string) |  | Required. The display name of the context (must be unique per session).

Note: we are deviating from the dialogflow format `projects/&lt;Project ID&gt;/agent/sessions/&lt;Session ID&gt;/contexts/&lt;Context ID&gt;`.

- DetectIntent only returns - the short display name in the &#34;name&#34; field in query_result.output_contexts - only expects the short display name in the &#34;name&#34; field in query_parameters.contexts - Also inside the persisted session object only the short display name is used. - SessionStep.contexts only contains the short display name - SessionReviewStep.contexts only contains the short display name |
| lifespan_count | [int32](#int32) |  | Optional. The number of conversational query requests after which the context expires. If set to `0` (the default) the context expires immediately. Contexts expire automatically after 10 minutes even if there are no matching queries. |
| parameters | [Context.ParametersEntry](#ondewo.nlu.Context.ParametersEntry) | repeated | Optional. The collection of parameters associated with this context. Refer to [this doc](https://dialogflow.com/docs/actions-and-parameters) for syntax. Keys are the display names of context parameters. |
| lifespan_time | [float](#float) |  | Optional. The time span in seconds after which the context expires. By default it does not expire. |






<a name="ondewo.nlu.Context.Parameter"></a>

### Context.Parameter



| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| name | [string](#string) |  | The name of the context parameter. |
| display_name | [string](#string) |  | The display name of the context parameter. |
| value | [string](#string) |  | The value(s) of the context parameter. |
| value_original | [string](#string) |  | The original value(s) of the context parameter. |






<a name="ondewo.nlu.Context.ParametersEntry"></a>

### Context.ParametersEntry



| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| key | [string](#string) |  |  |
| value | [Context.Parameter](#ondewo.nlu.Context.Parameter) |  |  |






<a name="ondewo.nlu.CreateContextRequest"></a>

### CreateContextRequest
The request message for [Contexts.CreateContext][google.cloud.dialogflow.v2.Contexts.CreateContext].


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| parent | [string](#string) |  | Required. The session to create a context for. Format: `projects/&lt;Project ID&gt;/agent/sessions/&lt;Session ID&gt;`. |
| context | [Context](#ondewo.nlu.Context) |  | Required. The context to create. |






<a name="ondewo.nlu.DeleteAllContextsRequest"></a>

### DeleteAllContextsRequest
The request message for [Contexts.DeleteAllContexts][google.cloud.dialogflow.v2.Contexts.DeleteAllContexts].


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| parent | [string](#string) |  | Required. The name of the session to delete all contexts from. Format: `projects/&lt;Project ID&gt;/agent/sessions/&lt;Session ID&gt;`. |






<a name="ondewo.nlu.DeleteContextRequest"></a>

### DeleteContextRequest
The request message for [Contexts.DeleteContext][google.cloud.dialogflow.v2.Contexts.DeleteContext].


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| name | [string](#string) |  | Required. The name of the context to delete. Format: `projects/&lt;Project ID&gt;/agent/sessions/&lt;Session ID&gt;/contexts/&lt;Context ID&gt;`. |






<a name="ondewo.nlu.GetContextRequest"></a>

### GetContextRequest
The request message for [Contexts.GetContext][google.cloud.dialogflow.v2.Contexts.GetContext].


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| name | [string](#string) |  | Required. The name of the context. Format: `projects/&lt;Project ID&gt;/agent/sessions/&lt;Session ID&gt;/contexts/&lt;Context ID&gt;`. |






<a name="ondewo.nlu.ListContextsRequest"></a>

### ListContextsRequest
The request message for [Contexts.ListContexts][google.cloud.dialogflow.v2.Contexts.ListContexts].


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| parent | [string](#string) |  | Required. The session to list all contexts from. Format: `projects/&lt;Project ID&gt;/agent/sessions/&lt;Session ID&gt;`. |
| page_token | [string](#string) |  | Optional. The next_page_token value returned from a previous list request. |






<a name="ondewo.nlu.ListContextsResponse"></a>

### ListContextsResponse
The response message for [Contexts.ListContexts][google.cloud.dialogflow.v2.Contexts.ListContexts].


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| contexts | [Context](#ondewo.nlu.Context) | repeated | The list of contexts. There will be a maximum number of items returned based on the page_token field in the request. |
| next_page_token | [string](#string) |  | Token to retrieve the next page of results, or empty if there are no more results in the list. |






<a name="ondewo.nlu.UpdateContextRequest"></a>

### UpdateContextRequest
The request message for [Contexts.UpdateContext][google.cloud.dialogflow.v2.Contexts.UpdateContext].


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| context | [Context](#ondewo.nlu.Context) |  | Required. The context to update. |
| update_mask | [google.protobuf.FieldMask](#google.protobuf.FieldMask) |  | Optional. The mask to control which fields get updated. |





 

 

 


<a name="ondewo.nlu.Contexts"></a>

### Contexts
A context represents additional information included with user input or with
an intent returned by the Dialogflow API. Contexts are helpful for
differentiating user input which may be vague or have a different meaning
depending on additional details from your application such as user setting
and preferences, previous user input, where the user is in your application,
geographic location, and so on.

You can include contexts as input parameters of a
[DetectIntent][google.cloud.dialogflow.v2.Sessions.DetectIntent] (or
[StreamingDetectIntent][google.cloud.dialogflow.v2.Sessions.StreamingDetectIntent]) request,
or as output contexts included in the returned intent.
Contexts expire when an intent is matched, after the number of `DetectIntent`
requests specified by the `lifespan_count` parameter, or after 10 minutes
if no intents are matched for a `DetectIntent` request.

For more information about contexts, see the
[Dialogflow documentation](https://dialogflow.com/docs/contexts).

| Method Name | Request Type | Response Type | Description |
| ----------- | ------------ | ------------- | ------------|
| ListContexts | [ListContextsRequest](#ondewo.nlu.ListContextsRequest) | [ListContextsResponse](#ondewo.nlu.ListContextsResponse) | Returns the list of all contexts in the specified session. |
| GetContext | [GetContextRequest](#ondewo.nlu.GetContextRequest) | [Context](#ondewo.nlu.Context) | Retrieves the specified context. |
| CreateContext | [CreateContextRequest](#ondewo.nlu.CreateContextRequest) | [Context](#ondewo.nlu.Context) | Creates a context. |
| UpdateContext | [UpdateContextRequest](#ondewo.nlu.UpdateContextRequest) | [Context](#ondewo.nlu.Context) | Updates the specified context. |
| DeleteContext | [DeleteContextRequest](#ondewo.nlu.DeleteContextRequest) | [.google.protobuf.Empty](#google.protobuf.Empty) | Deletes the specified context. |
| DeleteAllContexts | [DeleteAllContextsRequest](#ondewo.nlu.DeleteAllContextsRequest) | [.google.protobuf.Empty](#google.protobuf.Empty) | Deletes all active contexts in the specified session. |

 



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

