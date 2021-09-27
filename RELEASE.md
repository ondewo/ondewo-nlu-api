# Release History
*****************
## Release ONDEWO NLU APIS 2.0.1

### Improvements
 * Add endpoints to list project ids, get project config and get server state to qa.proto.
 * [OND211-380] Add GitHub action to auto-deploy documentation on Git Pages from the protobuf files

*****************

## Release ONDEWO NLU APIS 2.0.0

### New Features
 * [OND211-1799] Implement endpoints for fuzzy named entity extraction.
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
