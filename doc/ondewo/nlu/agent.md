# Protocol Documentation
<a name="top"></a>

## Table of Contents

- [ondewo/nlu/agent.proto](#ondewo/nlu/agent.proto)
    - [AddUserToProjectRequest](#ondewo.nlu.AddUserToProjectRequest)
    - [Agent](#ondewo.nlu.Agent)
    - [AgentOfUserWithOwner](#ondewo.nlu.AgentOfUserWithOwner)
    - [AgentSorting](#ondewo.nlu.AgentSorting)
    - [AgentWithOwner](#ondewo.nlu.AgentWithOwner)
    - [BuildCacheRequest](#ondewo.nlu.BuildCacheRequest)
    - [CreateAgentRequest](#ondewo.nlu.CreateAgentRequest)
    - [DeleteAgentRequest](#ondewo.nlu.DeleteAgentRequest)
    - [DeleteResourcesRequest](#ondewo.nlu.DeleteResourcesRequest)
    - [ExportAgentRequest](#ondewo.nlu.ExportAgentRequest)
    - [ExportAgentResponse](#ondewo.nlu.ExportAgentResponse)
    - [ExportResourcesRequest](#ondewo.nlu.ExportResourcesRequest)
    - [ExportResourcesResponse](#ondewo.nlu.ExportResourcesResponse)
    - [GetAgentRequest](#ondewo.nlu.GetAgentRequest)
    - [GetAgentStatisticsRequest](#ondewo.nlu.GetAgentStatisticsRequest)
    - [GetAgentStatisticsResponse](#ondewo.nlu.GetAgentStatisticsResponse)
    - [GetModelStatusesRequest](#ondewo.nlu.GetModelStatusesRequest)
    - [GetModelStatusesResponse](#ondewo.nlu.GetModelStatusesResponse)
    - [GetPlatformInfoResponse](#ondewo.nlu.GetPlatformInfoResponse)
    - [ImportAgentRequest](#ondewo.nlu.ImportAgentRequest)
    - [ListAgentsOfUserResponse](#ondewo.nlu.ListAgentsOfUserResponse)
    - [ListAgentsRequest](#ondewo.nlu.ListAgentsRequest)
    - [ListAgentsResponse](#ondewo.nlu.ListAgentsResponse)
    - [ListProjectPermissionsRequest](#ondewo.nlu.ListProjectPermissionsRequest)
    - [ListProjectPermissionsResponse](#ondewo.nlu.ListProjectPermissionsResponse)
    - [ListUsersInProjectRequest](#ondewo.nlu.ListUsersInProjectRequest)
    - [ListUsersInProjectResponse](#ondewo.nlu.ListUsersInProjectResponse)
    - [ModelStatus](#ondewo.nlu.ModelStatus)
    - [OptimizeRankingMatchRequest](#ondewo.nlu.OptimizeRankingMatchRequest)
    - [OptimizeRankingMatchResponse](#ondewo.nlu.OptimizeRankingMatchResponse)
    - [RankingMatchOptimizationConfig](#ondewo.nlu.RankingMatchOptimizationConfig)
    - [RemoveUserFromProjectRequest](#ondewo.nlu.RemoveUserFromProjectRequest)
    - [RestoreAgentRequest](#ondewo.nlu.RestoreAgentRequest)
    - [SetAgentStatusRequest](#ondewo.nlu.SetAgentStatusRequest)
    - [SetResourcesRequest](#ondewo.nlu.SetResourcesRequest)
    - [TrainAgentRequest](#ondewo.nlu.TrainAgentRequest)
    - [UpdateAgentRequest](#ondewo.nlu.UpdateAgentRequest)
    - [UserInProject](#ondewo.nlu.UserInProject)
  
    - [AgentSorting.AgentSortingField](#ondewo.nlu.AgentSorting.AgentSortingField)
    - [AgentStatus](#ondewo.nlu.AgentStatus)
    - [AgentView](#ondewo.nlu.AgentView)
    - [InitiationProtocol](#ondewo.nlu.InitiationProtocol)
    - [ModelStatus.StatusName](#ondewo.nlu.ModelStatus.StatusName)
    - [ReportFormat](#ondewo.nlu.ReportFormat)
    - [ReportType](#ondewo.nlu.ReportType)
  
    - [Agents](#ondewo.nlu.Agents)
  
- [Scalar Value Types](#scalar-value-types)



<a name="ondewo/nlu/agent.proto"></a>
<p align="right"><a href="#top">Top</a></p>

## ondewo/nlu/agent.proto



<a name="ondewo.nlu.AddUserToProjectRequest"></a>

### AddUserToProjectRequest



| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| parent | [string](#string) |  |  |
| user_id | [string](#string) |  |  |
| project_role_id | [uint32](#uint32) |  |  |






<a name="ondewo.nlu.Agent"></a>

### Agent
Project/Agent messages


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| parent | [string](#string) |  | Required. The project of this agent. Format: `projects/&lt;Project ID&gt;/agent`. Read-only in the Agent message |
| display_name | [string](#string) |  | Required. The name of this agent. |
| default_language_code | [string](#string) |  | Required. The default language of the agent as a language tag. See [Language Support](https://dialogflow.com/docs/reference/language) for a list of the currently supported language codes. This field cannot be set by the `Update` method. |
| supported_language_codes | [string](#string) | repeated | Optional. The list of all languages supported by this agent (except for the `default_language_code`). |
| time_zone | [string](#string) |  | Required. The time zone of this agent from the [time zone database](https://www.iana.org/time-zones), e.g., America/New_York, Europe/Paris. |
| nlu_platform | [string](#string) |  | Required. Specifies the format of the agent data. |
| configs | [google.protobuf.Struct](#google.protobuf.Struct) |  | Optional. Agent configuration as OndewoConfig converted to Struct format. |
| owner_id | [string](#string) |  | Optional. User id of the project owner. If empty, in CreateAgent call it is set to user id in the call metadata. Read-only in the Agent message |
| status | [AgentStatus](#ondewo.nlu.AgentStatus) |  | Optional. Status of the agent Read-only in the Agent message |
| description | [string](#string) |  |  |






<a name="ondewo.nlu.AgentOfUserWithOwner"></a>

### AgentOfUserWithOwner



| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| agent_with_owner | [AgentWithOwner](#ondewo.nlu.AgentWithOwner) |  | Required. Agent message and User message of its owner. |
| project_role | [ProjectRole](#ondewo.nlu.ProjectRole) |  | Required. The role of the user in the project in SHALLOW view (only ID and name fields are populated) |






<a name="ondewo.nlu.AgentSorting"></a>

### AgentSorting



| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| sorting_field | [AgentSorting.AgentSortingField](#ondewo.nlu.AgentSorting.AgentSortingField) |  |  |
| sorting_mode | [SortingMode](#ondewo.nlu.SortingMode) |  |  |






<a name="ondewo.nlu.AgentWithOwner"></a>

### AgentWithOwner



| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| agent | [Agent](#ondewo.nlu.Agent) |  |  |
| owner | [User](#ondewo.nlu.User) |  |  |






<a name="ondewo.nlu.BuildCacheRequest"></a>

### BuildCacheRequest
The request message for [Agents.TrainAgentBuildCache][google.cloud.dialogflow.v2.Agents.BuildCache].


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| parent | [string](#string) |  | Required. The project that the agent to build cache is associated with. Format: `projects/&lt;Project ID&gt;`. |
| branch | [string](#string) |  |  |






<a name="ondewo.nlu.CreateAgentRequest"></a>

### CreateAgentRequest



| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| agent | [Agent](#ondewo.nlu.Agent) |  |  |
| agent_view | [AgentView](#ondewo.nlu.AgentView) |  | Optional. Specify the view of the returned agent (sparse view by default) |






<a name="ondewo.nlu.DeleteAgentRequest"></a>

### DeleteAgentRequest



| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| parent | [string](#string) |  |  |






<a name="ondewo.nlu.DeleteResourcesRequest"></a>

### DeleteResourcesRequest



| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| parent | [string](#string) |  |  |
| name | [string](#string) |  |  |
| type | [string](#string) |  |  |
| language_code | [string](#string) |  |  |






<a name="ondewo.nlu.ExportAgentRequest"></a>

### ExportAgentRequest
The request message for [Agents.ExportAgent][google.cloud.dialogflow.v2.Agents.ExportAgent].


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| parent | [string](#string) |  | Required. The project that the agent to export is associated with. Format: `projects/&lt;Project ID&gt;`. |
| agent_uri | [string](#string) |  | Optional. The Google Cloud Storage URI to export the agent to. Note: The URI must start with &#34;gs://&#34;. If left unspecified, the serialized agent is returned inline. |
| compression_level | [int32](#int32) |  | Optional. The compression level of the zip file created. Valid range 1-9; the grpc-default value 0 will be mapped to 1, other values cause an error in the request validation handler. |






<a name="ondewo.nlu.ExportAgentResponse"></a>

### ExportAgentResponse
The response message for [Agents.ExportAgent][google.cloud.dialogflow.v2.Agents.ExportAgent].


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| agent_uri | [string](#string) |  | The URI to a file containing the exported agent. This field is populated only if `agent_uri` is specified in `ExportAgentRequest`. |
| agent_content | [bytes](#bytes) |  | The exported agent.

Example for how to export an agent to a zip file via a command line:

curl \ &#39;https://dialogflow.googleapis.com/v2/projects/&lt;project_name&gt;/agent:export&#39;\ -X POST \ -H &#39;Authorization: Bearer &#39;$(gcloud auth print-access-token) \ -H &#39;Accept: application/json&#39; \ -H &#39;Content-Type: application/json&#39; \ --compressed \ --data-binary &#39;{}&#39; \ | grep agentContent | sed -e &#39;s/.*&#34;agentContent&#34;: &#34;\([^&#34;]*\)&#34;.*/\1/&#39; \ | base64 --decode &gt; &lt;agent zip file&gt; |






<a name="ondewo.nlu.ExportResourcesRequest"></a>

### ExportResourcesRequest



| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| parent | [string](#string) |  |  |
| name | [string](#string) |  |  |
| type | [string](#string) |  |  |
| language_code | [string](#string) |  |  |






<a name="ondewo.nlu.ExportResourcesResponse"></a>

### ExportResourcesResponse



| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| parent | [string](#string) |  |  |
| name | [string](#string) |  |  |
| type | [string](#string) |  |  |
| language_code | [string](#string) |  |  |
| resource_file | [bytes](#bytes) |  |  |






<a name="ondewo.nlu.GetAgentRequest"></a>

### GetAgentRequest
The request message for [Agents.GetAgent][google.cloud.dialogflow.v2.Agents.GetAgent].


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| parent | [string](#string) |  | Required. The project that the agent to fetch is associated with. Format: `projects/&lt;Project ID&gt;`. |
| agent_view | [AgentView](#ondewo.nlu.AgentView) |  | Optional. Specify the view of the returned agent (full view by default) |






<a name="ondewo.nlu.GetAgentStatisticsRequest"></a>

### GetAgentStatisticsRequest



| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| parent | [string](#string) |  | Required. The project to get statistics from. Format: `projects/&lt;Project ID&gt;`. |
| format | [ReportFormat](#ondewo.nlu.ReportFormat) |  |  |
| language_code | [string](#string) |  |  |
| type | [ReportType](#ondewo.nlu.ReportType) |  |  |






<a name="ondewo.nlu.GetAgentStatisticsResponse"></a>

### GetAgentStatisticsResponse



| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| reports | [bytes](#bytes) |  | Statistic info. |
| format | [ReportFormat](#ondewo.nlu.ReportFormat) |  |  |
| type | [ReportType](#ondewo.nlu.ReportType) |  |  |






<a name="ondewo.nlu.GetModelStatusesRequest"></a>

### GetModelStatusesRequest



| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| parent | [string](#string) |  | Required. The project that the agent to fetch is associated with. Format: `projects/&lt;Project ID&gt;`. |
| cache_version | [int32](#int32) |  |  |
| language_code | [string](#string) |  |  |
| model_name | [string](#string) |  |  |






<a name="ondewo.nlu.GetModelStatusesResponse"></a>

### GetModelStatusesResponse



| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| model_statuses | [ModelStatus](#ondewo.nlu.ModelStatus) | repeated | Required. The project that the agent to fetch is associated with. Format: `projects/&lt;Project ID&gt;`. |






<a name="ondewo.nlu.GetPlatformInfoResponse"></a>

### GetPlatformInfoResponse



| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| version | [string](#string) |  |  |
| commit_hash | [string](#string) |  |  |






<a name="ondewo.nlu.ImportAgentRequest"></a>

### ImportAgentRequest
The request message for [Agents.ImportAgent][google.cloud.dialogflow.v2.Agents.ImportAgent].


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| parent | [string](#string) |  | Required. The project that the agent to import is associated with. Format: `projects/&lt;Project ID&gt;`. |
| agent_uri | [string](#string) |  | The URI to a Google Cloud Storage file containing the agent to import. Note: The URI must start with &#34;gs://&#34;. |
| agent_content | [bytes](#bytes) |  | The agent to import.

Example for how to import an agent via the command line:

curl \ &#39;https://dialogflow.googleapis.com/v2/projects/&lt;project_name&gt;/agent:import\ -X POST \ -H &#39;Authorization: Bearer &#39;$(gcloud auth print-access-token) \ -H &#39;Accept: application/json&#39; \ -H &#39;Content-Type: application/json&#39; \ --compressed \ --data-binary &#34;{ &#39;agentContent&#39;: &#39;$(cat &lt;agent zip file&gt; | base64 -w 0)&#39; }&#34; |






<a name="ondewo.nlu.ListAgentsOfUserResponse"></a>

### ListAgentsOfUserResponse



| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| agents_of_user_with_owners | [AgentOfUserWithOwner](#ondewo.nlu.AgentOfUserWithOwner) | repeated | The list of agents with their owners of the given user. There will be a maximum number of items returned based on the page_token field in the request. |
| next_page_token | [string](#string) |  | Token to retrieve the next page of results, or empty if there are no more results in the list. |






<a name="ondewo.nlu.ListAgentsRequest"></a>

### ListAgentsRequest



| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| agent_view | [AgentView](#ondewo.nlu.AgentView) |  | Optional. Specify the view of the returned agent (full view by default) |
| page_token | [string](#string) |  | Optional. The next_page_token value returned from a previous list request. |
| sort_by_field | [AgentSorting](#ondewo.nlu.AgentSorting) |  | Optional. Defines the sorting of the list. Default, no sorting. |






<a name="ondewo.nlu.ListAgentsResponse"></a>

### ListAgentsResponse



| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| agents_with_owners | [AgentWithOwner](#ondewo.nlu.AgentWithOwner) | repeated | The list of agent and their owners. There will be a maximum number of items returned based on the page_token field in the request. |
| next_page_token | [string](#string) |  | Token to retrieve the next page of results, or empty if there are no more results in the list. |






<a name="ondewo.nlu.ListProjectPermissionsRequest"></a>

### ListProjectPermissionsRequest
Project permissions


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| page_token | [string](#string) |  | Optional. The next_page_token value returned from a previous list request. |






<a name="ondewo.nlu.ListProjectPermissionsResponse"></a>

### ListProjectPermissionsResponse



| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| permissions | [string](#string) | repeated | The list of project permissions. There will be a maximum number of items returned based on the page_token field in the request. |
| next_page_token | [string](#string) |  | Token to retrieve the next page of results, or empty if there are no more results in the list. |






<a name="ondewo.nlu.ListUsersInProjectRequest"></a>

### ListUsersInProjectRequest



| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| parent | [string](#string) |  |  |
| page_token | [string](#string) |  | Optional. The next_page_token value returned from a previous list request. |






<a name="ondewo.nlu.ListUsersInProjectResponse"></a>

### ListUsersInProjectResponse



| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| users | [UserInProject](#ondewo.nlu.UserInProject) | repeated | The list of users in a project. There will be a maximum number of items returned based on the page_token field in the request. |
| next_page_token | [string](#string) |  | Token to retrieve the next page of results, or empty if there are no more results in the list. |






<a name="ondewo.nlu.ModelStatus"></a>

### ModelStatus



| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| cache_version | [int32](#int32) |  | Required. The project that the agent to fetch is associated with. Format: `projects/&lt;Project ID&gt;`. |
| language_code | [string](#string) |  |  |
| model_name | [string](#string) |  |  |
| status_set_time | [google.protobuf.Timestamp](#google.protobuf.Timestamp) |  |  |
| config | [string](#string) |  |  |
| status | [ModelStatus.StatusName](#ondewo.nlu.ModelStatus.StatusName) |  |  |






<a name="ondewo.nlu.OptimizeRankingMatchRequest"></a>

### OptimizeRankingMatchRequest



| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| parent | [string](#string) |  |  |
| language_codes | [string](#string) | repeated |  |
| optimization_configs | [RankingMatchOptimizationConfig](#ondewo.nlu.RankingMatchOptimizationConfig) | repeated | optimization config will contain all possible optimizations, with which we will come up in the future |
| in_place | [bool](#bool) |  | if in_place is true then the config of the agent on the server will be updated, if False then config with optimized thresholds will be returned but not updated on the server |






<a name="ondewo.nlu.OptimizeRankingMatchResponse"></a>

### OptimizeRankingMatchResponse



| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| optimization_info | [google.protobuf.Struct](#google.protobuf.Struct) |  |  |
| optimized_ondewo_config | [google.protobuf.Struct](#google.protobuf.Struct) |  |  |






<a name="ondewo.nlu.RankingMatchOptimizationConfig"></a>

### RankingMatchOptimizationConfig



| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| language_code | [string](#string) |  |  |
| n_splits | [int32](#int32) |  |  |
| random_seed | [int32](#int32) |  |  |
| initial_thresholds | [google.protobuf.Struct](#google.protobuf.Struct) |  | initial thresholds are optional, if not given will be taken from the current config example {&#39;OndewoIntentSimilarityMatch&#39;: 0.59, &#39;OndewoIntentNamedSimilarityMatch&#39;: 0.39} |






<a name="ondewo.nlu.RemoveUserFromProjectRequest"></a>

### RemoveUserFromProjectRequest



| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| parent | [string](#string) |  |  |
| user_id | [string](#string) |  |  |






<a name="ondewo.nlu.RestoreAgentRequest"></a>

### RestoreAgentRequest
The request message for [Agents.RestoreAgent][google.cloud.dialogflow.v2.Agents.RestoreAgent].


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| parent | [string](#string) |  | Required. The project that the agent to restore is associated with. Format: `projects/&lt;Project ID&gt;`. |
| agent_uri | [string](#string) |  | The URI to a Google Cloud Storage file containing the agent to restore. Note: The URI must start with &#34;gs://&#34;. |
| agent_content | [bytes](#bytes) |  | The agent to restore.

Example for how to restore an agent via the command line:

curl \ &#39;https://dialogflow.googleapis.com/v2/projects/&lt;project_name&gt;/agent:restore\ -X POST \ -H &#39;Authorization: Bearer &#39;$(gcloud auth print-access-token) \ -H &#39;Accept: application/json&#39; \ -H &#39;Content-Type: application/json&#39; \ --compressed \ --data-binary &#34;{ &#39;agentContent&#39;: &#39;$(cat &lt;agent zip file&gt; | base64 -w 0)&#39; }&#34; \ |






<a name="ondewo.nlu.SetAgentStatusRequest"></a>

### SetAgentStatusRequest



| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| parent | [string](#string) |  | Required. The project of which to set the status. Format: `projects/&lt;Project ID&gt;/agent`. |
| status | [AgentStatus](#ondewo.nlu.AgentStatus) |  | Required. Status of the agent |
| agent_view | [AgentView](#ondewo.nlu.AgentView) |  | Optional. View of the returned agent |






<a name="ondewo.nlu.SetResourcesRequest"></a>

### SetResourcesRequest



| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| parent | [string](#string) |  |  |
| name | [string](#string) |  |  |
| type | [string](#string) |  |  |
| resource_file | [bytes](#bytes) |  |  |
| language_code | [string](#string) |  |  |






<a name="ondewo.nlu.TrainAgentRequest"></a>

### TrainAgentRequest
The request message for [Agents.TrainAgent][google.cloud.dialogflow.v2.Agents.TrainAgent].


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| parent | [string](#string) |  | Required. The project that the agent to train is associated with. Format: `projects/&lt;Project ID&gt;`. |
| branch | [string](#string) |  |  |
| initiation_protocol | [InitiationProtocol](#ondewo.nlu.InitiationProtocol) |  |  |






<a name="ondewo.nlu.UpdateAgentRequest"></a>

### UpdateAgentRequest



| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| agent | [Agent](#ondewo.nlu.Agent) |  |  |
| agent_view | [AgentView](#ondewo.nlu.AgentView) |  | Optional. Specify the view of the returned agent (sparse view by default) |
| update_mask | [google.protobuf.FieldMask](#google.protobuf.FieldMask) |  | Optional. The mask to control which fields get updated. |






<a name="ondewo.nlu.UserInProject"></a>

### UserInProject



| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| parent | [string](#string) |  | ID of the project |
| user | [User](#ondewo.nlu.User) |  | User object |
| role_id | [uint32](#uint32) |  | ID of the project role of the user |





 


<a name="ondewo.nlu.AgentSorting.AgentSortingField"></a>

### AgentSorting.AgentSortingField


| Name | Number | Description |
| ---- | ------ | ----------- |
| NO_AGENT_SORTING | 0 |  |
| SORT_AGENT_BY_NAME | 1 |  |
| SORT_AGENT_BY_CREATION_DATE | 2 |  |
| SORT_AGENT_BY_LAST_UPDATED | 3 |  |
| SORT_AGENT_BY_OWNER_NAME | 4 |  |



<a name="ondewo.nlu.AgentStatus"></a>

### AgentStatus


| Name | Number | Description |
| ---- | ------ | ----------- |
| ACTIVE | 0 | If project is active, all its endpoints are active |
| INACTIVE | 1 | If project is inactive: * members of the project do not see the project anymore except users with project role &#34;PROJECT_ADMIN&#34; and users with server role &#34;SERVER_ADMIN&#34; * nothing is allowed (no endpoint) on the project except &#34;SetAgentStatus&#34; by PROJECT_ADMIN or SERVER_ADMIN |



<a name="ondewo.nlu.AgentView"></a>

### AgentView


| Name | Number | Description |
| ---- | ------ | ----------- |
| AGENT_VIEW_UNSPECIFIED | 0 | Unspecified agent view: the view is defined by the call: - CreateAgent: AGENT_VIEW_SHALLOW - UpdateAgent: AGENT_VIEW_SHALLOW - GetAgent: AGENT_VIEW_FULL - ListAgents: AGENT_VIEW_SHALLOW |
| AGENT_VIEW_FULL | 1 | Full agent view: populate all the fields of the Agent message including configs. |
| AGENT_VIEW_SHALLOW | 2 | Shallow agent view: populates all the fields except configs. |



<a name="ondewo.nlu.InitiationProtocol"></a>

### InitiationProtocol
Defines when to initiate newly created agent when training started

| Name | Number | Description |
| ---- | ------ | ----------- |
| AS_SOON_AS_POSSIBLE | 0 | after cache successfully built and after each model trained the agent will be updated |
| WHEN_TRAINED | 1 | after cache successfully built and all the active models successfully trained |
| NEVER | 2 | do not initiate |



<a name="ondewo.nlu.ModelStatus.StatusName"></a>

### ModelStatus.StatusName


| Name | Number | Description |
| ---- | ------ | ----------- |
| UNKNOWN | 0 |  |
| INITIALIZING | 1 |  |
| INITIALIZED | 2 |  |
| LOADING_DATA | 3 |  |
| TRAINING | 4 |  |
| TESTING | 5 |  |
| TRAINED | 6 |  |



<a name="ondewo.nlu.ReportFormat"></a>

### ReportFormat


| Name | Number | Description |
| ---- | ------ | ----------- |
| CSV | 0 |  |
| HTML | 1 |  |
| JSON | 2 |  |



<a name="ondewo.nlu.ReportType"></a>

### ReportType


| Name | Number | Description |
| ---- | ------ | ----------- |
| ALL | 0 | will return all reports as files of specified format compressed into a single zipfile |
| INTENT_PER_LANGUAGE | 1 | statistics of the language specific part of the intent database |
| ENTITY_PER_LANGUAGE | 2 | statistics of the language specific part of the entity database |
| ENTITY_COLLISION | 3 | report on collision of the entity synonyms |
| INTENT_GENERAL | 4 | report of statistics of the general (relevant to all supported languages) part of intent database |


 

 


<a name="ondewo.nlu.Agents"></a>

### Agents
Agents are best described as Natural Language Understanding (NLU) modules
that transform user requests into actionable data. You can include agents
in your app, product, or service to determine user intent and respond to the
user in a natural way.

After you create an agent, you can add [Intents][google.cloud.dialogflow.v2.Intents], [Contexts][google.cloud.dialogflow.v2.Contexts],
[Entity Types][google.cloud.dialogflow.v2.EntityTypes], [Webhooks][google.cloud.dialogflow.v2.WebhookRequest], and so on to
manage the flow of a conversation and match user input to predefined intents
and actions.

You can create an agent using both Dialogflow Standard Edition and
Dialogflow Enterprise Edition. For details, see
[Dialogflow Editions](/dialogflow-enterprise/docs/editions).

You can save your agent for backup or versioning by exporting the agent by
using the [ExportAgent][google.cloud.dialogflow.v2.Agents.ExportAgent] method. You can import a saved
agent by using the [ImportAgent][google.cloud.dialogflow.v2.Agents.ImportAgent] method.

Dialogflow provides several
[prebuilt agents](https://dialogflow.com/docs/prebuilt-agents) for common
conversation scenarios such as determining a date and time, converting
currency, and so on.

For more information about agents, see the
[Dialogflow documentation](https://dialogflow.com/docs/agents).

| Method Name | Request Type | Response Type | Description |
| ----------- | ------------ | ------------- | ------------|
| CreateAgent | [CreateAgentRequest](#ondewo.nlu.CreateAgentRequest) | [Agent](#ondewo.nlu.Agent) | Creates the specified agent. |
| UpdateAgent | [UpdateAgentRequest](#ondewo.nlu.UpdateAgentRequest) | [Agent](#ondewo.nlu.Agent) | Updates the specified agent. |
| GetAgent | [GetAgentRequest](#ondewo.nlu.GetAgentRequest) | [Agent](#ondewo.nlu.Agent) | Retrieves the specified agent. |
| DeleteAgent | [DeleteAgentRequest](#ondewo.nlu.DeleteAgentRequest) | [.google.protobuf.Empty](#google.protobuf.Empty) | Deletes the specified agent. |
| DeleteAllAgents | [.google.protobuf.Empty](#google.protobuf.Empty) | [.google.protobuf.Empty](#google.protobuf.Empty) | Deletes all agents in the server (for development purposes only). |
| ListAgents | [ListAgentsRequest](#ondewo.nlu.ListAgentsRequest) | [ListAgentsResponse](#ondewo.nlu.ListAgentsResponse) | Lists agents in the server associated to the current user |
| ListAgentsOfUser | [ListAgentsRequest](#ondewo.nlu.ListAgentsRequest) | [ListAgentsOfUserResponse](#ondewo.nlu.ListAgentsOfUserResponse) | Lists agents in the server associated to the given user |
| ListAllAgents | [ListAgentsRequest](#ondewo.nlu.ListAgentsRequest) | [ListAgentsResponse](#ondewo.nlu.ListAgentsResponse) | Lists all agents in the server |
| AddUserToProject | [AddUserToProjectRequest](#ondewo.nlu.AddUserToProjectRequest) | [.google.protobuf.Empty](#google.protobuf.Empty) | Adds a user with specified id to the project (agent) |
| RemoveUserFromProject | [RemoveUserFromProjectRequest](#ondewo.nlu.RemoveUserFromProjectRequest) | [.google.protobuf.Empty](#google.protobuf.Empty) | Removes a user with specified id from the project (agent) |
| ListUsersInProject | [ListUsersInProjectRequest](#ondewo.nlu.ListUsersInProjectRequest) | [ListUsersInProjectResponse](#ondewo.nlu.ListUsersInProjectResponse) |  |
| GetPlatformInfo | [.google.protobuf.Empty](#google.protobuf.Empty) | [GetPlatformInfoResponse](#ondewo.nlu.GetPlatformInfoResponse) |  |
| ListProjectPermissions | [ListProjectPermissionsRequest](#ondewo.nlu.ListProjectPermissionsRequest) | [ListProjectPermissionsResponse](#ondewo.nlu.ListProjectPermissionsResponse) |  |
| TrainAgent | [TrainAgentRequest](#ondewo.nlu.TrainAgentRequest) | [.google.longrunning.Operation](#google.longrunning.Operation) | Trains the specified agent.

Operation &lt;response: [google.protobuf.Empty][google.protobuf.Empty], metadata: [google.protobuf.Struct][google.protobuf.Struct]&gt; |
| BuildCache | [BuildCacheRequest](#ondewo.nlu.BuildCacheRequest) | [.google.longrunning.Operation](#google.longrunning.Operation) | Builds cache for the specified agent.

Operation &lt;response: [google.protobuf.Empty][google.protobuf.Empty], metadata: [google.protobuf.Struct][google.protobuf.Struct]&gt; |
| ExportAgent | [ExportAgentRequest](#ondewo.nlu.ExportAgentRequest) | [.google.longrunning.Operation](#google.longrunning.Operation) | Exports the specified agent to a ZIP file.

Operation &lt;response: [ExportAgentResponse][google.cloud.dialogflow.v2.ExportAgentResponse], metadata: [google.protobuf.Struct][google.protobuf.Struct]&gt; |
| ImportAgent | [ImportAgentRequest](#ondewo.nlu.ImportAgentRequest) | [.google.longrunning.Operation](#google.longrunning.Operation) | Imports the specified agent from a ZIP file.

Uploads new intents and entity types without deleting the existing ones. Intents and entity types with the same name are replaced with the new versions from ImportAgentRequest.

Operation &lt;response: [google.protobuf.Empty][google.protobuf.Empty], metadata: [google.protobuf.Struct][google.protobuf.Struct]&gt; |
| OptimizeRankingMatch | [OptimizeRankingMatchRequest](#ondewo.nlu.OptimizeRankingMatchRequest) | [.google.longrunning.Operation](#google.longrunning.Operation) |  |
| RestoreAgent | [RestoreAgentRequest](#ondewo.nlu.RestoreAgentRequest) | [.google.longrunning.Operation](#google.longrunning.Operation) | Restores the specified agent from a ZIP file.

Replaces the current agent version with a new one. All the intents and entity types in the older version are deleted.

Operation &lt;response: [google.protobuf.Empty][google.protobuf.Empty], metadata: [google.protobuf.Struct][google.protobuf.Struct]&gt; |
| GetAgentStatistics | [GetAgentStatisticsRequest](#ondewo.nlu.GetAgentStatisticsRequest) | [GetAgentStatisticsResponse](#ondewo.nlu.GetAgentStatisticsResponse) |  |
| SetAgentStatus | [SetAgentStatusRequest](#ondewo.nlu.SetAgentStatusRequest) | [Agent](#ondewo.nlu.Agent) |  |
| SetResources | [SetResourcesRequest](#ondewo.nlu.SetResourcesRequest) | [.google.protobuf.Empty](#google.protobuf.Empty) |  |
| DeleteResources | [DeleteResourcesRequest](#ondewo.nlu.DeleteResourcesRequest) | [.google.protobuf.Empty](#google.protobuf.Empty) |  |
| ExportResources | [ExportResourcesRequest](#ondewo.nlu.ExportResourcesRequest) | [ExportResourcesResponse](#ondewo.nlu.ExportResourcesResponse) |  |
| GetModelStatuses | [GetModelStatusesRequest](#ondewo.nlu.GetModelStatusesRequest) | [GetModelStatusesResponse](#ondewo.nlu.GetModelStatusesResponse) | Get statuses of models related to project |

 



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

