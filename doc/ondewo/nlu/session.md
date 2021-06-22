# Protocol Documentation
<a name="top"></a>

## Table of Contents

- [ondewo/nlu/session.proto](#ondewo/nlu/session.proto)
    - [AddSessionLabelsRequest](#ondewo.nlu.AddSessionLabelsRequest)
    - [CreateSessionReviewRequest](#ondewo.nlu.CreateSessionReviewRequest)
    - [DeleteSessionRequest](#ondewo.nlu.DeleteSessionRequest)
    - [DetectIntentRequest](#ondewo.nlu.DetectIntentRequest)
    - [DetectIntentResponse](#ondewo.nlu.DetectIntentResponse)
    - [DetectedIntent](#ondewo.nlu.DetectedIntent)
    - [EventInput](#ondewo.nlu.EventInput)
    - [GetLatestSessionReviewRequest](#ondewo.nlu.GetLatestSessionReviewRequest)
    - [GetSessionRequest](#ondewo.nlu.GetSessionRequest)
    - [GetSessionReviewRequest](#ondewo.nlu.GetSessionReviewRequest)
    - [InputAudioConfig](#ondewo.nlu.InputAudioConfig)
    - [ListSessionLabelsRequest](#ondewo.nlu.ListSessionLabelsRequest)
    - [ListSessionLabelsResponse](#ondewo.nlu.ListSessionLabelsResponse)
    - [ListSessionReviewsRequest](#ondewo.nlu.ListSessionReviewsRequest)
    - [ListSessionReviewsResponse](#ondewo.nlu.ListSessionReviewsResponse)
    - [ListSessionsRequest](#ondewo.nlu.ListSessionsRequest)
    - [ListSessionsResponse](#ondewo.nlu.ListSessionsResponse)
    - [QueryInput](#ondewo.nlu.QueryInput)
    - [QueryParameters](#ondewo.nlu.QueryParameters)
    - [QueryResult](#ondewo.nlu.QueryResult)
    - [RemoveSessionLabelsRequest](#ondewo.nlu.RemoveSessionLabelsRequest)
    - [Session](#ondewo.nlu.Session)
    - [SessionFilter](#ondewo.nlu.SessionFilter)
    - [SessionInfo](#ondewo.nlu.SessionInfo)
    - [SessionReview](#ondewo.nlu.SessionReview)
    - [SessionReviewStep](#ondewo.nlu.SessionReviewStep)
    - [SessionStep](#ondewo.nlu.SessionStep)
    - [StreamingDetectIntentRequest](#ondewo.nlu.StreamingDetectIntentRequest)
    - [StreamingDetectIntentResponse](#ondewo.nlu.StreamingDetectIntentResponse)
    - [StreamingRecognitionResult](#ondewo.nlu.StreamingRecognitionResult)
    - [TextInput](#ondewo.nlu.TextInput)
    - [TrackSessionStepRequest](#ondewo.nlu.TrackSessionStepRequest)
  
    - [AudioEncoding](#ondewo.nlu.AudioEncoding)
    - [Session.View](#ondewo.nlu.Session.View)
    - [SessionReview.View](#ondewo.nlu.SessionReview.View)
    - [StreamingRecognitionResult.MessageType](#ondewo.nlu.StreamingRecognitionResult.MessageType)
  
    - [Sessions](#ondewo.nlu.Sessions)
  
- [Scalar Value Types](#scalar-value-types)



<a name="ondewo/nlu/session.proto"></a>
<p align="right"><a href="#top">Top</a></p>

## ondewo/nlu/session.proto



<a name="ondewo.nlu.AddSessionLabelsRequest"></a>

### AddSessionLabelsRequest



| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| session_id | [string](#string) |  |  |
| labels | [string](#string) | repeated |  |
| session_view | [Session.View](#ondewo.nlu.Session.View) |  |  |






<a name="ondewo.nlu.CreateSessionReviewRequest"></a>

### CreateSessionReviewRequest
SESSION-REVIEW RELATED MESSAGES *** //


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| session_id | [string](#string) |  | The unique identifier for the session under review Format: `projects/&lt;PROJECT_ID&gt;/agent/sessions/&lt;SESSION_ID&gt;`. |
| parent_review_id | [string](#string) |  | Optional: The unique identifier of the parent review Format: `projects/&lt;PROJECT_ID&gt;/agent/sessions/&lt;SESSION_ID&gt;/reviews/&lt;SESSION_REVIEW_ID&gt;`. |
| session_review | [SessionReview](#ondewo.nlu.SessionReview) |  | The reviews for all steps in the session |
| session_review_view | [SessionReview.View](#ondewo.nlu.SessionReview.View) |  |  |






<a name="ondewo.nlu.DeleteSessionRequest"></a>

### DeleteSessionRequest



| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| session_id | [string](#string) |  | Required. The session to be deleted Format: `projects/&lt;PROJECT_ID&gt;/agent/sessions/&lt;SESSION_UUID&gt;`. |






<a name="ondewo.nlu.DetectIntentRequest"></a>

### DetectIntentRequest
The request to detect user&#39;s intent.


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| session | [string](#string) |  | Required. The name of the session this query is sent to. Format: `projects/&lt;Project ID&gt;/agent/sessions/&lt;Session ID&gt;`. It&#39;s up to the API caller to choose an appropriate session ID. It can be a random number or some type of user identifier (preferably hashed). The length of the session ID must not exceed 36 bytes. |
| query_params | [QueryParameters](#ondewo.nlu.QueryParameters) |  | Optional. The parameters of this query. |
| query_input | [QueryInput](#ondewo.nlu.QueryInput) |  | Required. The input specification. It can be set to:

1. an audio config which instructs the speech recognizer how to process the speech audio,

2. a conversational query in the form of text, or

3. an event that specifies which intent to trigger. |
| input_audio | [bytes](#bytes) |  | Optional. The natural language speech audio to be processed. This field should be populated iff `query_input` is set to an input audio config. A single request can contain up to 1 minute of speech audio data. |






<a name="ondewo.nlu.DetectIntentResponse"></a>

### DetectIntentResponse
The message returned from the DetectIntent method.


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| response_id | [string](#string) |  | The unique identifier of the response. It can be used to locate a response in the training example set or for reporting issues. |
| query_result | [QueryResult](#ondewo.nlu.QueryResult) |  | The results of the conversational query or event processing. |
| webhook_status | [google.rpc.Status](#google.rpc.Status) |  | Specifies the status of the webhook request. `webhook_status` is never populated in webhook requests. |






<a name="ondewo.nlu.DetectedIntent"></a>

### DetectedIntent



| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| intent | [Intent](#ondewo.nlu.Intent) |  | intent |
| score | [float](#float) |  | score of intent detection |
| algorithm | [string](#string) |  | intent detection algorithm |
| fulfillment_messages | [Intent.Message](#ondewo.nlu.Intent.Message) | repeated | collection of rich messages to present to the user This field is set only for the first detected intent. For the rest of the intents the messages are not resolved and the raw messages for the current language code are available in self.intent.messages |
| required_param_missing | [bool](#bool) |  | This field is set to: - `true` if the matched intent has required parameters and not all of the required parameter values have been collected. - `false` if all required parameter values have been collected, or if the matched intent doesn&#39;t contain any required parameters. |






<a name="ondewo.nlu.EventInput"></a>

### EventInput
Events allow for matching intents by event name instead of the natural
language input. For instance, input `&lt;event: { name: “welcome_event”,
parameters: { name: “Sam” } }&gt;` can trigger a personalized welcome response.
The parameter `name` may be used by the agent in the response:
`“Hello #welcome_event.name! What can I do for you today?”`.


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| name | [string](#string) |  | Required. The unique identifier of the event. |
| parameters | [google.protobuf.Struct](#google.protobuf.Struct) |  | Optional. The collection of parameters associated with the event. |
| language_code | [string](#string) |  | Required. The language of this query. See [Language Support](https://dialogflow.com/docs/languages) for a list of the currently supported language codes. Note that queries in the same session do not necessarily need to specify the same language. |






<a name="ondewo.nlu.GetLatestSessionReviewRequest"></a>

### GetLatestSessionReviewRequest



| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| session_id | [string](#string) |  | The unique identifier of the session for which the latest review should be returned Format: `projects/&lt;PROJECT_ID&gt;/agent/sessions/&lt;SESSION_ID&gt;`. |
| session_review_view | [SessionReview.View](#ondewo.nlu.SessionReview.View) |  | An enum specifying the amount of information to be returned for the desired session review |






<a name="ondewo.nlu.GetSessionRequest"></a>

### GetSessionRequest



| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| session_id | [string](#string) |  | The session to be returned Format: `projects/&lt;PROJECT_ID&gt;/agent/sessions/&lt;SESSION_ID&gt;`. |
| session_view | [Session.View](#ondewo.nlu.Session.View) |  | whether to return a full or sparse view; if unspecified full view is returned |






<a name="ondewo.nlu.GetSessionReviewRequest"></a>

### GetSessionReviewRequest



| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| session_review_id | [string](#string) |  | The unique identifier of the session review to be returned |
| session_review_view | [SessionReview.View](#ondewo.nlu.SessionReview.View) |  |  |






<a name="ondewo.nlu.InputAudioConfig"></a>

### InputAudioConfig
Instructs the speech recognizer how to process the audio content.


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| audio_encoding | [AudioEncoding](#ondewo.nlu.AudioEncoding) |  | Required. Audio encoding of the audio content to process. |
| sample_rate_hertz | [int32](#int32) |  | Required. Sample rate (in Hertz) of the audio content sent in the query. Refer to [Cloud Speech API documentation](/speech/docs/basics) for more details. |
| language_code | [string](#string) |  | Required. The language of the supplied audio. Dialogflow does not do translations. See [Language Support](https://dialogflow.com/docs/languages) for a list of the currently supported language codes. Note that queries in the same session do not necessarily need to specify the same language. |
| phrase_hints | [string](#string) | repeated | Optional. The collection of phrase hints which are used to boost accuracy of speech recognition. Refer to [Cloud Speech API documentation](/speech/docs/basics#phrase-hints) for more details. |






<a name="ondewo.nlu.ListSessionLabelsRequest"></a>

### ListSessionLabelsRequest



| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| parent | [string](#string) |  | The parent for which the labels for all sessions should be listed Format: `projects/&lt;PROJECT_ID&gt;/agent`. |






<a name="ondewo.nlu.ListSessionLabelsResponse"></a>

### ListSessionLabelsResponse



| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| labels | [string](#string) | repeated |  |






<a name="ondewo.nlu.ListSessionReviewsRequest"></a>

### ListSessionReviewsRequest



| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| session_id | [string](#string) |  | The unique identifier for the session for which reviews should be listed Format: `projects/&lt;PROJECT_ID&gt;/agent/sessions/&lt;SESSION_ID&gt;`. |
| session_review_view | [SessionReview.View](#ondewo.nlu.SessionReview.View) |  | An enum specifying the amount of information to be returned per session review |
| page_token | [string](#string) |  | Optional. The next_page_token value returned from a previous list request. |






<a name="ondewo.nlu.ListSessionReviewsResponse"></a>

### ListSessionReviewsResponse



| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| session_reviews | [SessionReview](#ondewo.nlu.SessionReview) | repeated | The requested session reviews |
| next_page_token | [string](#string) |  | Token to retrieve the next page of results, or empty if there are no more results in the list |






<a name="ondewo.nlu.ListSessionsRequest"></a>

### ListSessionsRequest



| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| parent | [string](#string) |  | The parent for which sessions should be listed Format: `projects/&lt;PROJECT_ID&gt;/agent`. |
| session_view | [Session.View](#ondewo.nlu.Session.View) |  | An enum specifying the amount of information to be returned per session |
| page_token | [string](#string) |  | Optional. The next_page_token value returned from a previous list request. |
| session_filter | [SessionFilter](#ondewo.nlu.SessionFilter) |  | Optional. A filter to narrow the response down to sessions of interest. |






<a name="ondewo.nlu.ListSessionsResponse"></a>

### ListSessionsResponse



| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| sessions | [Session](#ondewo.nlu.Session) | repeated | The requested sessions |
| next_page_token | [string](#string) |  | Token to retrieve the next page of results, or empty if there are no more results in the list |






<a name="ondewo.nlu.QueryInput"></a>

### QueryInput
Represents the query input. It can contain either:

1.  An audio config which
    instructs the speech recognizer how to process the speech audio.

2.  A conversational query in the form of text,.

3.  An event that specifies which intent to trigger.


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| audio_config | [InputAudioConfig](#ondewo.nlu.InputAudioConfig) |  | Instructs the speech recognizer how to process the speech audio. |
| text | [TextInput](#ondewo.nlu.TextInput) |  | The natural language text to be processed. |
| event | [EventInput](#ondewo.nlu.EventInput) |  | The event to be processed. |






<a name="ondewo.nlu.QueryParameters"></a>

### QueryParameters
Represents the parameters of the conversational query.


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| time_zone | [string](#string) |  | Optional. The time zone of this conversational query from the [time zone database](https://www.iana.org/time-zones), e.g., America/New_York, Europe/Paris. If not provided, the time zone specified in agent settings is used. |
| geo_location | [google.type.LatLng](#google.type.LatLng) |  | Optional. The geo location of this conversational query. |
| contexts | [Context](#ondewo.nlu.Context) | repeated | Optional. The collection of contexts to be activated before this query is executed. |
| reset_contexts | [bool](#bool) |  | Optional. Specifies whether to delete all contexts in the current session before the new ones are activated. |
| payload | [google.protobuf.Struct](#google.protobuf.Struct) |  | Optional. This field can be used to pass custom data into the webhook associated with the agent. Arbitrary JSON objects are supported. |






<a name="ondewo.nlu.QueryResult"></a>

### QueryResult
Represents the result of conversational query or event processing.


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| query_text | [string](#string) |  | The original conversational query text: - If natural language text was provided as input, `query_text` contains a copy of the input. - If natural language speech audio was provided as input, `query_text` contains the speech recognition result. If speech recognizer produced multiple alternatives, a particular one is picked. - If an event was provided as input, `query_text` is not set. |
| language_code | [string](#string) |  | The language that was triggered during intent detection. See [Language Support](https://dialogflow.com/docs/reference/language) for a list of the currently supported language codes. |
| speech_recognition_confidence | [float](#float) |  | The Speech recognition confidence between 0.0 and 1.0. A higher number indicates an estimated greater likelihood that the recognized words are correct. The default of 0.0 is a sentinel value indicating that confidence was not set.

You should not rely on this field as it isn&#39;t guaranteed to be accurate, or even set. In particular this field isn&#39;t set in Webhook calls and for StreamingDetectIntent since the streaming endpoint has separate confidence estimates per portion of the audio in StreamingRecognitionResult. |
| action | [string](#string) |  | The action name from the matched intent. |
| parameters | [google.protobuf.Struct](#google.protobuf.Struct) |  | The collection of extracted parameters. |
| all_required_params_present | [bool](#bool) |  | This field is set to: - `false` if the matched intent has required parameters and not all of the required parameter values have been collected. - `true` if all required parameter values have been collected, or if the matched intent doesn&#39;t contain any required parameters. |
| fulfillment_text | [string](#string) |  | The text to be pronounced to the user or shown on the screen. |
| fulfillment_messages | [Intent.Message](#ondewo.nlu.Intent.Message) | repeated | The collection of rich messages to present to the user. |
| webhook_source | [string](#string) |  | If the query was fulfilled by a webhook call, this field is set to the value of the `source` field returned in the webhook response. |
| webhook_payload | [google.protobuf.Struct](#google.protobuf.Struct) |  | If the query was fulfilled by a webhook call, this field is set to the value of the `payload` field returned in the webhook response. |
| output_contexts | [Context](#ondewo.nlu.Context) | repeated | The collection of output contexts. If applicable, `output_contexts.parameters` contains entries with name `&lt;parameter name&gt;.original` containing the original parameter values before the query. |
| intent | [Intent](#ondewo.nlu.Intent) |  | The intent that matched the conversational query. Some, not all fields are filled in this message, including but not limited to: `name`, `display_name` and `webhook_state`. |
| intent_detection_confidence | [float](#float) |  | The intent detection confidence. Values range from 0.0 (completely uncertain) to 1.0 (completely certain). |
| diagnostic_info | [google.protobuf.Struct](#google.protobuf.Struct) |  | The free-form diagnostic info. For example, this field could contain webhook call latency. |






<a name="ondewo.nlu.RemoveSessionLabelsRequest"></a>

### RemoveSessionLabelsRequest



| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| session_id | [string](#string) |  |  |
| labels | [string](#string) | repeated |  |
| session_view | [Session.View](#ondewo.nlu.Session.View) |  |  |






<a name="ondewo.nlu.Session"></a>

### Session
SESSION RELATED MESSAGES *** //


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| session_id | [string](#string) |  | The unique identifier of the session |
| session_steps | [SessionStep](#ondewo.nlu.SessionStep) | repeated | The list of all the steps of the session |
| session_info | [SessionInfo](#ondewo.nlu.SessionInfo) |  |  |






<a name="ondewo.nlu.SessionFilter"></a>

### SessionFilter
A SessionFilter can be used in some requests to return only sessions matching certain filter conditions.

All fields below are  optional. Multiple fields specified at the same time are chained via AND.


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| language_codes | [string](#string) | repeated | Match only sessions with all of the following language_codes |
| matched_intents | [Intent](#ondewo.nlu.Intent) | repeated | Match only sessions during which all of the following intents were detected NOTE: only name and display name fields are used for comparison |
| matched_entity_types | [EntityType](#ondewo.nlu.EntityType) | repeated | Match only sessions during which all of the following entity types were recognized NOTE: only name and display name fields are used for comparison |
| min_intents_confidence_min | [float](#float) |  | Match only sessions where the minimum confidence for intent detection along the session falls in the following range

defaults to -1 if not set |
| min_intents_confidence_max | [float](#float) |  | defaults to &#43;1 if not set |
| min_entity_types_confidence_min | [float](#float) |  | Match only sessions where the minimum confidence for entity recognition along the session falls in the following range

defaults to -1 if not set |
| min_entity_types_confidence_max | [float](#float) |  | defaults to &#43;1 if not set |
| earliest | [float](#float) |  | Match only sessions whose time range falls within the following range (in UNIX epochs)

defaults to 0 if not set |
| latest | [float](#float) |  | defaults to current epoch if not set |
| min_number_turns | [int32](#int32) |  | Match only sessions for which the number of turns (interaction steps) falls in the following range

defaults to 0 if not set |
| max_number_turns | [int32](#int32) |  | defaults to MAXINT if not set |
| labels | [string](#string) | repeated | Match only session which have all of the following labels assigned |
| user_ids | [string](#string) | repeated | Match only session which had all of the following user_ids interacting with them. |






<a name="ondewo.nlu.SessionInfo"></a>

### SessionInfo
A SessionInfo contains some general information about a session.

This information can be returned inside a Session object for consumption by a client.
Or it can be used by the backend to check whether the Session matches a given SessionFilter.

All fields below are  optional. Multiple fields specified at the same time are chained


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| language_codes | [string](#string) | repeated | The language codes used in the given session. |
| matched_intents | [Intent](#ondewo.nlu.Intent) | repeated | A list of intents which have been matched |
| matched_entity_types | [EntityType](#ondewo.nlu.EntityType) | repeated | A list of entity types which have been matched |
| min_intents_confidence | [float](#float) |  | The minimum confidence for intent recognition along the session |
| min_entity_types_confidence | [float](#float) |  | The minimum confidence for entity recognition along the session |
| earliest | [float](#float) |  | The start and end dates of the given session (in UNIX epochs) |
| latest | [float](#float) |  |  |
| number_turns | [int32](#int32) |  | The number of turns (interaction steps) in the given session |
| labels | [string](#string) | repeated | The list of labels of the given session |
| user_ids | [string](#string) | repeated | The user_ids of the users which were interacting within the given session |






<a name="ondewo.nlu.SessionReview"></a>

### SessionReview



| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| session_review_id | [string](#string) |  | The unique identifier for the given review Format: `projects/&lt;PROJECT_ID&gt;/agent/sessions/&lt;SESSION_ID&gt;/reviews/&lt;SESSION_REVIEW_ID&gt;`. |
| session_review_steps | [SessionReviewStep](#ondewo.nlu.SessionReviewStep) | repeated | The reviews for all steps in the session |






<a name="ondewo.nlu.SessionReviewStep"></a>

### SessionReviewStep



| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| annotated_usersays | [Intent.TrainingPhrase](#ondewo.nlu.Intent.TrainingPhrase) |  | The user says with markup of the detected entity types |
| language_code | [string](#string) |  | The language code |
| detected_intents | [DetectedIntent](#ondewo.nlu.DetectedIntent) | repeated | Unique detected intents ordered by descending confidence |
| contexts | [Context](#ondewo.nlu.Context) | repeated | The contexts which were active at the beginning of this step |






<a name="ondewo.nlu.SessionStep"></a>

### SessionStep



| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| detect_intent_request | [DetectIntentRequest](#ondewo.nlu.DetectIntentRequest) |  |  |
| detect_intent_response | [DetectIntentResponse](#ondewo.nlu.DetectIntentResponse) |  |  |
| contexts | [Context](#ondewo.nlu.Context) | repeated | The contexts which were active at the beginning of this step |






<a name="ondewo.nlu.StreamingDetectIntentRequest"></a>

### StreamingDetectIntentRequest
The top-level message sent by the client to the
`StreamingDetectIntent` method.

Multiple request messages should be sent in order:

1.  The first message must contain `session`, `query_input` plus optionally
    `query_params` and/or `single_utterance`. The message must not contain `input_audio`.

2.  If `query_input` was set to a streaming input audio config,
    all subsequent messages must contain only `input_audio`.
    Otherwise, finish the request stream.


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| session | [string](#string) |  | Required. The name of the session the query is sent to. Format of the session name: `projects/&lt;Project ID&gt;/agent/sessions/&lt;Session ID&gt;`. It’s up to the API caller to choose an appropriate &lt;Session ID&gt;. It can be a random number or some type of user identifier (preferably hashed). The length of the session ID must not exceed 36 characters. |
| query_params | [QueryParameters](#ondewo.nlu.QueryParameters) |  | Optional. The parameters of this query. |
| query_input | [QueryInput](#ondewo.nlu.QueryInput) |  | Required. The input specification. It can be set to:

1. an audio config which instructs the speech recognizer how to process the speech audio,

2. a conversational query in the form of text, or

3. an event that specifies which intent to trigger. |
| single_utterance | [bool](#bool) |  | Optional. If `false` (default), recognition does not cease until the client closes the stream. If `true`, the recognizer will detect a single spoken utterance in input audio. Recognition ceases when it detects the audio&#39;s voice has stopped or paused. In this case, once a detected intent is received, the client should close the stream and start a new request with a new stream as needed. This setting is ignored when `query_input` is a piece of text or an event. |
| input_audio | [bytes](#bytes) |  | Optional. The input audio content to be recognized. Must be sent if `query_input` was set to a streaming input audio config. The complete audio over all streaming messages must not exceed 1 minute. |






<a name="ondewo.nlu.StreamingDetectIntentResponse"></a>

### StreamingDetectIntentResponse
The top-level message returned from the
`StreamingDetectIntent` method.

Multiple response messages can be returned in order:

1.  If the input was set to streaming audio, the first one or more messages
    contain `recognition_result`. Each `recognition_result` represents a more
    complete transcript of what the user said. The last `recognition_result`
    has `is_final` set to `true`.

2.  The next message contains `response_id`, `query_result`
    and optionally `webhook_status` if a WebHook was called.


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| response_id | [string](#string) |  | The unique identifier of the response. It can be used to locate a response in the training example set or for reporting issues. |
| recognition_result | [StreamingRecognitionResult](#ondewo.nlu.StreamingRecognitionResult) |  | The result of speech recognition. |
| query_result | [QueryResult](#ondewo.nlu.QueryResult) |  | The result of the conversational query or event processing. |
| webhook_status | [google.rpc.Status](#google.rpc.Status) |  | Specifies the status of the webhook request. |






<a name="ondewo.nlu.StreamingRecognitionResult"></a>

### StreamingRecognitionResult
Contains a speech recognition result corresponding to a portion of the audio
that is currently being processed or an indication that this is the end
of the single requested utterance.

Example:

1.  transcript: &#34;tube&#34;

2.  transcript: &#34;to be a&#34;

3.  transcript: &#34;to be&#34;

4.  transcript: &#34;to be or not to be&#34;
    is_final: true

5.  transcript: &#34; that&#39;s&#34;

6.  transcript: &#34; that is&#34;

7.  recognition_event_type: `RECOGNITION_EVENT_END_OF_SINGLE_UTTERANCE`

8.  transcript: &#34; that is the question&#34;
    is_final: true

Only two of the responses contain final results (#4 and #8 indicated by
`is_final: true`). Concatenating these generates the full transcript: &#34;to be
or not to be that is the question&#34;.

In each response we populate:

*  for `MESSAGE_TYPE_TRANSCRIPT`: `transcript` and possibly `is_final`.

*  for `MESSAGE_TYPE_END_OF_SINGLE_UTTERANCE`: only `event_type`.


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| message_type | [StreamingRecognitionResult.MessageType](#ondewo.nlu.StreamingRecognitionResult.MessageType) |  | Type of the result message. |
| transcript | [string](#string) |  | Transcript text representing the words that the user spoke. Populated if and only if `event_type` = `RECOGNITION_EVENT_TRANSCRIPT`. |
| is_final | [bool](#bool) |  | The default of 0.0 is a sentinel value indicating `confidence` was not set. If `false`, the `StreamingRecognitionResult` represents an interim result that may change. If `true`, the recognizer will not return any further hypotheses about this piece of the audio. May only be populated for `event_type` = `RECOGNITION_EVENT_TRANSCRIPT`. |
| confidence | [float](#float) |  | The Speech confidence between 0.0 and 1.0 for the current portion of audio. A higher number indicates an estimated greater likelihood that the recognized words are correct. The default of 0.0 is a sentinel value indicating that confidence was not set.

This field is typically only provided if `is_final` is true and you should not rely on it being accurate or even set. |






<a name="ondewo.nlu.TextInput"></a>

### TextInput
Represents the natural language text to be processed.


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| text | [string](#string) |  | Required. The UTF-8 encoded natural language text to be processed. Text length must not exceed 256 bytes. |
| language_code | [string](#string) |  | Required. The language of this conversational query. See [Language Support](https://dialogflow.com/docs/languages) for a list of the currently supported language codes. Note that queries in the same session do not necessarily need to specify the same language. |






<a name="ondewo.nlu.TrackSessionStepRequest"></a>

### TrackSessionStepRequest



| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| session_id | [string](#string) |  |  |
| session_step | [SessionStep](#ondewo.nlu.SessionStep) |  |  |
| session_view | [Session.View](#ondewo.nlu.Session.View) |  |  |





 


<a name="ondewo.nlu.AudioEncoding"></a>

### AudioEncoding
Audio encoding of the audio content sent in the conversational query request.
Refer to the [Cloud Speech API documentation](/speech/docs/basics) for more
details.

| Name | Number | Description |
| ---- | ------ | ----------- |
| AUDIO_ENCODING_UNSPECIFIED | 0 | Not specified. |
| AUDIO_ENCODING_LINEAR_16 | 1 | Uncompressed 16-bit signed little-endian samples (Linear PCM). |
| AUDIO_ENCODING_FLAC | 2 | [`FLAC`](https://xiph.org/flac/documentation.html) (Free Lossless Audio Codec) is the recommended encoding because it is lossless (therefore recognition is not compromised) and requires only about half the bandwidth of `LINEAR16`. `FLAC` stream encoding supports 16-bit and 24-bit samples, however, not all fields in `STREAMINFO` are supported. |
| AUDIO_ENCODING_MULAW | 3 | 8-bit samples that compand 14-bit audio samples using G.711 PCMU/mu-law. |
| AUDIO_ENCODING_AMR | 4 | Adaptive Multi-Rate Narrowband codec. `sample_rate_hertz` must be 8000. |
| AUDIO_ENCODING_AMR_WB | 5 | Adaptive Multi-Rate Wideband codec. `sample_rate_hertz` must be 16000. |
| AUDIO_ENCODING_OGG_OPUS | 6 | Opus encoded audio frames in Ogg container ([OggOpus](https://wiki.xiph.org/OggOpus)). `sample_rate_hertz` must be 16000. |
| AUDIO_ENCODING_SPEEX_WITH_HEADER_BYTE | 7 | Although the use of lossy encodings is not recommended, if a very low bitrate encoding is required, `OGG_OPUS` is highly preferred over Speex encoding. The [Speex](https://speex.org/) encoding supported by Dialogflow API has a header byte in each block, as in MIME type `audio/x-speex-with-header-byte`. It is a variant of the RTP Speex encoding defined in [RFC 5574](https://tools.ietf.org/html/rfc5574). The stream is a sequence of blocks, one block per RTP packet. Each block starts with a byte containing the length of the block, in bytes, followed by one or more frames of Speex data, padded to an integral number of bytes (octets) as specified in RFC 5574. In other words, each RTP header is replaced with a single byte containing the block length. Only Speex wideband is supported. `sample_rate_hertz` must be 16000. |



<a name="ondewo.nlu.Session.View"></a>

### Session.View
Represents the options for views of a session.
A session can be a sizable object. Therefore, we provide a resource view that
does not return all data

| Name | Number | Description |
| ---- | ------ | ----------- |
| VIEW_UNSPECIFIED | 0 | Endpoints decide whether to return the full or the sparse view |
| VIEW_FULL | 1 | All fields are populated. |
| VIEW_SPARSE | 2 | Only some fields are populated in the response. |



<a name="ondewo.nlu.SessionReview.View"></a>

### SessionReview.View
Represents the options for views of a session_review.
A session_review can be a sizable object. Therefore, we provide a resource view that
does not return all data

| Name | Number | Description |
| ---- | ------ | ----------- |
| VIEW_UNSPECIFIED | 0 | Endpoints decide whether to return the full or the sparse view |
| VIEW_FULL | 1 | All fields are populated. |
| VIEW_SPARSE | 2 | Only some fields are populated in the response. |



<a name="ondewo.nlu.StreamingRecognitionResult.MessageType"></a>

### StreamingRecognitionResult.MessageType
Type of the response message.

| Name | Number | Description |
| ---- | ------ | ----------- |
| MESSAGE_TYPE_UNSPECIFIED | 0 | Not specified. Should never be used. |
| TRANSCRIPT | 1 | Message contains a (possibly partial) transcript. |
| END_OF_SINGLE_UTTERANCE | 2 | Event indicates that the server has detected the end of the user&#39;s speech utterance and expects no additional speech. Therefore, the server will not process additional audio (although it may subsequently return additional results). The client should stop sending additional audio data, half-close the gRPC connection, and wait for any additional results until the server closes the gRPC connection. This message is only sent if `single_utterance` was set to `true`, and is not used otherwise. |


 

 


<a name="ondewo.nlu.Sessions"></a>

### Sessions
A session represents an interaction with a user. You retrieve user input
and pass it to the [DetectIntent][google.cloud.dialogflow.v2.Sessions.DetectIntent] (or
[StreamingDetectIntent][google.cloud.dialogflow.v2.Sessions.StreamingDetectIntent]) method to determine
user intent and respond.

| Method Name | Request Type | Response Type | Description |
| ----------- | ------------ | ------------- | ------------|
| DetectIntent | [DetectIntentRequest](#ondewo.nlu.DetectIntentRequest) | [DetectIntentResponse](#ondewo.nlu.DetectIntentResponse) | Processes a natural language query and returns structured, actionable data as a result. This method is not idempotent, because it may cause contexts and session entity types to be updated, which in turn might affect results of future queries. |
| StreamingDetectIntent | [StreamingDetectIntentRequest](#ondewo.nlu.StreamingDetectIntentRequest) stream | [StreamingDetectIntentResponse](#ondewo.nlu.StreamingDetectIntentResponse) stream | Processes a natural language query in audio format in a streaming fashion and returns structured, actionable data as a result. This method is only available via the gRPC API (not REST). |
| ListSessions | [ListSessionsRequest](#ondewo.nlu.ListSessionsRequest) | [ListSessionsResponse](#ondewo.nlu.ListSessionsResponse) | SESSION RELATED ENDPOINTS *** // ListSessions: returns list of sessions from ondewo-kb; by default returns only session IDs |
| GetSession | [GetSessionRequest](#ondewo.nlu.GetSessionRequest) | [Session](#ondewo.nlu.Session) | GetSession: returns a session(=conversation) from ondewo-kb |
| TrackSessionStep | [TrackSessionStepRequest](#ondewo.nlu.TrackSessionStepRequest) | [Session](#ondewo.nlu.Session) | TrackSessionStep: append to an existing session; creates it if not existing |
| DeleteSession | [DeleteSessionRequest](#ondewo.nlu.DeleteSessionRequest) | [.google.protobuf.Empty](#google.protobuf.Empty) | DeleteSession: delete a session(=conversation) from ondewo-kb (for testing only) |
| ListSessionLabels | [ListSessionLabelsRequest](#ondewo.nlu.ListSessionLabelsRequest) | [ListSessionLabelsResponse](#ondewo.nlu.ListSessionLabelsResponse) | SESSION-LABEL RELATED ENDPOINTS *** // |
| AddSessionLabels | [AddSessionLabelsRequest](#ondewo.nlu.AddSessionLabelsRequest) | [Session](#ondewo.nlu.Session) |  |
| RemoveSessionLabels | [RemoveSessionLabelsRequest](#ondewo.nlu.RemoveSessionLabelsRequest) | [Session](#ondewo.nlu.Session) |  |
| ListSessionReviews | [ListSessionReviewsRequest](#ondewo.nlu.ListSessionReviewsRequest) | [ListSessionReviewsResponse](#ondewo.nlu.ListSessionReviewsResponse) | SESSION-REVIEW RELATED ENDPOINTS *** // ListSessionReviews: returns list of session reviews from ondewo-kb; by default only returns session review IDs |
| GetSessionReview | [GetSessionReviewRequest](#ondewo.nlu.GetSessionReviewRequest) | [SessionReview](#ondewo.nlu.SessionReview) | GetSessionReview: returns a session-review from ondewo-kb or computes the first review if none exists |
| GetLatestSessionReview | [GetLatestSessionReviewRequest](#ondewo.nlu.GetLatestSessionReviewRequest) | [SessionReview](#ondewo.nlu.SessionReview) | GetLatestSessionReview: returns a session-review from ondewo-kb or computes the first review if none exists |
| CreateSessionReview | [CreateSessionReviewRequest](#ondewo.nlu.CreateSessionReviewRequest) | [SessionReview](#ondewo.nlu.SessionReview) | CreateSessionReview: persist a session review in ondewo-kb as a side effect: also update training data in ondewo-cai |

 



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

