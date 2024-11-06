# Release History

*****************

## Release ONDEWO NLU API 6.0.0

### New Features

* [[OND211-2199]](https://ondewo.atlassian.net/browse/OND211-2199) Add `GetSessionStep`, `UpdateSessionStep` and
  `DeleteSessionStep` as `Session` endpoints. Rename `TrackSessionStep` to `CreateSessionStep`.
* [[OND211-2199]](https://ondewo.atlassian.net/browse/OND211-2199) Add `service_hierarchy` to CcaiService for enabling a
  tree-like execution structure of services. Add `headers` to CcaiService for adding headers to the request message when
  calling a service.
* [[OND211-2199]](https://ondewo.atlassian.net/browse/OND211-2199) Add `GetCcaiService` to CcaiProjects endpoint to
  retrieve information about a specific CCAI service
* [[OND211-2199]](https://ondewo.atlassian.net/browse/OND211-2199) AiServices: Add large language models (LLM) support
  by adding `LlmGenerate`, `LlmGenerateStream` and `ListLlmModels` endpoints. New messages added to support these
  endpoints are  `ListLlmModelsRequest`, `ListLlmModelsResponse`, `LlmModel`, `LlmGenerateRequest`,
  `LlmGenerateResponse`, `LlmGenerateStreamRequest`, and `LlmGenerateStreamResponse`.

*****************

## Release ONDEWO NLU API 5.0.0

### Bug Fixes

* [[OND211-2162]](https://ondewo.atlassian.net/browse/OND211-2162) Renamed `Transcription` to `S2tTranscription`

*****************

## Release ONDEWO NLU API 4.9.0

### Improvements

* [[OND211-2053]](https://ondewo.atlassian.net/browse/OND211-2053) - `BatchUpdateIntents` now returns a
  BatchUpdateIntentsResponse
* [[OND211-2053]](https://ondewo.atlassian.net/browse/OND211-2053) - Added audit information on `CustomPlatformInfo`

*****************

## Release ONDEWO NLU API 4.8.0

### New Features

* [[OND211-2146]](https://ondewo.atlassian.net/browse/OND211-2146) - Added `Notifications` for users and projects
* [[OND211-2147]](https://ondewo.atlassian.net/browse/OND211-2147) - Added `CcaiProject` and `CcaiServices` objects and
  handling methods
* [[OND211-2148]](https://ondewo.atlassian.net/browse/OND211-2148) - Added User Preferences
* [[OND211-2149]](https://ondewo.atlassian.net/browse/OND211-2149) - Added Comment functionality for `SessionInfo`
* [[OND211-2150]](https://ondewo.atlassian.net/browse/OND211-2150) - Added audit information to all major objects:
  `Entity`, `EntityType`, `Intent`, `Operation`, `ProjectRole`, `Session`, `User` etc.

### Improvements

* [[OND211-2143]](https://ondewo.atlassian.net/browse/OND211-2143) - Added documentation to webhook

*****************

## Release ONDEWO NLU API 4.7.0

### Improvements

* [[OND211-2105]](https://ondewo.atlassian.net/browse/OND211-2105) - Added timestamp session step and session review and
  session review step

*****************

## Release ONDEWO NLU API 4.6.0

### Improvements

* Added `GetEntity`, `CreateEntity`, `UpdateEntity` and `DeleteEntity` request and responses

### Breaking changes

* Restructuring of messages
    * From `BatchEntitiesResponse.EntityStatus` to `EntityStatus`
    * From `BatchCreateEntitiesRequest.CreateEntityRequest` to `CreateEntityRequest`
    * From `BatchDeleteEntitiesResponse.DeleteEntityStatus` to `DeleteEntityStatus`

*****************

## Release ONDEWO NLU API 4.6.0

### Improvements

* [[OND211-2053]](https://ondewo.atlassian.net/browse/OND211-2053) - Added created at, created by, modified at and
  modified by properties to most important objects

*****************

## Release ONDEWO NLU API 4.5.0

### Bug fixes

* `SessionFilter`: Use double instead of float for earliest and latest since float is too small to hold the datetime
  timestamp as python float
* `SessionInfo`: Use double instead of float for earliest and latest since float is too small to hold the datetime
  timestamp as python float

*****************

## Release ONDEWO NLU API 4.4.0

### Improvements

* Added duration_interval_60s_rounded_min, duration_interval_60s_rounded_max and duration_interval_60s_rounded for
  Session filtering

*****************

## Release ONDEWO NLU API 4.3.0

### Improvements

* [[OND211-2089]](https://ondewo.atlassian.net/browse/OND211-2089) - Added further `SessionsReportType`:
  `SESSION_LEAST_X_INTENTS`, `SESSION_LEAST_X_ENTITY_TYPES`, `SESSION_LEAST_X_ENTITY_VALUES`, `SESSION_LEAST_X_USERS`,
  `SESSION_LEAST_X_LABELS`, `SESSION_LEAST_X_TAGS` and `TOTAL_STATISTICS`
* [[OND211-2089]](https://ondewo.atlassian.net/browse/OND211-2089) - Improved documentation for resource names

*****************

## Release ONDEWO NLU API 4.2.0

### Improvements

* [[OND211-2084]](https://ondewo.atlassian.net/browse/OND211-2084) - Added account_id, account, property_id,
  datastream_id, origin_id and identified_user_id to improve reporting and filtering capabilities. Also added
  Intent.Message.Platform platforms to SessionReviewStep.

* [[OND211-2084]](https://ondewo.atlassian.net/browse/OND211-2084) - Added various listing endpoints to filter sessions

### Bug fixes

* [[OND211-2084]](https://ondewo.atlassian.net/browse/OND211-2084) - Fixed protobuf sequence numbering in session proto
  definition

*****************

## Release ONDEWO NLU API 4.1.0

### Improvements

* [[OND211-2084]](https://ondewo.atlassian.net/browse/OND211-2084) - Added query_text_original to QueryResult and
  `SessionReviewStep` for post analysis of user input without
  any preprocessing

*****************

## Release ONDEWO NLU API 4.0.0

### New Features

* [[OND211-1979]](https://ondewo.atlassian.net/browse/OND211-1979) - Session API optimization and refactoring
    * Added labels to `QueryParameters` for `DetectIntentRequest`
    * Added name in message `SessionStep`
    * Added name in message `SessionReviewStep`
* [[OND211-2054]](https://ondewo.atlassian.net/browse/OND211-2054) - Added reporting capabilities for sessions and
  session steps incl.
  `ContextFilter` and `ComparisonOperator` for detailed sessions filtering.
    * Dedicated reports available for
        * Top X intents
        * Top X entity values
        * Top X entity types
        * Top X tags
    * Query functionality for database tables session and session_steps for even more detailed reporting options

### Improvements

* [[OND211-2062]](https://ondewo.atlassian.net/browse/OND211-2062) - Improved documentation of ONDEWO NLU API

### Breaking changes

* [[OND211-1979]](https://ondewo.atlassian.net/browse/OND211-1979) - Consistency improvement or Session and
  SessionReview messages incl.
    * Renamed message `Session.session_id` to Session.name
    * Renamed `SessionReview.session_review_id` to `SessionReview.name`
    * Renamed `RemoveSessionLabels` to `DeleteSessionLabels`

*****************

## Release ONDEWO NLU API 3.5.2

### Bug fixes

* Testing release process

*****************

## Release ONDEWO NLU API 3.5.1

### Bug fixes

* Not releasing JS client anymore

*****************

## Release ONDEWO NLU API 3.5.0

### Improvements

* [[OND211-2072]](https://ondewo.atlassian.net/browse/OND211-2072) - Added CRUD operations for labeling sessions

*****************

## Release ONDEWO NLU API 3.4.0

### Improvements

* [[OND211-2060]](https://ondewo.atlassian.net/browse/OND211-2060) - Added all intent tags to every fulltext search
  response

*****************

## Release ONDEWO NLU API 3.3.0

### Improvements

* [[OND211-2060]](https://ondewo.atlassian.net/browse/OND211-2060) - Added all tags to tag-fulltext search response

*****************

## Release ONDEWO NLU API 3.2.0

### Improvements

* [[OND211-2057]](https://ondewo.atlassian.net/browse/OND211-2057) - Added intent/entity type display name in full text
  search responses

*****************

## Release ONDEWO NLU API 3.1.0

### Improvements

* [[OND211-2056]](https://ondewo.atlassian.net/browse/OND211-2056) - Added `AgentView.AGENT_VIEW_MINIMUM`,
  `EntityTypeView.ENTITY_TYPE_VIEW_MINIMUM`, and `IntentView.INTENT_VIEW_MINIMUM` to only return the UUID of the object
  and
  the display name

*****************

## Release ONDEWO NLU API 3.0.0

### Improvements

* [[OND211-2044]](https://ondewo.atlassian.net/browse/OND211-2044) - Added Reindex Agent Endpoint
* Synchronize API Client Versions

*****************

## Release ONDEWO NLU API 2.15.0

### Improvements

* [[OND211-2044]](https://ondewo.atlassian.net/browse/OND211-2044) - Full-Text-Search Response field type changed (from
  Int to String)

*****************

## Release ONDEWO NLU API 2.14.0

### Improvements

* [[OND211-2044]](https://ondewo.atlassian.net/browse/OND211-2044) - Update to Proto Files due to changes in
  Full-Text-Search

*****************

## Release ONDEWO NLU API 2.13.0

### Improvements

* [[OND211-2044]](https://ondewo.atlassian.net/browse/OND211-2044) - Adjustment to Proto Files for Full Text Search

*****************

## Release ONDEWO NLU API 2.12.0

### Improvements

* [[OND211-2044]](https://ondewo.atlassian.net/browse/OND211-2044) - Implemented new endpoints for searching intents and
  entities by keyword/term

*****************

## Release ONDEWO NLU API 2.11.0

### Improvements

* [[OND211-2050]](https://ondewo.atlassian.net/browse/OND211-2050) - Changed metadata from Any to `OperationMetadata`
  type

*****************

## Release ONDEWO NLU API 2.10.0

### Improvements

* [[OND211-2039]](https://ondewo.atlassian.net/browse/OND211-2039) - Added pre-commit hooks and adjusted files to them

*****************

## Release ONDEWO NLU API 2.9.0

### Improvements

* [[OND211-2038]](https://ondewo.atlassian.net/browse/OND211-2038) - Add `SessionReview` Filter for "Context in", "
  Context
  out" and "Session id"
* [[OND211-2039]](https://ondewo.atlassian.net/browse/OND211-2039) - Implemented Automatic Release Process

*****************

## Release ONDEWO NLU API 2.8.0

### Improvements

* [[OND211-2011]](https://ondewo.atlassian.net/browse/OND211-2011) - Intent. List all user says from cache incl.
  enrichment based on agent parent instead of project_id

*****************

## Release ONDEWO NLU API 2.7.0

### New features

* [[OND211-1987]](https://ondewo.atlassian.net/browse/OND211-1987) - Operations. Added filters to `ListOperations`.
* [[OND211-2011]](https://ondewo.atlassian.net/browse/OND211-2011) - Intent. List all user says from cache incl.
  enrichment

### Improvements

* [[OND211-1987]](https://ondewo.atlassian.net/browse/OND211-1987) - Operations. Fixed timestamp field of operation

*****************

## Release ONDEWO NLU API 2.6.0

### New features

* [[OND211-1959]](https://ondewo.atlassian.net/browse/OND211-1959) - Intents. `GetAllTags` and `GetAllIntentTags`
  endpoints.

*

### Improvements

* [[OND211-1927]](https://ondewo.atlassian.net/browse/OND211-1927) - Intents. Remove old Intent classification
  algorithms
* [[OND211-1928]](https://ondewo.atlassian.net/browse/OND211-1928) - Entities. Remove old Entity Recognition algorithms

*****************

## Release ONDEWO NLU API 2.5.0

### New Features

* [OND211-1793] AI Services. Added endpoint to classify an intent given an agent

### Improvements

* [OND211-1940] Session Review. Allow the filtering of sessions by intent tags
* [OND211-1942] Intents. Allow the addition/deletion of multiple tags at a time
* [OND211-1942] Intents. Rename of the `IntentTagMessage` to `IntentTagRequest`

*****************

## Release ONDEWO NLU API 2.4.0

### Improvements

* [OND211-1836] Support intent tags with filtering
* [OND211-1850] Allow sorting and searching of entity values on listing
* [OND211-1850] Add `EntityTypeView` to the `EntityType` CRUD

*****************

## Release ONDEWO NLU API 2.3.1

### Improvements

* [OND211-1877] Extend the Intent Messages to include information about it being a prompt or not

*****************

## Release ONDEWO NLU API 2.3.0

### Improvements

* [OND211-1843] Output contexts added to `SessionReviewStep`

## Release ONDEWO NLU API 2.2.0

### New Features

* [OND211-1841] Add custom placeholder platforms to the Message.Platform Enum
* [OND211-1841] Add a simple CRUD to handle the custom name mapping for Placeholder platforms (per Agent)

## Release ONDEWO NLU API 2.1.0

### Improvements

* [OND211-1832] Extend Intent message definition to include the optional fields "`start_date`" and "`end_date`"
* [OND211-1785] Add `CreateSession` endpoint to the Session Servicer
* [OND211-1799] Add `ExtractEntitiesFuzzy` endpoint to the AIServices Servicer
* [OND211-1734] Add `ExportBenchmarkAgent` endpoint to the Agent Servicer
* [XXX002-38] Add endpoint to list project ids to qa.proto.
* [XXX002-35] Add endpoint to update retriever database to qa.proto.
* [XXX002-35] Add endpoint to get project config to qa.proto.
* [XXX002-35] Add endpoint to get server state to qa.proto.

*****************

## Release ONDEWO NLU API 2.0.1

### Improvements

* [OND211-380] Add GitHub action to auto-deploy documentation on Git Pages from the protobuf files

*****************

## Release ONDEWO NLU API 2.0.0

### New Features

* [OND211-1774] Implement endpoints to directly create/update/get/delete and list parameters.
* [OND211-1773] Implement endpoints to directly create/update/get/delete and list responses (=intent messages).
* [OND211-354] Establish a clear hierarchy for the merging of entities within the generalized waterfall strategy.
  Include intent parameters to entity selection criteria.
* [OND211-1767] Change the training phrase message to include a language_code field
* [OND211-1766] Make training phrases endpoints work with batches.
* [OND211-1760] Implement endpoint to directly list training phrases.
* [OND211-1744] Add initiation protocol into train agent endpoint
* [OND211-1732] Implement endpoints directly create/update/get/delete training phrases.
* [OND211-1731] Implement endpoints to directly create/update/get/delete and list entity values.
* [OND211-1724] Add compression_level field to ExportAgentRequest message.

*****************

## Release ONDEWO NLU API 1.1.0

### New Features

Created a new file ondewo/nlu/utility.proto that contains the following endpoints:

* [OND211-1693] Implement regex validation endpoints.
* [OND211-1714] Implement intent cleaning endpoints.
* [OND211-1714] Implement entity_type cleaning endpoints.
* [OND211-1714] Implement endpoints to add new training phrases to intents.

*****************

## Release ONDEWO NLU API 1.0.0

### New Features

* First public version

### Improvements

* Type definition for `Parameters` improved (`context.proto`)
* `IntentView` variants clarification
* Renaming of Q&A's score field
* Polish `README.md`

### Breaking Changes

* Type definition for `Parameters` improved (`context.proto`)

### Migration Guide

* Usages of the `ContextParameters` must be adapted to the new typed structure

*****************

*****************

## Release ONDEWO NLU API 0.2.3

### Bug fixes

* Updated licenses.

## Release ONDEWO NLU API 0.2.2

### Improvements

* Updated README.

*****************

## Release ONDEWO NLU API 0.2.1

### Bug fixes

* Updated licenses.

*****************

## Release ONDEWO NLU API 0.2.0

### New Features

* Move to GitHub!

### Improvements

* No longer closed source.

### Migration Guide

* [Replace submodule](https://stackoverflow.com/a/1260982/7756727) in the client.

*****************

## Release ONDEWO NLU API 0.1.0

### New Features

* Refactored individual project APIs into separate repos.

### Improvements

* Easier to develop independently.

### Known issues not covered in this release

* Harder to install apis under one heading-- this will be addressed at a later date.

### Migration Guide

* [Replace submodule](https://stackoverflow.com/a/1260982/7756727) in the client.

*****************

## Release ONDEWO NLU API Template

### New Features

### Improvements

### Bug fixes

### Breaking Changes

### Known issues not covered in this release

### Migration Guide
