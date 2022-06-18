# Release History
*****************

## Release ONDEWO NLU APIS 2.7.0

### New features
* [[OND211-1987]](https://ondewo.atlassian.net/browse/OND211-1987) - Operations. Added filters to ListOperations.
* [[OND211-2011]](https://ondewo.atlassian.net/browse/OND211-2011) - Intent. List all user says from cache incl. enrichtment 

### Improvements
* [[OND211-1987]](https://ondewo.atlassian.net/browse/OND211-1987) - Operations. Fixed timestamp field of operation

*****************

## Release ONDEWO NLU APIS 2.6.0

### New features
* [[OND211-1959]](https://ondewo.atlassian.net/browse/OND211-1959) - Intents. GetAllTags and GetAllIntentTags endpoints.
*
### Improvements
* [[OND211-1927]](https://ondewo.atlassian.net/browse/OND211-1927) - Intents. Remove old Intent classification algorithms
* [[OND211-1928]](https://ondewo.atlassian.net/browse/OND211-1928) - Entities. Remove old Entity Recognition algorithms

*****************

## Release ONDEWO NLU APIS 2.5.0

### New Features
* [OND211-1793] AI Services. Added endpoint to classify an intent given an agent

### Improvements
* [OND211-1940] Session Review. Allow the filtering of sessions by intent tags
* [OND211-1942] Intents. Allow the addition/deletion of multiple tags at a time
* [OND211-1942] Intents. Rename of the IntentTagMessage to IntentTagRequest

*****************

## Release ONDEWO NLU APIS 2.4.0

### Improvements

 * [OND211-1836] Support intent tags with filtering
 * [OND211-1850] Allow sorting and searching of entity values on listing
 * [OND211-1850] Add Entity Type View to the Entity Type CRUD

*****************

## Release ONDEWO NLU APIS 2.3.1

### Improvements

 * [OND211-1877] Extend the Intent Messages to include information about it being a prompt or not

*****************
## Release ONDEWO NLU APIS 2.3.0

### Improvements

 * [OND211-1843] Output contexts added to SessionReviewStep

## Release ONDEWO NLU APIS 2.2.0

### New Features

 * [OND211-1841] Add custom placeholder platforms to the Message.Platform Enum
 * [OND211-1841] Add a simple CRUD to handle the custom name mapping for Placeholder platforms (per Agent)

## Release ONDEWO NLU APIS 2.1.0

### Improvements
 * [OND211-1832] Extend Intent message definition to include the optional fields "start_date" and "end_date"
 * [OND211-1785] Add CreateSession endpoint to the Session Servicer
 * [OND211-1799] Add ExtractEntitiesFuzzy endpoint to the AIServices Servicer
 * [OND211-1734] Add ExportBenchmarkAgent endpoint to the Agent Servicer
 * [XXX002-38] Add endpoint to list project ids to qa.proto.
 * [XXX002-35] Add endpoint to update retriever database to qa.proto.
 * [XXX002-35] Add endpoint to get project config to qa.proto.
 * [XXX002-35] Add endpoint to get server state to qa.proto.

*****************
## Release ONDEWO NLU APIS 2.0.1

### Improvements
 * [OND211-380] Add GitHub action to auto-deploy documentation on Git Pages from the protobuf files

*****************

## Release ONDEWO NLU APIS 2.0.0

### New Features
 * [OND211-1774] Implement endpoints to directly create/update/get/delete and list parameters.
 * [OND211-1773] Implement endpoints to directly create/update/get/delete and list responses (=intent messages).
 * [OND211-354] Establish a clear hierarchy for the merging
  of entities within the generalized waterfall strategy. Include intent parameters to entity selection criteria.

 * [OND211-1767] Change the training phrase message to include a language_code field
 * [OND211-1766] Make training phrases endpoints work with batches.
 * [OND211-1760] Implement endpoint to directly list training phrases.
 * [OND211-1744] Add initiation protocol into train agent endpoint
 * [OND211-1732] Implement endpoints directly create/update/get/delete training phrases.
 * [OND211-1731] Implement endpoints to directly create/update/get/delete and list entity values.
 * [OND211-1724] Add compression_level field to ExportAgentRequest message.

*****************

## Release ONDEWO NLU APIS 1.1.0

### New Features
 Created a new file ondewo/nlu/utility.proto that contains the following endpoints:
 * [OND211-1693] Implement regex validation endpoints.
 * [OND211-1714] Implement intent cleaning endpoints.
 * [OND211-1714] Implement entity_type cleaning endpoints.
 * [OND211-1714] Implement endpoints to add new training phrases to intents.

*****************

## Release ONDEWO NLU APIS 1.0.0

### New Features
 * First public version

### Improvements
 * Type definition for Parameters improved (`context.proto`)
 * Intent View variants clarification
 * Renaming of Q&A's score field
 * Polish `README.md`

### Breaking Changes
 * Type definition for Parameters improved (`context.proto`)

### Migration Guide
 * Usages of the Context Parameters must be adapted to the new typed structure

*****************

*****************

## Release ONDEWO NLU APIS 0.2.3

### Bug fixes.
* Updated licenses.

## Release ONDEWO NLU APIS 0.2.2

### Improvements
* Updated README.

*****************
## Release ONDEWO NLU APIS 0.2.1

### Bug fixes
* Updated licenses.

*****************
## Release ONDEWO NLU APIS 0.2.0

### New Features
* Move to GitHub!

### Improvements
* No longer closed source.

### Migration Guide
* [Replace submodule](https://stackoverflow.com/a/1260982/7756727) in the client.

*****************

## Release ONDEWO NLU APIS 0.1.0

### New Features
* Refactored individual project APIs into seperate repos.

### Improvements
* Easier to develop independently.

### Known issues not covered in this release
* Harder to install apis under one heading-- this will be addressed at a later date.

### Migration Guide
* [Replace submodule](https://stackoverflow.com/a/1260982/7756727) in the client.

*****************

## Release ONDEWO NLU APIS Template

### New Features

### Improvements

### Bug fixes

### Breaking Changes

### Known issues not covered in this release

### Migration Guide

*****************
