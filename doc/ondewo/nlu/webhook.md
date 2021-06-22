# Protocol Documentation
<a name="top"></a>

## Table of Contents

- [ondewo/nlu/webhook.proto](#ondewo/nlu/webhook.proto)
    - [OriginalDetectIntentRequest](#ondewo.nlu.OriginalDetectIntentRequest)
    - [PingRequest](#ondewo.nlu.PingRequest)
    - [PingResponse](#ondewo.nlu.PingResponse)
    - [WebhookRequest](#ondewo.nlu.WebhookRequest)
    - [WebhookResponse](#ondewo.nlu.WebhookResponse)
  
    - [Webhook](#ondewo.nlu.Webhook)
  
- [Scalar Value Types](#scalar-value-types)



<a name="ondewo/nlu/webhook.proto"></a>
<p align="right"><a href="#top">Top</a></p>

## ondewo/nlu/webhook.proto



<a name="ondewo.nlu.OriginalDetectIntentRequest"></a>

### OriginalDetectIntentRequest
Represents the contents of the original request that was passed to
the `[Streaming]DetectIntent` call.


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| source | [string](#string) |  | The source of this request, e.g., `google`, `facebook`, `slack`. It is set by Dialogflow-owned servers. |
| payload | [google.protobuf.Struct](#google.protobuf.Struct) |  | Optional. This field is set to the value of `QueryParameters.payload` field passed in the request. |






<a name="ondewo.nlu.PingRequest"></a>

### PingRequest
request sent for webhook ping


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| session | [string](#string) |  | session ID for webhook ping |






<a name="ondewo.nlu.PingResponse"></a>

### PingResponse



| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| is_reachable | [bool](#bool) |  | This is the response message of a Ping request. It&#39;s purpose is to report the reachability of a Webhook server. |






<a name="ondewo.nlu.WebhookRequest"></a>

### WebhookRequest
The request message for a webhook call.


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| session | [string](#string) |  | The unique identifier of detectIntent request session. Can be used to identify end-user inside webhook implementation. Format: `projects/&lt;Project ID&gt;/agent/sessions/&lt;Session ID&gt;`. |
| response_id | [string](#string) |  | The unique identifier of the response. Contains the same value as `[Streaming]DetectIntentResponse.response_id`. |
| query_result | [QueryResult](#ondewo.nlu.QueryResult) |  | The result of the conversational query or event processing. Contains the same value as `[Streaming]DetectIntentResponse.query_result`. |
| original_detect_intent_request | [OriginalDetectIntentRequest](#ondewo.nlu.OriginalDetectIntentRequest) |  | Optional. The contents of the original request that was passed to `[Streaming]DetectIntent` call. |
| headers | [google.protobuf.Struct](#google.protobuf.Struct) |  | Optional. The headers of the request message |






<a name="ondewo.nlu.WebhookResponse"></a>

### WebhookResponse
The response message for a webhook call.


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| fulfillment_text | [string](#string) |  | Optional. The text to be shown on the screen. This value is passed directly to `QueryResult.fulfillment_text`. |
| fulfillment_messages | [Intent.Message](#ondewo.nlu.Intent.Message) | repeated | Optional. The collection of rich messages to present to the user. This value is passed directly to `QueryResult.fulfillment_messages`. |
| source | [string](#string) |  | Optional. This value is passed directly to `QueryResult.webhook_source`. |
| payload | [google.protobuf.Struct](#google.protobuf.Struct) |  | Optional. This value is passed directly to `QueryResult.webhook_payload`. See the related `fulfillment_messages[i].payload field`, which may be used as an alternative to this field.

This field can be used for Actions on Google responses. It should have a structure similar to the JSON message shown here. For more information, see [Actions on Google Webhook Format](https://developers.google.com/actions/dialogflow/webhook) &lt;pre&gt;{ &#34;google&#34;: { &#34;expectUserResponse&#34;: true, &#34;richResponse&#34;: { &#34;items&#34;: [ { &#34;simpleResponse&#34;: { &#34;textToSpeech&#34;: &#34;this is a simple response&#34; } } ] } } }&lt;/pre&gt; |
| output_contexts | [Context](#ondewo.nlu.Context) | repeated | Optional. The collection of output contexts. This value is passed directly to `QueryResult.output_contexts`. |
| followup_event_input | [EventInput](#ondewo.nlu.EventInput) |  | Optional. Makes the platform immediately invoke another `DetectIntent` call internally with the specified event as input. |





 

 

 


<a name="ondewo.nlu.Webhook"></a>

### Webhook
service to send requests to a webhook server

| Method Name | Request Type | Response Type | Description |
| ----------- | ------------ | ------------- | ------------|
| ResponseRefinement | [WebhookRequest](#ondewo.nlu.WebhookRequest) | [WebhookResponse](#ondewo.nlu.WebhookResponse) | send a request for /response_refinement/ to the webhook server fulfillment messages can be overwritten by the webhook server |
| SlotFilling | [WebhookRequest](#ondewo.nlu.WebhookRequest) | [WebhookResponse](#ondewo.nlu.WebhookResponse) | send a request for /slot_filling/ to the webhook server parameter values can be provided &amp; context information can be changed by the webhook server |
| Ping | [PingRequest](#ondewo.nlu.PingRequest) | [PingResponse](#ondewo.nlu.PingResponse) | send a Ping to the webhook server to check server health will return True if http status_code==200 is detected in the response |

 



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

