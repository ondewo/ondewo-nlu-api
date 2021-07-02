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
  
- [ondewo/nlu/common.proto](#ondewo/nlu/common.proto)
    - [StatResponse](#ondewo.nlu.StatResponse)
  
    - [SortingMode](#ondewo.nlu.SortingMode)
  
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
  
- [ondewo/nlu/intent.proto](#ondewo/nlu/intent.proto)
    - [BatchCreateParametersRequest](#ondewo.nlu.BatchCreateParametersRequest)
    - [BatchCreateParametersRequest.CreateParameterRequest](#ondewo.nlu.BatchCreateParametersRequest.CreateParameterRequest)
    - [BatchCreateResponseMessagesRequest](#ondewo.nlu.BatchCreateResponseMessagesRequest)
    - [BatchCreateResponseMessagesRequest.CreateResponseMessageRequest](#ondewo.nlu.BatchCreateResponseMessagesRequest.CreateResponseMessageRequest)
    - [BatchCreateTrainingPhrasesRequest](#ondewo.nlu.BatchCreateTrainingPhrasesRequest)
    - [BatchCreateTrainingPhrasesRequest.CreateTrainingPhraseRequest](#ondewo.nlu.BatchCreateTrainingPhrasesRequest.CreateTrainingPhraseRequest)
    - [BatchDeleteIntentsRequest](#ondewo.nlu.BatchDeleteIntentsRequest)
    - [BatchDeleteParametersRequest](#ondewo.nlu.BatchDeleteParametersRequest)
    - [BatchDeleteParametersResponse](#ondewo.nlu.BatchDeleteParametersResponse)
    - [BatchDeleteParametersResponse.DeleteParameterStatus](#ondewo.nlu.BatchDeleteParametersResponse.DeleteParameterStatus)
    - [BatchDeleteResponseMessagesRequest](#ondewo.nlu.BatchDeleteResponseMessagesRequest)
    - [BatchDeleteResponseMessagesResponse](#ondewo.nlu.BatchDeleteResponseMessagesResponse)
    - [BatchDeleteResponseMessagesResponse.DeleteResponseMessageStatus](#ondewo.nlu.BatchDeleteResponseMessagesResponse.DeleteResponseMessageStatus)
    - [BatchDeleteTrainingPhrasesRequest](#ondewo.nlu.BatchDeleteTrainingPhrasesRequest)
    - [BatchDeleteTrainingPhrasesResponse](#ondewo.nlu.BatchDeleteTrainingPhrasesResponse)
    - [BatchDeleteTrainingPhrasesResponse.DeleteTrainingPhraseStatus](#ondewo.nlu.BatchDeleteTrainingPhrasesResponse.DeleteTrainingPhraseStatus)
    - [BatchGetParametersRequest](#ondewo.nlu.BatchGetParametersRequest)
    - [BatchGetResponseMessagesRequest](#ondewo.nlu.BatchGetResponseMessagesRequest)
    - [BatchGetTrainingPhrasesRequest](#ondewo.nlu.BatchGetTrainingPhrasesRequest)
    - [BatchParametersStatusResponse](#ondewo.nlu.BatchParametersStatusResponse)
    - [BatchParametersStatusResponse.ParameterStatus](#ondewo.nlu.BatchParametersStatusResponse.ParameterStatus)
    - [BatchResponseMessagesStatusResponse](#ondewo.nlu.BatchResponseMessagesStatusResponse)
    - [BatchResponseMessagesStatusResponse.ResponseMessageStatus](#ondewo.nlu.BatchResponseMessagesStatusResponse.ResponseMessageStatus)
    - [BatchTrainingPhrasesStatusResponse](#ondewo.nlu.BatchTrainingPhrasesStatusResponse)
    - [BatchUpdateIntentsRequest](#ondewo.nlu.BatchUpdateIntentsRequest)
    - [BatchUpdateIntentsResponse](#ondewo.nlu.BatchUpdateIntentsResponse)
    - [BatchUpdateParametersRequest](#ondewo.nlu.BatchUpdateParametersRequest)
    - [BatchUpdateResponseMessagesRequest](#ondewo.nlu.BatchUpdateResponseMessagesRequest)
    - [BatchUpdateTrainingPhrasesRequest](#ondewo.nlu.BatchUpdateTrainingPhrasesRequest)
    - [CreateIntentRequest](#ondewo.nlu.CreateIntentRequest)
    - [DeleteIntentRequest](#ondewo.nlu.DeleteIntentRequest)
    - [GetIntentRequest](#ondewo.nlu.GetIntentRequest)
    - [Intent](#ondewo.nlu.Intent)
    - [Intent.FollowupIntentInfo](#ondewo.nlu.Intent.FollowupIntentInfo)
    - [Intent.Message](#ondewo.nlu.Intent.Message)
    - [Intent.Message.Audio](#ondewo.nlu.Intent.Message.Audio)
    - [Intent.Message.BasicCard](#ondewo.nlu.Intent.Message.BasicCard)
    - [Intent.Message.BasicCard.Button](#ondewo.nlu.Intent.Message.BasicCard.Button)
    - [Intent.Message.BasicCard.Button.OpenUriAction](#ondewo.nlu.Intent.Message.BasicCard.Button.OpenUriAction)
    - [Intent.Message.Card](#ondewo.nlu.Intent.Message.Card)
    - [Intent.Message.Card.Button](#ondewo.nlu.Intent.Message.Card.Button)
    - [Intent.Message.CarouselSelect](#ondewo.nlu.Intent.Message.CarouselSelect)
    - [Intent.Message.CarouselSelect.Item](#ondewo.nlu.Intent.Message.CarouselSelect.Item)
    - [Intent.Message.HTMLText](#ondewo.nlu.Intent.Message.HTMLText)
    - [Intent.Message.Image](#ondewo.nlu.Intent.Message.Image)
    - [Intent.Message.LinkOutSuggestion](#ondewo.nlu.Intent.Message.LinkOutSuggestion)
    - [Intent.Message.ListSelect](#ondewo.nlu.Intent.Message.ListSelect)
    - [Intent.Message.ListSelect.Item](#ondewo.nlu.Intent.Message.ListSelect.Item)
    - [Intent.Message.QuickReplies](#ondewo.nlu.Intent.Message.QuickReplies)
    - [Intent.Message.SelectItemInfo](#ondewo.nlu.Intent.Message.SelectItemInfo)
    - [Intent.Message.SimpleResponse](#ondewo.nlu.Intent.Message.SimpleResponse)
    - [Intent.Message.SimpleResponses](#ondewo.nlu.Intent.Message.SimpleResponses)
    - [Intent.Message.Suggestion](#ondewo.nlu.Intent.Message.Suggestion)
    - [Intent.Message.Suggestions](#ondewo.nlu.Intent.Message.Suggestions)
    - [Intent.Message.Text](#ondewo.nlu.Intent.Message.Text)
    - [Intent.Message.Video](#ondewo.nlu.Intent.Message.Video)
    - [Intent.Parameter](#ondewo.nlu.Intent.Parameter)
    - [Intent.Parameter.Prompt](#ondewo.nlu.Intent.Parameter.Prompt)
    - [Intent.TrainingPhrase](#ondewo.nlu.Intent.TrainingPhrase)
    - [Intent.TrainingPhrase.Entity](#ondewo.nlu.Intent.TrainingPhrase.Entity)
    - [IntentBatch](#ondewo.nlu.IntentBatch)
    - [IntentSorting](#ondewo.nlu.IntentSorting)
    - [ListIntentsRequest](#ondewo.nlu.ListIntentsRequest)
    - [ListIntentsResponse](#ondewo.nlu.ListIntentsResponse)
    - [ListParametersRequest](#ondewo.nlu.ListParametersRequest)
    - [ListParametersResponse](#ondewo.nlu.ListParametersResponse)
    - [ListResponseMessagesRequest](#ondewo.nlu.ListResponseMessagesRequest)
    - [ListResponseMessagesResponse](#ondewo.nlu.ListResponseMessagesResponse)
    - [ListTrainingPhrasesRequest](#ondewo.nlu.ListTrainingPhrasesRequest)
    - [ListTrainingPhrasesResponse](#ondewo.nlu.ListTrainingPhrasesResponse)
    - [TrainingPhraseStatus](#ondewo.nlu.TrainingPhraseStatus)
    - [UpdateIntentRequest](#ondewo.nlu.UpdateIntentRequest)
  
    - [Intent.IntentStatus](#ondewo.nlu.Intent.IntentStatus)
    - [Intent.Message.Platform](#ondewo.nlu.Intent.Message.Platform)
    - [Intent.TrainingPhrase.Type](#ondewo.nlu.Intent.TrainingPhrase.Type)
    - [Intent.WebhookState](#ondewo.nlu.Intent.WebhookState)
    - [IntentCategory](#ondewo.nlu.IntentCategory)
    - [IntentSorting.IntentSortingField](#ondewo.nlu.IntentSorting.IntentSortingField)
    - [IntentView](#ondewo.nlu.IntentView)
  
    - [Intents](#ondewo.nlu.Intents)
  
- [ondewo/nlu/operation_metadata.proto](#ondewo/nlu/operation_metadata.proto)
    - [OperationMetadata](#ondewo.nlu.OperationMetadata)
  
    - [OperationMetadata.OperationType](#ondewo.nlu.OperationMetadata.OperationType)
    - [OperationMetadata.Status](#ondewo.nlu.OperationMetadata.Status)
  
- [ondewo/nlu/project_role.proto](#ondewo/nlu/project_role.proto)
    - [CreateProjectRoleRequest](#ondewo.nlu.CreateProjectRoleRequest)
    - [DeleteProjectRoleRequest](#ondewo.nlu.DeleteProjectRoleRequest)
    - [GetProjectRoleRequest](#ondewo.nlu.GetProjectRoleRequest)
    - [ListProjectRolesRequest](#ondewo.nlu.ListProjectRolesRequest)
    - [ListProjectRolesResponse](#ondewo.nlu.ListProjectRolesResponse)
    - [ProjectRole](#ondewo.nlu.ProjectRole)
    - [UpdateProjectRoleRequest](#ondewo.nlu.UpdateProjectRoleRequest)
  
    - [DefaultProjectRole](#ondewo.nlu.DefaultProjectRole)
    - [ProjectRoleView](#ondewo.nlu.ProjectRoleView)
  
    - [ProjectRoles](#ondewo.nlu.ProjectRoles)
  
- [ondewo/nlu/project_statistics.proto](#ondewo/nlu/project_statistics.proto)
    - [GetEntityTypeCountRequest](#ondewo.nlu.GetEntityTypeCountRequest)
    - [GetIntentCountRequest](#ondewo.nlu.GetIntentCountRequest)
    - [GetProjectElementStatRequest](#ondewo.nlu.GetProjectElementStatRequest)
    - [GetProjectStatRequest](#ondewo.nlu.GetProjectStatRequest)
  
    - [ProjectStatistics](#ondewo.nlu.ProjectStatistics)
  
- [ondewo/nlu/server_statistics.proto](#ondewo/nlu/server_statistics.proto)
    - [GetUserProjectCountRequest](#ondewo.nlu.GetUserProjectCountRequest)
  
    - [ServerStatistics](#ondewo.nlu.ServerStatistics)
  
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
  
- [ondewo/nlu/user.proto](#ondewo/nlu/user.proto)
    - [CreateServerRoleRequest](#ondewo.nlu.CreateServerRoleRequest)
    - [CreateUserRequest](#ondewo.nlu.CreateUserRequest)
    - [DeleteServerRoleRequest](#ondewo.nlu.DeleteServerRoleRequest)
    - [DeleteUserRequest](#ondewo.nlu.DeleteUserRequest)
    - [GetServerRoleRequest](#ondewo.nlu.GetServerRoleRequest)
    - [GetUserRequest](#ondewo.nlu.GetUserRequest)
    - [ListServerPermissionsRequest](#ondewo.nlu.ListServerPermissionsRequest)
    - [ListServerPermissionsResponse](#ondewo.nlu.ListServerPermissionsResponse)
    - [ListServerRolesRequest](#ondewo.nlu.ListServerRolesRequest)
    - [ListServerRolesResponse](#ondewo.nlu.ListServerRolesResponse)
    - [ListUserInfosResponse](#ondewo.nlu.ListUserInfosResponse)
    - [ListUsersRequest](#ondewo.nlu.ListUsersRequest)
    - [ListUsersResponse](#ondewo.nlu.ListUsersResponse)
    - [LoginRequest](#ondewo.nlu.LoginRequest)
    - [LoginResponse](#ondewo.nlu.LoginResponse)
    - [ServerRole](#ondewo.nlu.ServerRole)
    - [UpdateServerRoleRequest](#ondewo.nlu.UpdateServerRoleRequest)
    - [UpdateUserRequest](#ondewo.nlu.UpdateUserRequest)
    - [User](#ondewo.nlu.User)
    - [UserInfo](#ondewo.nlu.UserInfo)
    - [UserInfo.ProjectRolesEntry](#ondewo.nlu.UserInfo.ProjectRolesEntry)
  
    - [DefaultServerRole](#ondewo.nlu.DefaultServerRole)
  
    - [Users](#ondewo.nlu.Users)
  
- [ondewo/nlu/utility.proto](#ondewo/nlu/utility.proto)
    - [AddTrainingPhrasesFromCSVRequest](#ondewo.nlu.AddTrainingPhrasesFromCSVRequest)
    - [AddTrainingPhrasesRequest](#ondewo.nlu.AddTrainingPhrasesRequest)
    - [AddTrainingPhrasesRequest.TrainingPhraseForIntent](#ondewo.nlu.AddTrainingPhrasesRequest.TrainingPhraseForIntent)
    - [AddTrainingPhrasesResponse](#ondewo.nlu.AddTrainingPhrasesResponse)
    - [CleanAllEntityTypesRequest](#ondewo.nlu.CleanAllEntityTypesRequest)
    - [CleanAllEntityTypesResponse](#ondewo.nlu.CleanAllEntityTypesResponse)
    - [CleanAllIntentsRequest](#ondewo.nlu.CleanAllIntentsRequest)
    - [CleanAllIntentsResponse](#ondewo.nlu.CleanAllIntentsResponse)
    - [CleanEntityTypeRequest](#ondewo.nlu.CleanEntityTypeRequest)
    - [CleanEntityTypeResponse](#ondewo.nlu.CleanEntityTypeResponse)
    - [CleanIntentRequest](#ondewo.nlu.CleanIntentRequest)
    - [CleanIntentResponse](#ondewo.nlu.CleanIntentResponse)
    - [EntityTypeUpdate](#ondewo.nlu.EntityTypeUpdate)
    - [EntityTypeUpdate.EntityUpdate](#ondewo.nlu.EntityTypeUpdate.EntityUpdate)
    - [IntentUpdate](#ondewo.nlu.IntentUpdate)
    - [IntentUpdate.TrainingPhraseUpdate](#ondewo.nlu.IntentUpdate.TrainingPhraseUpdate)
    - [StringUpdate](#ondewo.nlu.StringUpdate)
    - [TrainingPhraseCleanerOptions](#ondewo.nlu.TrainingPhraseCleanerOptions)
    - [ValidateEmbeddedRegexRequest](#ondewo.nlu.ValidateEmbeddedRegexRequest)
    - [ValidateEmbeddedRegexResponse](#ondewo.nlu.ValidateEmbeddedRegexResponse)
    - [ValidateRegexRequest](#ondewo.nlu.ValidateRegexRequest)
    - [ValidateRegexResponse](#ondewo.nlu.ValidateRegexResponse)
  
    - [ReannotateEntitiesOptions](#ondewo.nlu.ReannotateEntitiesOptions)
  
    - [Utilities](#ondewo.nlu.Utilities)
  
- [ondewo/nlu/webhook.proto](#ondewo/nlu/webhook.proto)
    - [OriginalDetectIntentRequest](#ondewo.nlu.OriginalDetectIntentRequest)
    - [PingRequest](#ondewo.nlu.PingRequest)
    - [PingResponse](#ondewo.nlu.PingResponse)
    - [WebhookRequest](#ondewo.nlu.WebhookRequest)
    - [WebhookResponse](#ondewo.nlu.WebhookResponse)
  
    - [Webhook](#ondewo.nlu.Webhook)
  
- [ondewo/qa/qa.proto](#ondewo/qa/qa.proto)
    - [GetAnswerRequest](#ondewo.qa.GetAnswerRequest)
    - [GetAnswerResponse](#ondewo.qa.GetAnswerResponse)
    - [RunScraperResponse](#ondewo.qa.RunScraperResponse)
    - [RunTrainingResponse](#ondewo.qa.RunTrainingResponse)
  
    - [QA](#ondewo.qa.QA)
  
- [Scalar Value Types](#scalar-value-types)



<a name="ondewo/nlu/agent.proto"></a>
<p align="right"><a href="#top">Top</a></p>

## ondewo/nlu/agent.proto
File-level comment for <code>ondewo/nlu/agent.proto</code>.

This file contains a single service <a href="#ondewo.nlu.Agents">Agents</a>.

The most important messages is <a href="#ondewo.nlu.Agent">Agent</a> and its most complicated field is <code>configs</code>.


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
| parent | [string](#string) |  | Required. The project of this agent. Format: `projects/<Project ID>/agent`. Read-only in the Agent message |
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
| parent | [string](#string) |  | Required. The project that the agent to build cache is associated with. Format: `projects/<Project ID>`. |
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
| parent | [string](#string) |  | Required. The project that the agent to export is associated with. Format: `projects/<Project ID>`. |
| agent_uri | [string](#string) |  | Optional. The Google Cloud Storage URI to export the agent to. Note: The URI must start with "gs://". If left unspecified, the serialized agent is returned inline. |
| compression_level | [int32](#int32) |  | Optional. The compression level of the zip file created. Valid range 1-9; the grpc-default value 0 will be mapped to 1, other values cause an error in the request validation handler. |






<a name="ondewo.nlu.ExportAgentResponse"></a>

### ExportAgentResponse
The response message for [Agents.ExportAgent][google.cloud.dialogflow.v2.Agents.ExportAgent].


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| agent_uri | [string](#string) |  | The URI to a file containing the exported agent. This field is populated only if `agent_uri` is specified in `ExportAgentRequest`. |
| agent_content | [bytes](#bytes) |  | The exported agent.

Example for how to export an agent to a zip file via a command line:

curl \ 'https://dialogflow.googleapis.com/v2/projects/<project_name>/agent:export'\ -X POST \ -H 'Authorization: Bearer '$(gcloud auth print-access-token) \ -H 'Accept: application/json' \ -H 'Content-Type: application/json' \ --compressed \ --data-binary '{}' \ | grep agentContent | sed -e 's/.*"agentContent": "\([^"]*\)".*/\1/' \ | base64 --decode > <agent zip file> |






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
| parent | [string](#string) |  | Required. The project that the agent to fetch is associated with. Format: `projects/<Project ID>`. |
| agent_view | [AgentView](#ondewo.nlu.AgentView) |  | Optional. Specify the view of the returned agent (full view by default) |






<a name="ondewo.nlu.GetAgentStatisticsRequest"></a>

### GetAgentStatisticsRequest



| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| parent | [string](#string) |  | Required. The project to get statistics from. Format: `projects/<Project ID>`. |
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
| parent | [string](#string) |  | Required. The project that the agent to fetch is associated with. Format: `projects/<Project ID>`. |
| cache_version | [int32](#int32) |  |  |
| language_code | [string](#string) |  |  |
| model_name | [string](#string) |  |  |






<a name="ondewo.nlu.GetModelStatusesResponse"></a>

### GetModelStatusesResponse



| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| model_statuses | [ModelStatus](#ondewo.nlu.ModelStatus) | repeated | Required. The project that the agent to fetch is associated with. Format: `projects/<Project ID>`. |






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
| parent | [string](#string) |  | Required. The project that the agent to import is associated with. Format: `projects/<Project ID>`. |
| agent_uri | [string](#string) |  | The URI to a Google Cloud Storage file containing the agent to import. Note: The URI must start with "gs://". |
| agent_content | [bytes](#bytes) |  | The agent to import.

Example for how to import an agent via the command line:

curl \ 'https://dialogflow.googleapis.com/v2/projects/<project_name>/agent:import\ -X POST \ -H 'Authorization: Bearer '$(gcloud auth print-access-token) \ -H 'Accept: application/json' \ -H 'Content-Type: application/json' \ --compressed \ --data-binary "{ 'agentContent': '$(cat <agent zip file> | base64 -w 0)' }" |






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
| cache_version | [int32](#int32) |  | Required. The project that the agent to fetch is associated with. Format: `projects/<Project ID>`. |
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
| initial_thresholds | [google.protobuf.Struct](#google.protobuf.Struct) |  | initial thresholds are optional, if not given will be taken from the current config example {'OndewoIntentSimilarityMatch': 0.59, 'OndewoIntentNamedSimilarityMatch': 0.39} |






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
| parent | [string](#string) |  | Required. The project that the agent to restore is associated with. Format: `projects/<Project ID>`. |
| agent_uri | [string](#string) |  | The URI to a Google Cloud Storage file containing the agent to restore. Note: The URI must start with "gs://". |
| agent_content | [bytes](#bytes) |  | The agent to restore.

Example for how to restore an agent via the command line:

curl \ 'https://dialogflow.googleapis.com/v2/projects/<project_name>/agent:restore\ -X POST \ -H 'Authorization: Bearer '$(gcloud auth print-access-token) \ -H 'Accept: application/json' \ -H 'Content-Type: application/json' \ --compressed \ --data-binary "{ 'agentContent': '$(cat <agent zip file> | base64 -w 0)' }" \ |






<a name="ondewo.nlu.SetAgentStatusRequest"></a>

### SetAgentStatusRequest



| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| parent | [string](#string) |  | Required. The project of which to set the status. Format: `projects/<Project ID>/agent`. |
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
| parent | [string](#string) |  | Required. The project that the agent to train is associated with. Format: `projects/<Project ID>`. |
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





 <!-- end messages -->


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
| INACTIVE | 1 | If project is inactive: * members of the project do not see the project anymore except users with project role "PROJECT_ADMIN" and users with server role "SERVER_ADMIN" * nothing is allowed (no endpoint) on the project except "SetAgentStatus" by PROJECT_ADMIN or SERVER_ADMIN |



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


 <!-- end enums -->

 <!-- end HasExtensions -->


<a name="ondewo.nlu.Agents"></a>

### Agents
Agents are best described as Natural Language Understanding (NLU) modules that transform user requests into actionable data. You can include agents in your app, product, or service to determine user intent and respond to the user in a natural way.

After you create an agent, you can add [Intents][google.cloud.dialogflow.v2.Intents], [Contexts][google.cloud.dialogflow.v2.Contexts], [Entity Types][google.cloud.dialogflow.v2.EntityTypes], [Webhooks][google.cloud.dialogflow.v2.WebhookRequest], and so on to manage the flow of a conversation and match user input to predefined intents and actions.

You can create an agent using both Dialogflow Standard Edition and Dialogflow Enterprise Edition. For details, see [Dialogflow Editions](/dialogflow-enterprise/docs/editions).

You can save your agent for backup or versioning by exporting the agent by using the [ExportAgent][google.cloud.dialogflow.v2.Agents.ExportAgent] method. You can import a saved agent by using the [ImportAgent][google.cloud.dialogflow.v2.Agents.ImportAgent] method.

Dialogflow provides several [prebuilt agents](https://dialogflow.com/docs/prebuilt-agents) for common conversation scenarios such as determining a date and time, converting currency, and so on.

For more information about agents, see the [Dialogflow documentation](https://dialogflow.com/docs/agents).

| Method Name | Request Type | Response Type | Description |
| ----------- | ------------ | ------------- | ------------|
| CreateAgent | [CreateAgentRequest](#ondewo.nlu.CreateAgentRequest) | [Agent](#ondewo.nlu.Agent) | Creates the specified agent.

<p>Examples:</p>

<pre> grpcurl -plaintext -H 'cai-token: aimp' -d '{ "agent": { "display_name": "Pizza Bot", "default_language_code": "en", "supported_language_codes": ["en"], "time_zone": "Europe/Vienna", "nlu_platform": "ONDEWO" } }' localhost:50055 ondewo.nlu.Agents.CreateAgent </pre>

<samp>{ "parent": "projects/76aaf4f3-a1f6-4fda-b4b3-351c64e65bc4/agent", "display_name": "Pizza Bot", "default_language_code": "en", "supported_language_codes": [ "en" ], "time_zone": "Europe/Vienna", "nlu_platform": "ONDEWO", "owner_id": "5aac51b8-668f-49dd-913f-cc683e56af34" } </samp> |
| UpdateAgent | [UpdateAgentRequest](#ondewo.nlu.UpdateAgentRequest) | [Agent](#ondewo.nlu.Agent) | Updates the specified agent.

<p>Examples:</p>

<pre> grpcurl -plaintext -H 'cai-token: aimp' -d '{ "agent": { "parent": "projects/76aaf4f3-a1f6-4fda-b4b3-351c64e65bc4/agent", "display_name": "Pizza Bot 2", "supported_language_codes": ["en", "de"] }, "update_mask": { "paths": [ "agent.display_name", "agent.supported_language_codes" ] } }' localhost:50055 ondewo.nlu.Agents.UpdateAgent </pre>

<samp>{ "parent": "projects/76aaf4f3-a1f6-4fda-b4b3-351c64e65bc4/agent", "display_name": "Pizza Bot 2", "default_language_code": "en", "supported_language_codes": [ "en", "de" ], "time_zone": "Europe/Vienna", "nlu_platform": "ONDEWO", "owner_id": "5aac51b8-668f-49dd-913f-cc683e56af34" } </samp> |
| GetAgent | [GetAgentRequest](#ondewo.nlu.GetAgentRequest) | [Agent](#ondewo.nlu.Agent) | Retrieves the specified agent.

<p>Examples:</p>

<pre> grpcurl -plaintext -H 'cai-token: aimp' -d '{ "parent": "projects/76aaf4f3-a1f6-4fda-b4b3-351c64e65bc4/agent" }' localhost:50055 ondewo.nlu.Agents.GetAgent </pre> <samp>{ "parent": "projects/76aaf4f3-a1f6-4fda-b4b3-351c64e65bc4/agent", "display_name": "Pizza Bot 2", "default_language_code": "en", "supported_language_codes": [ "en", "de" ], "time_zone": "Europe/Vienna", "nlu_platform": "ONDEWO", "configs": {...}, "owner_id": "5aac51b8-668f-49dd-913f-cc683e56af34" } </samp> |
| DeleteAgent | [DeleteAgentRequest](#ondewo.nlu.DeleteAgentRequest) | [.google.protobuf.Empty](#google.protobuf.Empty) | Deletes the specified agent.

<p>Examples:</p>

<pre> grpcurl -plaintext -H 'cai-token: aimp' -d '{ "parent": "projects/76aaf4f3-a1f6-4fda-b4b3-351c64e65bc4/agent" }' localhost:50055 ondewo.nlu.Agents.DeleteAgent </pre> <samp>{}</samp> |
| DeleteAllAgents | [.google.protobuf.Empty](#google.protobuf.Empty) | [.google.protobuf.Empty](#google.protobuf.Empty) | Deletes all agents in the server (for development purposes only).

<p>Examples:</p>

<pre> grpcurl -plaintext -H 'cai-token: aimp' localhost:50055 ondewo.nlu.Agents.DeleteAllAgents </pre> <samp>{}</samp> |
| ListAgents | [ListAgentsRequest](#ondewo.nlu.ListAgentsRequest) | [ListAgentsResponse](#ondewo.nlu.ListAgentsResponse) | Lists agents in the server associated to the current user

<p>Examples:</p>

<pre> grpcurl -plaintext -H 'cai-token: aimp' localhost:50055 ondewo.nlu.Agents.ListAgents </pre> <samp>{ "agents_with_owners": [ { "agent": { "parent": "projects/76aaf4f3-a1f6-4fda-b4b3-351c64e65bc4/agent", "display_name": "Pizza Bot 2", "owner_id": "5aac51b8-668f-49dd-913f-cc683e56af34" }, "owner": { "user_id": "5aac51b8-668f-49dd-913f-cc683e56af34", "display_name": "admin", "server_role_id": 3, "user_email": "admin@ondewo.com" } } ], "next_page_token": "current_index-1" } </samp> |
| ListAgentsOfUser | [ListAgentsRequest](#ondewo.nlu.ListAgentsRequest) | [ListAgentsOfUserResponse](#ondewo.nlu.ListAgentsOfUserResponse) | Lists agents in the server associated to the given user

<p>Examples:</p>

<pre> grpcurl -plaintext -H 'cai-token: aimp' localhost:50055 ondewo.nlu.Agents.ListAgentsOfUser </pre> <samp>{ "agents_of_user_with_owners": [ { "agent_with_owner": { "agent": { "parent": "projects/76aaf4f3-a1f6-4fda-b4b3-351c64e65bc4/agent", "display_name": "Pizza Bot 2", "owner_id": "5aac51b8-668f-49dd-913f-cc683e56af34" }, "owner": { "user_id": "5aac51b8-668f-49dd-913f-cc683e56af34", "display_name": "admin", "server_role_id": 3, "user_email": "admin@ondewo.com" } }, "project_role": { "role_id": 4, "name": "ADMIN" } } ], "next_page_token": "current_index-1" } </samp> |
| ListAllAgents | [ListAgentsRequest](#ondewo.nlu.ListAgentsRequest) | [ListAgentsResponse](#ondewo.nlu.ListAgentsResponse) | Lists all agents in the server

<p>Examples:</p>

<pre> grpcurl -plaintext -H 'cai-token: aimp' localhost:50055 ondewo.nlu.Agents.ListAllAgents </pre> <samp>{ "agents_with_owners": [ { "agent": { "parent": "projects/76aaf4f3-a1f6-4fda-b4b3-351c64e65bc4/agent", "display_name": "Pizza Bot 2", "owner_id": "5aac51b8-668f-49dd-913f-cc683e56af34" }, "owner": { "user_id": "5aac51b8-668f-49dd-913f-cc683e56af34", "display_name": "admin", "server_role_id": 3, "user_email": "admin@ondewo.com" } } ], "next_page_token": "current_index-1" } </samp> |
| AddUserToProject | [AddUserToProjectRequest](#ondewo.nlu.AddUserToProjectRequest) | [.google.protobuf.Empty](#google.protobuf.Empty) | Adds a user with specified id to the project (agent) |
| RemoveUserFromProject | [RemoveUserFromProjectRequest](#ondewo.nlu.RemoveUserFromProjectRequest) | [.google.protobuf.Empty](#google.protobuf.Empty) | Removes a user with specified id from the project (agent) |
| ListUsersInProject | [ListUsersInProjectRequest](#ondewo.nlu.ListUsersInProjectRequest) | [ListUsersInProjectResponse](#ondewo.nlu.ListUsersInProjectResponse) |  |
| GetPlatformInfo | [.google.protobuf.Empty](#google.protobuf.Empty) | [GetPlatformInfoResponse](#ondewo.nlu.GetPlatformInfoResponse) |  |
| ListProjectPermissions | [ListProjectPermissionsRequest](#ondewo.nlu.ListProjectPermissionsRequest) | [ListProjectPermissionsResponse](#ondewo.nlu.ListProjectPermissionsResponse) |  |
| TrainAgent | [TrainAgentRequest](#ondewo.nlu.TrainAgentRequest) | [.google.longrunning.Operation](#google.longrunning.Operation) | Trains the specified agent.

Operation <response: [google.protobuf.Empty][google.protobuf.Empty], metadata: [google.protobuf.Struct][google.protobuf.Struct]> |
| BuildCache | [BuildCacheRequest](#ondewo.nlu.BuildCacheRequest) | [.google.longrunning.Operation](#google.longrunning.Operation) | Builds cache for the specified agent.

Operation <response: [google.protobuf.Empty][google.protobuf.Empty], metadata: [google.protobuf.Struct][google.protobuf.Struct]> |
| ExportAgent | [ExportAgentRequest](#ondewo.nlu.ExportAgentRequest) | [.google.longrunning.Operation](#google.longrunning.Operation) | Exports the specified agent to a ZIP file.

Operation <response: [ExportAgentResponse][google.cloud.dialogflow.v2.ExportAgentResponse], metadata: [google.protobuf.Struct][google.protobuf.Struct]> |
| ImportAgent | [ImportAgentRequest](#ondewo.nlu.ImportAgentRequest) | [.google.longrunning.Operation](#google.longrunning.Operation) | Imports the specified agent from a ZIP file.

Uploads new intents and entity types without deleting the existing ones. Intents and entity types with the same name are replaced with the new versions from ImportAgentRequest.

Operation <response: [google.protobuf.Empty][google.protobuf.Empty], metadata: [google.protobuf.Struct][google.protobuf.Struct]> |
| OptimizeRankingMatch | [OptimizeRankingMatchRequest](#ondewo.nlu.OptimizeRankingMatchRequest) | [.google.longrunning.Operation](#google.longrunning.Operation) |  |
| RestoreAgent | [RestoreAgentRequest](#ondewo.nlu.RestoreAgentRequest) | [.google.longrunning.Operation](#google.longrunning.Operation) | Restores the specified agent from a ZIP file.

Replaces the current agent version with a new one. All the intents and entity types in the older version are deleted.

Operation <response: [google.protobuf.Empty][google.protobuf.Empty], metadata: [google.protobuf.Struct][google.protobuf.Struct]> |
| GetAgentStatistics | [GetAgentStatisticsRequest](#ondewo.nlu.GetAgentStatisticsRequest) | [GetAgentStatisticsResponse](#ondewo.nlu.GetAgentStatisticsResponse) |  |
| SetAgentStatus | [SetAgentStatusRequest](#ondewo.nlu.SetAgentStatusRequest) | [Agent](#ondewo.nlu.Agent) |  |
| SetResources | [SetResourcesRequest](#ondewo.nlu.SetResourcesRequest) | [.google.protobuf.Empty](#google.protobuf.Empty) |  |
| DeleteResources | [DeleteResourcesRequest](#ondewo.nlu.DeleteResourcesRequest) | [.google.protobuf.Empty](#google.protobuf.Empty) |  |
| ExportResources | [ExportResourcesRequest](#ondewo.nlu.ExportResourcesRequest) | [ExportResourcesResponse](#ondewo.nlu.ExportResourcesResponse) |  |
| GetModelStatuses | [GetModelStatusesRequest](#ondewo.nlu.GetModelStatusesRequest) | [GetModelStatusesResponse](#ondewo.nlu.GetModelStatusesResponse) | Get statuses of models related to project |

 <!-- end services -->



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
| parent | [string](#string) |  | the parent of the request Format: `projects/<Project ID>`. |
| text | [string](#string) |  | the input text |
| language_code | [string](#string) |  | the input language |
| intent_name | [string](#string) |  | Optional. The name of the relevant intent. Used to establish preference hierarchy for entities that correspond to intent parameters Format: `projects/<Project ID>/agent/intents/<Intent ID>` |






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





 <!-- end messages -->

 <!-- end enums -->

 <!-- end HasExtensions -->


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

 <!-- end services -->



<a name="ondewo/nlu/common.proto"></a>
<p align="right"><a href="#top">Top</a></p>

## ondewo/nlu/common.proto



<a name="ondewo.nlu.StatResponse"></a>

### StatResponse



| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| value | [uint32](#uint32) |  | Response wrapper for the "Get<Stat>" endpoints |





 <!-- end messages -->


<a name="ondewo.nlu.SortingMode"></a>

### SortingMode


| Name | Number | Description |
| ---- | ------ | ----------- |
| ASCENDING | 0 |  |
| DESCENDING | 1 |  |


 <!-- end enums -->

 <!-- end HasExtensions -->

 <!-- end services -->



<a name="ondewo/nlu/context.proto"></a>
<p align="right"><a href="#top">Top</a></p>

## ondewo/nlu/context.proto



<a name="ondewo.nlu.Context"></a>

### Context
Represents a context.


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| name | [string](#string) |  | Required. The display name of the context (must be unique per session).

Note: we are deviating from the dialogflow format `projects/<Project ID>/agent/sessions/<Session ID>/contexts/<Context ID>`.

- DetectIntent only returns - the short display name in the "name" field in query_result.output_contexts - only expects the short display name in the "name" field in query_parameters.contexts - Also inside the persisted session object only the short display name is used. - SessionStep.contexts only contains the short display name - SessionReviewStep.contexts only contains the short display name |
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
| parent | [string](#string) |  | Required. The session to create a context for. Format: `projects/<Project ID>/agent/sessions/<Session ID>`. |
| context | [Context](#ondewo.nlu.Context) |  | Required. The context to create. |






<a name="ondewo.nlu.DeleteAllContextsRequest"></a>

### DeleteAllContextsRequest
The request message for [Contexts.DeleteAllContexts][google.cloud.dialogflow.v2.Contexts.DeleteAllContexts].


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| parent | [string](#string) |  | Required. The name of the session to delete all contexts from. Format: `projects/<Project ID>/agent/sessions/<Session ID>`. |






<a name="ondewo.nlu.DeleteContextRequest"></a>

### DeleteContextRequest
The request message for [Contexts.DeleteContext][google.cloud.dialogflow.v2.Contexts.DeleteContext].


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| name | [string](#string) |  | Required. The name of the context to delete. Format: `projects/<Project ID>/agent/sessions/<Session ID>/contexts/<Context ID>`. |






<a name="ondewo.nlu.GetContextRequest"></a>

### GetContextRequest
The request message for [Contexts.GetContext][google.cloud.dialogflow.v2.Contexts.GetContext].


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| name | [string](#string) |  | Required. The name of the context. Format: `projects/<Project ID>/agent/sessions/<Session ID>/contexts/<Context ID>`. |






<a name="ondewo.nlu.ListContextsRequest"></a>

### ListContextsRequest
The request message for [Contexts.ListContexts][google.cloud.dialogflow.v2.Contexts.ListContexts].


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| parent | [string](#string) |  | Required. The session to list all contexts from. Format: `projects/<Project ID>/agent/sessions/<Session ID>`. |
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





 <!-- end messages -->

 <!-- end enums -->

 <!-- end HasExtensions -->


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

 <!-- end services -->



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
| entity_type_name | [string](#string) |  | Required. Name of the entity type in which to create the entity value. Format: `projects/<Project ID>/agent/entityTypes/<Entity Type ID>`. |
| entity | [EntityType.Entity](#ondewo.nlu.EntityType.Entity) |  | The entity value to create |






<a name="ondewo.nlu.BatchDeleteEntitiesRequest"></a>

### BatchDeleteEntitiesRequest



| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| names | [string](#string) | repeated | The unique identifiers of the entities. Format: `projects/<Project ID>/agent/entityTypes/<Entity Type ID>/entities/<Entity ID>`. |






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
| parent | [string](#string) |  | Required. The name of the agent to delete all entities types for. Format: `projects/<Project ID>/agent`. |
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
| names | [string](#string) | repeated | The unique identifiers of the entities. Format: `projects/<Project ID>/agent/entityTypes/<Entity Type ID>/entities/<Entity ID>`. |






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
| parent | [string](#string) |  | Required. The name of the agent to update or create entity types in. Format: `projects/<Project ID>/agent`. |
| entity_type_batch_uri | [string](#string) |  | The URI to a Google Cloud Storage file containing entity types to update or create. The file format can either be a serialized proto (of EntityBatch type) or a JSON object. Note: The URI must start with "gs://". |
| entity_type_batch_inline | [EntityTypeBatch](#ondewo.nlu.EntityTypeBatch) |  | The collection of entity type to update or create. |
| language_code | [string](#string) |  | Optional. The language of entity synonyms defined in `entity_types`. If not specified, the agent's default language is used. [More than a dozen languages](https://dialogflow.com/docs/reference/language) are supported. Note: languages must be enabled in the agent, before they can be used. |
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
| parent | [string](#string) |  | Required. The agent to create a entity type for. Format: `projects/<Project ID>/agent`. |
| entity_type | [EntityType](#ondewo.nlu.EntityType) |  | Required. The entity type to create. |
| language_code | [string](#string) |  | Optional. The language of entity synonyms defined in `entity_type`. If not specified, the agent's default language is used. [More than a dozen languages](https://dialogflow.com/docs/reference/language) are supported. Note: languages must be enabled in the agent, before they can be used. |






<a name="ondewo.nlu.DeleteEntityTypeRequest"></a>

### DeleteEntityTypeRequest
The request message for [EntityTypes.DeleteEntityType][google.cloud.dialogflow.v2.EntityTypes.DeleteEntityType].


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| name | [string](#string) |  | Required. The name of the entity type to delete. Format: `projects/<Project ID>/agent/entityTypes/<EntityType ID>`. |






<a name="ondewo.nlu.EntityType"></a>

### EntityType
Represents an entity type.
Entity types serve as a tool for extracting parameter values from natural
language queries.


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| name | [string](#string) |  | Required for all methods except `create` (`create` populates the name automatically. The unique identifier of the entity type. Format: `projects/<Project ID>/agent/entityTypes/<Entity Type ID>`. |
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
| name | [string](#string) |  | The unique identifier of the entity. Format: `projects/<Project ID>/agent/entityTypes/<Entity Type ID>/entities/<Entity ID>`. |
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
| name | [string](#string) |  | Required. The name of the entity type. Format: `projects/<Project ID>/agent/entityTypes/<EntityType ID>`. |
| language_code | [string](#string) |  | Optional. The language to retrieve entity synonyms for. If not specified, the agent's default language is used. [More than a dozen languages](https://dialogflow.com/docs/reference/language) are supported. Note: languages must be enabled in the agent, before they can be used. |
| page_token | [string](#string) |  |  |






<a name="ondewo.nlu.ListEntitiesRequest"></a>

### ListEntitiesRequest



| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| entity_type_name | [string](#string) |  | The unique identifier of the entity type. Format: `projects/<Project ID>/agent/entityTypes/<Entity Type ID> |
| language_code | [string](#string) |  | Optional. The language to list training phrases, parameters and rich messages for. If not specified, the agent's default language is used. |
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
| parent | [string](#string) |  | Required. The agent to list all entity types from. Format: `projects/<Project ID>/agent`. |
| language_code | [string](#string) |  | Optional. The language to list entity synonyms for. If not specified, the agent's default language is used. [More than a dozen languages](https://dialogflow.com/docs/reference/language) are supported. Note: languages must be enabled in the agent, before they can be used. |
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
| entity_type | [EntityType](#ondewo.nlu.EntityType) |  | Required. The entity type to update. Format: `projects/<Project ID>/agent/entityTypes/<EntityType ID>`. |
| language_code | [string](#string) |  | Optional. The language of entity synonyms defined in `entity_type`. If not specified, the agent's default language is used. [More than a dozen languages](https://dialogflow.com/docs/reference/language) are supported. Note: languages must be enabled in the agent, before they can be used. |
| update_mask | [google.protobuf.FieldMask](#google.protobuf.FieldMask) |  | Optional. The mask to control which fields get updated. |





 <!-- end messages -->


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
Represents the category of entity types to filter by in the "List Entity Types" request

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


 <!-- end enums -->

 <!-- end HasExtensions -->


<a name="ondewo.nlu.EntityTypes"></a>

### EntityTypes
Entities are extracted from user input and represent parameters that are
meaningful to your application. For example, a date range, a proper name
such as a geographic location or landmark, and so on. Entities represent
actionable data for your application.

When you define an entity, you can also include synonyms that all map to
that entity. For example, "soft drink", "soda", "pop", and so on.

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

Operation <response: [BatchUpdateEntityTypesResponse][google.cloud.dialogflow.v2.BatchUpdateEntityTypesResponse], metadata: [google.protobuf.Struct][google.protobuf.Struct]> |
| BatchDeleteEntityTypes | [BatchDeleteEntityTypesRequest](#ondewo.nlu.BatchDeleteEntityTypesRequest) | [.google.longrunning.Operation](#google.longrunning.Operation) | Deletes entity types in the specified agent.

Operation <response: [google.protobuf.Empty][google.protobuf.Empty], metadata: [google.protobuf.Struct][google.protobuf.Struct]> |
| BatchCreateEntities | [BatchCreateEntitiesRequest](#ondewo.nlu.BatchCreateEntitiesRequest) | [BatchEntitiesResponse](#ondewo.nlu.BatchEntitiesResponse) | Creates an entity value in an entity type. |
| BatchUpdateEntities | [BatchUpdateEntitiesRequest](#ondewo.nlu.BatchUpdateEntitiesRequest) | [BatchEntitiesResponse](#ondewo.nlu.BatchEntitiesResponse) | Updates a specific entity value. |
| BatchGetEntities | [BatchGetEntitiesRequest](#ondewo.nlu.BatchGetEntitiesRequest) | [BatchEntitiesResponse](#ondewo.nlu.BatchEntitiesResponse) | Gets a specific entity value. |
| BatchDeleteEntities | [BatchDeleteEntitiesRequest](#ondewo.nlu.BatchDeleteEntitiesRequest) | [BatchDeleteEntitiesResponse](#ondewo.nlu.BatchDeleteEntitiesResponse) | Deletes the specified entity value. |
| ListEntities | [ListEntitiesRequest](#ondewo.nlu.ListEntitiesRequest) | [ListEntitiesResponse](#ondewo.nlu.ListEntitiesResponse) | List entities of an entity type |

 <!-- end services -->



<a name="ondewo/nlu/intent.proto"></a>
<p align="right"><a href="#top">Top</a></p>

## ondewo/nlu/intent.proto



<a name="ondewo.nlu.BatchCreateParametersRequest"></a>

### BatchCreateParametersRequest



| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| parameter_requests | [BatchCreateParametersRequest.CreateParameterRequest](#ondewo.nlu.BatchCreateParametersRequest.CreateParameterRequest) | repeated |  |






<a name="ondewo.nlu.BatchCreateParametersRequest.CreateParameterRequest"></a>

### BatchCreateParametersRequest.CreateParameterRequest



| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| intent_name | [string](#string) |  | Required. The name of the intent for which to create a training phrase for. |
| parameter | [Intent.Parameter](#ondewo.nlu.Intent.Parameter) |  | Required. The response message. |






<a name="ondewo.nlu.BatchCreateResponseMessagesRequest"></a>

### BatchCreateResponseMessagesRequest



| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| response_message_requests | [BatchCreateResponseMessagesRequest.CreateResponseMessageRequest](#ondewo.nlu.BatchCreateResponseMessagesRequest.CreateResponseMessageRequest) | repeated |  |






<a name="ondewo.nlu.BatchCreateResponseMessagesRequest.CreateResponseMessageRequest"></a>

### BatchCreateResponseMessagesRequest.CreateResponseMessageRequest



| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| intent_name | [string](#string) |  | Required. The name of the intent for which to create a response message for. |
| response_message | [Intent.Message](#ondewo.nlu.Intent.Message) |  | Required. The response message. |






<a name="ondewo.nlu.BatchCreateTrainingPhrasesRequest"></a>

### BatchCreateTrainingPhrasesRequest



| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| training_phrase_requests | [BatchCreateTrainingPhrasesRequest.CreateTrainingPhraseRequest](#ondewo.nlu.BatchCreateTrainingPhrasesRequest.CreateTrainingPhraseRequest) | repeated |  |






<a name="ondewo.nlu.BatchCreateTrainingPhrasesRequest.CreateTrainingPhraseRequest"></a>

### BatchCreateTrainingPhrasesRequest.CreateTrainingPhraseRequest



| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| intent_name | [string](#string) |  | Required. The name of the intent for which to create a training phrase for. |
| training_phrase | [Intent.TrainingPhrase](#ondewo.nlu.Intent.TrainingPhrase) |  | Required. The training phrase to create. |






<a name="ondewo.nlu.BatchDeleteIntentsRequest"></a>

### BatchDeleteIntentsRequest
The request message for [Intents.BatchDeleteIntents][google.cloud.dialogflow.v2.Intents.BatchDeleteIntents].


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| parent | [string](#string) |  | Required. The name of the agent to delete all entities types for. Format: `projects/<Project ID>/agent`. |
| intents | [Intent](#ondewo.nlu.Intent) | repeated | Required. The collection of intents to delete. Only intent `name` must be filled in. |






<a name="ondewo.nlu.BatchDeleteParametersRequest"></a>

### BatchDeleteParametersRequest



| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| names | [string](#string) | repeated | Required. The names of the response messages. Format: `projects/<Project ID>/agent/intents/<Intent ID>/parameters/<Parameter ID>` |






<a name="ondewo.nlu.BatchDeleteParametersResponse"></a>

### BatchDeleteParametersResponse



| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| delete_statuses | [BatchDeleteParametersResponse.DeleteParameterStatus](#ondewo.nlu.BatchDeleteParametersResponse.DeleteParameterStatus) | repeated |  |
| has_errors | [bool](#bool) |  |  |






<a name="ondewo.nlu.BatchDeleteParametersResponse.DeleteParameterStatus"></a>

### BatchDeleteParametersResponse.DeleteParameterStatus



| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| successfully_deleted | [google.protobuf.Empty](#google.protobuf.Empty) |  |  |
| error_message | [string](#string) |  |  |






<a name="ondewo.nlu.BatchDeleteResponseMessagesRequest"></a>

### BatchDeleteResponseMessagesRequest



| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| names | [string](#string) | repeated | Required. The names of the response messages. Format: `projects/<Project ID>/agent/intents/<Intent ID>/responseMessages/<Message ID>` |






<a name="ondewo.nlu.BatchDeleteResponseMessagesResponse"></a>

### BatchDeleteResponseMessagesResponse



| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| delete_statuses | [BatchDeleteResponseMessagesResponse.DeleteResponseMessageStatus](#ondewo.nlu.BatchDeleteResponseMessagesResponse.DeleteResponseMessageStatus) | repeated |  |
| has_errors | [bool](#bool) |  |  |






<a name="ondewo.nlu.BatchDeleteResponseMessagesResponse.DeleteResponseMessageStatus"></a>

### BatchDeleteResponseMessagesResponse.DeleteResponseMessageStatus



| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| successfully_deleted | [google.protobuf.Empty](#google.protobuf.Empty) |  |  |
| error_message | [string](#string) |  |  |






<a name="ondewo.nlu.BatchDeleteTrainingPhrasesRequest"></a>

### BatchDeleteTrainingPhrasesRequest



| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| names | [string](#string) | repeated | Required. The names of the training phrases. Format: `projects/<Project ID>/agent/intents/<Intent ID>/trainingPhrases/<Training Phrase ID>` |






<a name="ondewo.nlu.BatchDeleteTrainingPhrasesResponse"></a>

### BatchDeleteTrainingPhrasesResponse



| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| delete_statuses | [BatchDeleteTrainingPhrasesResponse.DeleteTrainingPhraseStatus](#ondewo.nlu.BatchDeleteTrainingPhrasesResponse.DeleteTrainingPhraseStatus) | repeated |  |
| has_errors | [bool](#bool) |  |  |






<a name="ondewo.nlu.BatchDeleteTrainingPhrasesResponse.DeleteTrainingPhraseStatus"></a>

### BatchDeleteTrainingPhrasesResponse.DeleteTrainingPhraseStatus



| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| successfully_deleted | [google.protobuf.Empty](#google.protobuf.Empty) |  |  |
| error_message | [string](#string) |  |  |






<a name="ondewo.nlu.BatchGetParametersRequest"></a>

### BatchGetParametersRequest



| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| names | [string](#string) | repeated | Required. The names of the response messages. Format: `projects/<Project ID>/agent/intents/<Intent ID>/parameters/<Parameter ID>` |






<a name="ondewo.nlu.BatchGetResponseMessagesRequest"></a>

### BatchGetResponseMessagesRequest



| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| names | [string](#string) | repeated | Required. The names of the response messages. Format: `projects/<Project ID>/agent/intents/<Intent ID>/responseMessages/<Message ID>` |






<a name="ondewo.nlu.BatchGetTrainingPhrasesRequest"></a>

### BatchGetTrainingPhrasesRequest



| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| names | [string](#string) | repeated | Required. The names of the training phrases. Format: `projects/<Project ID>/agent/intents/<Intent ID>/trainingPhrases/<Training Phrase ID>` |






<a name="ondewo.nlu.BatchParametersStatusResponse"></a>

### BatchParametersStatusResponse



| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| parameter_statuses | [BatchParametersStatusResponse.ParameterStatus](#ondewo.nlu.BatchParametersStatusResponse.ParameterStatus) | repeated |  |
| has_errors | [bool](#bool) |  | indicates if statuses of some of the parameters have errors |






<a name="ondewo.nlu.BatchParametersStatusResponse.ParameterStatus"></a>

### BatchParametersStatusResponse.ParameterStatus



| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| parameter | [Intent.Parameter](#ondewo.nlu.Intent.Parameter) |  |  |
| error_message | [string](#string) |  |  |






<a name="ondewo.nlu.BatchResponseMessagesStatusResponse"></a>

### BatchResponseMessagesStatusResponse



| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| response_message_statuses | [BatchResponseMessagesStatusResponse.ResponseMessageStatus](#ondewo.nlu.BatchResponseMessagesStatusResponse.ResponseMessageStatus) | repeated |  |
| has_errors | [bool](#bool) |  | indicates if statuses of some of the response messages have errors |






<a name="ondewo.nlu.BatchResponseMessagesStatusResponse.ResponseMessageStatus"></a>

### BatchResponseMessagesStatusResponse.ResponseMessageStatus



| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| response_message | [Intent.Message](#ondewo.nlu.Intent.Message) |  |  |
| error_message | [string](#string) |  |  |






<a name="ondewo.nlu.BatchTrainingPhrasesStatusResponse"></a>

### BatchTrainingPhrasesStatusResponse



| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| training_phrase_statuses | [TrainingPhraseStatus](#ondewo.nlu.TrainingPhraseStatus) | repeated |  |
| has_errors | [bool](#bool) |  | indicates if statuses of some of the training phrases have errors |






<a name="ondewo.nlu.BatchUpdateIntentsRequest"></a>

### BatchUpdateIntentsRequest
The request message for [Intents.BatchUpdateIntents][google.cloud.dialogflow.v2.Intents.BatchUpdateIntents].


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| parent | [string](#string) |  | Required. The name of the agent to update or create intents in. Format: `projects/<Project ID>/agent`. |
| intent_batch_uri | [string](#string) |  | The URI to a Google Cloud Storage file containing intents to update or create. The file format can either be a serialized proto (of IntentBatch type) or JSON object. Note: The URI must start with "gs://". |
| intent_batch_inline | [IntentBatch](#ondewo.nlu.IntentBatch) |  | The collection of intents to update or create. |
| language_code | [string](#string) |  | Optional. The language of training phrases, parameters and rich messages defined in `intents`. If not specified, the agent's default language is used. [More than a dozen languages](https://dialogflow.com/docs/reference/language) are supported. Note: languages must be enabled in the agent, before they can be used. |
| update_mask | [google.protobuf.FieldMask](#google.protobuf.FieldMask) |  | Optional. The mask to control which fields get updated. |
| intent_view | [IntentView](#ondewo.nlu.IntentView) |  | Optional. The resource view to apply to the returned intent. |






<a name="ondewo.nlu.BatchUpdateIntentsResponse"></a>

### BatchUpdateIntentsResponse
The response message for [Intents.BatchUpdateIntents][google.cloud.dialogflow.v2.Intents.BatchUpdateIntents].


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| intents | [Intent](#ondewo.nlu.Intent) | repeated | The collection of updated or created intents. |






<a name="ondewo.nlu.BatchUpdateParametersRequest"></a>

### BatchUpdateParametersRequest



| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| parameters | [Intent.Parameter](#ondewo.nlu.Intent.Parameter) | repeated | The response messages to update |






<a name="ondewo.nlu.BatchUpdateResponseMessagesRequest"></a>

### BatchUpdateResponseMessagesRequest



| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| response_messages | [Intent.Message](#ondewo.nlu.Intent.Message) | repeated | The response messages to update |






<a name="ondewo.nlu.BatchUpdateTrainingPhrasesRequest"></a>

### BatchUpdateTrainingPhrasesRequest



| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| training_phrases | [Intent.TrainingPhrase](#ondewo.nlu.Intent.TrainingPhrase) | repeated |  |






<a name="ondewo.nlu.CreateIntentRequest"></a>

### CreateIntentRequest
The request message for [Intents.CreateIntent][google.cloud.dialogflow.v2.Intents.CreateIntent].


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| parent | [string](#string) |  | Required. The agent to create a intent for. Format: `projects/<Project ID>/agent`. |
| intent | [Intent](#ondewo.nlu.Intent) |  | Required. The intent to create. |
| language_code | [string](#string) |  | Optional. The language of training phrases, parameters and rich messages defined in `intent`. If not specified, the agent's default language is used. [More than a dozen languages](https://dialogflow.com/docs/reference/language) are supported. Note: languages must be enabled in the agent, before they can be used. |
| intent_view | [IntentView](#ondewo.nlu.IntentView) |  | Optional. The resource view to apply to the returned intent. |






<a name="ondewo.nlu.DeleteIntentRequest"></a>

### DeleteIntentRequest
The request message for [Intents.DeleteIntent][google.cloud.dialogflow.v2.Intents.DeleteIntent].


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| name | [string](#string) |  | Required. The name of the intent to delete. Format: `projects/<Project ID>/agent/intents/<Intent ID>`. |






<a name="ondewo.nlu.GetIntentRequest"></a>

### GetIntentRequest
The request message for [Intents.GetIntent][google.cloud.dialogflow.v2.Intents.GetIntent].


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| name | [string](#string) |  | Required. The name of the intent. Format: `projects/<Project ID>/agent/intents/<Intent ID>`. |
| language_code | [string](#string) |  | Optional. The language to retrieve training phrases, parameters and rich messages for. If not specified, the agent's default language is used. [More than a dozen languages](https://dialogflow.com/docs/reference/language) are supported. Note: languages must be enabled in the agent, before they can be used. |
| intent_view | [IntentView](#ondewo.nlu.IntentView) |  | Optional. The resource view to apply to the returned intent. |
| page_token | [string](#string) |  | Optional. The next_page_token value returned from a previous list request. Format: `current_index-<CURRENT_INDEX>--page_size-<PAGE_SIZE>` where <CURRENT_INDEX> and <PAGE_SIZE> are of type int |






<a name="ondewo.nlu.Intent"></a>

### Intent
Represents an intent.
Intents convert a number of user expressions or patterns into an action. An
action is an extraction of a user command or sentence semantics.


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| name | [string](#string) |  | Required for all methods except `create` (`create` populates the name automatically. The unique identifier of this intent. Format: `projects/<Project ID>/agent/intents/<Intent ID>`. |
| display_name | [string](#string) |  | Required. The name of this intent. |
| webhook_state | [Intent.WebhookState](#ondewo.nlu.Intent.WebhookState) |  | Required. Indicates whether webhooks are enabled for the intent. |
| priority | [int32](#int32) |  | Optional. The priority of this intent. Higher numbers represent higher priorities. Zero or negative numbers mean that the intent is disabled. |
| is_fallback | [bool](#bool) |  | Optional. Indicates whether this is a fallback intent. |
| ml_disabled | [bool](#bool) |  | Optional. Indicates whether Machine Learning is disabled for the intent. Note: If `ml_diabled` setting is set to true, then this intent is not taken into account during inference in `ML ONLY` match mode. Also, auto-markup in the UI is turned off. |
| input_context_names | [string](#string) | repeated | Optional. The list of context names required for this intent to be triggered. Format: `projects/<Project ID>/agent/sessions/-/contexts/<Context ID>`. |
| events | [string](#string) | repeated | Optional. The collection of event names that trigger the intent. If the collection of input contexts is not empty, all of the contexts must be present in the active user session for an event to trigger this intent. |
| training_phrases | [Intent.TrainingPhrase](#ondewo.nlu.Intent.TrainingPhrase) | repeated | Optional. The collection of examples/templates that the agent is trained on. |
| action | [string](#string) |  | Optional. The name of the action associated with the intent. |
| output_contexts | [Context](#ondewo.nlu.Context) | repeated | Optional. The collection of contexts that are activated when the intent is matched. Context messages in this collection should not set the parameters field. Setting the `lifespan_count` to 0 will reset the context when the intent is matched. Format: `projects/<Project ID>/agent/sessions/-/contexts/<Context ID>`. |
| reset_contexts | [bool](#bool) |  | Optional. Indicates whether to delete all contexts in the current session when this intent is matched. |
| parameters | [Intent.Parameter](#ondewo.nlu.Intent.Parameter) | repeated | Optional. The collection of parameters associated with the intent. |
| messages | [Intent.Message](#ondewo.nlu.Intent.Message) | repeated | Optional. The collection of rich messages corresponding to the `Response` field in the Dialogflow console. |
| default_response_platforms | [Intent.Message.Platform](#ondewo.nlu.Intent.Message.Platform) | repeated | Optional. The list of platforms for which the first response will be taken from among the messages assigned to the DEFAULT_PLATFORM. |
| root_followup_intent_name | [string](#string) |  | The unique identifier of the root intent in the chain of followup intents. It identifies the correct followup intents chain for this intent. Format: `projects/<Project ID>/agent/intents/<Intent ID>`. |
| parent_followup_intent_name | [string](#string) |  | The unique identifier of the parent intent in the chain of followup intents. It identifies the parent followup intent. Format: `projects/<Project ID>/agent/intents/<Intent ID>`. |
| followup_intent_info | [Intent.FollowupIntentInfo](#ondewo.nlu.Intent.FollowupIntentInfo) | repeated | Optional. Collection of information about all followup intents that have name of this intent as a root_name. |
| next_page_token | [string](#string) |  | Format: `current_index-<CURRENT_INDEX>--page_size-<PAGE_SIZE>` where <CURRENT_INDEX> and <PAGE_SIZE> are of type int |
| domain_name | [string](#string) |  | Optional. Domain to which the intent belongs |
| is_start_of_deviation | [bool](#bool) |  | Optional. Indicates whether the intent starts a deviation in conversation flow |
| is_end_of_deviation | [bool](#bool) |  | Optional. Indicates whether the intent ends a deviation in conversation flow |
| training_phrase_count | [int32](#int32) |  | Optional. Total count of training phrases associated to the intent. |
| status | [Intent.IntentStatus](#ondewo.nlu.Intent.IntentStatus) |  | Indicates whether the intent is active or not |






<a name="ondewo.nlu.Intent.FollowupIntentInfo"></a>

### Intent.FollowupIntentInfo
Represents a single followup intent in the chain.


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| followup_intent_name | [string](#string) |  | The unique identifier of the followup intent. Format: `projects/<Project ID>/agent/intents/<Intent ID>`. |
| parent_followup_intent_name | [string](#string) |  | The unique identifier of the followup intent parent. Format: `projects/<Project ID>/agent/intents/<Intent ID>`. |






<a name="ondewo.nlu.Intent.Message"></a>

### Intent.Message
Corresponds to the `Response` field in the Dialogflow console.


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| name | [string](#string) |  | Required. The name of the return message. Format: `projects/<Project ID>/agent/intents/<Intent ID>/responseMessages/<Message ID>`. |
| language_code | [string](#string) |  | Required. The language of the return message. |
| text | [Intent.Message.Text](#ondewo.nlu.Intent.Message.Text) |  | The text response. |
| image | [Intent.Message.Image](#ondewo.nlu.Intent.Message.Image) |  | The image response. |
| quick_replies | [Intent.Message.QuickReplies](#ondewo.nlu.Intent.Message.QuickReplies) |  | The quick replies response. |
| card | [Intent.Message.Card](#ondewo.nlu.Intent.Message.Card) |  | The card response. |
| payload | [google.protobuf.Struct](#google.protobuf.Struct) |  | Returns a response containing a custom, platform-specific payload. See the Intent.Message.Platform type for a description of the structure that may be required for your platform. |
| simple_responses | [Intent.Message.SimpleResponses](#ondewo.nlu.Intent.Message.SimpleResponses) |  | The voice and text-only responses for Actions on Google. |
| basic_card | [Intent.Message.BasicCard](#ondewo.nlu.Intent.Message.BasicCard) |  | The basic card response for Actions on Google. |
| suggestions | [Intent.Message.Suggestions](#ondewo.nlu.Intent.Message.Suggestions) |  | The suggestion chips for Actions on Google. |
| link_out_suggestion | [Intent.Message.LinkOutSuggestion](#ondewo.nlu.Intent.Message.LinkOutSuggestion) |  | The link out suggestion chip for Actions on Google. |
| list_select | [Intent.Message.ListSelect](#ondewo.nlu.Intent.Message.ListSelect) |  | The list card response for Actions on Google. |
| carousel_select | [Intent.Message.CarouselSelect](#ondewo.nlu.Intent.Message.CarouselSelect) |  | The carousel card response for Actions on Google. |
| html_text | [Intent.Message.HTMLText](#ondewo.nlu.Intent.Message.HTMLText) |  | The HTML text response |
| video | [Intent.Message.Video](#ondewo.nlu.Intent.Message.Video) |  | The Video response |
| audio | [Intent.Message.Audio](#ondewo.nlu.Intent.Message.Audio) |  | The Audio response |
| platform | [Intent.Message.Platform](#ondewo.nlu.Intent.Message.Platform) |  | Optional. The platform that this message is intended for. |






<a name="ondewo.nlu.Intent.Message.Audio"></a>

### Intent.Message.Audio
The Audio response message.


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| uri | [string](#string) |  | Optional. The public URI to an audio file. |
| accessibility_text | [string](#string) |  | Optional. A text description of the audio to be used for accessibility, e.g., screen readers. |






<a name="ondewo.nlu.Intent.Message.BasicCard"></a>

### Intent.Message.BasicCard
The basic card message. Useful for displaying information.


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| title | [string](#string) |  | Optional. The title of the card. |
| subtitle | [string](#string) |  | Optional. The subtitle of the card. |
| formatted_text | [string](#string) |  | Required, unless image is present. The body text of the card. |
| image | [Intent.Message.Image](#ondewo.nlu.Intent.Message.Image) |  | Optional. The image for the card. |
| buttons | [Intent.Message.BasicCard.Button](#ondewo.nlu.Intent.Message.BasicCard.Button) | repeated | Optional. The collection of card buttons. |






<a name="ondewo.nlu.Intent.Message.BasicCard.Button"></a>

### Intent.Message.BasicCard.Button
The button object that appears at the bottom of a card.


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| title | [string](#string) |  | Required. The title of the button. |
| open_uri_action | [Intent.Message.BasicCard.Button.OpenUriAction](#ondewo.nlu.Intent.Message.BasicCard.Button.OpenUriAction) |  | Required. Action to take when a user taps on the button. |






<a name="ondewo.nlu.Intent.Message.BasicCard.Button.OpenUriAction"></a>

### Intent.Message.BasicCard.Button.OpenUriAction
Opens the given URI.


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| uri | [string](#string) |  | Required. The HTTP or HTTPS scheme URI. |






<a name="ondewo.nlu.Intent.Message.Card"></a>

### Intent.Message.Card
The card response message.


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| title | [string](#string) |  | Optional. The title of the card. |
| subtitle | [string](#string) |  | Optional. The subtitle of the card. |
| image_uri | [string](#string) |  | Optional. The public URI to an image file for the card. |
| buttons | [Intent.Message.Card.Button](#ondewo.nlu.Intent.Message.Card.Button) | repeated | Optional. The collection of card buttons. |






<a name="ondewo.nlu.Intent.Message.Card.Button"></a>

### Intent.Message.Card.Button
Optional. Contains information about a button.


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| text | [string](#string) |  | Optional. The text to show on the button. |
| postback | [string](#string) |  | Optional. The text to send back to the Dialogflow API or a URI to open. |






<a name="ondewo.nlu.Intent.Message.CarouselSelect"></a>

### Intent.Message.CarouselSelect
The card for presenting a carousel of options to select from.


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| items | [Intent.Message.CarouselSelect.Item](#ondewo.nlu.Intent.Message.CarouselSelect.Item) | repeated | Required. Carousel items. |






<a name="ondewo.nlu.Intent.Message.CarouselSelect.Item"></a>

### Intent.Message.CarouselSelect.Item
An item in the carousel.


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| info | [Intent.Message.SelectItemInfo](#ondewo.nlu.Intent.Message.SelectItemInfo) |  | Required. Additional info about the option item. |
| title | [string](#string) |  | Required. Title of the carousel item. |
| description | [string](#string) |  | Optional. The body text of the card. |
| image | [Intent.Message.Image](#ondewo.nlu.Intent.Message.Image) |  | Optional. The image to display. |






<a name="ondewo.nlu.Intent.Message.HTMLText"></a>

### Intent.Message.HTMLText



| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| text | [string](#string) | repeated | Collection of the agent's responses in HTML format |






<a name="ondewo.nlu.Intent.Message.Image"></a>

### Intent.Message.Image
The image response message.


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| image_uri | [string](#string) |  | Optional. The public URI to an image file. |
| accessibility_text | [string](#string) |  | Optional. A text description of the image to be used for accessibility, e.g., screen readers. |






<a name="ondewo.nlu.Intent.Message.LinkOutSuggestion"></a>

### Intent.Message.LinkOutSuggestion
The suggestion chip message that allows the user to jump out to the app
or website associated with this agent.


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| destination_name | [string](#string) |  | Required. The name of the app or site this chip is linking to. |
| uri | [string](#string) |  | Required. The URI of the app or site to open when the user taps the suggestion chip. |






<a name="ondewo.nlu.Intent.Message.ListSelect"></a>

### Intent.Message.ListSelect
The card for presenting a list of options to select from.


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| title | [string](#string) |  | Optional. The overall title of the list. |
| items | [Intent.Message.ListSelect.Item](#ondewo.nlu.Intent.Message.ListSelect.Item) | repeated | Required. List items. |






<a name="ondewo.nlu.Intent.Message.ListSelect.Item"></a>

### Intent.Message.ListSelect.Item
An item in the list.


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| info | [Intent.Message.SelectItemInfo](#ondewo.nlu.Intent.Message.SelectItemInfo) |  | Required. Additional information about this option. |
| title | [string](#string) |  | Required. The title of the list item. |
| description | [string](#string) |  | Optional. The main text describing the item. |
| image | [Intent.Message.Image](#ondewo.nlu.Intent.Message.Image) |  | Optional. The image to display. |






<a name="ondewo.nlu.Intent.Message.QuickReplies"></a>

### Intent.Message.QuickReplies
The quick replies response message.


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| title | [string](#string) |  | Optional. The title of the collection of quick replies. |
| quick_replies | [string](#string) | repeated | Optional. The collection of quick replies. |






<a name="ondewo.nlu.Intent.Message.SelectItemInfo"></a>

### Intent.Message.SelectItemInfo
Additional info about the select item for when it is triggered in a
dialog.


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| key | [string](#string) |  | Required. A unique key that will be sent back to the agent if this response is given. |
| synonyms | [string](#string) | repeated | Optional. A list of synonyms that can also be used to trigger this item in dialog. |






<a name="ondewo.nlu.Intent.Message.SimpleResponse"></a>

### Intent.Message.SimpleResponse
The simple response message containing speech or text.


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| text_to_speech | [string](#string) |  | One of text_to_speech or ssml must be provided. The plain text of the speech output. Mutually exclusive with ssml. |
| ssml | [string](#string) |  | One of text_to_speech or ssml must be provided. Structured spoken response to the user in the SSML format. Mutually exclusive with text_to_speech. |
| display_text | [string](#string) |  | Optional. The text to display. |






<a name="ondewo.nlu.Intent.Message.SimpleResponses"></a>

### Intent.Message.SimpleResponses
The collection of simple response candidates.
This message in `QueryResult.fulfillment_messages` and
`WebhookResponse.fulfillment_messages` should contain only one
`SimpleResponse`.


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| simple_responses | [Intent.Message.SimpleResponse](#ondewo.nlu.Intent.Message.SimpleResponse) | repeated | Required. The list of simple responses. |






<a name="ondewo.nlu.Intent.Message.Suggestion"></a>

### Intent.Message.Suggestion
The suggestion chip message that the user can tap to quickly post a reply
to the conversation.


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| title | [string](#string) |  | Required. The text shown the in the suggestion chip. |






<a name="ondewo.nlu.Intent.Message.Suggestions"></a>

### Intent.Message.Suggestions
The collection of suggestions.


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| suggestions | [Intent.Message.Suggestion](#ondewo.nlu.Intent.Message.Suggestion) | repeated | Required. The list of suggested replies. |






<a name="ondewo.nlu.Intent.Message.Text"></a>

### Intent.Message.Text
The text response message.


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| text | [string](#string) | repeated | Optional. The collection of the agent's responses. |






<a name="ondewo.nlu.Intent.Message.Video"></a>

### Intent.Message.Video
The Video response message.


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| uri | [string](#string) |  | Optional. The public URI to a video file. |
| accessibility_text | [string](#string) |  | Optional. A text description of the video to be used for accessibility, e.g., screen readers. |






<a name="ondewo.nlu.Intent.Parameter"></a>

### Intent.Parameter
Represents intent parameters.


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| name | [string](#string) |  | The unique identifier of this parameter. Format: `projects/<Project ID>/agent/intents/<Intent ID>/parameters/<Parameter ID>`. |
| display_name | [string](#string) |  | Required. The name of the parameter. |
| value | [string](#string) |  | Optional. The definition of the parameter value. It can be: - a constant string, - a parameter value defined as `$parameter_name`, - an original parameter value defined as `$parameter_name.original`, - a parameter value from some context defined as `#context_name.parameter_name`. |
| default_value | [string](#string) |  | Optional. The default value to use when the `value` yields an empty result. Default values can be extracted from contexts by using the following syntax: `#context_name.parameter_name`. |
| entity_type_name | [string](#string) |  | Optional. The unique identifier of the entity type in format `projects/<Project ID>/agent/entityTypes/<Entity Type ID>` that describes values of the parameter. If the parameter is required, this must be provided. |
| entity_type_display_name | [string](#string) |  | Optional. The name of the entity type that describes values of the parameter. If the parameter is required, this must be provided. |
| mandatory | [bool](#bool) |  | Optional. Indicates whether the parameter is required. That is, whether the intent cannot be completed without collecting the parameter value. |
| prompts | [Intent.Parameter.Prompt](#ondewo.nlu.Intent.Parameter.Prompt) | repeated | Optional. The collection of prompts that the agent can present to the user in order to collect value for the parameter. |
| is_list | [bool](#bool) |  | Optional. Indicates whether the parameter represents a list of values. |






<a name="ondewo.nlu.Intent.Parameter.Prompt"></a>

### Intent.Parameter.Prompt
Represents the prompts in the parameters.


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| name | [string](#string) |  | The unique identifier of this prompt. Format: `projects/<Project ID>/agent/intents/<Intent ID>/parameters/<Parameter ID>/prompts/<Prompt ID>`. |
| text | [string](#string) |  | Required. Text of the prompt |
| language_code | [string](#string) |  | Optional. The language of the prompts. If not specified, the default language code will be used. |






<a name="ondewo.nlu.Intent.TrainingPhrase"></a>

### Intent.TrainingPhrase
Represents an example or template that the agent is trained on.


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| name | [string](#string) |  | Required. The unique identifier of this training phrase. Format: `projects/<Project ID>/agent/intents/<Intent ID>/trainingPhrases/<Training Phrase ID>`. |
| type | [Intent.TrainingPhrase.Type](#ondewo.nlu.Intent.TrainingPhrase.Type) |  | Required. The type of the training phrase. |
| text | [string](#string) |  | Required. The text of the training phrase. |
| entities | [Intent.TrainingPhrase.Entity](#ondewo.nlu.Intent.TrainingPhrase.Entity) | repeated | Optional. The collection of annotated entities in the training phrase. |
| times_added_count | [int32](#int32) |  | Optional. Indicates how many times this example or template was added to the intent. Each time a developer adds an existing sample by editing an intent or training, this counter is increased. |
| language_code | [string](#string) |  | Optional. The language of the training phrase. |






<a name="ondewo.nlu.Intent.TrainingPhrase.Entity"></a>

### Intent.TrainingPhrase.Entity
Represents an entity annotation in a training phrase. The entity can be annotated on the level of
entity type only or both entity type and entity value.


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| entity_type_name | [string](#string) |  | Required. The unique entity type identifier in format `projects/<Project ID>/agent/entityTypes/<Entity Type ID>`. |
| entity_type_display_name | [string](#string) |  | Optional. The entity type name. |
| entity_value_name | [string](#string) |  | Optional. The unique entity value identifier in format `projects/<Project ID>/agent/entityTypes/<Entity Type ID>/entities/<Entity ID>`. The entity value must belong to the entity type defined in entity_type_name |
| entity_value_display_name | [string](#string) |  | Optional. The entity value name. |
| start | [int32](#int32) |  | Required. Defines a character position, where the entity starts in the training phrase text (0-indexed). |
| end | [int32](#int32) |  | Required. Defines a character position + 1, where the entity ends in the training phrase. Example: "Meet you tomorrow" -> Entity(entity_type_display_name="sys.date", start=9, end=17) |
| parameter_name | [string](#string) |  | Optional. The unique parameter identifier in format `projects/<Project ID>/agent/intents/<Intent ID>/parameters/<Parameter ID>` for the value extracted from the annotated part of the example. The parameter must be one of the parameters defined in the top-level intent message. Can be unset if the parameter is created in the same create/update intent request as the annotation. |
| parameter_display_name | [string](#string) |  | Optional. The parameter name. |






<a name="ondewo.nlu.IntentBatch"></a>

### IntentBatch
This message is a wrapper around a collection of intents.


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| intents | [Intent](#ondewo.nlu.Intent) | repeated | A collection of intents. |






<a name="ondewo.nlu.IntentSorting"></a>

### IntentSorting



| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| sorting_field | [IntentSorting.IntentSortingField](#ondewo.nlu.IntentSorting.IntentSortingField) |  |  |
| sorting_mode | [SortingMode](#ondewo.nlu.SortingMode) |  |  |






<a name="ondewo.nlu.ListIntentsRequest"></a>

### ListIntentsRequest
The request message for [Intents.ListIntents][google.cloud.dialogflow.v2.Intents.ListIntents].


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| parent | [string](#string) |  | Required. The agent to list all intents from. Format: `projects/<Project ID>/agent`. |
| language_code | [string](#string) |  | Optional. The language to list training phrases, parameters and rich messages for. If not specified, the agent's default language is used. [More than a dozen languages](https://dialogflow.com/docs/reference/language) are supported. Note: languages must be enabled in the agent before they can be used. |
| intent_view | [IntentView](#ondewo.nlu.IntentView) |  | Optional. The resource view to apply to the returned intent. |
| page_token | [string](#string) |  | Optional. The next_page_token value returned from a previous list request. Format: `current_index-<CURRENT_INDEX>--page_size-<PAGE_SIZE>` where <CURRENT_INDEX> and <PAGE_SIZE> are of type int |
| filter_by_category | [IntentCategory](#ondewo.nlu.IntentCategory) |  | Optional. Applies a filter to the list. Default, no filter. |
| sort_by_field | [IntentSorting](#ondewo.nlu.IntentSorting) |  | Optional. Defines the sorting of the list. Default, no sorting. |






<a name="ondewo.nlu.ListIntentsResponse"></a>

### ListIntentsResponse
The response message for [Intents.ListIntents][google.cloud.dialogflow.v2.Intents.ListIntents].


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| intents | [Intent](#ondewo.nlu.Intent) | repeated | The list of agent intents. There will be a maximum number of items returned based on the page_token field in the request. |
| next_page_token | [string](#string) |  | Token to retrieve the next page of results, or empty if there are no more results in the list. Format: `current_index-<CURRENT_INDEX>--page_size-<PAGE_SIZE>` where <CURRENT_INDEX> and <PAGE_SIZE> are of type int |






<a name="ondewo.nlu.ListParametersRequest"></a>

### ListParametersRequest
The request message for TrainingPhraseRequest


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| intent_name | [string](#string) |  | Required. The agent to list all intents from. Format: `projects/<Project ID>/agent/intents/<Intent ID>`. |
| language_code | [string](#string) |  | Optional. The language code used to filter out prompts. |
| page_token | [string](#string) |  | Optional. The next_page_token value returned from a previous list request. Format: `current_index-<CURRENT_INDEX>--page_size-<PAGE_SIZE>--sub_field-<SUB_FIELD>` where <CURRENT_INDEX> and <PAGE_SIZE> are of type int, <SUB_FIELD> is of type str (example: `parameters`) |






<a name="ondewo.nlu.ListParametersResponse"></a>

### ListParametersResponse
The response message for ListTrainingPhrase


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| parameters | [Intent.Parameter](#ondewo.nlu.Intent.Parameter) | repeated | The list of parameters. There will be a maximum number of items returned based on the page_token field in the request. |
| next_page_token | [string](#string) |  | Token to retrieve the next page of results, or empty if there are no more results in the list. Format: `current_index-<CURRENT_INDEX>--page_size-<PAGE_SIZE>--sub_field-<SUB_FIELD>` where <CURRENT_INDEX> and <PAGE_SIZE> are of type int, <SUB_FIELD> is of type str (example: `parameters`) |






<a name="ondewo.nlu.ListResponseMessagesRequest"></a>

### ListResponseMessagesRequest
The request message for ResponseMessageRequest


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| intent_name | [string](#string) |  | Required. The agent to list all intents from. Format: `projects/<Project ID>/agent/intents/<Intent ID>`. |
| language_code | [string](#string) |  | Optional. The language to list response messages, parameters and rich messages for. If not specified, the agent's default language is used. |
| page_token | [string](#string) |  | Optional. The next_page_token value returned from a previous list request. Format: `current_index-<CURRENT_INDEX>--page_size-<PAGE_SIZE>--sub_field-<SUB_FIELD>` where <CURRENT_INDEX> and <PAGE_SIZE> are of type int, <SUB_FIELD> is of type str (example: `messages`) |






<a name="ondewo.nlu.ListResponseMessagesResponse"></a>

### ListResponseMessagesResponse
The response message for ListResponseMessage


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| response_messages | [Intent.Message](#ondewo.nlu.Intent.Message) | repeated | The list of response messages. There will be a maximum number of items returned based on the page_token field in the request. |
| next_page_token | [string](#string) |  | Token to retrieve the next page of results, or empty if there are no more results in the list. Format: `current_index-<CURRENT_INDEX>--page_size-<PAGE_SIZE>--sub_field-<SUB_FIELD>` where <CURRENT_INDEX> and <PAGE_SIZE> are of type int, <SUB_FIELD> is of type str (example: `messages`) |






<a name="ondewo.nlu.ListTrainingPhrasesRequest"></a>

### ListTrainingPhrasesRequest
The request message for TrainingPhraseRequest


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| intent_name | [string](#string) |  | Required. The agent to list all intents from. Format: `projects/<Project ID>/agent/intents/<Intent ID>`. |
| language_code | [string](#string) |  | Optional. The language to list training phrases, parameters and rich messages for. If not specified, the agent's default language is used. |
| page_token | [string](#string) |  | Optional. The next_page_token value returned from a previous list request. Format: `current_index-<CURRENT_INDEX>--page_size-<PAGE_SIZE>--sub_field-<SUB_FIELD>` where <CURRENT_INDEX> and <PAGE_SIZE> are of type int, <SUB_FIELD> is of type str (example: `training_phrases`) |






<a name="ondewo.nlu.ListTrainingPhrasesResponse"></a>

### ListTrainingPhrasesResponse
The response message for ListTrainingPhrase


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| training_phrases | [Intent.TrainingPhrase](#ondewo.nlu.Intent.TrainingPhrase) | repeated | The list of training phrases. There will be a maximum number of items returned based on the page_token field in the request. |
| next_page_token | [string](#string) |  | Token to retrieve the next page of results, or empty if there are no more results in the list. Format: `current_index-<CURRENT_INDEX>--page_size-<PAGE_SIZE>--sub_field-<SUB_FIELD>` where <CURRENT_INDEX> and <PAGE_SIZE> are of type int, <SUB_FIELD> is of type str (example: `training_phrases`) |






<a name="ondewo.nlu.TrainingPhraseStatus"></a>

### TrainingPhraseStatus



| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| training_phrase | [Intent.TrainingPhrase](#ondewo.nlu.Intent.TrainingPhrase) |  |  |
| error_message | [string](#string) |  |  |






<a name="ondewo.nlu.UpdateIntentRequest"></a>

### UpdateIntentRequest
The request message for [Intents.UpdateIntent][google.cloud.dialogflow.v2.Intents.UpdateIntent].


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| intent | [Intent](#ondewo.nlu.Intent) |  | Required. The intent to update. Format: `projects/<Project ID>/agent/intents/<Intent ID>`. |
| language_code | [string](#string) |  | Optional. The language of training phrases, parameters and rich messages defined in `intent`. If not specified, the agent's default language is used. [More than a dozen languages](https://dialogflow.com/docs/reference/language) are supported. Note: languages must be enabled in the agent, before they can be used. |
| update_mask | [google.protobuf.FieldMask](#google.protobuf.FieldMask) |  | Optional. The mask to control which fields get updated. |
| intent_view | [IntentView](#ondewo.nlu.IntentView) |  | Optional. The resource view to apply to the returned intent. |





 <!-- end messages -->


<a name="ondewo.nlu.Intent.IntentStatus"></a>

### Intent.IntentStatus


| Name | Number | Description |
| ---- | ------ | ----------- |
| ACTIVE | 0 |  |
| INACTIVE | 1 |  |



<a name="ondewo.nlu.Intent.Message.Platform"></a>

### Intent.Message.Platform
Represents different platforms that a rich message can be intended for.

| Name | Number | Description |
| ---- | ------ | ----------- |
| PLATFORM_UNSPECIFIED | 0 | Not specified. |
| FACEBOOK | 1 | Facebook. |
| SLACK | 2 | Slack. |
| TELEGRAM | 3 | Telegram. |
| KIK | 4 | Kik. |
| SKYPE | 5 | Skype. |
| LINE | 6 | Line. |
| VIBER | 7 | Viber. |
| ACTIONS_ON_GOOGLE | 8 | Actions on Google. When using Actions on Google, you can choose one of the specific Intent.Message types that mention support for Actions on Google, or you can use the advanced Intent.Message.payload field. The payload field provides access to AoG features not available in the specific message types. If using the Intent.Message.payload field, it should have a structure similar to the JSON message shown here. For more information, see [Actions on Google Webhook Format](https://developers.google.com/actions/dialogflow/webhook) <pre>{ "expectUserResponse": true, "isSsml": false, "noInputPrompts": [], "richResponse": { "items": [ { "simpleResponse": { "displayText": "hi", "textToSpeech": "hello" } } ], "suggestions": [ { "title": "Say this" }, { "title": "or this" } ] }, "systemIntent": { "data": { "@type": "type.googleapis.com/google.actions.v2.OptionValueSpec", "listSelect": { "items": [ { "optionInfo": { "key": "key1", "synonyms": [ "key one" ] }, "title": "must not be empty, but unique" }, { "optionInfo": { "key": "key2", "synonyms": [ "key two" ] }, "title": "must not be empty, but unique" } ] } }, "intent": "actions.intent.OPTION" } }</pre> |



<a name="ondewo.nlu.Intent.TrainingPhrase.Type"></a>

### Intent.TrainingPhrase.Type
Represents different types of training phrases.

| Name | Number | Description |
| ---- | ------ | ----------- |
| TYPE_UNSPECIFIED | 0 | Not specified. This value should never be used. |
| EXAMPLE | 1 | Examples do not contain @-prefixed entity type names, but example parts can be annotated with entity types. |
| TEMPLATE | 2 | Templates are not annotated with entity types, but they can contain @-prefixed entity type names as substrings. |



<a name="ondewo.nlu.Intent.WebhookState"></a>

### Intent.WebhookState
Represents the different states that webhooks can be in.

| Name | Number | Description |
| ---- | ------ | ----------- |
| WEBHOOK_STATE_UNSPECIFIED | 0 | Webhook is disabled in the agent and in the intent. |
| WEBHOOK_STATE_ENABLED | 1 | Webhook is enabled in the agent and in the intent. |
| WEBHOOK_STATE_ENABLED_FOR_SLOT_FILLING | 2 | Webhook is enabled in the agent and in the intent. Also, each slot filling prompt is forwarded to the webhook. |



<a name="ondewo.nlu.IntentCategory"></a>

### IntentCategory
Represents the type of intents to filter by in the "List Intents" request

| Name | Number | Description |
| ---- | ------ | ----------- |
| ALL_INTENTS | 0 | represent all intents |
| DEFAULT_INTENTS | 1 | represent the default intents |
| USER_DEFINED_INTENTS | 2 | represent the user defined (custom) intents |



<a name="ondewo.nlu.IntentSorting.IntentSortingField"></a>

### IntentSorting.IntentSortingField


| Name | Number | Description |
| ---- | ------ | ----------- |
| NO_INTENT_SORTING | 0 |  |
| SORT_INTENT_BY_NAME | 1 |  |
| SORT_INTENT_BY_CREATION_DATE | 2 |  |
| SORT_INTENT_BY_LAST_UPDATED | 3 |  |
| SORT_INTENT_BY_USERSAYS_COUNT | 4 |  |



<a name="ondewo.nlu.IntentView"></a>

### IntentView
Represents the options for views of an intent.
An intent can be a sizable object. Therefore, we provide a resource view that
does not return training phrases in the response by default.

| Name | Number | Description |
| ---- | ------ | ----------- |
| INTENT_VIEW_UNSPECIFIED | 0 | Same as INTENT_VIEW_FULL |
| INTENT_VIEW_FULL | 1 | All fields are populated. |
| INTENT_VIEW_PARTIAL | 2 | The only nested structures populated are Contexts and Training phrases. The Training phrases field is populated with only a few entries and no annotations. |
| INTENT_VIEW_SHALLOW | 3 | All nested structures are not populated (no training phrases, nor contexts, nor parameters, ...) |


 <!-- end enums -->

 <!-- end HasExtensions -->


<a name="ondewo.nlu.Intents"></a>

### Intents
An intent represents a mapping between input from a user and an action to
be taken by your application. When you pass user input to the
[DetectIntent][google.cloud.dialogflow.v2.Sessions.DetectIntent] (or
[StreamingDetectIntent][google.cloud.dialogflow.v2.Sessions.StreamingDetectIntent]) method, the
Dialogflow API analyzes the input and searches
for a matching intent. If no match is found, the Dialogflow API returns a
fallback intent (`is_fallback` = true).

You can provide additional information for the Dialogflow API to use to
match user input to an intent by adding the following to your intent.

*   **Contexts** - provide additional context for intent analysis. For
    example, if an intent is related to an object in your application that
    plays music, you can provide a context to determine when to match the
    intent if the user input is “turn it off”.  You can include a context
    that matches the intent when there is previous user input of
    "play music", and not when there is previous user input of
    "turn on the light".

*   **Events** - allow for matching an intent by using an event name
    instead of user input. Your application can provide an event name and
    related parameters to the Dialogflow API to match an intent. For
    example, when your application starts, you can send a welcome event
    with a user name parameter to the Dialogflow API to match an intent with
    a personalized welcome message for the user.

*   **Training phrases** - provide examples of user input to train the
    Dialogflow API agent to better match intents.

For more information about intents, see the
[Dialogflow documentation](https://dialogflow.com/docs/intents).

| Method Name | Request Type | Response Type | Description |
| ----------- | ------------ | ------------- | ------------|
| ListIntents | [ListIntentsRequest](#ondewo.nlu.ListIntentsRequest) | [ListIntentsResponse](#ondewo.nlu.ListIntentsResponse) | Returns the list of all intents in the specified agent. |
| GetIntent | [GetIntentRequest](#ondewo.nlu.GetIntentRequest) | [Intent](#ondewo.nlu.Intent) | Retrieves the specified intent. |
| CreateIntent | [CreateIntentRequest](#ondewo.nlu.CreateIntentRequest) | [Intent](#ondewo.nlu.Intent) | Creates an intent in the specified agent. |
| UpdateIntent | [UpdateIntentRequest](#ondewo.nlu.UpdateIntentRequest) | [Intent](#ondewo.nlu.Intent) | Updates the specified intent. |
| DeleteIntent | [DeleteIntentRequest](#ondewo.nlu.DeleteIntentRequest) | [.google.protobuf.Empty](#google.protobuf.Empty) | Deletes the specified intent. |
| BatchUpdateIntents | [BatchUpdateIntentsRequest](#ondewo.nlu.BatchUpdateIntentsRequest) | [.google.longrunning.Operation](#google.longrunning.Operation) | Updates/Creates multiple intents in the specified agent.

Operation <response: [BatchUpdateIntentsResponse][google.cloud.dialogflow.v2.BatchUpdateIntentsResponse]> |
| BatchDeleteIntents | [BatchDeleteIntentsRequest](#ondewo.nlu.BatchDeleteIntentsRequest) | [.google.longrunning.Operation](#google.longrunning.Operation) | Deletes intents in the specified agent.

Operation <response: [google.protobuf.Empty][google.protobuf.Empty]> |
| BatchCreateTrainingPhrases | [BatchCreateTrainingPhrasesRequest](#ondewo.nlu.BatchCreateTrainingPhrasesRequest) | [BatchTrainingPhrasesStatusResponse](#ondewo.nlu.BatchTrainingPhrasesStatusResponse) | Creates batch of training phrases |
| BatchGetTrainingPhrases | [BatchGetTrainingPhrasesRequest](#ondewo.nlu.BatchGetTrainingPhrasesRequest) | [BatchTrainingPhrasesStatusResponse](#ondewo.nlu.BatchTrainingPhrasesStatusResponse) | Retrieve a training phrases batch of the specified names. |
| BatchUpdateTrainingPhrases | [BatchUpdateTrainingPhrasesRequest](#ondewo.nlu.BatchUpdateTrainingPhrasesRequest) | [BatchTrainingPhrasesStatusResponse](#ondewo.nlu.BatchTrainingPhrasesStatusResponse) | Updates batch of training phrases |
| BatchDeleteTrainingPhrases | [BatchDeleteTrainingPhrasesRequest](#ondewo.nlu.BatchDeleteTrainingPhrasesRequest) | [BatchDeleteTrainingPhrasesResponse](#ondewo.nlu.BatchDeleteTrainingPhrasesResponse) | Delete a training phrases batch of the specified names. |
| ListTrainingPhrases | [ListTrainingPhrasesRequest](#ondewo.nlu.ListTrainingPhrasesRequest) | [ListTrainingPhrasesResponse](#ondewo.nlu.ListTrainingPhrasesResponse) | List training phrases (of a specific intent). |
| BatchCreateResponseMessages | [BatchCreateResponseMessagesRequest](#ondewo.nlu.BatchCreateResponseMessagesRequest) | [BatchResponseMessagesStatusResponse](#ondewo.nlu.BatchResponseMessagesStatusResponse) | Creates batch of intent messages |
| BatchGetResponseMessages | [BatchGetResponseMessagesRequest](#ondewo.nlu.BatchGetResponseMessagesRequest) | [BatchResponseMessagesStatusResponse](#ondewo.nlu.BatchResponseMessagesStatusResponse) | Retrieve a intent messages batch of the specified names. |
| BatchUpdateResponseMessages | [BatchUpdateResponseMessagesRequest](#ondewo.nlu.BatchUpdateResponseMessagesRequest) | [BatchResponseMessagesStatusResponse](#ondewo.nlu.BatchResponseMessagesStatusResponse) | Updates batch of intent messages |
| BatchDeleteResponseMessages | [BatchDeleteResponseMessagesRequest](#ondewo.nlu.BatchDeleteResponseMessagesRequest) | [BatchDeleteResponseMessagesResponse](#ondewo.nlu.BatchDeleteResponseMessagesResponse) | Delete a intent messages batch of the specified names. |
| ListResponseMessages | [ListResponseMessagesRequest](#ondewo.nlu.ListResponseMessagesRequest) | [ListResponseMessagesResponse](#ondewo.nlu.ListResponseMessagesResponse) | List messages (of a specific intent). |
| BatchCreateParameters | [BatchCreateParametersRequest](#ondewo.nlu.BatchCreateParametersRequest) | [BatchParametersStatusResponse](#ondewo.nlu.BatchParametersStatusResponse) | Creates batch of intent messages |
| BatchGetParameters | [BatchGetParametersRequest](#ondewo.nlu.BatchGetParametersRequest) | [BatchParametersStatusResponse](#ondewo.nlu.BatchParametersStatusResponse) | Retrieve a intent messages batch of the specified names. |
| BatchUpdateParameters | [BatchUpdateParametersRequest](#ondewo.nlu.BatchUpdateParametersRequest) | [BatchParametersStatusResponse](#ondewo.nlu.BatchParametersStatusResponse) | Updates batch of intent messages |
| BatchDeleteParameters | [BatchDeleteParametersRequest](#ondewo.nlu.BatchDeleteParametersRequest) | [BatchDeleteParametersResponse](#ondewo.nlu.BatchDeleteParametersResponse) | Delete a intent messages batch of the specified names. |
| ListParameters | [ListParametersRequest](#ondewo.nlu.ListParametersRequest) | [ListParametersResponse](#ondewo.nlu.ListParametersResponse) | List messages (of a specific intent). |

 <!-- end services -->



<a name="ondewo/nlu/operation_metadata.proto"></a>
<p align="right"><a href="#top">Top</a></p>

## ondewo/nlu/operation_metadata.proto



<a name="ondewo.nlu.OperationMetadata"></a>

### OperationMetadata
Represents the metadata of the long-running operation that can be a parent operation for sub-operations or
can be a sub-operation itself


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| status | [OperationMetadata.Status](#ondewo.nlu.OperationMetadata.Status) |  | long-running operation status code |
| parent_operation_name | [string](#string) |  | optional parent operation name |
| sub_operation_names | [string](#string) | repeated | list of the sub-operations' names of the operation |
| create_time | [google.protobuf.Timestamp](#google.protobuf.Timestamp) |  | the time the operation was submitted. |
| start_time | [google.protobuf.Timestamp](#google.protobuf.Timestamp) |  | the time operation processing started. |
| end_time | [google.protobuf.Timestamp](#google.protobuf.Timestamp) |  | the time operation processing completed. |
| is_cancellation_requested | [bool](#bool) |  | indicates whether a request to cancel this operation has been made. |
| cancel_command | [string](#string) |  | command executed at cancel operation |
| user_id_created | [string](#string) |  | id of the user who created the operation |
| user_id_cancelled | [string](#string) |  | id of the user who cancelled the operation |
| project_parent | [string](#string) |  | project parent name, e.g. "projects/pepper/agent" |
| operation_type | [OperationMetadata.OperationType](#ondewo.nlu.OperationMetadata.OperationType) |  | operation type |
| host_name | [string](#string) |  | name of the host where the operation was executed |
| num_reruns | [int32](#int32) |  | number of times the operation was re-run |
| max_num_reruns | [int32](#int32) |  | maximum number of re-runs in case the operation fails |
| description | [string](#string) |  | description, normally needed for suboperations when type is OPERATION_TYPE_UNSPECIFIED |





 <!-- end messages -->


<a name="ondewo.nlu.OperationMetadata.OperationType"></a>

### OperationMetadata.OperationType


| Name | Number | Description |
| ---- | ------ | ----------- |
| OPERATION_TYPE_UNSPECIFIED | 0 | unspecified operation type |
| CREATE_AGENT | 1 | create a new agent with specified configuration |
| IMPORT_AGENT | 2 | import agent from a zip file |
| EXPORT_AGENT | 3 | export agent to a zip file |
| DELETE_AGENT | 4 | delete agent |
| RESTORE_AGENT | 5 | restore agent |
| BUILD_AGENT_CACHE | 6 | build agent cache |
| TRAIN_AGENT | 7 | train agent |



<a name="ondewo.nlu.OperationMetadata.Status"></a>

### OperationMetadata.Status


| Name | Number | Description |
| ---- | ------ | ----------- |
| STATUS_UNSPECIFIED | 0 | unspecified status code |
| NOT_STARTED | 1 | operation haven't started yet |
| IN_PROGRESS | 2 | operation currently in progress |
| DONE | 3 | operation has completed without any error |
| CANCELLED | 4 | operation has completed with cancellation by user |
| FAILED | 5 | operation has completed with errors |


 <!-- end enums -->

 <!-- end HasExtensions -->

 <!-- end services -->



<a name="ondewo/nlu/project_role.proto"></a>
<p align="right"><a href="#top">Top</a></p>

## ondewo/nlu/project_role.proto



<a name="ondewo.nlu.CreateProjectRoleRequest"></a>

### CreateProjectRoleRequest



| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| parent | [string](#string) |  |  |
| role | [ProjectRole](#ondewo.nlu.ProjectRole) |  | If the role_id is not provided, an incremental value will be assigned The "name" and "role_type" are mandatory values The permissions all default to False if not provided specifically |
| project_role_view | [ProjectRoleView](#ondewo.nlu.ProjectRoleView) |  | Optional. specify the view of the created project role, PROJECT_ROLE_VIEW_FULL by default |






<a name="ondewo.nlu.DeleteProjectRoleRequest"></a>

### DeleteProjectRoleRequest



| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| parent | [string](#string) |  |  |
| role_id | [uint32](#uint32) |  | role is identified by role id, if empty will throw an error in the backend |






<a name="ondewo.nlu.GetProjectRoleRequest"></a>

### GetProjectRoleRequest



| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| parent | [string](#string) |  |  |
| role_id | [uint32](#uint32) |  | role is identified by role id |
| role_name | [string](#string) |  | role can also be uniquely identified by its name |
| project_role_view | [ProjectRoleView](#ondewo.nlu.ProjectRoleView) |  | Optional. specify the view of the project role, PROJECT_ROLE_VIEW_FULL by default |






<a name="ondewo.nlu.ListProjectRolesRequest"></a>

### ListProjectRolesRequest



| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| parent | [string](#string) |  |  |
| page_token | [string](#string) |  | Optional. The next_page_token value returned from a previous list request. |
| project_role_view | [ProjectRoleView](#ondewo.nlu.ProjectRoleView) |  | Optional. specify the view of the project roles, PROJECT_ROLE_VIEW_FULL by default |






<a name="ondewo.nlu.ListProjectRolesResponse"></a>

### ListProjectRolesResponse



| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| project_roles | [ProjectRole](#ondewo.nlu.ProjectRole) | repeated | The list of project roles. There will be a maximum number of items returned based on the page_token field in the request. |
| next_page_token | [string](#string) |  | Token to retrieve the next page of results, or empty if there are no more results in the list. |






<a name="ondewo.nlu.ProjectRole"></a>

### ProjectRole
Project Role messages


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| role_id | [uint32](#uint32) |  | unique identifier of the role |
| name | [string](#string) |  | unique name of the role |
| permissions | [string](#string) | repeated | defines the permissions for the given role (the strings can be gotten from the ListProjectPermissions) |






<a name="ondewo.nlu.UpdateProjectRoleRequest"></a>

### UpdateProjectRoleRequest



| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| parent | [string](#string) |  |  |
| role | [ProjectRole](#ondewo.nlu.ProjectRole) |  | role_id in the Role message should be given, if empty will throw an error in the backend other fields in the Role are optional. Only the fields to be updated should be provided |
| update_mask | [google.protobuf.FieldMask](#google.protobuf.FieldMask) |  | Optional. The mask to control which fields get updated. |
| project_role_view | [ProjectRoleView](#ondewo.nlu.ProjectRoleView) |  | Optional. specify the view of the updated project role, PROJECT_ROLE_VIEW_FULL by default |





 <!-- end messages -->


<a name="ondewo.nlu.DefaultProjectRole"></a>

### DefaultProjectRole


| Name | Number | Description |
| ---- | ------ | ----------- |
| PROJECT_UNSPECIFIED | 0 | These roles have permissions valid only on a specific project

unspecified, default value depends on endpoint # TODO |
| PROJECT_USER | 1 | read-only access |
| PROJECT_EXECUTOR | 2 | permissions of PROJECT_USER + execution rights (detect intent, extract entities, |
| PROJECT_DEVELOPER | 3 | permissions of PROJECT_EXECUTOR + CRUD rights |
| PROJECT_ADMIN | 4 | this role can do everything. The creator of a project is set |
| PROJECT_INACTIVE | 5 | This role can do nothing. |



<a name="ondewo.nlu.ProjectRoleView"></a>

### ProjectRoleView


| Name | Number | Description |
| ---- | ------ | ----------- |
| PROJECT_ROLE_VIEW_UNSPECIFIED | 0 | The view depends on the endpoint: * CreateProjectRole: FULL * GetProjectRole: FULL * UpdateProjectRole: FULL * ListProjectRoles: FULL |
| PROJECT_ROLE_VIEW_SHALLOW | 1 | only role ID and name fields are populated |
| PROJECT_ROLE_VIEW_FULL | 2 | all fields including permissions are populated |


 <!-- end enums -->

 <!-- end HasExtensions -->


<a name="ondewo.nlu.ProjectRoles"></a>

### ProjectRoles


| Method Name | Request Type | Response Type | Description |
| ----------- | ------------ | ------------- | ------------|
| CreateProjectRole | [CreateProjectRoleRequest](#ondewo.nlu.CreateProjectRoleRequest) | [ProjectRole](#ondewo.nlu.ProjectRole) |  |
| GetProjectRole | [GetProjectRoleRequest](#ondewo.nlu.GetProjectRoleRequest) | [ProjectRole](#ondewo.nlu.ProjectRole) |  |
| DeleteProjectRole | [DeleteProjectRoleRequest](#ondewo.nlu.DeleteProjectRoleRequest) | [.google.protobuf.Empty](#google.protobuf.Empty) |  |
| UpdateProjectRole | [UpdateProjectRoleRequest](#ondewo.nlu.UpdateProjectRoleRequest) | [ProjectRole](#ondewo.nlu.ProjectRole) |  |
| ListProjectRoles | [ListProjectRolesRequest](#ondewo.nlu.ListProjectRolesRequest) | [ListProjectRolesResponse](#ondewo.nlu.ListProjectRolesResponse) |  |

 <!-- end services -->



<a name="ondewo/nlu/project_statistics.proto"></a>
<p align="right"><a href="#top">Top</a></p>

## ondewo/nlu/project_statistics.proto



<a name="ondewo.nlu.GetEntityTypeCountRequest"></a>

### GetEntityTypeCountRequest



| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| parent | [string](#string) |  | Required. The parent/path of the project to get the statistic from.

Example: * `projects/<Project ID>/agent` |
| filter_by_category | [EntityTypeCategory](#ondewo.nlu.EntityTypeCategory) |  | Optional. Applies a filter to the list to be counted. Default, no filter. |






<a name="ondewo.nlu.GetIntentCountRequest"></a>

### GetIntentCountRequest



| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| parent | [string](#string) |  | Required. The parent/path of the project to get the statistic from.

Example: * `projects/<Project ID>/agent` |
| filter_by_category | [IntentCategory](#ondewo.nlu.IntentCategory) |  | Optional. Applies a filter to the list to be counted. Default, no filter. |






<a name="ondewo.nlu.GetProjectElementStatRequest"></a>

### GetProjectElementStatRequest



| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| name | [string](#string) |  | Required. The name/path of the concept to get the statistic from.

Example: * `projects/<Project ID>/agent/intents/<Intent ID>` * `projects/<Project ID>/agent/entityTypes/<Entity Type ID>` * `projects/<Project ID>/agent/entityTypes/<Entity Type ID>/entityValues/<Entity Value ID>` |
| language_code | [string](#string) |  |  |






<a name="ondewo.nlu.GetProjectStatRequest"></a>

### GetProjectStatRequest



| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| parent | [string](#string) |  | Required. The parent/path of the project to get the statistic from.

Example: * `projects/<Project ID>/agent` |





 <!-- end messages -->

 <!-- end enums -->

 <!-- end HasExtensions -->


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

 <!-- end services -->



<a name="ondewo/nlu/server_statistics.proto"></a>
<p align="right"><a href="#top">Top</a></p>

## ondewo/nlu/server_statistics.proto



<a name="ondewo.nlu.GetUserProjectCountRequest"></a>

### GetUserProjectCountRequest



| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| user_id | [string](#string) |  | Required. The ID of the User to count the projects from |





 <!-- end messages -->

 <!-- end enums -->

 <!-- end HasExtensions -->


<a name="ondewo.nlu.ServerStatistics"></a>

### ServerStatistics


| Method Name | Request Type | Response Type | Description |
| ----------- | ------------ | ------------- | ------------|
| GetProjectCount | [.google.protobuf.Empty](#google.protobuf.Empty) | [StatResponse](#ondewo.nlu.StatResponse) |  |
| GetUserProjectCount | [GetUserProjectCountRequest](#ondewo.nlu.GetUserProjectCountRequest) | [StatResponse](#ondewo.nlu.StatResponse) |  |
| GetUserCount | [.google.protobuf.Empty](#google.protobuf.Empty) | [StatResponse](#ondewo.nlu.StatResponse) |  |

 <!-- end services -->



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
| session_id | [string](#string) |  | The unique identifier for the session under review Format: `projects/<PROJECT_ID>/agent/sessions/<SESSION_ID>`. |
| parent_review_id | [string](#string) |  | Optional: The unique identifier of the parent review Format: `projects/<PROJECT_ID>/agent/sessions/<SESSION_ID>/reviews/<SESSION_REVIEW_ID>`. |
| session_review | [SessionReview](#ondewo.nlu.SessionReview) |  | The reviews for all steps in the session |
| session_review_view | [SessionReview.View](#ondewo.nlu.SessionReview.View) |  |  |






<a name="ondewo.nlu.DeleteSessionRequest"></a>

### DeleteSessionRequest



| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| session_id | [string](#string) |  | Required. The session to be deleted Format: `projects/<PROJECT_ID>/agent/sessions/<SESSION_UUID>`. |






<a name="ondewo.nlu.DetectIntentRequest"></a>

### DetectIntentRequest
The request to detect user's intent.


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| session | [string](#string) |  | Required. The name of the session this query is sent to. Format: `projects/<Project ID>/agent/sessions/<Session ID>`. It's up to the API caller to choose an appropriate session ID. It can be a random number or some type of user identifier (preferably hashed). The length of the session ID must not exceed 36 bytes. |
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
| required_param_missing | [bool](#bool) |  | This field is set to: - `true` if the matched intent has required parameters and not all of the required parameter values have been collected. - `false` if all required parameter values have been collected, or if the matched intent doesn't contain any required parameters. |






<a name="ondewo.nlu.EventInput"></a>

### EventInput
Events allow for matching intents by event name instead of the natural
language input. For instance, input `<event: { name: “welcome_event”,
parameters: { name: “Sam” } }>` can trigger a personalized welcome response.
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
| session_id | [string](#string) |  | The unique identifier of the session for which the latest review should be returned Format: `projects/<PROJECT_ID>/agent/sessions/<SESSION_ID>`. |
| session_review_view | [SessionReview.View](#ondewo.nlu.SessionReview.View) |  | An enum specifying the amount of information to be returned for the desired session review |






<a name="ondewo.nlu.GetSessionRequest"></a>

### GetSessionRequest



| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| session_id | [string](#string) |  | The session to be returned Format: `projects/<PROJECT_ID>/agent/sessions/<SESSION_ID>`. |
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
| parent | [string](#string) |  | The parent for which the labels for all sessions should be listed Format: `projects/<PROJECT_ID>/agent`. |






<a name="ondewo.nlu.ListSessionLabelsResponse"></a>

### ListSessionLabelsResponse



| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| labels | [string](#string) | repeated |  |






<a name="ondewo.nlu.ListSessionReviewsRequest"></a>

### ListSessionReviewsRequest



| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| session_id | [string](#string) |  | The unique identifier for the session for which reviews should be listed Format: `projects/<PROJECT_ID>/agent/sessions/<SESSION_ID>`. |
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
| parent | [string](#string) |  | The parent for which sessions should be listed Format: `projects/<PROJECT_ID>/agent`. |
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

You should not rely on this field as it isn't guaranteed to be accurate, or even set. In particular this field isn't set in Webhook calls and for StreamingDetectIntent since the streaming endpoint has separate confidence estimates per portion of the audio in StreamingRecognitionResult. |
| action | [string](#string) |  | The action name from the matched intent. |
| parameters | [google.protobuf.Struct](#google.protobuf.Struct) |  | The collection of extracted parameters. |
| all_required_params_present | [bool](#bool) |  | This field is set to: - `false` if the matched intent has required parameters and not all of the required parameter values have been collected. - `true` if all required parameter values have been collected, or if the matched intent doesn't contain any required parameters. |
| fulfillment_text | [string](#string) |  | The text to be pronounced to the user or shown on the screen. |
| fulfillment_messages | [Intent.Message](#ondewo.nlu.Intent.Message) | repeated | The collection of rich messages to present to the user. |
| webhook_source | [string](#string) |  | If the query was fulfilled by a webhook call, this field is set to the value of the `source` field returned in the webhook response. |
| webhook_payload | [google.protobuf.Struct](#google.protobuf.Struct) |  | If the query was fulfilled by a webhook call, this field is set to the value of the `payload` field returned in the webhook response. |
| output_contexts | [Context](#ondewo.nlu.Context) | repeated | The collection of output contexts. If applicable, `output_contexts.parameters` contains entries with name `<parameter name>.original` containing the original parameter values before the query. |
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
| min_intents_confidence_max | [float](#float) |  | defaults to +1 if not set |
| min_entity_types_confidence_min | [float](#float) |  | Match only sessions where the minimum confidence for entity recognition along the session falls in the following range

defaults to -1 if not set |
| min_entity_types_confidence_max | [float](#float) |  | defaults to +1 if not set |
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
| session_review_id | [string](#string) |  | The unique identifier for the given review Format: `projects/<PROJECT_ID>/agent/sessions/<SESSION_ID>/reviews/<SESSION_REVIEW_ID>`. |
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
| session | [string](#string) |  | Required. The name of the session the query is sent to. Format of the session name: `projects/<Project ID>/agent/sessions/<Session ID>`. It’s up to the API caller to choose an appropriate <Session ID>. It can be a random number or some type of user identifier (preferably hashed). The length of the session ID must not exceed 36 characters. |
| query_params | [QueryParameters](#ondewo.nlu.QueryParameters) |  | Optional. The parameters of this query. |
| query_input | [QueryInput](#ondewo.nlu.QueryInput) |  | Required. The input specification. It can be set to:

1. an audio config which instructs the speech recognizer how to process the speech audio,

2. a conversational query in the form of text, or

3. an event that specifies which intent to trigger. |
| single_utterance | [bool](#bool) |  | Optional. If `false` (default), recognition does not cease until the client closes the stream. If `true`, the recognizer will detect a single spoken utterance in input audio. Recognition ceases when it detects the audio's voice has stopped or paused. In this case, once a detected intent is received, the client should close the stream and start a new request with a new stream as needed. This setting is ignored when `query_input` is a piece of text or an event. |
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

1.  transcript: "tube"

2.  transcript: "to be a"

3.  transcript: "to be"

4.  transcript: "to be or not to be"
    is_final: true

5.  transcript: " that's"

6.  transcript: " that is"

7.  recognition_event_type: `RECOGNITION_EVENT_END_OF_SINGLE_UTTERANCE`

8.  transcript: " that is the question"
    is_final: true

Only two of the responses contain final results (#4 and #8 indicated by
`is_final: true`). Concatenating these generates the full transcript: "to be
or not to be that is the question".

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





 <!-- end messages -->


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
| END_OF_SINGLE_UTTERANCE | 2 | Event indicates that the server has detected the end of the user's speech utterance and expects no additional speech. Therefore, the server will not process additional audio (although it may subsequently return additional results). The client should stop sending additional audio data, half-close the gRPC connection, and wait for any additional results until the server closes the gRPC connection. This message is only sent if `single_utterance` was set to `true`, and is not used otherwise. |


 <!-- end enums -->

 <!-- end HasExtensions -->


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

 <!-- end services -->



<a name="ondewo/nlu/user.proto"></a>
<p align="right"><a href="#top">Top</a></p>

## ondewo/nlu/user.proto



<a name="ondewo.nlu.CreateServerRoleRequest"></a>

### CreateServerRoleRequest



| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| role | [ServerRole](#ondewo.nlu.ServerRole) |  | If the role_id is not provided, an incremental value will be assigned The "name" and "role_type" are mandatory values The permissions all default to False if not provided specifically |






<a name="ondewo.nlu.CreateUserRequest"></a>

### CreateUserRequest



| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| user | [User](#ondewo.nlu.User) |  |  |
| password | [string](#string) |  |  |






<a name="ondewo.nlu.DeleteServerRoleRequest"></a>

### DeleteServerRoleRequest



| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| role_id | [uint32](#uint32) |  | role is identified by role id, if empty will throw an error in the backend |






<a name="ondewo.nlu.DeleteUserRequest"></a>

### DeleteUserRequest



| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| user_id | [string](#string) |  | user is identified by user id, if empty will throw an error in the backend |






<a name="ondewo.nlu.GetServerRoleRequest"></a>

### GetServerRoleRequest



| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| role_id | [uint32](#uint32) |  | role is identified by role id |
| role_name | [string](#string) |  | role can also be uniquely identified by its name |






<a name="ondewo.nlu.GetUserRequest"></a>

### GetUserRequest



| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| user_id | [string](#string) |  | the user is identified by user id |
| user_email | [string](#string) |  | the user can identified by their email |






<a name="ondewo.nlu.ListServerPermissionsRequest"></a>

### ListServerPermissionsRequest
Server permissions


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| page_token | [string](#string) |  | Optional. The next_page_token value returned from a previous list request. |






<a name="ondewo.nlu.ListServerPermissionsResponse"></a>

### ListServerPermissionsResponse



| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| permissions | [string](#string) | repeated | The list of server permissions. There will be a maximum number of items returned based on the page_token field in the request. |
| next_page_token | [string](#string) |  | Token to retrieve the next page of results, or empty if there are no more results in the list. |






<a name="ondewo.nlu.ListServerRolesRequest"></a>

### ListServerRolesRequest



| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| page_token | [string](#string) |  | Optional. The next_page_token value returned from a previous list request. |






<a name="ondewo.nlu.ListServerRolesResponse"></a>

### ListServerRolesResponse



| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| server_roles | [ServerRole](#ondewo.nlu.ServerRole) | repeated | The list of server roles. There will be a maximum number of items returned based on the page_token field in the request. |
| next_page_token | [string](#string) |  | Token to retrieve the next page of results, or empty if there are no more results in the list. |






<a name="ondewo.nlu.ListUserInfosResponse"></a>

### ListUserInfosResponse



| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| users | [UserInfo](#ondewo.nlu.UserInfo) | repeated | The list of server roles. There will be a maximum number of items returned based on the page_token field in the request. |
| next_page_token | [string](#string) |  | Token to retrieve the next page of results, or empty if there are no more results in the list. |






<a name="ondewo.nlu.ListUsersRequest"></a>

### ListUsersRequest



| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| page_token | [string](#string) |  | Optional. The next_page_token value returned from a previous list request. |






<a name="ondewo.nlu.ListUsersResponse"></a>

### ListUsersResponse



| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| users | [User](#ondewo.nlu.User) | repeated | The list of users. There will be a maximum number of items returned based on the page_token field in the request. |
| next_page_token | [string](#string) |  | Token to retrieve the next page of results, or empty if there are no more results in the list. |






<a name="ondewo.nlu.LoginRequest"></a>

### LoginRequest
Authentication messages


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| user_email | [string](#string) |  |  |
| password | [string](#string) |  |  |






<a name="ondewo.nlu.LoginResponse"></a>

### LoginResponse



| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| user | [User](#ondewo.nlu.User) |  |  |
| auth_token | [string](#string) |  |  |






<a name="ondewo.nlu.ServerRole"></a>

### ServerRole
Server Role messages


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| role_id | [uint32](#uint32) |  | unique identifier of the role |
| name | [string](#string) |  | unique name of the role |
| permissions | [string](#string) | repeated | defines the permissions for the given role (the strings can be gotten from the ListServerPermissions) |






<a name="ondewo.nlu.UpdateServerRoleRequest"></a>

### UpdateServerRoleRequest



| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| role | [ServerRole](#ondewo.nlu.ServerRole) |  | role_id in the Role message should be given, if empty will throw an error in the backend other fields in the Role are optional. Only the fields to be updated should be provided |
| update_mask | [google.protobuf.FieldMask](#google.protobuf.FieldMask) |  | Optional. The mask to control which fields get updated. |






<a name="ondewo.nlu.UpdateUserRequest"></a>

### UpdateUserRequest



| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| user | [User](#ondewo.nlu.User) |  | user_id in the User message should be given, if empty will throw an error in the backend password and other fields in the User are optional. Only the fields to be updated should be provided |
| password | [string](#string) |  |  |
| update_mask | [google.protobuf.FieldMask](#google.protobuf.FieldMask) |  | Optional. The mask to control which fields get updated. |






<a name="ondewo.nlu.User"></a>

### User
this message contains all the fields that required for user db


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| user_id | [string](#string) |  | when creating user user_id is empty, then it will be generated on creation time on backend |
| display_name | [string](#string) |  | Optional field display_name is the name that will be used on the frontend to interact with the user it shouldn't be unique. If not provided user_name will also be used as display name |
| server_role_id | [uint32](#uint32) |  | server role type of the given user. If nothing is provided, the user is set to USER (minimum access) |
| user_email | [string](#string) |  | user e-mail should be a valid e-mail and unique |






<a name="ondewo.nlu.UserInfo"></a>

### UserInfo



| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| user | [User](#ondewo.nlu.User) |  |  |
| project_roles | [UserInfo.ProjectRolesEntry](#ondewo.nlu.UserInfo.ProjectRolesEntry) | repeated | If in GetUser, ListUser requests UserView is FULL, then the mapping is additionally provided of parent of the project and corresponding ProjectRole of the user |






<a name="ondewo.nlu.UserInfo.ProjectRolesEntry"></a>

### UserInfo.ProjectRolesEntry



| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| key | [string](#string) |  |  |
| value | [ProjectRole](#ondewo.nlu.ProjectRole) |  |  |





 <!-- end messages -->


<a name="ondewo.nlu.DefaultServerRole"></a>

### DefaultServerRole


| Name | Number | Description |
| ---- | ------ | ----------- |
| SERVER_UNSPECIFIED | 0 | unspecified server role |
| SERVER_USER | 1 | read-only access |
| SERVER_MANAGER | 2 | SERVER_USER's permissions + CRUD of projects and Users |
| SERVER_ADMIN | 3 | this role can do everything |
| SERVER_INACTIVE | 4 | this role can do nothing. Used to set a user as inactive in the server. |


 <!-- end enums -->

 <!-- end HasExtensions -->


<a name="ondewo.nlu.Users"></a>

### Users


| Method Name | Request Type | Response Type | Description |
| ----------- | ------------ | ------------- | ------------|
| CreateUser | [CreateUserRequest](#ondewo.nlu.CreateUserRequest) | [User](#ondewo.nlu.User) |  |
| GetUser | [GetUserRequest](#ondewo.nlu.GetUserRequest) | [User](#ondewo.nlu.User) |  |
| GetUserInfo | [GetUserRequest](#ondewo.nlu.GetUserRequest) | [UserInfo](#ondewo.nlu.UserInfo) |  |
| DeleteUser | [GetUserRequest](#ondewo.nlu.GetUserRequest) | [.google.protobuf.Empty](#google.protobuf.Empty) |  |
| UpdateUser | [UpdateUserRequest](#ondewo.nlu.UpdateUserRequest) | [User](#ondewo.nlu.User) |  |
| ListUsers | [ListUsersRequest](#ondewo.nlu.ListUsersRequest) | [ListUsersResponse](#ondewo.nlu.ListUsersResponse) |  |
| ListUserInfos | [ListUsersRequest](#ondewo.nlu.ListUsersRequest) | [ListUserInfosResponse](#ondewo.nlu.ListUserInfosResponse) |  |
| CreateServerRole | [CreateServerRoleRequest](#ondewo.nlu.CreateServerRoleRequest) | [ServerRole](#ondewo.nlu.ServerRole) |  |
| GetServerRole | [GetServerRoleRequest](#ondewo.nlu.GetServerRoleRequest) | [ServerRole](#ondewo.nlu.ServerRole) |  |
| DeleteServerRole | [DeleteServerRoleRequest](#ondewo.nlu.DeleteServerRoleRequest) | [.google.protobuf.Empty](#google.protobuf.Empty) |  |
| UpdateServerRole | [UpdateServerRoleRequest](#ondewo.nlu.UpdateServerRoleRequest) | [ServerRole](#ondewo.nlu.ServerRole) |  |
| ListServerRoles | [ListServerRolesRequest](#ondewo.nlu.ListServerRolesRequest) | [ListServerRolesResponse](#ondewo.nlu.ListServerRolesResponse) |  |
| ListServerPermissions | [ListServerPermissionsRequest](#ondewo.nlu.ListServerPermissionsRequest) | [ListServerPermissionsResponse](#ondewo.nlu.ListServerPermissionsResponse) |  |
| Login | [LoginRequest](#ondewo.nlu.LoginRequest) | [LoginResponse](#ondewo.nlu.LoginResponse) |  |
| CheckLogin | [.google.protobuf.Empty](#google.protobuf.Empty) | [.google.protobuf.Empty](#google.protobuf.Empty) |  |

 <!-- end services -->



<a name="ondewo/nlu/utility.proto"></a>
<p align="right"><a href="#top">Top</a></p>

## ondewo/nlu/utility.proto



<a name="ondewo.nlu.AddTrainingPhrasesFromCSVRequest"></a>

### AddTrainingPhrasesFromCSVRequest
Request message to AddTrainingPhraseFromCSV rpc


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| parent | [string](#string) |  | Required. The agent to list all intents from. Format: `projects/<Project ID>/agent`. |
| language_code | [string](#string) |  | Required. The language to list training phrases, parameters and rich messages for. If not specified, the agent's default language is used. Note: languages must be enabled in the agent before they can be used. |
| csv_contents | [bytes](#bytes) |  | Required. Contents of the .csv file containing training phrases to be added to the intents |
| extract_entities | [bool](#bool) |  | Optional. Whether or not to extract entities for the new training phrases |
| special_characters | [string](#string) |  | Optional. Before new training phrases are added to their corresponding intent, they are cleaned with cleaning scripts. These cleaning scripts remove certain special characters, if they are found at the beginning of the text or if they appear in annotations. Overrides the default: '.,;!?:' |
| training_phrase_cleaner_options | [TrainingPhraseCleanerOptions](#ondewo.nlu.TrainingPhraseCleanerOptions) |  | Optional. Options for the training phrase cleaner to override the default settings |
| number_of_workers | [int32](#int32) |  | Optional. Number of threads used to accomplish the task |






<a name="ondewo.nlu.AddTrainingPhrasesRequest"></a>

### AddTrainingPhrasesRequest
Request message to AddTrainingPhrase rpc


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| parent | [string](#string) |  | Required. The agent to list all intents from. Format: `projects/<Project ID>/agent`. |
| language_code | [string](#string) |  | Required. The language to list training phrases, parameters and rich messages for. If not specified, the agent's default language is used. Note: languages must be enabled in the agent before they can be used. |
| training_phrase_list | [AddTrainingPhrasesRequest.TrainingPhraseForIntent](#ondewo.nlu.AddTrainingPhrasesRequest.TrainingPhraseForIntent) | repeated | Required. List of training phrases to be added to the intent |
| extract_entities | [bool](#bool) |  | Optional. Whether or not to extract entities for the new training phrases |
| special_characters | [string](#string) |  | Optional. Characters to be recognized as special characters for cleaning the training phrases. Overrides the default: '.,;!?:' |
| training_phrase_cleaner_options | [TrainingPhraseCleanerOptions](#ondewo.nlu.TrainingPhraseCleanerOptions) |  | Optional. Options for the training phrase cleaner to override the default settings |
| number_of_workers | [int32](#int32) |  | Optional. Number of threads used to accomplish the task |






<a name="ondewo.nlu.AddTrainingPhrasesRequest.TrainingPhraseForIntent"></a>

### AddTrainingPhrasesRequest.TrainingPhraseForIntent
Message that contains the new training phrase, together with the intent display name
and, optionally the entity annotations


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| training_phrase | [string](#string) |  | Required. New training phrase to be added |
| intent_display_name | [string](#string) |  | Required. Corresponding display name of the intent |
| entities | [Intent.TrainingPhrase.Entity](#ondewo.nlu.Intent.TrainingPhrase.Entity) | repeated | Optional. Entity annotations |






<a name="ondewo.nlu.AddTrainingPhrasesResponse"></a>

### AddTrainingPhrasesResponse
Response message to AddTrainingPhrase rpc


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| error_messages | [string](#string) | repeated | Required. If something goes wrong, error messages will be conveyed via a repeated string |






<a name="ondewo.nlu.CleanAllEntityTypesRequest"></a>

### CleanAllEntityTypesRequest
Request to clean the entity types


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| parent | [string](#string) |  | Required. The agent to list all intents from. Format: `projects/<Project ID>/agent`. |
| language_code | [string](#string) |  | Optional. The language to list training phrases, parameters and rich messages for. If not specified, the agent's default language is used. Note: languages must be enabled in the agent before they can be used. |
| special_characters | [string](#string) |  | Optional. Characters to be recognized as special characters for cleaning. Overrides the default: '.,;!?:' |
| substring_white_list | [string](#string) | repeated | Optional. List of substring that shall not be cleaned/deleted. Example: ['St.', 'U.S.', 'sys.', '24.12.', 'Nr.', 'TelNr.'] |
| max_entity_count_update | [int32](#int32) |  | Optional. Entity type that contain more than max_entity_count_update entities will not be cleaned. Relevant for auto-generated entity values (e.g. City Names) Default = 10000 |
| forbidden_entity_type_patterns | [string](#string) | repeated | Optional. List of strings or regexes. Entity types will be deleted if their display name matches an element of this list Example: ['sys.ignore.'] -> would delete entity types with display names sys.ignore.* |
| dry_run | [bool](#bool) |  | Required. Do not apply changes to the database if set to True |
| number_of_workers | [int32](#int32) |  | Optional. Number of threads used to accomplish the task |






<a name="ondewo.nlu.CleanAllEntityTypesResponse"></a>

### CleanAllEntityTypesResponse
Response from entity type cleaner


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| cleaned_entity_types | [EntityType](#ondewo.nlu.EntityType) | repeated | Required. List of updated entity types |
| deleted_entity_types | [EntityType](#ondewo.nlu.EntityType) | repeated | Optional. List of updated entity types |
| entity_type_updates | [EntityTypeUpdate](#ondewo.nlu.EntityTypeUpdate) | repeated | Optional. List of updates performed on entity types |
| entity_type_deletions | [EntityTypeUpdate](#ondewo.nlu.EntityTypeUpdate) | repeated | Optional. List of the deleted entity types |






<a name="ondewo.nlu.CleanAllIntentsRequest"></a>

### CleanAllIntentsRequest
The request to clean the all intents.


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| parent | [string](#string) |  | Required. The agent to list all intents from. Format: `projects/<Project ID>/agent`. |
| language_code | [string](#string) |  | Optional. The language to list training phrases, parameters and rich messages for. If not specified, the agent's default language is used. Note: languages must be enabled in the agent before they can be used. |
| special_characters | [string](#string) |  | Optional. Characters to be recognized as special characters for cleaning. Overrides the default: '.,;!?:' |
| substring_white_list | [string](#string) | repeated | Optional. List of substring that shall not be cleaned/deleted. Example: ['St.', 'U.S.', 'sys.', '24.12.', 'Nr.', 'TelNr.'] Default = None |
| dry_run | [bool](#bool) |  | Required. Do not apply changes to the database if set to True |
| training_phrase_cleaner_options | [TrainingPhraseCleanerOptions](#ondewo.nlu.TrainingPhraseCleanerOptions) |  | Optional. Options for the cleaning of the training phrases. |
| reannotate_entities_options | [ReannotateEntitiesOptions](#ondewo.nlu.ReannotateEntitiesOptions) |  | Optional. Options for re-annotation of entities (default = REANNOTATE_NEVER) |
| number_of_workers | [int32](#int32) |  | Optional. Number of threads used to accomplish the task |






<a name="ondewo.nlu.CleanAllIntentsResponse"></a>

### CleanAllIntentsResponse
Response corresponding to the CleanAllIntents Request


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| cleaned_intents | [Intent](#ondewo.nlu.Intent) | repeated | Required. List of updates performed on intents |
| intent_update_list | [IntentUpdate](#ondewo.nlu.IntentUpdate) | repeated | Optional. List of updates applied to intents |






<a name="ondewo.nlu.CleanEntityTypeRequest"></a>

### CleanEntityTypeRequest
Request to clean a single entity type


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| parent | [string](#string) |  | Required. The agent to list all intents from. Format: `projects/<Project ID>/agent`. |
| entity_type_name | [string](#string) |  | Required. The name of the entity_type |
| language_code | [string](#string) |  | Optional. The language to list training phrases, parameters and rich messages for. If not specified, the agent's default language is used. Note: languages must be enabled in the agent before they can be used. |
| special_characters | [string](#string) |  | Optional. Characters to be recognized as special characters for cleaning. Overrides the default: '.,;!?:' |
| substring_white_list | [string](#string) | repeated | Optional. List of substring that shall not be cleaned/deleted. Example: ['St.', 'U.S.', 'sys.', '24.12.', 'Nr.', 'TelNr.'] |
| max_entity_count_update | [int32](#int32) |  | Optional. Entity type that contain more than max_entity_count_update entities will not be cleaned. Relevant for auto-generated entity values (e.g. City Names) Default = 10000 |
| dry_run | [bool](#bool) |  | Required. Do not apply changes to the database if set to True |






<a name="ondewo.nlu.CleanEntityTypeResponse"></a>

### CleanEntityTypeResponse
Response from entity type cleaner


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| cleaned_entity_type | [EntityType](#ondewo.nlu.EntityType) |  | Required. The cleaned entity type |
| entity_type_update | [EntityTypeUpdate](#ondewo.nlu.EntityTypeUpdate) |  | Optional. The updated entity type |






<a name="ondewo.nlu.CleanIntentRequest"></a>

### CleanIntentRequest
The request message to clean a single intents.


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| parent | [string](#string) |  | Required. The agent to list all intents from. Format: `projects/<Project ID>/agent`. |
| intent_name | [string](#string) |  | Required. The name of the intent. Format: `projects/<Project ID>/agent/intents/<Intent ID>`. |
| language_code | [string](#string) |  | Optional. The language to list training phrases, parameters and rich messages for. If not specified, the agent's default language is used. Note: languages must be enabled in the agent before they can be used. |
| special_characters | [string](#string) |  | Optional. Characters to be recognized as special characters for cleaning. Overrides the default: '.,;!?:' |
| substring_white_list | [string](#string) | repeated | Optional. List of substring that shall not be cleaned/deleted. Example: ['St.', 'U.S.', 'sys.', '24.12.', 'Nr.', 'TelNr.'] Default = None |
| dry_run | [bool](#bool) |  | Required. Do not apply changes to the database if set to True |
| training_phrase_cleaner_options | [TrainingPhraseCleanerOptions](#ondewo.nlu.TrainingPhraseCleanerOptions) |  | Optional. Options for the cleaning of the training phrases. |
| reannotate_entities_options | [ReannotateEntitiesOptions](#ondewo.nlu.ReannotateEntitiesOptions) |  | Optional. Options for re-annotation of entities (default = REANNOTATE_NEVER) |






<a name="ondewo.nlu.CleanIntentResponse"></a>

### CleanIntentResponse
The response message to clean a single intents.


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| cleaned_intent | [Intent](#ondewo.nlu.Intent) |  | Required. Cleaned Intent |
| intent_update | [IntentUpdate](#ondewo.nlu.IntentUpdate) |  | Optional. Updates applied to intent |






<a name="ondewo.nlu.EntityTypeUpdate"></a>

### EntityTypeUpdate
Stores updates applied to an entity type


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| entity_type_name | [string](#string) |  | The entity type name |
| values_update_list | [EntityTypeUpdate.EntityUpdate](#ondewo.nlu.EntityTypeUpdate.EntityUpdate) | repeated | List of the updated entities |






<a name="ondewo.nlu.EntityTypeUpdate.EntityUpdate"></a>

### EntityTypeUpdate.EntityUpdate
Stores updates applied to an entity


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| entity_value_update | [StringUpdate](#ondewo.nlu.StringUpdate) |  | Updates made to the entity value |
| entity_synonym_updates | [StringUpdate](#ondewo.nlu.StringUpdate) | repeated | Updates made to the entity synonyms |






<a name="ondewo.nlu.IntentUpdate"></a>

### IntentUpdate
Stores updates applied to an intent


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| intent_display_name | [string](#string) |  | The display name of the intent |
| training_phrase_update_list | [IntentUpdate.TrainingPhraseUpdate](#ondewo.nlu.IntentUpdate.TrainingPhraseUpdate) | repeated | List of the updated training phrases |
| deleted_parameters | [string](#string) | repeated | List of the deleted parameters |






<a name="ondewo.nlu.IntentUpdate.TrainingPhraseUpdate"></a>

### IntentUpdate.TrainingPhraseUpdate
Message to track the updates made to a training phrase


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| training_phrase_update | [StringUpdate](#ondewo.nlu.StringUpdate) |  | Stores updates of training phrases |
| entity_updates | [StringUpdate](#ondewo.nlu.StringUpdate) | repeated | Stores updates of entity strings |
| entities_reannotated | [string](#string) | repeated | Stores re-annotated entity strings |
| contains_update_variable | [bool](#bool) |  | Will be switched to True if at least one update has been performed |






<a name="ondewo.nlu.StringUpdate"></a>

### StringUpdate
Message to keep track of updated strings


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| new | [string](#string) |  | New version of the string |
| old | [string](#string) |  | Old version of the string |






<a name="ondewo.nlu.TrainingPhraseCleanerOptions"></a>

### TrainingPhraseCleanerOptions
Options for cleaning the training phrases


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| delete_repeated_whitespaces | [bool](#bool) |  | Whether or not to delete repeated whitespaces |
| delete_leading_special_characters | [bool](#bool) |  | Whether of not to delete leading special characters |
| delete_trailing_special_characters | [bool](#bool) |  | Whether of not to delete trailing special characters |






<a name="ondewo.nlu.ValidateEmbeddedRegexRequest"></a>

### ValidateEmbeddedRegexRequest
Validation request for entity type values


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| entity_type | [EntityType.Entity](#ondewo.nlu.EntityType.Entity) |  |  |






<a name="ondewo.nlu.ValidateEmbeddedRegexResponse"></a>

### ValidateEmbeddedRegexResponse
Response of the entity type validation


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| error_messages | [string](#string) | repeated | List of error message from the validation |






<a name="ondewo.nlu.ValidateRegexRequest"></a>

### ValidateRegexRequest
The request to validate regexes.


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| regex | [string](#string) |  | String containing the regex. |






<a name="ondewo.nlu.ValidateRegexResponse"></a>

### ValidateRegexResponse
The response of the regex validation


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| error_messages | [string](#string) | repeated | Error messages |





 <!-- end messages -->


<a name="ondewo.nlu.ReannotateEntitiesOptions"></a>

### ReannotateEntitiesOptions
Encapsulates entity re-annotation options

| Name | Number | Description |
| ---- | ------ | ----------- |
| REANNOTATE_NEVER | 0 | Never re-annotate training phrases |
| REANNOTATE_ALWAYS | 1 | Always re-annotate training phrases |
| REANNOTATE_IF_EMPTY | 2 | Re-annotate training phrases if there are no annotations |
| REANNOTATE_AFTER_DELETION | 3 | Re-annotate if training phrases have been deleted |
| REANNOTATE_IF_EMPTY_OR_AFTER_DELETION | 4 | Re-annotate if there are no annotations or if training phrases have been deleted |


 <!-- end enums -->

 <!-- end HasExtensions -->


<a name="ondewo.nlu.Utilities"></a>

### Utilities
This is collection of utility endpoints, intended to language-independent operations,
such as code checks, regex checks, etc.

Holds a collection of utility functions

| Method Name | Request Type | Response Type | Description |
| ----------- | ------------ | ------------- | ------------|
| ValidateRegex | [ValidateRegexRequest](#ondewo.nlu.ValidateRegexRequest) | [ValidateRegexResponse](#ondewo.nlu.ValidateRegexResponse) | Validates the validity of python regexes |
| ValidateEmbeddedRegex | [ValidateEmbeddedRegexRequest](#ondewo.nlu.ValidateEmbeddedRegexRequest) | [ValidateEmbeddedRegexResponse](#ondewo.nlu.ValidateEmbeddedRegexResponse) | Validate that entity types with group references have synonyms with capturing groups. |
| CleanAllIntents | [CleanAllIntentsRequest](#ondewo.nlu.CleanAllIntentsRequest) | [CleanAllIntentsResponse](#ondewo.nlu.CleanAllIntentsResponse) | Cleans all intent training phrases and entity annotations of parent |
| CleanIntent | [CleanIntentRequest](#ondewo.nlu.CleanIntentRequest) | [CleanIntentResponse](#ondewo.nlu.CleanIntentResponse) | Cleans single intent training phrases and entity annotations |
| CleanAllEntityTypes | [CleanAllEntityTypesRequest](#ondewo.nlu.CleanAllEntityTypesRequest) | [CleanAllEntityTypesResponse](#ondewo.nlu.CleanAllEntityTypesResponse) | Cleans all entity types of parent |
| CleanEntityType | [CleanEntityTypeRequest](#ondewo.nlu.CleanEntityTypeRequest) | [CleanEntityTypeResponse](#ondewo.nlu.CleanEntityTypeResponse) | Cleans entity type |
| AddTrainingPhrases | [AddTrainingPhrasesRequest](#ondewo.nlu.AddTrainingPhrasesRequest) | [AddTrainingPhrasesResponse](#ondewo.nlu.AddTrainingPhrasesResponse) | Creates new training phrases corresponding to intent specified by its intent display name |
| AddTrainingPhrasesFromCSV | [AddTrainingPhrasesFromCSVRequest](#ondewo.nlu.AddTrainingPhrasesFromCSVRequest) | [AddTrainingPhrasesResponse](#ondewo.nlu.AddTrainingPhrasesResponse) | Creates new training phrases corresponding to intent specified by its intent display name from csv file |

 <!-- end services -->



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
| is_reachable | [bool](#bool) |  | This is the response message of a Ping request. It's purpose is to report the reachability of a Webhook server. |






<a name="ondewo.nlu.WebhookRequest"></a>

### WebhookRequest
The request message for a webhook call.


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| session | [string](#string) |  | The unique identifier of detectIntent request session. Can be used to identify end-user inside webhook implementation. Format: `projects/<Project ID>/agent/sessions/<Session ID>`. |
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

This field can be used for Actions on Google responses. It should have a structure similar to the JSON message shown here. For more information, see [Actions on Google Webhook Format](https://developers.google.com/actions/dialogflow/webhook) <pre>{ "google": { "expectUserResponse": true, "richResponse": { "items": [ { "simpleResponse": { "textToSpeech": "this is a simple response" } } ] } } }</pre> |
| output_contexts | [Context](#ondewo.nlu.Context) | repeated | Optional. The collection of output contexts. This value is passed directly to `QueryResult.output_contexts`. |
| followup_event_input | [EventInput](#ondewo.nlu.EventInput) |  | Optional. Makes the platform immediately invoke another `DetectIntent` call internally with the specified event as input. |





 <!-- end messages -->

 <!-- end enums -->

 <!-- end HasExtensions -->


<a name="ondewo.nlu.Webhook"></a>

### Webhook
service to send requests to a webhook server

| Method Name | Request Type | Response Type | Description |
| ----------- | ------------ | ------------- | ------------|
| ResponseRefinement | [WebhookRequest](#ondewo.nlu.WebhookRequest) | [WebhookResponse](#ondewo.nlu.WebhookResponse) | send a request for /response_refinement/ to the webhook server fulfillment messages can be overwritten by the webhook server |
| SlotFilling | [WebhookRequest](#ondewo.nlu.WebhookRequest) | [WebhookResponse](#ondewo.nlu.WebhookResponse) | send a request for /slot_filling/ to the webhook server parameter values can be provided & context information can be changed by the webhook server |
| Ping | [PingRequest](#ondewo.nlu.PingRequest) | [PingResponse](#ondewo.nlu.PingResponse) | send a Ping to the webhook server to check server health will return True if http status_code==200 is detected in the response |

 <!-- end services -->



<a name="ondewo/qa/qa.proto"></a>
<p align="right"><a href="#top">Top</a></p>

## ondewo/qa/qa.proto



<a name="ondewo.qa.GetAnswerRequest"></a>

### GetAnswerRequest
The request message


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| session_id | [string](#string) |  | Required. The name of the QA session. |
| text | [ondewo.nlu.TextInput](#ondewo.nlu.TextInput) |  | Required. The context of the request. A string, in the form of a sentence. |
| max_num_answers | [int32](#int32) |  | Maximal number of answers returned |
| threshold_reader | [float](#float) |  | Threshold (minimal score) to give back reader result |
| threshold_retriever | [float](#float) |  | Threshold (minimal score) to give back retriever result |
| threshold_overall | [float](#float) |  | Threshold (minimal score) overall probability |
| reader_model_name | [string](#string) |  | Reader model name |






<a name="ondewo.qa.GetAnswerResponse"></a>

### GetAnswerResponse
The response message containing the greetings


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| query_result | [ondewo.nlu.DetectIntentResponse](#ondewo.nlu.DetectIntentResponse) |  | The results of the conversational query or event processing. |






<a name="ondewo.qa.RunScraperResponse"></a>

### RunScraperResponse



| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| container_name | [string](#string) |  | Name of the docker container that is running the job |
| container_id | [string](#string) |  | ID of the docker container that is running the scraping job |






<a name="ondewo.qa.RunTrainingResponse"></a>

### RunTrainingResponse



| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| f1 | [float](#float) |  | Response message of training |
| accuracy | [float](#float) |  |  |





 <!-- end messages -->

 <!-- end enums -->

 <!-- end HasExtensions -->


<a name="ondewo.qa.QA"></a>

### QA


| Method Name | Request Type | Response Type | Description |
| ----------- | ------------ | ------------- | ------------|
| GetAnswer | [GetAnswerRequest](#ondewo.qa.GetAnswerRequest) | [GetAnswerResponse](#ondewo.qa.GetAnswerResponse) |  |
| RunScraper | [.google.protobuf.Empty](#google.protobuf.Empty) | [RunScraperResponse](#ondewo.qa.RunScraperResponse) |  |
| RunTraining | [.google.protobuf.Empty](#google.protobuf.Empty) | [RunTrainingResponse](#ondewo.qa.RunTrainingResponse) |  |

 <!-- end services -->



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
