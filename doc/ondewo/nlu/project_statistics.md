# Protocol Documentation
<a name="top"></a>

## Table of Contents

- [ondewo/nlu/project_statistics.proto](#ondewo/nlu/project_statistics.proto)
    - [GetEntityTypeCountRequest](#ondewo.nlu.GetEntityTypeCountRequest)
    - [GetIntentCountRequest](#ondewo.nlu.GetIntentCountRequest)
    - [GetProjectElementStatRequest](#ondewo.nlu.GetProjectElementStatRequest)
    - [GetProjectStatRequest](#ondewo.nlu.GetProjectStatRequest)
  
    - [ProjectStatistics](#ondewo.nlu.ProjectStatistics)
  
- [Scalar Value Types](#scalar-value-types)



<a name="ondewo/nlu/project_statistics.proto"></a>
<p align="right"><a href="#top">Top</a></p>

## ondewo/nlu/project_statistics.proto



<a name="ondewo.nlu.GetEntityTypeCountRequest"></a>

### GetEntityTypeCountRequest



| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| parent | [string](#string) |  | Required. The parent/path of the project to get the statistic from.

Example: * `projects/&lt;Project ID&gt;/agent` |
| filter_by_category | [EntityTypeCategory](#ondewo.nlu.EntityTypeCategory) |  | Optional. Applies a filter to the list to be counted. Default, no filter. |






<a name="ondewo.nlu.GetIntentCountRequest"></a>

### GetIntentCountRequest



| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| parent | [string](#string) |  | Required. The parent/path of the project to get the statistic from.

Example: * `projects/&lt;Project ID&gt;/agent` |
| filter_by_category | [IntentCategory](#ondewo.nlu.IntentCategory) |  | Optional. Applies a filter to the list to be counted. Default, no filter. |






<a name="ondewo.nlu.GetProjectElementStatRequest"></a>

### GetProjectElementStatRequest



| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| name | [string](#string) |  | Required. The name/path of the concept to get the statistic from.

Example: * `projects/&lt;Project ID&gt;/agent/intents/&lt;Intent ID&gt;` * `projects/&lt;Project ID&gt;/agent/entityTypes/&lt;Entity Type ID&gt;` * `projects/&lt;Project ID&gt;/agent/entityTypes/&lt;Entity Type ID&gt;/entityValues/&lt;Entity Value ID&gt;` |
| language_code | [string](#string) |  |  |






<a name="ondewo.nlu.GetProjectStatRequest"></a>

### GetProjectStatRequest



| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| parent | [string](#string) |  | Required. The parent/path of the project to get the statistic from.

Example: * `projects/&lt;Project ID&gt;/agent` |





 

 

 


<a name="ondewo.nlu.ProjectStatistics"></a>

### ProjectStatistics


| Method Name | Request Type | Response Type | Description |
| ----------- | ------------ | ------------- | ------------|
| GetIntentCount | [GetIntentCountRequest](#ondewo.nlu.GetIntentCountRequest) | [StatResponse](#ondewo.nlu.StatResponse) | Project Root Statistics |
| GetEntityTypeCount | [GetEntityTypeCountRequest](#ondewo.nlu.GetEntityTypeCountRequest) | [StatResponse](#ondewo.nlu.StatResponse) |  |
| GetUserCount | [GetProjectStatRequest](#ondewo.nlu.GetProjectStatRequest) | [StatResponse](#ondewo.nlu.StatResponse) |  |
| GetSessionCount | [GetProjectStatRequest](#ondewo.nlu.GetProjectStatRequest) | [StatResponse](#ondewo.nlu.StatResponse) |  |
| GetTrainingPhraseCount | [GetProjectElementStatRequest](#ondewo.nlu.GetProjectElementStatRequest) | [StatResponse](#ondewo.nlu.StatResponse) | Intent Statistics |
| GetResponseCount | [GetProjectElementStatRequest](#ondewo.nlu.GetProjectElementStatRequest) | [StatResponse](#ondewo.nlu.StatResponse) |  |
| GetEntityValueCount | [GetProjectElementStatRequest](#ondewo.nlu.GetProjectElementStatRequest) | [StatResponse](#ondewo.nlu.StatResponse) | Entity Type Statistics |
| GetEntitySynonymCount | [GetProjectElementStatRequest](#ondewo.nlu.GetProjectElementStatRequest) | [StatResponse](#ondewo.nlu.StatResponse) | Entity Value Statistics |

 



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

