# Protocol Documentation
<a name="top"></a>

## Table of Contents

- [ondewo/nlu/aiservices.proto](#ondewo/nlu/aiservices.proto)
    - [AltSentence](#ondewo.nlu.AltSentence)
    - [AltTrainingPhrase](#ondewo.nlu.AltTrainingPhrase)
    - [BertAugEnrichmentConfig](#ondewo.nlu.BertAugEnrichmentConfig)
    - [DataEnrichmentConfig](#ondewo.nlu.DataEnrichmentConfig)
    - [EntityDetected](#ondewo.nlu.EntityDetected)
    - [EntityEnrichmentConfig](#ondewo.nlu.EntityEnrichmentConfig)
    - [ExtractEntitiesRequest](#ondewo.nlu.ExtractEntitiesRequest)
    - [ExtractEntitiesResponse](#ondewo.nlu.ExtractEntitiesResponse)
    - [FastTextEnrichmentConfig](#ondewo.nlu.FastTextEnrichmentConfig)
    - [GPT2EnrichmentConfig](#ondewo.nlu.GPT2EnrichmentConfig)
    - [GenerateResponsesRequest](#ondewo.nlu.GenerateResponsesRequest)
    - [GenerateResponsesResponse](#ondewo.nlu.GenerateResponsesResponse)
    - [GenerateUserSaysRequest](#ondewo.nlu.GenerateUserSaysRequest)
    - [GenerateUserSaysResponse](#ondewo.nlu.GenerateUserSaysResponse)
    - [GetAlternativeSentencesRequest](#ondewo.nlu.GetAlternativeSentencesRequest)
    - [GetAlternativeSentencesResponse](#ondewo.nlu.GetAlternativeSentencesResponse)
    - [GetAlternativeTrainingPhrasesRequest](#ondewo.nlu.GetAlternativeTrainingPhrasesRequest)
    - [GetAlternativeTrainingPhrasesResponse](#ondewo.nlu.GetAlternativeTrainingPhrasesResponse)
    - [GetSynonymsRequest](#ondewo.nlu.GetSynonymsRequest)
    - [GetSynonymsResponse](#ondewo.nlu.GetSynonymsResponse)
    - [GloVeEnrichmentConfig](#ondewo.nlu.GloVeEnrichmentConfig)
    - [Synonym](#ondewo.nlu.Synonym)
    - [ThesaurusEnrichmentConfig](#ondewo.nlu.ThesaurusEnrichmentConfig)
    - [Word2VecEnrichmentConfig](#ondewo.nlu.Word2VecEnrichmentConfig)
    - [WordNetAugEnrichmentConfig](#ondewo.nlu.WordNetAugEnrichmentConfig)
    - [XLNetAugEnrichmentConfig](#ondewo.nlu.XLNetAugEnrichmentConfig)
  
    - [AiServices](#ondewo.nlu.AiServices)
  
- [Scalar Value Types](#scalar-value-types)



<a name="ondewo/nlu/aiservices.proto"></a>
<p align="right"><a href="#top">Top</a></p>

## ondewo/nlu/aiservices.proto



<a name="ondewo.nlu.AltSentence"></a>

### AltSentence



| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| sentence | [string](#string) |  |  |
| score | [float](#float) |  |  |






<a name="ondewo.nlu.AltTrainingPhrase"></a>

### AltTrainingPhrase



| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| training_phrase | [Intent.TrainingPhrase](#ondewo.nlu.Intent.TrainingPhrase) |  |  |
| score | [float](#float) |  |  |






<a name="ondewo.nlu.BertAugEnrichmentConfig"></a>

### BertAugEnrichmentConfig



| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| is_active | [bool](#bool) |  |  |
| enrichment_factor | [int32](#int32) |  |  |
| execution_order | [int32](#int32) |  |  |






<a name="ondewo.nlu.DataEnrichmentConfig"></a>

### DataEnrichmentConfig



| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| entity_enrichment | [EntityEnrichmentConfig](#ondewo.nlu.EntityEnrichmentConfig) |  |  |
| thesaurus_enrichment | [ThesaurusEnrichmentConfig](#ondewo.nlu.ThesaurusEnrichmentConfig) |  |  |
| word2vec_enrichment | [Word2VecEnrichmentConfig](#ondewo.nlu.Word2VecEnrichmentConfig) |  |  |
| word_net_enrichment | [WordNetAugEnrichmentConfig](#ondewo.nlu.WordNetAugEnrichmentConfig) |  |  |
| gpt2_enrichment | [GPT2EnrichmentConfig](#ondewo.nlu.GPT2EnrichmentConfig) |  |  |
| glove_enrichment | [GloVeEnrichmentConfig](#ondewo.nlu.GloVeEnrichmentConfig) |  |  |
| fasttext_enrichment | [FastTextEnrichmentConfig](#ondewo.nlu.FastTextEnrichmentConfig) |  |  |
| bert_enrichment | [BertAugEnrichmentConfig](#ondewo.nlu.BertAugEnrichmentConfig) |  |  |
| xlnet_enrichment | [XLNetAugEnrichmentConfig](#ondewo.nlu.XLNetAugEnrichmentConfig) |  |  |






<a name="ondewo.nlu.EntityDetected"></a>

### EntityDetected



| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| entity | [Intent.TrainingPhrase.Entity](#ondewo.nlu.Intent.TrainingPhrase.Entity) |  |  |
| extraction_method | [string](#string) |  |  |
| score | [float](#float) |  |  |






<a name="ondewo.nlu.EntityEnrichmentConfig"></a>

### EntityEnrichmentConfig



| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| is_active | [bool](#bool) |  |  |
| enrichment_factor | [int32](#int32) |  |  |
| execution_order | [int32](#int32) |  |  |






<a name="ondewo.nlu.ExtractEntitiesRequest"></a>

### ExtractEntitiesRequest
The request to detect parameters.


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| parent | [string](#string) |  | the parent of the request Format: `projects/&lt;Project ID&gt;`. |
| text | [string](#string) |  | the input text |
| language_code | [string](#string) |  | the input language |
| intent_name | [string](#string) |  | Optional. The name of the relevant intent. Used to establish preference hierarchy for entities that correspond to intent parameters Format: `projects/&lt;Project ID&gt;/agent/intents/&lt;Intent ID&gt;` |






<a name="ondewo.nlu.ExtractEntitiesResponse"></a>

### ExtractEntitiesResponse



| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| entities_detected | [EntityDetected](#ondewo.nlu.EntityDetected) | repeated |  |
| text | [string](#string) |  |  |






<a name="ondewo.nlu.FastTextEnrichmentConfig"></a>

### FastTextEnrichmentConfig



| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| is_active | [bool](#bool) |  |  |
| enrichment_factor | [int32](#int32) |  |  |
| execution_order | [int32](#int32) |  |  |






<a name="ondewo.nlu.GPT2EnrichmentConfig"></a>

### GPT2EnrichmentConfig



| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| is_active | [bool](#bool) |  |  |
| enrichment_factor | [int32](#int32) |  |  |
| execution_order | [int32](#int32) |  |  |






<a name="ondewo.nlu.GenerateResponsesRequest"></a>

### GenerateResponsesRequest



| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| language_code | [string](#string) |  |  |
| parent | [string](#string) |  |  |
| n_repeat_synonym | [int32](#int32) |  |  |
| branch | [string](#string) |  |  |
| drop_unknown_parameters | [bool](#bool) |  |  |






<a name="ondewo.nlu.GenerateResponsesResponse"></a>

### GenerateResponsesResponse



| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| responses | [string](#string) | repeated |  |






<a name="ondewo.nlu.GenerateUserSaysRequest"></a>

### GenerateUserSaysRequest



| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| language_code | [string](#string) |  |  |
| parent | [string](#string) |  |  |
| n_repeat_synonym | [int32](#int32) |  |  |
| branch | [string](#string) |  |  |






<a name="ondewo.nlu.GenerateUserSaysResponse"></a>

### GenerateUserSaysResponse



| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| user_says | [string](#string) | repeated |  |






<a name="ondewo.nlu.GetAlternativeSentencesRequest"></a>

### GetAlternativeSentencesRequest



| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| config | [DataEnrichmentConfig](#ondewo.nlu.DataEnrichmentConfig) |  |  |
| sentence | [string](#string) |  |  |
| language_code | [string](#string) |  |  |
| parent | [string](#string) |  |  |
| protected_words | [string](#string) | repeated |  |
| words_to_change | [string](#string) | repeated |  |






<a name="ondewo.nlu.GetAlternativeSentencesResponse"></a>

### GetAlternativeSentencesResponse



| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| alternative_sentences | [AltSentence](#ondewo.nlu.AltSentence) | repeated |  |






<a name="ondewo.nlu.GetAlternativeTrainingPhrasesRequest"></a>

### GetAlternativeTrainingPhrasesRequest



| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| config | [DataEnrichmentConfig](#ondewo.nlu.DataEnrichmentConfig) |  |  |
| training_phrase | [Intent.TrainingPhrase](#ondewo.nlu.Intent.TrainingPhrase) |  |  |
| intent_name | [string](#string) |  |  |
| language_code | [string](#string) |  |  |
| parent | [string](#string) |  |  |
| detect_entities | [bool](#bool) |  |  |
| similarity_threshold | [float](#float) |  | similarity threshold defines how similar sentences should be to drop generated training phrase as duplicate. Meaningful values of similarity_threshold are between 0.95 and 1.0 |
| protected_words | [string](#string) | repeated |  |
| words_to_change | [string](#string) | repeated |  |
| branch | [string](#string) |  |  |






<a name="ondewo.nlu.GetAlternativeTrainingPhrasesResponse"></a>

### GetAlternativeTrainingPhrasesResponse



| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| alternative_training_phrases | [AltTrainingPhrase](#ondewo.nlu.AltTrainingPhrase) | repeated |  |






<a name="ondewo.nlu.GetSynonymsRequest"></a>

### GetSynonymsRequest



| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| config | [DataEnrichmentConfig](#ondewo.nlu.DataEnrichmentConfig) |  |  |
| word | [string](#string) |  |  |
| language_code | [string](#string) |  |  |
| parent | [string](#string) |  |  |






<a name="ondewo.nlu.GetSynonymsResponse"></a>

### GetSynonymsResponse



| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| synonyms | [Synonym](#ondewo.nlu.Synonym) | repeated |  |






<a name="ondewo.nlu.GloVeEnrichmentConfig"></a>

### GloVeEnrichmentConfig



| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| is_active | [bool](#bool) |  |  |
| enrichment_factor | [int32](#int32) |  |  |
| execution_order | [int32](#int32) |  |  |






<a name="ondewo.nlu.Synonym"></a>

### Synonym



| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| synonym | [string](#string) |  |  |
| score | [int32](#int32) |  |  |






<a name="ondewo.nlu.ThesaurusEnrichmentConfig"></a>

### ThesaurusEnrichmentConfig



| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| is_active | [bool](#bool) |  |  |
| enrichment_factor | [int32](#int32) |  |  |
| execution_order | [int32](#int32) |  |  |






<a name="ondewo.nlu.Word2VecEnrichmentConfig"></a>

### Word2VecEnrichmentConfig



| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| is_active | [bool](#bool) |  |  |
| enrichment_factor | [int32](#int32) |  |  |
| execution_order | [int32](#int32) |  |  |






<a name="ondewo.nlu.WordNetAugEnrichmentConfig"></a>

### WordNetAugEnrichmentConfig



| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| is_active | [bool](#bool) |  |  |
| enrichment_factor | [int32](#int32) |  |  |
| execution_order | [int32](#int32) |  |  |






<a name="ondewo.nlu.XLNetAugEnrichmentConfig"></a>

### XLNetAugEnrichmentConfig



| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| is_active | [bool](#bool) |  |  |
| enrichment_factor | [int32](#int32) |  |  |
| execution_order | [int32](#int32) |  |  |





 

 

 


<a name="ondewo.nlu.AiServices"></a>

### AiServices
The Central class defining the ondewo ai services

| Method Name | Request Type | Response Type | Description |
| ----------- | ------------ | ------------- | ------------|
| ExtractEntities | [ExtractEntitiesRequest](#ondewo.nlu.ExtractEntitiesRequest) | [ExtractEntitiesResponse](#ondewo.nlu.ExtractEntitiesResponse) | Processes a natural language query and returns detected entities |
| GenerateUserSays | [GenerateUserSaysRequest](#ondewo.nlu.GenerateUserSaysRequest) | [GenerateUserSaysResponse](#ondewo.nlu.GenerateUserSaysResponse) |  |
| GenerateResponses | [GenerateResponsesRequest](#ondewo.nlu.GenerateResponsesRequest) | [GenerateResponsesResponse](#ondewo.nlu.GenerateResponsesResponse) |  |
| GetAlternativeSentences | [GetAlternativeSentencesRequest](#ondewo.nlu.GetAlternativeSentencesRequest) | [GetAlternativeSentencesResponse](#ondewo.nlu.GetAlternativeSentencesResponse) |  |
| GetAlternativeTrainingPhrases | [GetAlternativeTrainingPhrasesRequest](#ondewo.nlu.GetAlternativeTrainingPhrasesRequest) | [GetAlternativeTrainingPhrasesResponse](#ondewo.nlu.GetAlternativeTrainingPhrasesResponse) |  |
| GetSynonyms | [GetSynonymsRequest](#ondewo.nlu.GetSynonymsRequest) | [GetSynonymsResponse](#ondewo.nlu.GetSynonymsResponse) |  |

 



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

