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
    - [CustomPlatformInfo](#ondewo.nlu.CustomPlatformInfo)
    - [DeleteAgentRequest](#ondewo.nlu.DeleteAgentRequest)
    - [DeleteResourcesRequest](#ondewo.nlu.DeleteResourcesRequest)
    - [ExportAgentRequest](#ondewo.nlu.ExportAgentRequest)
    - [ExportAgentResponse](#ondewo.nlu.ExportAgentResponse)
    - [ExportBenchmarkAgentRequest](#ondewo.nlu.ExportBenchmarkAgentRequest)
    - [ExportBenchmarkAgentResponse](#ondewo.nlu.ExportBenchmarkAgentResponse)
    - [ExportBenchmarkAgentResponse.TrainingPhrasesEntry](#ondewo.nlu.ExportBenchmarkAgentResponse.TrainingPhrasesEntry)
    - [ExportResourcesRequest](#ondewo.nlu.ExportResourcesRequest)
    - [ExportResourcesResponse](#ondewo.nlu.ExportResourcesResponse)
    - [FullTextSearchRequest](#ondewo.nlu.FullTextSearchRequest)
    - [FullTextSearchResponseEntity](#ondewo.nlu.FullTextSearchResponseEntity)
    - [FullTextSearchResponseEntity.EntitySearchResult](#ondewo.nlu.FullTextSearchResponseEntity.EntitySearchResult)
    - [FullTextSearchResponseEntitySynonym](#ondewo.nlu.FullTextSearchResponseEntitySynonym)
    - [FullTextSearchResponseEntitySynonym.EntitySynonymSearchResult](#ondewo.nlu.FullTextSearchResponseEntitySynonym.EntitySynonymSearchResult)
    - [FullTextSearchResponseEntityType](#ondewo.nlu.FullTextSearchResponseEntityType)
    - [FullTextSearchResponseEntityType.EntityTypeSearchResult](#ondewo.nlu.FullTextSearchResponseEntityType.EntityTypeSearchResult)
    - [FullTextSearchResponseIntent](#ondewo.nlu.FullTextSearchResponseIntent)
    - [FullTextSearchResponseIntent.IntentSearchResult](#ondewo.nlu.FullTextSearchResponseIntent.IntentSearchResult)
    - [FullTextSearchResponseIntentContextIn](#ondewo.nlu.FullTextSearchResponseIntentContextIn)
    - [FullTextSearchResponseIntentContextIn.IntentContextInSearchResult](#ondewo.nlu.FullTextSearchResponseIntentContextIn.IntentContextInSearchResult)
    - [FullTextSearchResponseIntentContextOut](#ondewo.nlu.FullTextSearchResponseIntentContextOut)
    - [FullTextSearchResponseIntentContextOut.IntentContextOutSearchResult](#ondewo.nlu.FullTextSearchResponseIntentContextOut.IntentContextOutSearchResult)
    - [FullTextSearchResponseIntentParameters](#ondewo.nlu.FullTextSearchResponseIntentParameters)
    - [FullTextSearchResponseIntentParameters.IntentParametersSearchResult](#ondewo.nlu.FullTextSearchResponseIntentParameters.IntentParametersSearchResult)
    - [FullTextSearchResponseIntentResponse](#ondewo.nlu.FullTextSearchResponseIntentResponse)
    - [FullTextSearchResponseIntentResponse.IntentResponseSearchResult](#ondewo.nlu.FullTextSearchResponseIntentResponse.IntentResponseSearchResult)
    - [FullTextSearchResponseIntentTags](#ondewo.nlu.FullTextSearchResponseIntentTags)
    - [FullTextSearchResponseIntentTags.IntentTagsSearchResult](#ondewo.nlu.FullTextSearchResponseIntentTags.IntentTagsSearchResult)
    - [FullTextSearchResponseIntentUsersays](#ondewo.nlu.FullTextSearchResponseIntentUsersays)
    - [FullTextSearchResponseIntentUsersays.IntentUsersaysSearchResult](#ondewo.nlu.FullTextSearchResponseIntentUsersays.IntentUsersaysSearchResult)
    - [GetAgentRequest](#ondewo.nlu.GetAgentRequest)
    - [GetAgentStatisticsRequest](#ondewo.nlu.GetAgentStatisticsRequest)
    - [GetAgentStatisticsResponse](#ondewo.nlu.GetAgentStatisticsResponse)
    - [GetModelStatusesRequest](#ondewo.nlu.GetModelStatusesRequest)
    - [GetModelStatusesResponse](#ondewo.nlu.GetModelStatusesResponse)
    - [GetPlatformInfoResponse](#ondewo.nlu.GetPlatformInfoResponse)
    - [GetPlatformMappingRequest](#ondewo.nlu.GetPlatformMappingRequest)
    - [GetSessionsStatisticsRequest](#ondewo.nlu.GetSessionsStatisticsRequest)
    - [GetSessionsStatisticsResponse](#ondewo.nlu.GetSessionsStatisticsResponse)
    - [ImportAgentRequest](#ondewo.nlu.ImportAgentRequest)
    - [ListAgentsOfUserResponse](#ondewo.nlu.ListAgentsOfUserResponse)
    - [ListAgentsRequest](#ondewo.nlu.ListAgentsRequest)
    - [ListAgentsResponse](#ondewo.nlu.ListAgentsResponse)
    - [ListProjectPermissionsRequest](#ondewo.nlu.ListProjectPermissionsRequest)
    - [ListProjectPermissionsResponse](#ondewo.nlu.ListProjectPermissionsResponse)
    - [ListUsersInProjectRequest](#ondewo.nlu.ListUsersInProjectRequest)
    - [ListUsersInProjectResponse](#ondewo.nlu.ListUsersInProjectResponse)
    - [MigrateAgentRequest](#ondewo.nlu.MigrateAgentRequest)
    - [ModelStatus](#ondewo.nlu.ModelStatus)
    - [OptimizeRankingMatchRequest](#ondewo.nlu.OptimizeRankingMatchRequest)
    - [OptimizeRankingMatchResponse](#ondewo.nlu.OptimizeRankingMatchResponse)
    - [PlatformMapping](#ondewo.nlu.PlatformMapping)
    - [RankingMatchOptimizationConfig](#ondewo.nlu.RankingMatchOptimizationConfig)
    - [ReindexAgentRequest](#ondewo.nlu.ReindexAgentRequest)
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
    - [FullTextSearchRequest.QueryType](#ondewo.nlu.FullTextSearchRequest.QueryType)
    - [InitiationProtocol](#ondewo.nlu.InitiationProtocol)
    - [ModelStatus.StatusName](#ondewo.nlu.ModelStatus.StatusName)
    - [ReportFormat](#ondewo.nlu.ReportFormat)
    - [ReportType](#ondewo.nlu.ReportType)
    - [SessionsReportType](#ondewo.nlu.SessionsReportType)
  
    - [Agents](#ondewo.nlu.Agents)
  
- [ondewo/nlu/aiservices.proto](#ondewo/nlu/aiservices.proto)
    - [AltSentence](#ondewo.nlu.AltSentence)
    - [AltTrainingPhrase](#ondewo.nlu.AltTrainingPhrase)
    - [BertAugEnrichmentConfig](#ondewo.nlu.BertAugEnrichmentConfig)
    - [ClassifyIntentsRequest](#ondewo.nlu.ClassifyIntentsRequest)
    - [ClassifyIntentsResponse](#ondewo.nlu.ClassifyIntentsResponse)
    - [DataEnrichmentConfig](#ondewo.nlu.DataEnrichmentConfig)
    - [EntityDetected](#ondewo.nlu.EntityDetected)
    - [EntityEnrichmentConfig](#ondewo.nlu.EntityEnrichmentConfig)
    - [EntityTypeFuzzyNerConfig](#ondewo.nlu.EntityTypeFuzzyNerConfig)
    - [ExtractEntitiesFuzzyRequest](#ondewo.nlu.ExtractEntitiesFuzzyRequest)
    - [ExtractEntitiesRequest](#ondewo.nlu.ExtractEntitiesRequest)
    - [ExtractEntitiesResponse](#ondewo.nlu.ExtractEntitiesResponse)
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
    - [IntentClassified](#ondewo.nlu.IntentClassified)
    - [ListLlmModelsRequest](#ondewo.nlu.ListLlmModelsRequest)
    - [ListLlmModelsResponse](#ondewo.nlu.ListLlmModelsResponse)
    - [LlmEnrichmentConfig](#ondewo.nlu.LlmEnrichmentConfig)
    - [LlmGenerateRequest](#ondewo.nlu.LlmGenerateRequest)
    - [LlmGenerateResponse](#ondewo.nlu.LlmGenerateResponse)
    - [LlmModel](#ondewo.nlu.LlmModel)
    - [StreamingLlmGenerateResponse](#ondewo.nlu.StreamingLlmGenerateResponse)
    - [Synonym](#ondewo.nlu.Synonym)
    - [ThesaurusEnrichmentConfig](#ondewo.nlu.ThesaurusEnrichmentConfig)
    - [Word2VecEnrichmentConfig](#ondewo.nlu.Word2VecEnrichmentConfig)
    - [WordNetAugEnrichmentConfig](#ondewo.nlu.WordNetAugEnrichmentConfig)
    - [XLNetAugEnrichmentConfig](#ondewo.nlu.XLNetAugEnrichmentConfig)
  
    - [EntityTypeFuzzyNerConfig.FuzzyNerAlgorithm](#ondewo.nlu.EntityTypeFuzzyNerConfig.FuzzyNerAlgorithm)
    - [IntentAlgorithms](#ondewo.nlu.IntentAlgorithms)
    - [Mode](#ondewo.nlu.Mode)
  
    - [AiServices](#ondewo.nlu.AiServices)
  
- [ondewo/nlu/ccai_project.proto](#ondewo/nlu/ccai_project.proto)
    - [CcaiProject](#ondewo.nlu.CcaiProject)
    - [CcaiProject.CcaiServicesMapEntry](#ondewo.nlu.CcaiProject.CcaiServicesMapEntry)
    - [CcaiProjectSorting](#ondewo.nlu.CcaiProjectSorting)
    - [CcaiService](#ondewo.nlu.CcaiService)
    - [CcaiServiceFilter](#ondewo.nlu.CcaiServiceFilter)
    - [CcaiServiceList](#ondewo.nlu.CcaiServiceList)
    - [CreateCcaiProjectRequest](#ondewo.nlu.CreateCcaiProjectRequest)
    - [CreateCcaiProjectResponse](#ondewo.nlu.CreateCcaiProjectResponse)
    - [DeleteCcaiProjectRequest](#ondewo.nlu.DeleteCcaiProjectRequest)
    - [DeleteCcaiProjectResponse](#ondewo.nlu.DeleteCcaiProjectResponse)
    - [GetCcaiProjectRequest](#ondewo.nlu.GetCcaiProjectRequest)
    - [GetCcaiServiceRequest](#ondewo.nlu.GetCcaiServiceRequest)
    - [ListCcaiProjectsRequest](#ondewo.nlu.ListCcaiProjectsRequest)
    - [ListCcaiProjectsResponse](#ondewo.nlu.ListCcaiProjectsResponse)
    - [UpdateCcaiProjectRequest](#ondewo.nlu.UpdateCcaiProjectRequest)
    - [UpdateCcaiProjectResponse](#ondewo.nlu.UpdateCcaiProjectResponse)
  
    - [CcaiProjectSorting.CcaiProjectSortingField](#ondewo.nlu.CcaiProjectSorting.CcaiProjectSortingField)
    - [CcaiProjectStatus](#ondewo.nlu.CcaiProjectStatus)
    - [CcaiProjectView](#ondewo.nlu.CcaiProjectView)
    - [CcaiServiceProvider](#ondewo.nlu.CcaiServiceProvider)
    - [CcaiServiceType](#ondewo.nlu.CcaiServiceType)
  
    - [CcaiProjects](#ondewo.nlu.CcaiProjects)
  
- [ondewo/nlu/common.proto](#ondewo/nlu/common.proto)
    - [AddNotificationsRequest](#ondewo.nlu.AddNotificationsRequest)
    - [AddNotificationsResponse](#ondewo.nlu.AddNotificationsResponse)
    - [Comment](#ondewo.nlu.Comment)
    - [KeyValuePair](#ondewo.nlu.KeyValuePair)
    - [ListNotificationsRequest](#ondewo.nlu.ListNotificationsRequest)
    - [ListNotificationsResponse](#ondewo.nlu.ListNotificationsResponse)
    - [Notification](#ondewo.nlu.Notification)
    - [NotificationFilter](#ondewo.nlu.NotificationFilter)
    - [SetNotificationsFlaggedStatusRequest](#ondewo.nlu.SetNotificationsFlaggedStatusRequest)
    - [SetNotificationsReadStatusRequest](#ondewo.nlu.SetNotificationsReadStatusRequest)
    - [StatResponse](#ondewo.nlu.StatResponse)
  
    - [NotificationFlaggedStatus](#ondewo.nlu.NotificationFlaggedStatus)
    - [NotificationOrigin](#ondewo.nlu.NotificationOrigin)
    - [NotificationReadStatus](#ondewo.nlu.NotificationReadStatus)
    - [NotificationType](#ondewo.nlu.NotificationType)
    - [NotificationVisibility](#ondewo.nlu.NotificationVisibility)
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
    - [BatchDeleteEntitiesRequest](#ondewo.nlu.BatchDeleteEntitiesRequest)
    - [BatchDeleteEntitiesResponse](#ondewo.nlu.BatchDeleteEntitiesResponse)
    - [BatchDeleteEntityTypesRequest](#ondewo.nlu.BatchDeleteEntityTypesRequest)
    - [BatchEntitiesResponse](#ondewo.nlu.BatchEntitiesResponse)
    - [BatchGetEntitiesRequest](#ondewo.nlu.BatchGetEntitiesRequest)
    - [BatchUpdateEntitiesRequest](#ondewo.nlu.BatchUpdateEntitiesRequest)
    - [BatchUpdateEntityTypesRequest](#ondewo.nlu.BatchUpdateEntityTypesRequest)
    - [BatchUpdateEntityTypesResponse](#ondewo.nlu.BatchUpdateEntityTypesResponse)
    - [CreateEntityRequest](#ondewo.nlu.CreateEntityRequest)
    - [CreateEntityTypeRequest](#ondewo.nlu.CreateEntityTypeRequest)
    - [DeleteEntityRequest](#ondewo.nlu.DeleteEntityRequest)
    - [DeleteEntityStatus](#ondewo.nlu.DeleteEntityStatus)
    - [DeleteEntityTypeRequest](#ondewo.nlu.DeleteEntityTypeRequest)
    - [EntityStatus](#ondewo.nlu.EntityStatus)
    - [EntityType](#ondewo.nlu.EntityType)
    - [EntityType.Entity](#ondewo.nlu.EntityType.Entity)
    - [EntityTypeBatch](#ondewo.nlu.EntityTypeBatch)
    - [EntityTypeSorting](#ondewo.nlu.EntityTypeSorting)
    - [EntityValueSorting](#ondewo.nlu.EntityValueSorting)
    - [GetEntityRequest](#ondewo.nlu.GetEntityRequest)
    - [GetEntityTypeRequest](#ondewo.nlu.GetEntityTypeRequest)
    - [ListEntitiesRequest](#ondewo.nlu.ListEntitiesRequest)
    - [ListEntitiesResponse](#ondewo.nlu.ListEntitiesResponse)
    - [ListEntityTypesRequest](#ondewo.nlu.ListEntityTypesRequest)
    - [ListEntityTypesResponse](#ondewo.nlu.ListEntityTypesResponse)
    - [UpdateEntityRequest](#ondewo.nlu.UpdateEntityRequest)
    - [UpdateEntityTypeRequest](#ondewo.nlu.UpdateEntityTypeRequest)
  
    - [EntityType.AutoExpansionMode](#ondewo.nlu.EntityType.AutoExpansionMode)
    - [EntityType.EntityTypeStatus](#ondewo.nlu.EntityType.EntityTypeStatus)
    - [EntityType.Kind](#ondewo.nlu.EntityType.Kind)
    - [EntityTypeCategory](#ondewo.nlu.EntityTypeCategory)
    - [EntityTypeSorting.EntityTypeSortingField](#ondewo.nlu.EntityTypeSorting.EntityTypeSortingField)
    - [EntityTypeView](#ondewo.nlu.EntityTypeView)
    - [EntityValueSorting.EntityValueSortingField](#ondewo.nlu.EntityValueSorting.EntityValueSortingField)
  
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
    - [GetAllIntentTagsRequest](#ondewo.nlu.GetAllIntentTagsRequest)
    - [GetIntentRequest](#ondewo.nlu.GetIntentRequest)
    - [GetIntentTagsRequest](#ondewo.nlu.GetIntentTagsRequest)
    - [GetIntentTagsResponse](#ondewo.nlu.GetIntentTagsResponse)
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
    - [IntentTagRequest](#ondewo.nlu.IntentTagRequest)
    - [ListIntentsRequest](#ondewo.nlu.ListIntentsRequest)
    - [ListIntentsResponse](#ondewo.nlu.ListIntentsResponse)
    - [ListParametersRequest](#ondewo.nlu.ListParametersRequest)
    - [ListParametersResponse](#ondewo.nlu.ListParametersResponse)
    - [ListResponseMessagesRequest](#ondewo.nlu.ListResponseMessagesRequest)
    - [ListResponseMessagesResponse](#ondewo.nlu.ListResponseMessagesResponse)
    - [ListTrainingPhrasesRequest](#ondewo.nlu.ListTrainingPhrasesRequest)
    - [ListTrainingPhrasesResponse](#ondewo.nlu.ListTrainingPhrasesResponse)
    - [ListTrainingPhrasesofIntentsWithEnrichmentRequest](#ondewo.nlu.ListTrainingPhrasesofIntentsWithEnrichmentRequest)
    - [ListTrainingPhrasesofIntentsWithEnrichmentResponse](#ondewo.nlu.ListTrainingPhrasesofIntentsWithEnrichmentResponse)
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
  
- [ondewo/nlu/operations.proto](#ondewo/nlu/operations.proto)
    - [CancelOperationRequest](#ondewo.nlu.CancelOperationRequest)
    - [DeleteOperationRequest](#ondewo.nlu.DeleteOperationRequest)
    - [GetOperationRequest](#ondewo.nlu.GetOperationRequest)
    - [ListOperationsRequest](#ondewo.nlu.ListOperationsRequest)
    - [ListOperationsResponse](#ondewo.nlu.ListOperationsResponse)
    - [Operation](#ondewo.nlu.Operation)
    - [OperationFilter](#ondewo.nlu.OperationFilter)
  
    - [Operations](#ondewo.nlu.Operations)
  
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
  
- [ondewo/nlu/rag.proto](#ondewo/nlu/rag.proto)
    - [RagAddChunkRequest](#ondewo.nlu.RagAddChunkRequest)
    - [RagAddChunkResponse](#ondewo.nlu.RagAddChunkResponse)
    - [RagAgent](#ondewo.nlu.RagAgent)
    - [RagAgentCompletionData](#ondewo.nlu.RagAgentCompletionData)
    - [RagAgentCompletionRequest](#ondewo.nlu.RagAgentCompletionRequest)
    - [RagAgentCompletionResponse](#ondewo.nlu.RagAgentCompletionResponse)
    - [RagAgentList](#ondewo.nlu.RagAgentList)
    - [RagAgentSession](#ondewo.nlu.RagAgentSession)
    - [RagAgentSessionList](#ondewo.nlu.RagAgentSessionList)
    - [RagAgentbotCompletionRequest](#ondewo.nlu.RagAgentbotCompletionRequest)
    - [RagAgentbotInputsRequest](#ondewo.nlu.RagAgentbotInputsRequest)
    - [RagAgentbotInputsResponse](#ondewo.nlu.RagAgentbotInputsResponse)
    - [RagAskRequest](#ondewo.nlu.RagAskRequest)
    - [RagAskResponse](#ondewo.nlu.RagAskResponse)
    - [RagChat](#ondewo.nlu.RagChat)
    - [RagChatCompletionRequest](#ondewo.nlu.RagChatCompletionRequest)
    - [RagChatCompletionResponse](#ondewo.nlu.RagChatCompletionResponse)
    - [RagChatList](#ondewo.nlu.RagChatList)
    - [RagChatSession](#ondewo.nlu.RagChatSession)
    - [RagChatSessionList](#ondewo.nlu.RagChatSessionList)
    - [RagChatbotCompletionRequest](#ondewo.nlu.RagChatbotCompletionRequest)
    - [RagChatbotInfoRequest](#ondewo.nlu.RagChatbotInfoRequest)
    - [RagChatbotInfoResponse](#ondewo.nlu.RagChatbotInfoResponse)
    - [RagChunk](#ondewo.nlu.RagChunk)
    - [RagCreateAgentRequest](#ondewo.nlu.RagCreateAgentRequest)
    - [RagCreateAgentSessionRequest](#ondewo.nlu.RagCreateAgentSessionRequest)
    - [RagCreateChatRequest](#ondewo.nlu.RagCreateChatRequest)
    - [RagCreateChatSessionRequest](#ondewo.nlu.RagCreateChatSessionRequest)
    - [RagCreateDatasetRequest](#ondewo.nlu.RagCreateDatasetRequest)
    - [RagCreateFileRequest](#ondewo.nlu.RagCreateFileRequest)
    - [RagDataset](#ondewo.nlu.RagDataset)
    - [RagDatasetList](#ondewo.nlu.RagDatasetList)
    - [RagDeleteAgentRequest](#ondewo.nlu.RagDeleteAgentRequest)
    - [RagDeleteAgentSessionsRequest](#ondewo.nlu.RagDeleteAgentSessionsRequest)
    - [RagDeleteChatSessionsRequest](#ondewo.nlu.RagDeleteChatSessionsRequest)
    - [RagDeleteChatsRequest](#ondewo.nlu.RagDeleteChatsRequest)
    - [RagDeleteDatasetsRequest](#ondewo.nlu.RagDeleteDatasetsRequest)
    - [RagDeleteDocumentsRequest](#ondewo.nlu.RagDeleteDocumentsRequest)
    - [RagDeleteFilesRequest](#ondewo.nlu.RagDeleteFilesRequest)
    - [RagDeleteKnowledgeGraphRequest](#ondewo.nlu.RagDeleteKnowledgeGraphRequest)
    - [RagDifyRecord](#ondewo.nlu.RagDifyRecord)
    - [RagDifyRecordList](#ondewo.nlu.RagDifyRecordList)
    - [RagDifyRetrievalRequest](#ondewo.nlu.RagDifyRetrievalRequest)
    - [RagDifyRetrievalSetting](#ondewo.nlu.RagDifyRetrievalSetting)
    - [RagDocument](#ondewo.nlu.RagDocument)
    - [RagDocumentList](#ondewo.nlu.RagDocumentList)
    - [RagDownloadDocumentRequest](#ondewo.nlu.RagDownloadDocumentRequest)
    - [RagFile](#ondewo.nlu.RagFile)
    - [RagFileChunk](#ondewo.nlu.RagFileChunk)
    - [RagFileID](#ondewo.nlu.RagFileID)
    - [RagFileList](#ondewo.nlu.RagFileList)
    - [RagFileMetadata](#ondewo.nlu.RagFileMetadata)
    - [RagFileToDocument](#ondewo.nlu.RagFileToDocument)
    - [RagFileToDocumentList](#ondewo.nlu.RagFileToDocumentList)
    - [RagFileToDocumentRequest](#ondewo.nlu.RagFileToDocumentRequest)
    - [RagGetAllParentFoldersRequest](#ondewo.nlu.RagGetAllParentFoldersRequest)
    - [RagGetAllParentFoldersResponse](#ondewo.nlu.RagGetAllParentFoldersResponse)
    - [RagGetFileRequest](#ondewo.nlu.RagGetFileRequest)
    - [RagGetKnowledgeGraphRequest](#ondewo.nlu.RagGetKnowledgeGraphRequest)
    - [RagGetKnowledgeGraphResponse](#ondewo.nlu.RagGetKnowledgeGraphResponse)
    - [RagGetParentFolderRequest](#ondewo.nlu.RagGetParentFolderRequest)
    - [RagGetParentFolderResponse](#ondewo.nlu.RagGetParentFolderResponse)
    - [RagGetRootFolderRequest](#ondewo.nlu.RagGetRootFolderRequest)
    - [RagGetRootFolderResponse](#ondewo.nlu.RagGetRootFolderResponse)
    - [RagLLMSetting](#ondewo.nlu.RagLLMSetting)
    - [RagListAgentSessionsRequest](#ondewo.nlu.RagListAgentSessionsRequest)
    - [RagListAgentsRequest](#ondewo.nlu.RagListAgentsRequest)
    - [RagListChatSessionsRequest](#ondewo.nlu.RagListChatSessionsRequest)
    - [RagListChatsRequest](#ondewo.nlu.RagListChatsRequest)
    - [RagListChunksRequest](#ondewo.nlu.RagListChunksRequest)
    - [RagListChunksResponse](#ondewo.nlu.RagListChunksResponse)
    - [RagListDatasetsRequest](#ondewo.nlu.RagListDatasetsRequest)
    - [RagListDocumentsRequest](#ondewo.nlu.RagListDocumentsRequest)
    - [RagListDocumentsResponse](#ondewo.nlu.RagListDocumentsResponse)
    - [RagListFilesRequest](#ondewo.nlu.RagListFilesRequest)
    - [RagListFilesResponse](#ondewo.nlu.RagListFilesResponse)
    - [RagMessage](#ondewo.nlu.RagMessage)
    - [RagMoveFileRequest](#ondewo.nlu.RagMoveFileRequest)
    - [RagOpenAiAgentCompletionRequest](#ondewo.nlu.RagOpenAiAgentCompletionRequest)
    - [RagOpenAiChatChoice](#ondewo.nlu.RagOpenAiChatChoice)
    - [RagOpenAiChatCompletionRequest](#ondewo.nlu.RagOpenAiChatCompletionRequest)
    - [RagOpenAiChatCompletionResponse](#ondewo.nlu.RagOpenAiChatCompletionResponse)
    - [RagOpenAiChatContent](#ondewo.nlu.RagOpenAiChatContent)
    - [RagOpenAiChatUsage](#ondewo.nlu.RagOpenAiChatUsage)
    - [RagPagination](#ondewo.nlu.RagPagination)
    - [RagParseDocumentsRequest](#ondewo.nlu.RagParseDocumentsRequest)
    - [RagParserConfig](#ondewo.nlu.RagParserConfig)
    - [RagPartialSuccess](#ondewo.nlu.RagPartialSuccess)
    - [RagPromptConfig](#ondewo.nlu.RagPromptConfig)
    - [RagPromptVariable](#ondewo.nlu.RagPromptVariable)
    - [RagRelatedQuestionsRequest](#ondewo.nlu.RagRelatedQuestionsRequest)
    - [RagRelatedQuestionsResponse](#ondewo.nlu.RagRelatedQuestionsResponse)
    - [RagRemoveChunksRequest](#ondewo.nlu.RagRemoveChunksRequest)
    - [RagRenameFileRequest](#ondewo.nlu.RagRenameFileRequest)
    - [RagRetrievalRequest](#ondewo.nlu.RagRetrievalRequest)
    - [RagRetrievalResponse](#ondewo.nlu.RagRetrievalResponse)
    - [RagSearchbotAskRequest](#ondewo.nlu.RagSearchbotAskRequest)
    - [RagSearchbotDetailRequest](#ondewo.nlu.RagSearchbotDetailRequest)
    - [RagSearchbotDetailResponse](#ondewo.nlu.RagSearchbotDetailResponse)
    - [RagSearchbotMindmapRequest](#ondewo.nlu.RagSearchbotMindmapRequest)
    - [RagSearchbotMindmapResponse](#ondewo.nlu.RagSearchbotMindmapResponse)
    - [RagSearchbotRelatedQuestionsRequest](#ondewo.nlu.RagSearchbotRelatedQuestionsRequest)
    - [RagSearchbotRetrievalRequest](#ondewo.nlu.RagSearchbotRetrievalRequest)
    - [RagSearchbotRetrievalResponse](#ondewo.nlu.RagSearchbotRetrievalResponse)
    - [RagStopParsingRequest](#ondewo.nlu.RagStopParsingRequest)
    - [RagUpdateAgentRequest](#ondewo.nlu.RagUpdateAgentRequest)
    - [RagUpdateChatRequest](#ondewo.nlu.RagUpdateChatRequest)
    - [RagUpdateChatSessionRequest](#ondewo.nlu.RagUpdateChatSessionRequest)
    - [RagUpdateChunkRequest](#ondewo.nlu.RagUpdateChunkRequest)
    - [RagUpdateDatasetRequest](#ondewo.nlu.RagUpdateDatasetRequest)
    - [RagUpdateDocumentRequest](#ondewo.nlu.RagUpdateDocumentRequest)
    - [RagUploadChunk](#ondewo.nlu.RagUploadChunk)
    - [RagUploadDocumentsRequest](#ondewo.nlu.RagUploadDocumentsRequest)
    - [RagUploadDocumentsRequest.RagMetadata](#ondewo.nlu.RagUploadDocumentsRequest.RagMetadata)
    - [RagUploadFilesRequest](#ondewo.nlu.RagUploadFilesRequest)
    - [RagUploadFilesRequest.RagMetadata](#ondewo.nlu.RagUploadFilesRequest.RagMetadata)
  
    - [RagAgentEventType](#ondewo.nlu.RagAgentEventType)
    - [RagChunkMethod](#ondewo.nlu.RagChunkMethod)
    - [RagDocumentStatus](#ondewo.nlu.RagDocumentStatus)
    - [RagMessageRole](#ondewo.nlu.RagMessageRole)
    - [RagPermission](#ondewo.nlu.RagPermission)
  
    - [Rags](#ondewo.nlu.Rags)
  
- [ondewo/nlu/server_statistics.proto](#ondewo/nlu/server_statistics.proto)
    - [GetUserProjectCountRequest](#ondewo.nlu.GetUserProjectCountRequest)
  
    - [ServerStatistics](#ondewo.nlu.ServerStatistics)
  
- [ondewo/nlu/session.proto](#ondewo/nlu/session.proto)
    - [AddAudioFilesRequest](#ondewo.nlu.AddAudioFilesRequest)
    - [AddAudioFilesResponse](#ondewo.nlu.AddAudioFilesResponse)
    - [AddSessionCommentRequest](#ondewo.nlu.AddSessionCommentRequest)
    - [AddSessionLabelsRequest](#ondewo.nlu.AddSessionLabelsRequest)
    - [AudioFileResource](#ondewo.nlu.AudioFileResource)
    - [ContextFilter](#ondewo.nlu.ContextFilter)
    - [CreateSessionRequest](#ondewo.nlu.CreateSessionRequest)
    - [CreateSessionReviewRequest](#ondewo.nlu.CreateSessionReviewRequest)
    - [CreateSessionStepRequest](#ondewo.nlu.CreateSessionStepRequest)
    - [DeleteAudioFilesRequest](#ondewo.nlu.DeleteAudioFilesRequest)
    - [DeleteAudioFilesResponse](#ondewo.nlu.DeleteAudioFilesResponse)
    - [DeleteSessionCommentsRequest](#ondewo.nlu.DeleteSessionCommentsRequest)
    - [DeleteSessionLabelsRequest](#ondewo.nlu.DeleteSessionLabelsRequest)
    - [DeleteSessionRequest](#ondewo.nlu.DeleteSessionRequest)
    - [DeleteSessionStepRequest](#ondewo.nlu.DeleteSessionStepRequest)
    - [DetectIntentRequest](#ondewo.nlu.DetectIntentRequest)
    - [DetectIntentResponse](#ondewo.nlu.DetectIntentResponse)
    - [DetectedIntent](#ondewo.nlu.DetectedIntent)
    - [DocumentFileResource](#ondewo.nlu.DocumentFileResource)
    - [EventInput](#ondewo.nlu.EventInput)
    - [FileResource](#ondewo.nlu.FileResource)
    - [GetAudioFileOfSessionRequest](#ondewo.nlu.GetAudioFileOfSessionRequest)
    - [GetAudioFilesRequest](#ondewo.nlu.GetAudioFilesRequest)
    - [GetAudioFilesResponse](#ondewo.nlu.GetAudioFilesResponse)
    - [GetLatestSessionReviewRequest](#ondewo.nlu.GetLatestSessionReviewRequest)
    - [GetSessionRequest](#ondewo.nlu.GetSessionRequest)
    - [GetSessionReviewRequest](#ondewo.nlu.GetSessionReviewRequest)
    - [GetSessionStepRequest](#ondewo.nlu.GetSessionStepRequest)
    - [ImageFileResource](#ondewo.nlu.ImageFileResource)
    - [InputAudioConfig](#ondewo.nlu.InputAudioConfig)
    - [ListAccountIdsOfAllSessionsRequest](#ondewo.nlu.ListAccountIdsOfAllSessionsRequest)
    - [ListAccountIdsResponse](#ondewo.nlu.ListAccountIdsResponse)
    - [ListAudioFilesRequest](#ondewo.nlu.ListAudioFilesRequest)
    - [ListAudioFilesResponse](#ondewo.nlu.ListAudioFilesResponse)
    - [ListDatastreamIdsOfAllSessionsRequest](#ondewo.nlu.ListDatastreamIdsOfAllSessionsRequest)
    - [ListDatastreamIdsResponse](#ondewo.nlu.ListDatastreamIdsResponse)
    - [ListIdentifiedUserIdsOfAllSessionsRequest](#ondewo.nlu.ListIdentifiedUserIdsOfAllSessionsRequest)
    - [ListIdentifiedUserIdsResponse](#ondewo.nlu.ListIdentifiedUserIdsResponse)
    - [ListInputContextsOfAllSessionsRequest](#ondewo.nlu.ListInputContextsOfAllSessionsRequest)
    - [ListInputContextsResponse](#ondewo.nlu.ListInputContextsResponse)
    - [ListLanguageCodesOfAllSessionsRequest](#ondewo.nlu.ListLanguageCodesOfAllSessionsRequest)
    - [ListLanguageCodesResponse](#ondewo.nlu.ListLanguageCodesResponse)
    - [ListMatchedEntityTypesOfAllSessionsRequest](#ondewo.nlu.ListMatchedEntityTypesOfAllSessionsRequest)
    - [ListMatchedEntityTypesResponse](#ondewo.nlu.ListMatchedEntityTypesResponse)
    - [ListMatchedIntentsOfAllSessionsRequest](#ondewo.nlu.ListMatchedIntentsOfAllSessionsRequest)
    - [ListMatchedIntentsResponse](#ondewo.nlu.ListMatchedIntentsResponse)
    - [ListOriginIdsOfAllSessionsRequest](#ondewo.nlu.ListOriginIdsOfAllSessionsRequest)
    - [ListOriginIdsResponse](#ondewo.nlu.ListOriginIdsResponse)
    - [ListOutputContextsOfAllSessionsRequest](#ondewo.nlu.ListOutputContextsOfAllSessionsRequest)
    - [ListOutputContextsResponse](#ondewo.nlu.ListOutputContextsResponse)
    - [ListPlatformsOfAllSessionsRequest](#ondewo.nlu.ListPlatformsOfAllSessionsRequest)
    - [ListPlatformsResponse](#ondewo.nlu.ListPlatformsResponse)
    - [ListPropertyIdsOfAllSessionsRequest](#ondewo.nlu.ListPropertyIdsOfAllSessionsRequest)
    - [ListPropertyIdsResponse](#ondewo.nlu.ListPropertyIdsResponse)
    - [ListSessionCommentsRequest](#ondewo.nlu.ListSessionCommentsRequest)
    - [ListSessionCommentsResponse](#ondewo.nlu.ListSessionCommentsResponse)
    - [ListSessionLabelsOfAllSessionsRequest](#ondewo.nlu.ListSessionLabelsOfAllSessionsRequest)
    - [ListSessionLabelsRequest](#ondewo.nlu.ListSessionLabelsRequest)
    - [ListSessionLabelsResponse](#ondewo.nlu.ListSessionLabelsResponse)
    - [ListSessionReviewsRequest](#ondewo.nlu.ListSessionReviewsRequest)
    - [ListSessionReviewsResponse](#ondewo.nlu.ListSessionReviewsResponse)
    - [ListSessionsRequest](#ondewo.nlu.ListSessionsRequest)
    - [ListSessionsResponse](#ondewo.nlu.ListSessionsResponse)
    - [ListTagsOfAllSessionsRequest](#ondewo.nlu.ListTagsOfAllSessionsRequest)
    - [ListTagsResponse](#ondewo.nlu.ListTagsResponse)
    - [ListUserIdsOfAllSessionsRequest](#ondewo.nlu.ListUserIdsOfAllSessionsRequest)
    - [ListUserIdsResponse](#ondewo.nlu.ListUserIdsResponse)
    - [QueryInput](#ondewo.nlu.QueryInput)
    - [QueryParameters](#ondewo.nlu.QueryParameters)
    - [QueryResult](#ondewo.nlu.QueryResult)
    - [S2tTranscription](#ondewo.nlu.S2tTranscription)
    - [Session](#ondewo.nlu.Session)
    - [SessionFilter](#ondewo.nlu.SessionFilter)
    - [SessionInfo](#ondewo.nlu.SessionInfo)
    - [SessionInfo.ContextSteps](#ondewo.nlu.SessionInfo.ContextSteps)
    - [SessionReview](#ondewo.nlu.SessionReview)
    - [SessionReviewStep](#ondewo.nlu.SessionReviewStep)
    - [SessionStep](#ondewo.nlu.SessionStep)
    - [StreamingDetectIntentRequest](#ondewo.nlu.StreamingDetectIntentRequest)
    - [StreamingDetectIntentResponse](#ondewo.nlu.StreamingDetectIntentResponse)
    - [StreamingRecognitionResult](#ondewo.nlu.StreamingRecognitionResult)
    - [TextInput](#ondewo.nlu.TextInput)
    - [UpdateSessionCommentsRequest](#ondewo.nlu.UpdateSessionCommentsRequest)
    - [UpdateSessionStepRequest](#ondewo.nlu.UpdateSessionStepRequest)
    - [VideoFileResource](#ondewo.nlu.VideoFileResource)
  
    - [AudioEncoding](#ondewo.nlu.AudioEncoding)
    - [AudioFileResourceType](#ondewo.nlu.AudioFileResourceType)
    - [ComparisonOperator](#ondewo.nlu.ComparisonOperator)
    - [ResourceView](#ondewo.nlu.ResourceView)
    - [Session.View](#ondewo.nlu.Session.View)
    - [SessionReview.View](#ondewo.nlu.SessionReview.View)
    - [StreamingRecognitionResult.MessageType](#ondewo.nlu.StreamingRecognitionResult.MessageType)
    - [TranscriptionType](#ondewo.nlu.TranscriptionType)
  
    - [Sessions](#ondewo.nlu.Sessions)
  
- [ondewo/nlu/user.proto](#ondewo/nlu/user.proto)
    - [CreateServerRoleRequest](#ondewo.nlu.CreateServerRoleRequest)
    - [CreateUserRequest](#ondewo.nlu.CreateUserRequest)
    - [DeleteAllUserPreferencesRequest](#ondewo.nlu.DeleteAllUserPreferencesRequest)
    - [DeleteServerRoleRequest](#ondewo.nlu.DeleteServerRoleRequest)
    - [DeleteUserPreferencesRequest](#ondewo.nlu.DeleteUserPreferencesRequest)
    - [DeleteUserPreferencesResponse](#ondewo.nlu.DeleteUserPreferencesResponse)
    - [DeleteUserRequest](#ondewo.nlu.DeleteUserRequest)
    - [GetServerRoleRequest](#ondewo.nlu.GetServerRoleRequest)
    - [GetUserPreferencesRequest](#ondewo.nlu.GetUserPreferencesRequest)
    - [GetUserPreferencesResponse](#ondewo.nlu.GetUserPreferencesResponse)
    - [GetUserRequest](#ondewo.nlu.GetUserRequest)
    - [ListServerPermissionsRequest](#ondewo.nlu.ListServerPermissionsRequest)
    - [ListServerPermissionsResponse](#ondewo.nlu.ListServerPermissionsResponse)
    - [ListServerRolesRequest](#ondewo.nlu.ListServerRolesRequest)
    - [ListServerRolesResponse](#ondewo.nlu.ListServerRolesResponse)
    - [ListUserInfosResponse](#ondewo.nlu.ListUserInfosResponse)
    - [ListUserPreferencesRequest](#ondewo.nlu.ListUserPreferencesRequest)
    - [ListUserPreferencesResponse](#ondewo.nlu.ListUserPreferencesResponse)
    - [ListUsersRequest](#ondewo.nlu.ListUsersRequest)
    - [ListUsersResponse](#ondewo.nlu.ListUsersResponse)
    - [LoginRequest](#ondewo.nlu.LoginRequest)
    - [LoginResponse](#ondewo.nlu.LoginResponse)
    - [ServerRole](#ondewo.nlu.ServerRole)
    - [SetUserPreferencesRequest](#ondewo.nlu.SetUserPreferencesRequest)
    - [SetUserPreferencesResponse](#ondewo.nlu.SetUserPreferencesResponse)
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
    - [CreateSessionEntityTypeRequest](#ondewo.nlu.CreateSessionEntityTypeRequest)
    - [DeleteSessionEntityTypeRequest](#ondewo.nlu.DeleteSessionEntityTypeRequest)
    - [GetSessionEntityTypeRequest](#ondewo.nlu.GetSessionEntityTypeRequest)
    - [ListSessionEntityTypesRequest](#ondewo.nlu.ListSessionEntityTypesRequest)
    - [ListSessionEntityTypesResponse](#ondewo.nlu.ListSessionEntityTypesResponse)
    - [OriginalDetectIntentRequest](#ondewo.nlu.OriginalDetectIntentRequest)
    - [PingRequest](#ondewo.nlu.PingRequest)
    - [PingResponse](#ondewo.nlu.PingResponse)
    - [SessionEntityType](#ondewo.nlu.SessionEntityType)
    - [UpdateSessionEntityTypeRequest](#ondewo.nlu.UpdateSessionEntityTypeRequest)
    - [WebhookRequest](#ondewo.nlu.WebhookRequest)
    - [WebhookResponse](#ondewo.nlu.WebhookResponse)
  
    - [SessionEntityType.EntityOverrideMode](#ondewo.nlu.SessionEntityType.EntityOverrideMode)
  
    - [Webhook](#ondewo.nlu.Webhook)
  
- [ondewo/qa/qa.proto](#ondewo/qa/qa.proto)
    - [GetAnswerRequest](#ondewo.qa.GetAnswerRequest)
    - [GetAnswerResponse](#ondewo.qa.GetAnswerResponse)
    - [GetProjectConfigRequest](#ondewo.qa.GetProjectConfigRequest)
    - [GetProjectConfigResponse](#ondewo.qa.GetProjectConfigResponse)
    - [GetServerStateResponse](#ondewo.qa.GetServerStateResponse)
    - [ListProjectIdsResponse](#ondewo.qa.ListProjectIdsResponse)
    - [RunScraperRequest](#ondewo.qa.RunScraperRequest)
    - [RunScraperResponse](#ondewo.qa.RunScraperResponse)
    - [RunScraperResponse.ScraperContainer](#ondewo.qa.RunScraperResponse.ScraperContainer)
    - [RunTrainingResponse](#ondewo.qa.RunTrainingResponse)
    - [UpdateDatabaseRequest](#ondewo.qa.UpdateDatabaseRequest)
    - [UpdateDatabaseResponse](#ondewo.qa.UpdateDatabaseResponse)
    - [UrlFilter](#ondewo.qa.UrlFilter)
  
    - [QA](#ondewo.qa.QA)
  
- [Scalar Value Types](#scalar-value-types)



<a name="ondewo/nlu/agent.proto"></a>
<p align="right"><a href="#top">Top</a></p>

## ondewo/nlu/agent.proto
File-level comment for <code>ondewo/nlu/agent.proto</code>.

This file contains a single service <a href="index.html#ondewo.nlu.Agents">Agents</a>.

The most important messages is <a href="index.html#ondewo.nlu.Agent">Agent</a> and its most complicated field is <code>configs</code>.


<a name="ondewo.nlu.AddUserToProjectRequest"></a>

### AddUserToProjectRequest
Request to add user to project.


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| parent | [string](#string) |  | Required. The project that the agent to train is associated with. Format: <pre><code>projects/&lt;project_uuid&gt;</code></pre> |
| user_id | [string](#string) |  | id of the user |
| project_role_id | [uint32](#uint32) |  | ID of the project role of the user |






<a name="ondewo.nlu.Agent"></a>

### Agent
Project/Agent messages


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| parent | [string](#string) |  | Required. The project of this agent. Format: <pre><code>projects/&lt;project_uuid&gt;/agent</code></pre> Read-only in the Agent message |
| display_name | [string](#string) |  | Required. The name of this agent. |
| default_language_code | [string](#string) |  | Required. The default language of the agent as a language tag. See <a href="https://dialogflow.com/docs/reference/language">Language Support</a> for a list of the currently supported language codes. This field cannot be set by the <code>Update</code> method. |
| supported_language_codes | [string](#string) | repeated | Optional. The list of all languages supported by this agent (except for the <code>default_language_code</code>). |
| time_zone | [string](#string) |  | Required. The time zone of this agent from the <a href="https://www.iana.org/time-zones">time zone database</a>, e.g., America/New_York, Europe/Paris. |
| nlu_platform | [string](#string) |  | Required. Specifies the format of the agent data. |
| configs | [google.protobuf.Struct](#google.protobuf.Struct) |  | Optional. Agent configuration as OndewoConfig converted to Struct format. |
| owner_id | [string](#string) |  | Optional. User id of the project owner. If empty, in CreateAgent call it is set to user id in the call metadata. Read-only in the Agent message |
| status | [AgentStatus](#ondewo.nlu.AgentStatus) |  | Optional. Status of the agent Read-only in the Agent message |
| description | [string](#string) |  | Optional. Description of the agent. |
| created_at | [google.protobuf.Timestamp](#google.protobuf.Timestamp) |  | Creation date and time. Read-only field. |
| modified_at | [google.protobuf.Timestamp](#google.protobuf.Timestamp) |  | Modification date and time. Read-only field. |
| created_by | [string](#string) |  | User id in form of a valid UUID. |
| modified_by | [string](#string) |  | User id in form of a valid UUID. |






<a name="ondewo.nlu.AgentOfUserWithOwner"></a>

### AgentOfUserWithOwner
This message contains the agent of user with owner


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| agent_with_owner | [AgentWithOwner](#ondewo.nlu.AgentWithOwner) |  | Required. Agent message and User message of its owner. |
| project_role | [ProjectRole](#ondewo.nlu.ProjectRole) |  | Required. The role of the user in the project in SHALLOW view (only ID and name fields are populated) |






<a name="ondewo.nlu.AgentSorting"></a>

### AgentSorting
Sorting order of agent


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| sorting_field | [AgentSorting.AgentSortingField](#ondewo.nlu.AgentSorting.AgentSortingField) |  | sorting field for agent sorting |
| sorting_mode | [SortingMode](#ondewo.nlu.SortingMode) |  | Sorting mode |






<a name="ondewo.nlu.AgentWithOwner"></a>

### AgentWithOwner
This message contains the agent with owner


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| agent | [Agent](#ondewo.nlu.Agent) |  | The agent |
| owner | [User](#ondewo.nlu.User) |  | User who created the agent |






<a name="ondewo.nlu.BuildCacheRequest"></a>

### BuildCacheRequest
The request message for <a href="index.html#ondewo.nlu.Agents.BuildCache">Agents.TrainAgentBuildCache</a>.


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| parent | [string](#string) |  | Required. The project that the agent to build cache is associated with. Format: <pre><code>projects/&lt;project_uuid&gt;</code></pre> |
| branch | [string](#string) |  | Name of the branch of the agent for versioning. The default branch name is <code>develop</code>. |






<a name="ondewo.nlu.CreateAgentRequest"></a>

### CreateAgentRequest
Request to create an agent


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| agent | [Agent](#ondewo.nlu.Agent) |  | The agent |
| agent_view | [AgentView](#ondewo.nlu.AgentView) |  | Optional. Specify the view of the returned agent (sparse view by default) |






<a name="ondewo.nlu.CustomPlatformInfo"></a>

### CustomPlatformInfo
This message contains the information of custom platform


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| platform | [Intent.Message.Platform](#ondewo.nlu.Intent.Message.Platform) |  | Required. ID of the Platform. Custom Intent.Message.Platform placeholder. Note: it will not work with non-placeholders values |
| display_name | [string](#string) |  | Required. Name to be displayed. |
| position | [uint32](#uint32) |  | Optional. Sorting position of the GetPlatformMappingRequest. |
| created_at | [google.protobuf.Timestamp](#google.protobuf.Timestamp) |  | Creation date and time. Read-only field. |
| modified_at | [google.protobuf.Timestamp](#google.protobuf.Timestamp) |  | Modification date and time. Read-only field. |
| created_by | [string](#string) |  | User id in form of a valid UUID. |
| modified_by | [string](#string) |  | User id in form of a valid UUID. |






<a name="ondewo.nlu.DeleteAgentRequest"></a>

### DeleteAgentRequest
Request to delete the agent


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| parent | [string](#string) |  | Required. The project that the agent to fetch is associated with. Format: <pre><code>projects/&lt;project_uuid&gt;/agents</code></pre> |






<a name="ondewo.nlu.DeleteResourcesRequest"></a>

### DeleteResourcesRequest
Request to delete resources


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| parent | [string](#string) |  | Required. The project that the agent to fetch is associated with. Format: <pre><code>projects/&lt;project_uuid&gt;/agents</code></pre> |
| name | [string](#string) |  | Required. Name of the resource to delete. |
| type | [string](#string) |  | Required. Type of the resource (e.g., "audio", "image", "file"). |
| language_code | [string](#string) |  | Language code specifies the language of the request in IETF BCP 47 language tag format, e.g. de-DE, en-US, etc. |






<a name="ondewo.nlu.ExportAgentRequest"></a>

### ExportAgentRequest
The request message for <a href="index.html#ondewo.nlu.Agents.ExportAgent">Agents.ExportAgent</a>.


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| parent | [string](#string) |  | Required. The project that the agent to export is associated with. Format: <pre><code>projects/&lt;project_uuid&gt;</code></pre> |
| agent_uri | [string](#string) |  | Optional. The Google Cloud Storage URI to export the agent to. Note: The URI must start with "gs://". If left unspecified, the serialized agent is returned inline. |
| compression_level | [int32](#int32) |  | Optional. The compression level of the zip file created. Valid range 1-9; the grpc-default value 0 will be mapped to 1, other values cause an error in the request validation handler. |






<a name="ondewo.nlu.ExportAgentResponse"></a>

### ExportAgentResponse
The response message for <a href="index.html#ondewo.nlu.Agents.ExportAgent">Agents.ExportAgent</a>.


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| agent_uri | [string](#string) |  | The URI to a file containing the exported agent. This field is populated only if <code>agent_uri</code> is specified in <code>ExportAgentRequest</code>. |
| agent_content | [bytes](#bytes) |  | The exported agent.

Example for how to export an agent to a zip file via a command line: <br/> <pre><code>curl \ 'https://dialogflow.googleapis.com/v2/projects/<project_name>/agent:export'\ -X POST \ -H 'Authorization: Bearer '$(gcloud auth print-access-token) \ -H 'Accept: application/json' \ -H 'Content-Type: application/json' \ --compressed \ --data-binary '{}' \ | grep agentContent | sed -e 's/.*"agentContent": "\([^"]*\)".*/\1/' \ | base64 --decode > <agent zip file> </code></pre> |






<a name="ondewo.nlu.ExportBenchmarkAgentRequest"></a>

### ExportBenchmarkAgentRequest
Request to export benchmark agent


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| parent | [string](#string) |  | Agent related info Required. The project that the agent to export is associated with. Format: <pre><code>projects/&lt;project_uuid&gt;</code></pre> |
| compression_level | [int32](#int32) |  | Optional. The compression level of the zip file created. Valid range 1-9; the grpc-default value 0 will be mapped to 1, other values cause an error in the request validation handler. |
| test_size | [float](#float) |  | Train-test split related parameters, for further info, check <a href="https://scikit-learn.org/stable/modules/generated/sklearn.model_selection.train_test_split.html">https://scikit-learn.org/stable/modules/generated/sklearn.model_selection.train_test_split.html</a> default values come from API definition above Optional: bigger than zero |
| train_size | [float](#float) |  | Optional: bigger than zero |
| random_state | [int32](#int32) |  | Optional: random seed |






<a name="ondewo.nlu.ExportBenchmarkAgentResponse"></a>

### ExportBenchmarkAgentResponse
Response to export benchmark agent


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| agent_content | [bytes](#bytes) |  | Agent responses as zip file |
| training_phrases | [ExportBenchmarkAgentResponse.TrainingPhrasesEntry](#ondewo.nlu.ExportBenchmarkAgentResponse.TrainingPhrasesEntry) | repeated | Key is the language code, value is the corresponding ListTrainingPhrasesResponse |






<a name="ondewo.nlu.ExportBenchmarkAgentResponse.TrainingPhrasesEntry"></a>

### ExportBenchmarkAgentResponse.TrainingPhrasesEntry



| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| key | [string](#string) |  |  |
| value | [ListTrainingPhrasesResponse](#ondewo.nlu.ListTrainingPhrasesResponse) |  |  |






<a name="ondewo.nlu.ExportResourcesRequest"></a>

### ExportResourcesRequest
Request to export resources


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| parent | [string](#string) |  | Required. The project that the agent to fetch is associated with. Format: <pre><code>projects/&lt;project_uuid&gt;/agents</code></pre> |
| name | [string](#string) |  | Required. Name of the resource to export. |
| type | [string](#string) |  | Required. Type of the resource (e.g., "audio", "image", "file"). |
| language_code | [string](#string) |  | Language code specifies the language of the request in IETF BCP 47 language tag format, e.g. de-DE, en-US, etc. |






<a name="ondewo.nlu.ExportResourcesResponse"></a>

### ExportResourcesResponse
Response to export resources


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| parent | [string](#string) |  | Required. The project that the agent to fetch is associated with. Format: <pre><code>projects/&lt;project_uuid&gt;/agents</code></pre> |
| name | [string](#string) |  | Required. Name of the exported resource. |
| type | [string](#string) |  | Required. Type of the resource (e.g., "audio", "image", "file"). |
| language_code | [string](#string) |  | Language code specifies the language of the request in IETF BCP 47 language tag format, e.g. de-DE, en-US, etc. |
| resource_file | [bytes](#bytes) |  | Required. The exported resource file content as bytes. |






<a name="ondewo.nlu.FullTextSearchRequest"></a>

### FullTextSearchRequest
This message is a request to run full text search


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| parent | [string](#string) |  | Required. The project that the agent is associated with. Format: <pre><code>projects/&lt;project_uuid&gt;/agent</code></pre> |
| language_code | [string](#string) |  | Language code specifies the language of the request in IETF BCP 47 language tag format, e.g. de-DE, en-US, etc. |
| term | [string](#string) |  | What to search for in the elastic server |
| page_token | [string](#string) |  | Composite string: current_index-0--page_size-10 The page token to support pagination. Pagination allows you to retrieve a large result set in smaller, more manageable portions. The page token is a string representing the current index and page size.

Valid page token strings: <ul> <li>&quot;&quot; (empty string) - Retrieves the first page.</li> <li>&quot;current_index-0--page_size-20&quot; - Retrieves the first page with a page size of 20.</li> <li>&quot;current_index-1--page_size-20&quot; - Retrieves the second page with a page size of 20.</li> </ul>

Index starts at 0.

Examples of valid page token strings: <ul> <li>&quot;&quot;</li> <li>&quot;current_index-0--page_size-20&quot;</li> <li>&quot;current_index-1--page_size-20&quot;</li> <li>&quot;current_index-10--page_size-20&quot;</li> </ul>

Examples of invalid page token strings: <ul> <li>&quot;1&quot;</li> <li>&quot;current_index-0--page_size-20&quot;</li> <li>&quot;current_index--1--page_size-20&quot;</li> <li>&quot;current_index1--page_size-20&quot;</li> <li>&quot;current_index-1--page_size--20&quot;</li> </ul> |






<a name="ondewo.nlu.FullTextSearchResponseEntity"></a>

### FullTextSearchResponseEntity
This message is a response of full text search of entity


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| parent | [string](#string) |  | Required. The project that the agent to fetch is associated with. Format: <pre><code>projects/&lt;project_uuid&gt;/agents</code></pre> |
| language_code | [string](#string) |  | Language code specifies the language of the request in IETF BCP 47 language tag format, e.g. de-DE, en-US, etc. |
| entity_results | [FullTextSearchResponseEntity.EntitySearchResult](#ondewo.nlu.FullTextSearchResponseEntity.EntitySearchResult) | repeated | List of entity search results |
| term | [string](#string) |  | Search term used in the query |
| elastic_query | [string](#string) |  | Elasticsearch query that was executed |
| time | [float](#float) |  | Time taken to execute the query in seconds |
| next_page_token | [string](#string) |  | The next_page_token is used to retrieve the next page of a returned result, e.g. next_page_token is current_index-2 |






<a name="ondewo.nlu.FullTextSearchResponseEntity.EntitySearchResult"></a>

### FullTextSearchResponseEntity.EntitySearchResult
Search result for an entity


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| name | [string](#string) |  | Name of the entity |
| display_name | [string](#string) |  | Display name of the entity |
| entity_type_name | [string](#string) |  | Name of the entity type this entity belongs to |
| entity_type_display_name | [string](#string) |  | Display name of the entity type |
| language | [string](#string) |  | Language code of the entity |
| created_at | [google.protobuf.Timestamp](#google.protobuf.Timestamp) |  | Creation date and time. Read-only field. |
| modified_at | [google.protobuf.Timestamp](#google.protobuf.Timestamp) |  | Modification date and time. Read-only field. |
| created_by | [string](#string) |  | User id in form of a valid UUID. |
| modified_by | [string](#string) |  | User id in form of a valid UUID. |






<a name="ondewo.nlu.FullTextSearchResponseEntitySynonym"></a>

### FullTextSearchResponseEntitySynonym
This message is a response of full text search of synonym entity


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| parent | [string](#string) |  | Required. The project that the agent to fetch is associated with. Format: <pre><code>projects/&lt;project_uuid&gt;/agents</code></pre> |
| language_code | [string](#string) |  | Language code specifies the language of the request in IETF BCP 47 language tag format, e.g. de-DE, en-US, etc. |
| entity_synonym_results | [FullTextSearchResponseEntitySynonym.EntitySynonymSearchResult](#ondewo.nlu.FullTextSearchResponseEntitySynonym.EntitySynonymSearchResult) | repeated | List of entity synonym search results |
| term | [string](#string) |  | Search term used in the query |
| elastic_query | [string](#string) |  | Elasticsearch query that was executed |
| time | [float](#float) |  | Time taken to execute the query in seconds |
| next_page_token | [string](#string) |  | The next_page_token is used to retrieve the next page of a returned result, e.g. next_page_token is current_index-2 |






<a name="ondewo.nlu.FullTextSearchResponseEntitySynonym.EntitySynonymSearchResult"></a>

### FullTextSearchResponseEntitySynonym.EntitySynonymSearchResult
Search result for an entity synonym


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| name | [string](#string) |  | Name of the entity synonym |
| display_name | [string](#string) |  | Display name of the entity synonym |
| entity_type_name | [string](#string) |  | Name of the entity type |
| entity_type_display_name | [string](#string) |  | Display name of the entity type |
| entity_name | [string](#string) |  | Name of the entity this synonym belongs to |
| entity_display_name | [string](#string) |  | Display name of the entity |
| language | [string](#string) |  | Language code of the entity synonym |
| created_at | [google.protobuf.Timestamp](#google.protobuf.Timestamp) |  | Creation date and time. Read-only field. |
| modified_at | [google.protobuf.Timestamp](#google.protobuf.Timestamp) |  | Modification date and time. Read-only field. |
| created_by | [string](#string) |  | User id in form of a valid UUID. |
| modified_by | [string](#string) |  | User id in form of a valid UUID. |






<a name="ondewo.nlu.FullTextSearchResponseEntityType"></a>

### FullTextSearchResponseEntityType
This message is a response of full text search of entity type


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| parent | [string](#string) |  | Required. The project that the agent to fetch is associated with. Format: <pre><code>projects/&lt;project_uuid&gt;/agents</code></pre> |
| language_code | [string](#string) |  | Language code specifies the language of the request in IETF BCP 47 language tag format, e.g. de-DE, en-US, etc. |
| entity_type_results | [FullTextSearchResponseEntityType.EntityTypeSearchResult](#ondewo.nlu.FullTextSearchResponseEntityType.EntityTypeSearchResult) | repeated | List of entity type search results |
| term | [string](#string) |  | Search term used in the query |
| elastic_query | [string](#string) |  | Elasticsearch query that was executed |
| time | [float](#float) |  | Time taken to execute the query in seconds |
| next_page_token | [string](#string) |  | The next_page_token is used to retrieve the next page of a returned result, e.g. next_page_token is current_index-2 |






<a name="ondewo.nlu.FullTextSearchResponseEntityType.EntityTypeSearchResult"></a>

### FullTextSearchResponseEntityType.EntityTypeSearchResult
Search result for an entity type


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| name | [string](#string) |  | Name of the entity type |
| display_name | [string](#string) |  | Display name of the entity type |
| language | [string](#string) |  | Language code of the entity type |
| created_at | [google.protobuf.Timestamp](#google.protobuf.Timestamp) |  | Creation date and time. Read-only field. |
| modified_at | [google.protobuf.Timestamp](#google.protobuf.Timestamp) |  | Modification date and time. Read-only field. |
| created_by | [string](#string) |  | User id in form of a valid UUID. |
| modified_by | [string](#string) |  | User id in form of a valid UUID. |






<a name="ondewo.nlu.FullTextSearchResponseIntent"></a>

### FullTextSearchResponseIntent
This message is a response of full text search of intent


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| parent | [string](#string) |  | Required. The project that the agent to fetch is associated with. Format: <pre><code>projects/&lt;project_uuid&gt;/agents</code></pre> |
| language_code | [string](#string) |  | Language code specifies the language of the request in IETF BCP 47 language tag format, e.g. de-DE, en-US, etc. |
| intent_results | [FullTextSearchResponseIntent.IntentSearchResult](#ondewo.nlu.FullTextSearchResponseIntent.IntentSearchResult) | repeated | List of intent search results |
| term | [string](#string) |  | Search term used in the query |
| elastic_query | [string](#string) |  | Elasticsearch query that was executed |
| time | [float](#float) |  | Time taken to execute the query in seconds |
| next_page_token | [string](#string) |  | The next_page_token is used to retrieve the next page of a returned result, e.g. next_page_token is current_index-2 |






<a name="ondewo.nlu.FullTextSearchResponseIntent.IntentSearchResult"></a>

### FullTextSearchResponseIntent.IntentSearchResult
Search result for an intent


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| name | [string](#string) |  | Name of the intent |
| display_name | [string](#string) |  | Display name of the intent |
| domain_name | [string](#string) |  | Domain name of the intent |
| tags | [string](#string) | repeated | Tags associated with the intent |
| language | [string](#string) |  | Language code of the intent |
| created_at | [google.protobuf.Timestamp](#google.protobuf.Timestamp) |  | Creation date and time. Read-only field. |
| modified_at | [google.protobuf.Timestamp](#google.protobuf.Timestamp) |  | Modification date and time. Read-only field. |
| created_by | [string](#string) |  | User id in form of a valid UUID. |
| modified_by | [string](#string) |  | User id in form of a valid UUID. |






<a name="ondewo.nlu.FullTextSearchResponseIntentContextIn"></a>

### FullTextSearchResponseIntentContextIn
This message is a response of full text search of intent with context in


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| parent | [string](#string) |  | Required. The project that the agent to fetch is associated with. Format: <pre><code>projects/&lt;project_uuid&gt;/agents</code></pre> |
| language_code | [string](#string) |  | Language code specifies the language of the request in IETF BCP 47 language tag format, e.g. de-DE, en-US, etc. |
| intent_context_in_results | [FullTextSearchResponseIntentContextIn.IntentContextInSearchResult](#ondewo.nlu.FullTextSearchResponseIntentContextIn.IntentContextInSearchResult) | repeated | List of intent input context search results |
| term | [string](#string) |  | Search term used in the query |
| elastic_query | [string](#string) |  | Elasticsearch query that was executed |
| time | [float](#float) |  | Time taken to execute the query in seconds |
| next_page_token | [string](#string) |  | The next_page_token is used to retrieve the next page of a returned result, e.g. next_page_token is current_index-2 |






<a name="ondewo.nlu.FullTextSearchResponseIntentContextIn.IntentContextInSearchResult"></a>

### FullTextSearchResponseIntentContextIn.IntentContextInSearchResult
Search result for an intent input context


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| name | [string](#string) |  | Name of the input context |
| intent_name | [string](#string) |  | Name of the intent this context belongs to |
| intent_display_name | [string](#string) |  | Display name of the intent |
| tags | [string](#string) | repeated | Tags associated with the intent |
| language | [string](#string) |  | Language code of the context |
| created_at | [google.protobuf.Timestamp](#google.protobuf.Timestamp) |  | Creation date and time. Read-only field. |
| modified_at | [google.protobuf.Timestamp](#google.protobuf.Timestamp) |  | Modification date and time. Read-only field. |
| created_by | [string](#string) |  | User id in form of a valid UUID. |
| modified_by | [string](#string) |  | User id in form of a valid UUID. |






<a name="ondewo.nlu.FullTextSearchResponseIntentContextOut"></a>

### FullTextSearchResponseIntentContextOut
This message is a response of full text search of intent with context out


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| parent | [string](#string) |  | Required. The project that the agent to fetch is associated with. Format: <pre><code>projects/&lt;project_uuid&gt;/agents</code></pre> |
| language_code | [string](#string) |  | Language code specifies the language of the request in IETF BCP 47 language tag format, e.g. de-DE, en-US, etc. |
| intent_context_out_results | [FullTextSearchResponseIntentContextOut.IntentContextOutSearchResult](#ondewo.nlu.FullTextSearchResponseIntentContextOut.IntentContextOutSearchResult) | repeated | List of intent output context search results |
| term | [string](#string) |  | Search term used in the query |
| elastic_query | [string](#string) |  | Elasticsearch query that was executed |
| time | [float](#float) |  | Time taken to execute the query in seconds |
| next_page_token | [string](#string) |  | The next_page_token is used to retrieve the next page of a returned result, e.g. next_page_token is current_index-2 |






<a name="ondewo.nlu.FullTextSearchResponseIntentContextOut.IntentContextOutSearchResult"></a>

### FullTextSearchResponseIntentContextOut.IntentContextOutSearchResult
Search result for an intent output context


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| name | [string](#string) |  | Name of the output context |
| intent_name | [string](#string) |  | Name of the intent this context belongs to |
| intent_display_name | [string](#string) |  | Display name of the intent |
| tags | [string](#string) | repeated | Tags associated with the intent |
| language | [string](#string) |  | Language code of the context |
| created_at | [google.protobuf.Timestamp](#google.protobuf.Timestamp) |  | Creation date and time. Read-only field. |
| modified_at | [google.protobuf.Timestamp](#google.protobuf.Timestamp) |  | Modification date and time. Read-only field. |
| created_by | [string](#string) |  | User id in form of a valid UUID. |
| modified_by | [string](#string) |  | User id in form of a valid UUID. |






<a name="ondewo.nlu.FullTextSearchResponseIntentParameters"></a>

### FullTextSearchResponseIntentParameters
This message is a response of full text search of intent with parameters


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| parent | [string](#string) |  | Required. The project that the agent to fetch is associated with. Format: <pre><code>projects/&lt;project_uuid&gt;/agents</code></pre> |
| language_code | [string](#string) |  | Language code specifies the language of the request in IETF BCP 47 language tag format, e.g. de-DE, en-US, etc. |
| intent_parameters_results | [FullTextSearchResponseIntentParameters.IntentParametersSearchResult](#ondewo.nlu.FullTextSearchResponseIntentParameters.IntentParametersSearchResult) | repeated | List of intent parameter search results |
| term | [string](#string) |  | Search term used in the query |
| elastic_query | [string](#string) |  | Elasticsearch query that was executed |
| time | [float](#float) |  | Time taken to execute the query in seconds |
| next_page_token | [string](#string) |  | The next_page_token is used to retrieve the next page of a returned result, e.g. next_page_token is current_index-2 |






<a name="ondewo.nlu.FullTextSearchResponseIntentParameters.IntentParametersSearchResult"></a>

### FullTextSearchResponseIntentParameters.IntentParametersSearchResult
Search result for an intent parameter


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| parameter_name | [string](#string) |  | Name of the parameter |
| parameter_display_name | [string](#string) |  | Display name of the parameter |
| intent_name | [string](#string) |  | Name of the intent this parameter belongs to |
| intent_display_name | [string](#string) |  | Display name of the intent |
| tags | [string](#string) | repeated | Tags associated with the intent |
| language | [string](#string) |  | Language code of the parameter |
| created_at | [google.protobuf.Timestamp](#google.protobuf.Timestamp) |  | Creation date and time. Read-only field. |
| modified_at | [google.protobuf.Timestamp](#google.protobuf.Timestamp) |  | Modification date and time. Read-only field. |
| created_by | [string](#string) |  | User id in form of a valid UUID. |
| modified_by | [string](#string) |  | User id in form of a valid UUID. |






<a name="ondewo.nlu.FullTextSearchResponseIntentResponse"></a>

### FullTextSearchResponseIntentResponse
This message is a response of full text search of intent response


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| parent | [string](#string) |  | Required. The project that the agent to fetch is associated with. Format: <pre><code>projects/&lt;project_uuid&gt;/agents</code></pre> |
| language_code | [string](#string) |  | Language code specifies the language of the request in IETF BCP 47 language tag format, e.g. de-DE, en-US, etc. |
| intent_response_results | [FullTextSearchResponseIntentResponse.IntentResponseSearchResult](#ondewo.nlu.FullTextSearchResponseIntentResponse.IntentResponseSearchResult) | repeated | List of intent response search results |
| term | [string](#string) |  | Search term used in the query |
| elastic_query | [string](#string) |  | Elasticsearch query that was executed |
| time | [float](#float) |  | Time taken to execute the query in seconds |
| next_page_token | [string](#string) |  | The next_page_token is used to retrieve the next page of a returned result. The page token to support pagination. Pagination allows you to retrieve a large result set in smaller, more manageable portions. The page token is a string representing the current index and page size.

Valid page token strings: <ul> <li>&quot;&quot; (empty string) - Retrieves the first page.</li> <li>&quot;current_index-0--page_size-20&quot; - Retrieves the first page with a page size of 20.</li> <li>&quot;current_index-1--page_size-20&quot; - Retrieves the second page with a page size of 20.</li> </ul>

Index starts at 0.

Examples of valid page token strings: <ul> <li>&quot;&quot;</li> <li>&quot;current_index-0--page_size-20&quot;</li> <li>&quot;current_index-1--page_size-20&quot;</li> <li>&quot;current_index-10--page_size-20&quot;</li> </ul>

Examples of invalid page token strings: <ul> <li>&quot;1&quot;</li> <li>&quot;current_index-0--page_size-20&quot;</li> <li>&quot;current_index--1--page_size-20&quot;</li> <li>&quot;current_index1--page_size-20&quot;</li> <li>&quot;current_index-1--page_size--20&quot;</li> </ul> |






<a name="ondewo.nlu.FullTextSearchResponseIntentResponse.IntentResponseSearchResult"></a>

### FullTextSearchResponseIntentResponse.IntentResponseSearchResult
Search result for an intent response


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| text | [string](#string) |  | Text content of the response |
| platform | [string](#string) |  | Platform for which this response is intended |
| response_type | [string](#string) |  | Type of the response |
| intent_name | [string](#string) |  | Name of the intent this response belongs to |
| intent_display_name | [string](#string) |  | Display name of the intent |
| tags | [string](#string) | repeated | Tags associated with the intent |
| language | [string](#string) |  | Language code of the response |
| created_at | [google.protobuf.Timestamp](#google.protobuf.Timestamp) |  | Creation date and time. Read-only field. |
| modified_at | [google.protobuf.Timestamp](#google.protobuf.Timestamp) |  | Modification date and time. Read-only field. |
| created_by | [string](#string) |  | User id in form of a valid UUID. |
| modified_by | [string](#string) |  | User id in form of a valid UUID. |






<a name="ondewo.nlu.FullTextSearchResponseIntentTags"></a>

### FullTextSearchResponseIntentTags
This message is a response of full text search of intent with tags


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| parent | [string](#string) |  | Required. The project that the agent to fetch is associated with. Format: <pre><code>projects/&lt;project_uuid&gt;/agents</code></pre> |
| language_code | [string](#string) |  | Language code specifies the language of the request in IETF BCP 47 language tag format, e.g. de-DE, en-US, etc. |
| intent_tags_results | [FullTextSearchResponseIntentTags.IntentTagsSearchResult](#ondewo.nlu.FullTextSearchResponseIntentTags.IntentTagsSearchResult) | repeated | List of intent tag search results |
| term | [string](#string) |  | Search term used in the query |
| elastic_query | [string](#string) |  | Elasticsearch query that was executed |
| time | [float](#float) |  | Time taken to execute the query in seconds |
| next_page_token | [string](#string) |  | The next_page_token is used to retrieve the next page of a returned result, e.g. next_page_token is current_index-2 |






<a name="ondewo.nlu.FullTextSearchResponseIntentTags.IntentTagsSearchResult"></a>

### FullTextSearchResponseIntentTags.IntentTagsSearchResult
Search result for an intent tag


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| name | [string](#string) |  | Name of the tag |
| text | [string](#string) |  | Text content of the tag |
| intent_name | [string](#string) |  | Name of the intent this tag belongs to |
| intent_display_name | [string](#string) |  | Display name of the intent |
| tags | [string](#string) | repeated | Tags associated with the intent |
| language | [string](#string) |  | Language code of the tag |
| created_at | [google.protobuf.Timestamp](#google.protobuf.Timestamp) |  | Creation date and time. Read-only field. |
| modified_at | [google.protobuf.Timestamp](#google.protobuf.Timestamp) |  | Modification date and time. Read-only field. |
| created_by | [string](#string) |  | User id in form of a valid UUID. |
| modified_by | [string](#string) |  | User id in form of a valid UUID. |






<a name="ondewo.nlu.FullTextSearchResponseIntentUsersays"></a>

### FullTextSearchResponseIntentUsersays
This message is a response of full text search of intent with sentence


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| parent | [string](#string) |  | Required. The project that the agent to fetch is associated with. Format: <pre><code>projects/&lt;project_uuid&gt;/agents</code></pre> |
| language_code | [string](#string) |  | Language code specifies the language of the request in IETF BCP 47 language tag format, e.g. de-DE, en-US, etc. |
| intent_usersays_results | [FullTextSearchResponseIntentUsersays.IntentUsersaysSearchResult](#ondewo.nlu.FullTextSearchResponseIntentUsersays.IntentUsersaysSearchResult) | repeated | List of intent training phrase search results |
| term | [string](#string) |  | Search term used in the query |
| elastic_query | [string](#string) |  | Elasticsearch query that was executed |
| time | [float](#float) |  | Time taken to execute the query in seconds |
| next_page_token | [string](#string) |  | The next_page_token is used to retrieve the next page of a returned result, e.g. next_page_token is current_index-2 |






<a name="ondewo.nlu.FullTextSearchResponseIntentUsersays.IntentUsersaysSearchResult"></a>

### FullTextSearchResponseIntentUsersays.IntentUsersaysSearchResult
Search result for an intent training phrase (user says)


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| name | [string](#string) |  | Name of the training phrase |
| text | [string](#string) |  | Text of the training phrase |
| text_as_entity_types | [string](#string) |  | Text with entity types annotated |
| text_as_entity_values | [string](#string) |  | Text with entity values annotated |
| type | [string](#string) |  | Type of the training phrase part |
| intent_name | [string](#string) |  | Name of the intent this training phrase belongs to |
| intent_display_name | [string](#string) |  | Display name of the intent |
| tags | [string](#string) | repeated | Tags associated with the intent |
| language | [string](#string) |  | Language code of the training phrase |
| created_at | [google.protobuf.Timestamp](#google.protobuf.Timestamp) |  | Creation date and time. Read-only field. |
| modified_at | [google.protobuf.Timestamp](#google.protobuf.Timestamp) |  | Modification date and time. Read-only field. |
| created_by | [string](#string) |  | User id in form of a valid UUID. |
| modified_by | [string](#string) |  | User id in form of a valid UUID. |






<a name="ondewo.nlu.GetAgentRequest"></a>

### GetAgentRequest
The request message for <a href="index.html#ondewo.nlu.Agents.GetAgent">Agents.GetAgent</a>.


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| parent | [string](#string) |  | Required. The project that the agent to fetch is associated with. Format: <pre><code>projects/&lt;project_uuid&gt;/agents</code></pre> |
| agent_view | [AgentView](#ondewo.nlu.AgentView) |  | Optional. Specify the view of the returned agent (full view by default) |
| field_mask | [google.protobuf.FieldMask](#google.protobuf.FieldMask) |  | Optional. A mask to control which fields are returned in the response. |






<a name="ondewo.nlu.GetAgentStatisticsRequest"></a>

### GetAgentStatisticsRequest
Request statistics of the agent


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| parent | [string](#string) |  | Required. The project to get statistics from. Format: <pre><code>projects/&lt;project_uuid&gt;</code></pre> |
| format | [ReportFormat](#ondewo.nlu.ReportFormat) |  | File formats for reports |
| language_code | [string](#string) |  | Language code specifies the language of the request in IETF BCP 47 language tag format, e.g. de-DE, en-US, etc. the language to calculate statistics about |
| type | [ReportType](#ondewo.nlu.ReportType) |  | Type of reports about the domain of the agent |






<a name="ondewo.nlu.GetAgentStatisticsResponse"></a>

### GetAgentStatisticsResponse
Response to get statistics of the agent


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| reports | [bytes](#bytes) |  | Statistic info. |
| format | [ReportFormat](#ondewo.nlu.ReportFormat) |  | File formats for reports |
| type | [ReportType](#ondewo.nlu.ReportType) |  | Type of reports about the domain of the agent |






<a name="ondewo.nlu.GetModelStatusesRequest"></a>

### GetModelStatusesRequest
Request to get model statuses


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| parent | [string](#string) |  | Required. The project that the agent to fetch is associated with. Format: <pre><code>projects/&lt;project_uuid&gt;/agent</code></pre> |
| cache_version | [int32](#int32) |  | Optional. Cache version to filter model statuses. If not specified, returns statuses for all cache versions. |
| language_code | [string](#string) |  | Language code specifies the language of the request in IETF BCP 47 language tag format, e.g. de-DE, en-US, etc. |
| model_name | [string](#string) |  | Optional. Model name to filter model statuses. If not specified, returns statuses for all models. |






<a name="ondewo.nlu.GetModelStatusesResponse"></a>

### GetModelStatusesResponse
Response to get model statuses


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| model_statuses | [ModelStatus](#ondewo.nlu.ModelStatus) | repeated | List of model statuses matching the request filters. |






<a name="ondewo.nlu.GetPlatformInfoResponse"></a>

### GetPlatformInfoResponse
GIT information about the version of the server


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| version | [string](#string) |  | version of the server build |
| commit_hash | [string](#string) |  | git commit hash of the server build |






<a name="ondewo.nlu.GetPlatformMappingRequest"></a>

### GetPlatformMappingRequest
Request to get platform mapping


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| parent | [string](#string) |  | Required. The project that the agent is associated with. Format: <pre><code>projects/&lt;project_uuid&gt;/agent</code></pre> |






<a name="ondewo.nlu.GetSessionsStatisticsRequest"></a>

### GetSessionsStatisticsRequest
Request of the report of the statistics about sessions


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| parent | [string](#string) |  | Required. The project to get statistics from. Format: <pre><code>projects/&lt;project_uuid&gt;</code></pre> |
| format | [ReportFormat](#ondewo.nlu.ReportFormat) |  | File formats for reports |
| type | [SessionsReportType](#ondewo.nlu.SessionsReportType) |  | Type of reports about the domain of the agent |
| session_filter | [SessionFilter](#ondewo.nlu.SessionFilter) |  | Optional. A filter to narrow reports based on sessions |
| context_filters | [ContextFilter](#ondewo.nlu.ContextFilter) | repeated | Optional. A filter to narrow reports based on contextual information (Coming soon! Not yet implemented) |
| limit | [int32](#int32) |  | Optional. limit the returned number of results |
| group_bys | [string](#string) | repeated | Optional. Grouping based on named properties |
| order_bys | [string](#string) | repeated | Optional. Order based on named properties |
| field_mask | [google.protobuf.FieldMask](#google.protobuf.FieldMask) |  | Optional. The mask to control which data fields will be added to the returned data. <br> Example: paths=[&quot;duration_in_s_min&quot;, &quot;id&quot;, &quot;session_id&quot;, &quot;project_id&quot;] <br> |
| sql_query | [string](#string) |  | SQL Query - only usable with specific SessionsReportType such as SessionsReportType.SESSION_SQL_QUERY |






<a name="ondewo.nlu.GetSessionsStatisticsResponse"></a>

### GetSessionsStatisticsResponse
Report of the statistics about sessions


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| reports | [bytes](#bytes) |  | Statistic info. |
| format | [ReportFormat](#ondewo.nlu.ReportFormat) |  | File formats for reports |
| type | [SessionsReportType](#ondewo.nlu.SessionsReportType) |  | Type of reports about the domain of the agent |






<a name="ondewo.nlu.ImportAgentRequest"></a>

### ImportAgentRequest
The request message for <a href="index.html#ondewo.nlu.Agents.ImportAgent">Agents.ImportAgent</a>.


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| parent | [string](#string) |  | Required. The project that the agent to import is associated with. Format: <pre><code>projects/&lt;project_uuid&gt;</code></pre> |
| agent_uri | [string](#string) |  | The URI to a Google Cloud Storage file containing the agent to import. Note: The URI must start with "gs://". |
| agent_content | [bytes](#bytes) |  | The agent to import. <br> Example for how to import an agent via the command line: <br> <pre><code>curl \ 'https://dialogflow.googleapis.com/v2/projects/<project_name>/agent:import\ -X POST \ -H 'Authorization: Bearer '$(gcloud auth print-access-token) \ -H 'Accept: application/json' \ -H 'Content-Type: application/json' \ --compressed \ --data-binary "{ 'agentContent': '$(cat <agent zip file> | base64 -w 0)' }" </code></pre> |






<a name="ondewo.nlu.ListAgentsOfUserResponse"></a>

### ListAgentsOfUserResponse
Get list of agents of user


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| agents_of_user_with_owners | [AgentOfUserWithOwner](#ondewo.nlu.AgentOfUserWithOwner) | repeated | The list of agents with their owners of the given user. There will be a maximum number of items returned based on the page_token field in the request. |
| next_page_token | [string](#string) |  | The next_page_token is used to retrieve the next page of a returned result, e.g. next_page_token is current_index-2 |






<a name="ondewo.nlu.ListAgentsRequest"></a>

### ListAgentsRequest
Request to get the list of agents


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| agent_view | [AgentView](#ondewo.nlu.AgentView) |  | Optional. Specify the view of the returned agent (full view by default) |
| page_token | [string](#string) |  | Optional. The next_page_token value returned from a previous list request. |
| sort_by_field | [AgentSorting](#ondewo.nlu.AgentSorting) |  | Optional. Defines the sorting of the list. Default, no sorting. |
| field_mask | [google.protobuf.FieldMask](#google.protobuf.FieldMask) | optional | Optional. The mask to control which fields gets returned. |






<a name="ondewo.nlu.ListAgentsResponse"></a>

### ListAgentsResponse
Get list of agents


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| agents_with_owners | [AgentWithOwner](#ondewo.nlu.AgentWithOwner) | repeated | The list of agent and their owners. There will be a maximum number of items returned based on the page_token field in the request. |
| next_page_token | [string](#string) |  | The next_page_token is used to retrieve the next page of a returned result, e.g. next_page_token is current_index-2 |






<a name="ondewo.nlu.ListProjectPermissionsRequest"></a>

### ListProjectPermissionsRequest
Project permissions


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| page_token | [string](#string) |  | Optional. The next_page_token value returned from a previous list request. The page token to support pagination. Pagination allows you to retrieve a large result set in smaller, more manageable portions. The page token is a string representing the current index and page size.

Valid page token strings: <ul> <li>&quot;&quot; (empty string) - Retrieves the first page.</li> <li>&quot;current_index-0--page_size-20&quot; - Retrieves the first page with a page size of 20.</li> <li>&quot;current_index-1--page_size-20&quot; - Retrieves the second page with a page size of 20.</li> </ul>

Index starts at 0.

Examples of valid page token strings: <ul> <li>&quot;&quot;</li> <li>&quot;current_index-0--page_size-20&quot;</li> <li>&quot;current_index-1--page_size-20&quot;</li> <li>&quot;current_index-10--page_size-20&quot;</li> </ul>

Examples of invalid page token strings: <ul> <li>&quot;1&quot;</li> <li>&quot;current_index-0--page_size-20&quot;</li> <li>&quot;current_index--1--page_size-20&quot;</li> <li>&quot;current_index1--page_size-20&quot;</li> <li>&quot;current_index-1--page_size--20&quot;</li> </ul> |
| field_mask | [google.protobuf.FieldMask](#google.protobuf.FieldMask) | optional | Optional. The mask to control which fields gets returned. |






<a name="ondewo.nlu.ListProjectPermissionsResponse"></a>

### ListProjectPermissionsResponse
List project permissions


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| permissions | [string](#string) | repeated | The list of project permissions. There will be a maximum number of items returned based on the page_token field in the request. |
| next_page_token | [string](#string) |  | The next_page_token is used to retrieve the next page of a returned result, e.g. next_page_token is current_index-2 |






<a name="ondewo.nlu.ListUsersInProjectRequest"></a>

### ListUsersInProjectRequest
Request to list users in the project


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| parent | [string](#string) |  | Required. The project that the agent to train is associated with. Format: <pre><code>projects/&lt;project_uuid&gt;</code></pre> |
| page_token | [string](#string) |  | Optional. The next_page_token value returned from a previous list request. The page token to support pagination. Pagination allows you to retrieve a large result set in smaller, more manageable portions. The page token is a string representing the current index and page size.

Valid page token strings: <ul> <li>&quot;&quot; (empty string) - Retrieves the first page.</li> <li>&quot;current_index-0--page_size-20&quot; - Retrieves the first page with a page size of 20.</li> <li>&quot;current_index-1--page_size-20&quot; - Retrieves the second page with a page size of 20.</li> </ul>

Index starts at 0.

Examples of valid page token strings: <ul> <li>&quot;&quot;</li> <li>&quot;current_index-0--page_size-20&quot;</li> <li>&quot;current_index-1--page_size-20&quot;</li> <li>&quot;current_index-10--page_size-20&quot;</li> </ul>

Examples of invalid page token strings: <ul> <li>&quot;1&quot;</li> <li>&quot;current_index-0--page_size-20&quot;</li> <li>&quot;current_index--1--page_size-20&quot;</li> <li>&quot;current_index1--page_size-20&quot;</li> <li>&quot;current_index-1--page_size--20&quot;</li> </ul> |
| field_mask | [google.protobuf.FieldMask](#google.protobuf.FieldMask) | optional | Optional. The mask to control which fields gets returned. <br> |






<a name="ondewo.nlu.ListUsersInProjectResponse"></a>

### ListUsersInProjectResponse
List the users in a project


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| users | [UserInProject](#ondewo.nlu.UserInProject) | repeated | The list of users in a project. There will be a maximum number of items returned based on the page_token field in the request. |
| next_page_token | [string](#string) |  | The next_page_token is used to retrieve the next page of a returned result, e.g. next_page_token is current_index-2 |






<a name="ondewo.nlu.MigrateAgentRequest"></a>

### MigrateAgentRequest
Request to migrate an agent


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| agent_content | [bytes](#bytes) |  | The agent to migrate as zip file |






<a name="ondewo.nlu.ModelStatus"></a>

### ModelStatus
Status of model


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| cache_version | [int32](#int32) |  | Cache version that contains the correspondent model |
| language_code | [string](#string) |  | Language code specifies the language of the request in IETF BCP 47 language tag format, e.g. de-DE, en-US, etc. |
| model_name | [string](#string) |  | The model name |
| status_set_time | [google.protobuf.Timestamp](#google.protobuf.Timestamp) |  | Timestamp when the status was set. Read-only field. |
| config | [string](#string) |  | Configuration of the model as a string. |
| status | [ModelStatus.StatusName](#ondewo.nlu.ModelStatus.StatusName) |  | Current status of the model. |






<a name="ondewo.nlu.OptimizeRankingMatchRequest"></a>

### OptimizeRankingMatchRequest
This message is a request to run Optimize Ranking Match


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| parent | [string](#string) |  | Required. The project that the agent to train is associated with. Format: <pre><code>projects/&lt;project_uuid&gt;</code></pre> |
| language_codes | [string](#string) | repeated | languages that should be optimized |
| optimization_configs | [RankingMatchOptimizationConfig](#ondewo.nlu.RankingMatchOptimizationConfig) | repeated | optimization config will contain all possible optimizations, with which we will come up in the future |
| in_place | [bool](#bool) |  | if in_place is true then the config of the agent on the server will be updated, if False then config with optimized thresholds will be returned but not updated on the server |






<a name="ondewo.nlu.OptimizeRankingMatchResponse"></a>

### OptimizeRankingMatchResponse
This message is a response of Optimize Ranking Match


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| optimization_info | [google.protobuf.Struct](#google.protobuf.Struct) |  | info about optimization <br> |
| optimized_ondewo_config | [google.protobuf.Struct](#google.protobuf.Struct) |  | the optimized configuration of the ondewo agent e.g., optimized parameters <br> |






<a name="ondewo.nlu.PlatformMapping"></a>

### PlatformMapping
This message contains the mapping of platform


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| parent | [string](#string) |  | Required. The project that the agent is associated with. Format: <pre><code>projects/&lt;project_uuid&gt;/agent</code></pre> |
| platform_info | [CustomPlatformInfo](#ondewo.nlu.CustomPlatformInfo) | repeated | Required. If not set, it will set it empty. |






<a name="ondewo.nlu.RankingMatchOptimizationConfig"></a>

### RankingMatchOptimizationConfig
This message contains the configuration to run Optimize Ranking Match


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| language_code | [string](#string) |  | Language code specifies the language of the request in IETF BCP 47 language tag format, e.g. de-DE, en-US, etc. |
| n_splits | [int32](#int32) |  | number of splits for optimization |
| random_seed | [int32](#int32) |  | random seed number for defining the split of train and test of training phrases for optimization |
| initial_thresholds | [google.protobuf.Struct](#google.protobuf.Struct) |  | initial thresholds are optional, if not given will be taken from the current config <br> example {'OndewoIntentSimilarityMatch': 0.59, 'OndewoIntentNamedSimilarityMatch': 0.39} <br> |






<a name="ondewo.nlu.ReindexAgentRequest"></a>

### ReindexAgentRequest
This message is a request to reindex agent


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| parent | [string](#string) |  | Required. The project that the agent to fetch is associated with. Format: <pre><code>projects/&lt;project_uuid&gt;/agents</code></pre> |
| branch_name | [string](#string) |  | Optional, useful for versioning reasons of the agent data |
| index_types | [FullTextSearchRequest.QueryType](#ondewo.nlu.FullTextSearchRequest.QueryType) | repeated | Optional, useful for reindexing specific indices in the future |






<a name="ondewo.nlu.RemoveUserFromProjectRequest"></a>

### RemoveUserFromProjectRequest
Request to remove user from the project.


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| parent | [string](#string) |  | Required. The project that the agent to train is associated with. Format: <pre><code>projects/&lt;project_uuid&gt;</code></pre> |
| user_id | [string](#string) |  | id of the user |






<a name="ondewo.nlu.RestoreAgentRequest"></a>

### RestoreAgentRequest
The request message for <a href="index.html#ondewo.nlu.Agents.RestoreAgent">Agents.RestoreAgent</a>.


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| parent | [string](#string) |  | Required. The project that the agent to restore is associated with. Format: <pre><code>projects/&lt;project_uuid&gt;</code></pre> |
| agent_uri | [string](#string) |  | The URI to a Google Cloud Storage file containing the agent to restore. Note: The URI must start with "gs://". |
| agent_content | [bytes](#bytes) |  | The agent to restore. <br> Example for how to restore an agent via the command line: <pre><code>curl \ 'https://dialogflow.googleapis.com/v2/projects/<project_name>/agent:restore\ -X POST \ -H 'Authorization: Bearer '$(gcloud auth print-access-token) \ -H 'Accept: application/json' \ -H 'Content-Type: application/json' \ --compressed \ --data-binary "{ 'agentContent': '$(cat <agent zip file> | base64 -w 0)' }" \ </code></pre> |






<a name="ondewo.nlu.SetAgentStatusRequest"></a>

### SetAgentStatusRequest
Request to set status of the agent


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| parent | [string](#string) |  | Required. The project of which to set the status. Format: <pre><code>projects/&lt;project_uuid&gt;/agent</code></pre> |
| status | [AgentStatus](#ondewo.nlu.AgentStatus) |  | Required. Status of the agent |
| agent_view | [AgentView](#ondewo.nlu.AgentView) |  | Optional. View of the returned agent |






<a name="ondewo.nlu.SetResourcesRequest"></a>

### SetResourcesRequest
Request to set resources


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| parent | [string](#string) |  | Required. The project that the agent to fetch is associated with. Format: <pre><code>projects/&lt;project_uuid&gt;/agents</code></pre> |
| name | [string](#string) |  | Required. Name of the resource. |
| type | [string](#string) |  | Required. Type of the resource (e.g., "audio", "image", "file"). |
| resource_file | [bytes](#bytes) |  | Required. The resource file content as bytes. |
| language_code | [string](#string) |  | Language code specifies the language of the request in IETF BCP 47 language tag format, e.g. de-DE, en-US, etc. |






<a name="ondewo.nlu.TrainAgentRequest"></a>

### TrainAgentRequest
The request message for <a href="index.html#ondewo.nlu.Agents.TrainAgent">Agents.TrainAgent</a>.


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| parent | [string](#string) |  | Required. The project that the agent to train is associated with. Format: <pre><code>projects/&lt;project_uuid&gt;</code></pre> |
| branch | [string](#string) |  | Name of the branch of the agent for versioning. The default branch name is <code>develop</code>. |
| initiation_protocol | [InitiationProtocol](#ondewo.nlu.InitiationProtocol) |  | Defines when to initiate newly created agent when training started |






<a name="ondewo.nlu.UpdateAgentRequest"></a>

### UpdateAgentRequest
Request to update the agent


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| agent | [Agent](#ondewo.nlu.Agent) |  | The agent |
| agent_view | [AgentView](#ondewo.nlu.AgentView) |  | Optional. Specify the view of the returned agent (sparse view by default) |
| update_mask | [google.protobuf.FieldMask](#google.protobuf.FieldMask) |  | Optional. The mask to control which fields get updated. |






<a name="ondewo.nlu.UserInProject"></a>

### UserInProject
Request to get user in project


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| parent | [string](#string) |  | Required. The project that the agent to train is associated with. Format: <pre><code>projects/&lt;project_uuid&gt;</code></pre> |
| user | [User](#ondewo.nlu.User) |  | User object |
| role_id | [uint32](#uint32) |  | ID of the project role of the user |





 <!-- end messages -->


<a name="ondewo.nlu.AgentSorting.AgentSortingField"></a>

### AgentSorting.AgentSortingField
Sorting field

| Name | Number | Description |
| ---- | ------ | ----------- |
| NO_AGENT_SORTING | 0 | no sorting |
| SORT_AGENT_BY_NAME | 1 | sorting by name |
| SORT_AGENT_BY_CREATION_DATE | 2 | sorting by creation date |
| SORT_AGENT_BY_LAST_UPDATED | 3 | sorting by last updated date |
| SORT_AGENT_BY_OWNER_NAME | 4 | sorting by owner, i.e. user who owns the agent which is usually the creator of the agent |



<a name="ondewo.nlu.AgentStatus"></a>

### AgentStatus
Type of Agent / Project status

| Name | Number | Description |
| ---- | ------ | ----------- |
| ACTIVE | 0 | If project is active, all its endpoints are active |
| INACTIVE | 1 | If project is inactive: <ul> <li>members of the project do not see the project anymore except users with project role &quot;PROJECT_ADMIN&quot; and users with server role &quot;SERVER_ADMIN&quot;</li> <li>nothing is allowed (no endpoint) on the project except &quot;SetAgentStatus&quot; by PROJECT_ADMIN or SERVER_ADMIN</li> </ul> |



<a name="ondewo.nlu.AgentView"></a>

### AgentView
Structure of agent view

| Name | Number | Description |
| ---- | ------ | ----------- |
| AGENT_VIEW_UNSPECIFIED | 0 | Unspecified agent view: the view is defined by the call: <ul> <li>CreateAgent: AGENT_VIEW_SHALLOW</li> <li>UpdateAgent: AGENT_VIEW_SHALLOW</li> <li>GetAgent: AGENT_VIEW_FULL</li> <li>ListAgents: AGENT_VIEW_SHALLOW</li> </ul> |
| AGENT_VIEW_FULL | 1 | Full agent view: populate all the fields of the Agent message including configs. |
| AGENT_VIEW_SHALLOW | 2 | Shallow agent view: populates all the fields except configs. |
| AGENT_VIEW_MINIMUM | 3 | Minimum view including only agent UUID and agent display name |



<a name="ondewo.nlu.FullTextSearchRequest.QueryType"></a>

### FullTextSearchRequest.QueryType
Type of query

| Name | Number | Description |
| ---- | ------ | ----------- |
| ALL | 0 | Placeholder value, has to start with zero |
| OndewoEntityQuery | 1 | Query for entities |
| OndewoEntityTypeQuery | 2 | Query for entity types |
| OndewoEntitySynonymQuery | 3 | Query for entity synonyms |
| OndewoIntentQuery | 4 | Query for intents |
| OndewoIntentContextInQuery | 5 | Query for intent input contexts |
| OndewoIntentContextOutQuery | 6 | Query for intent output contexts |
| OndewoIntentUsersaysQuery | 7 | Query for intent training phrases (user says) |
| OndewoIntentTagsQuery | 8 | Query for intent tags |
| OndewoIntentParametersQuery | 9 | Query for intent parameters |
| OndewoIntentResponseQuery | 10 | Query for intent responses |



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
Status name of the model.

| Name | Number | Description |
| ---- | ------ | ----------- |
| UNKNOWN | 0 | Unknown status |
| INITIALIZING | 1 | Model is initializing |
| INITIALIZED | 2 | Model has been initialized |
| LOADING_DATA | 3 | Model is loading data |
| TRAINING | 4 | Model is training |
| TESTING | 5 | Model is being tested |
| TRAINED | 6 | Model training is complete |



<a name="ondewo.nlu.ReportFormat"></a>

### ReportFormat
File formats for reports

| Name | Number | Description |
| ---- | ------ | ----------- |
| CSV | 0 | CSV (comma separated values) file format |
| HTML | 1 | HTML file format |
| JSON | 2 | JSON file format |



<a name="ondewo.nlu.ReportType"></a>

### ReportType
Type of reports about the domain of the agent

| Name | Number | Description |
| ---- | ------ | ----------- |
| ALL | 0 | will return all reports as files of specified format compressed into a single zipfile |
| INTENT_PER_LANGUAGE | 1 | statistics of the language specific part of the intent database |
| ENTITY_PER_LANGUAGE | 2 | statistics of the language specific part of the entity database |
| ENTITY_COLLISION | 3 | report on collision of the entity synonyms |
| INTENT_GENERAL | 4 | report of statistics of the general (relevant to all supported languages) part of intent database |



<a name="ondewo.nlu.SessionsReportType"></a>

### SessionsReportType
Type of reports about the domain of the agent

| Name | Number | Description |
| ---- | ------ | ----------- |
| SESSIONS | 0 | report on sessions. Supports SessionFilter to filter |
| SESSION_STEPS | 1 | report on session steps. Supports SessionFilter to filter |
| SESSION_TOP_X_INTENTS | 2 | report top x detected intents in session. Supports SessionFilter to filter |
| SESSION_TOP_X_ENTITY_TYPES | 3 | report top x detected entity types. Supports SessionFilter to filter |
| SESSION_TOP_X_ENTITY_VALUES | 4 | report top x detected entity values Supports SessionFilter to filter |
| SESSION_TOP_X_USERS | 5 | report top x users. Supports SessionFilter to filter (Coming soon! Not yet implemented) |
| SESSION_TOP_X_LABELS | 6 | report top x labels. Supports SessionFilter to filter |
| SESSION_TOP_X_TAGS | 7 | report top x tags. Supports SessionFilter to filter |
| SESSION_TOP_X_PHONE_NUMBERS | 8 | report top x phone_numbers. Supports SessionFilter to filter (Coming soon! Not yet implemented) |
| SESSION_HUMAN_HANDOVERS | 9 | report on human handovers. Supports SessionFilter to filter (Coming soon! Not yet implemented) |
| SESSION_SQL_QUERY | 10 | report based on a query issued tables with session information. Requires to define <code>sql_query</code> in request.

Allowed tables to query are: <ul> <li>session</li> <li>session_context</li> <li>session_step</li> <li>session_step_context</li> <li>session_step_detect_entity</li> <li>session_step_detect_intent</li> <li>session_step_detect_intent_context_in</li> <li>session_step_detect_intent_context_out</li> <li>session_step_detect_intent_context_out</li> <li>session_step_detect_intent_label</li> <li>session_step_detect_intent_tag</li> </ul>

Example: <pre><code>SELECT ... FROM session</code></pre> <pre><code>SELECT ... FROM session, session_steps</code></pre> |
| SESSION_LEAST_X_INTENTS | 11 | report least x detected intents in session. Supports SessionFilter to filter |
| SESSION_LEAST_X_ENTITY_TYPES | 12 | report least x detected entity types. Supports SessionFilter to filter |
| SESSION_LEAST_X_ENTITY_VALUES | 13 | report least x detected entity values Supports SessionFilter to filter |
| SESSION_LEAST_X_USERS | 14 | report least x users. Supports SessionFilter to filter (Coming soon! Not yet implemented) |
| SESSION_LEAST_X_LABELS | 15 | report least x labels. Supports SessionFilter to filter |
| SESSION_LEAST_X_TAGS | 16 | report least x tags. Supports SessionFilter to filter |
| TOTAL_STATISTICS | 17 | report total numbers of e.g. sessions, session steps, etc. |


 <!-- end enums -->

 <!-- end HasExtensions -->


<a name="ondewo.nlu.Agents"></a>

### Agents
Agents are best described as Natural Language Understanding (NLU) modules that transform user requests into actionable data. You can include agents in your app, product, or service to determine user intent and respond to the user in a natural way.

After you create an agent, you can add <a href="index.html#ondewo.nlu.Intent">Intents</a>, <a href="index.html#ondewo.nlu.Context">Contexts</a>, <a href="index.html#ondewo.nlu.EntityType">Entity Types</a>, <a href="index.html#ondewo.nlu.WebhookRequest">Webhooks</a>, and so on to manage the flow of a conversation and match user input to predefined intents and actions.

You can create an agent using both Dialogflow Standard Edition and Dialogflow Enterprise Edition. For details, see <a href="https://docs.cloud.google.com/dialogflow/docs/editions">Dialogflow Editions</a>.

You can save your agent for backup or versioning by exporting the agent by using the <a href="index.html#ondewo.nlu.Agents.ExportAgent">ExportAgent</a> method. You can import a saved agent by using the <a href="index.html#ondewo.nlu.Agents.ImportAgent">ImportAgent</a> method.

Dialogflow provides several <a href="https://dialogflow.com/docs/prebuilt-agents">prebuilt agents</a> for common conversation scenarios such as determining a date and time, converting currency, and so on.

For more information about agents, see the <a href="https://dialogflow.com/docs/agents">Dialogflow documentation</a>.

| Method Name | Request Type | Response Type | Description |
| ----------- | ------------ | ------------- | ------------|
| CreateAgent | [CreateAgentRequest](#ondewo.nlu.CreateAgentRequest) | [Agent](#ondewo.nlu.Agent) | Creates the specified agent.

Examples:

<pre> grpcurl -plaintext -H 'cai-token: aimp' -d '{ "agent": { "display_name": "My Pizza Bot", "default_language_code": "en", "supported_language_codes": ["en"], "time_zone": "Europe/Vienna", "nlu_platform": "ONDEWO" } }' localhost:50055 ondewo.nlu.Agents.CreateAgent </pre>

<samp>{ "parent": "projects/76aaf4f3-a1f6-4fda-b4b3-351c64e65bc4/agent", "display_name": "Pizza Bot", "default_language_code": "en", "supported_language_codes": [ "en" ], "time_zone": "Europe/Vienna", "nlu_platform": "ONDEWO", "owner_id": "5aac51b8-668f-49dd-913f-cc683e56af34" } </samp> |
| UpdateAgent | [UpdateAgentRequest](#ondewo.nlu.UpdateAgentRequest) | [Agent](#ondewo.nlu.Agent) | Updates the specified agent.

Examples:

<pre> grpcurl -plaintext -H 'cai-token: aimp' -d '{ "agent": { "parent": "projects/76aaf4f3-a1f6-4fda-b4b3-351c64e65bc4/agent", "display_name": "Pizza Bot 2", "supported_language_codes": ["en", "de"] }, "update_mask": { "paths": [ "agent.display_name", "agent.supported_language_codes" ] } }' localhost:50055 ondewo.nlu.Agents.UpdateAgent </pre>

<samp>{ "parent": "projects/76aaf4f3-a1f6-4fda-b4b3-351c64e65bc4/agent", "display_name": "Pizza Bot 2", "default_language_code": "en", "supported_language_codes": [ "en", "de" ], "time_zone": "Europe/Vienna", "nlu_platform": "ONDEWO", "owner_id": "5aac51b8-668f-49dd-913f-cc683e56af34" } </samp> |
| GetAgent | [GetAgentRequest](#ondewo.nlu.GetAgentRequest) | [Agent](#ondewo.nlu.Agent) | Retrieves the specified agent.

Examples:

<pre> grpcurl -plaintext -H 'cai-token: aimp' -d '{ "parent": "projects/76aaf4f3-a1f6-4fda-b4b3-351c64e65bc4/agent" }' localhost:50055 ondewo.nlu.Agents.GetAgent </pre> <samp>{ "parent": "projects/76aaf4f3-a1f6-4fda-b4b3-351c64e65bc4/agent", "display_name": "Pizza Bot 2", "default_language_code": "en", "supported_language_codes": [ "en", "de" ], "time_zone": "Europe/Vienna", "nlu_platform": "ONDEWO", "configs": {...}, "owner_id": "5aac51b8-668f-49dd-913f-cc683e56af34" } </samp> |
| DeleteAgent | [DeleteAgentRequest](#ondewo.nlu.DeleteAgentRequest) | [.google.protobuf.Empty](#google.protobuf.Empty) | Deletes the specified agent.

Examples:

<pre> grpcurl -plaintext -H 'cai-token: aimp' -d '{ "parent": "projects/76aaf4f3-a1f6-4fda-b4b3-351c64e65bc4/agent" }' localhost:50055 ondewo.nlu.Agents.DeleteAgent </pre> <samp>{}</samp> |
| DeleteAllAgents | [.google.protobuf.Empty](#google.protobuf.Empty) | [.google.protobuf.Empty](#google.protobuf.Empty) | Deletes all agents in the server (for development purposes only).

Examples:

<pre> grpcurl -plaintext -H 'cai-token: aimp' localhost:50055 ondewo.nlu.Agents.DeleteAllAgents </pre> <samp>{}</samp> |
| ListAgents | [ListAgentsRequest](#ondewo.nlu.ListAgentsRequest) | [ListAgentsResponse](#ondewo.nlu.ListAgentsResponse) | Lists agents in the server associated to the current user

Examples:

<pre> grpcurl -plaintext -H 'cai-token: aimp' localhost:50055 ondewo.nlu.Agents.ListAgents </pre> <samp>{ "agents_with_owners": [ { "agent": { "parent": "projects/76aaf4f3-a1f6-4fda-b4b3-351c64e65bc4/agent", "display_name": "Pizza Bot 2", "owner_id": "5aac51b8-668f-49dd-913f-cc683e56af34" }, "owner": { "user_id": "5aac51b8-668f-49dd-913f-cc683e56af34", "display_name": "admin", "server_role_id": 3, "user_email": "admin@ondewo.com" } } ], "next_page_token": "current_index-1" } </samp> |
| ListAgentsOfUser | [ListAgentsRequest](#ondewo.nlu.ListAgentsRequest) | [ListAgentsOfUserResponse](#ondewo.nlu.ListAgentsOfUserResponse) | Lists agents in the server associated to the given user

Examples:

<pre> grpcurl -plaintext -H 'cai-token: aimp' localhost:50055 ondewo.nlu.Agents.ListAgentsOfUser </pre> <samp>{ "agents_of_user_with_owners": [ { "agent_with_owner": { "agent": { "parent": "projects/76aaf4f3-a1f6-4fda-b4b3-351c64e65bc4/agent", "display_name": "Pizza Bot 2", "owner_id": "5aac51b8-668f-49dd-913f-cc683e56af34" }, "owner": { "user_id": "5aac51b8-668f-49dd-913f-cc683e56af34", "display_name": "admin", "server_role_id": 3, "user_email": "admin@ondewo.com" } }, "project_role": { "role_id": 4, "name": "ADMIN" } } ], "next_page_token": "current_index-1" } </samp> |
| ListAllAgents | [ListAgentsRequest](#ondewo.nlu.ListAgentsRequest) | [ListAgentsResponse](#ondewo.nlu.ListAgentsResponse) | Lists all agents in the server

Examples:

<pre> grpcurl -plaintext -H 'cai-token: aimp' localhost:50055 ondewo.nlu.Agents.ListAllAgents </pre> <samp>{ "agents_with_owners": [ { "agent": { "parent": "projects/76aaf4f3-a1f6-4fda-b4b3-351c64e65bc4/agent", "display_name": "Pizza Bot 2", "owner_id": "5aac51b8-668f-49dd-913f-cc683e56af34" }, "owner": { "user_id": "5aac51b8-668f-49dd-913f-cc683e56af34", "display_name": "admin", "server_role_id": 3, "user_email": "admin@ondewo.com" } } ], "next_page_token": "current_index-1" } </samp> |
| AddUserToProject | [AddUserToProjectRequest](#ondewo.nlu.AddUserToProjectRequest) | [.google.protobuf.Empty](#google.protobuf.Empty) | Adds a user with specified id to the project (agent) |
| RemoveUserFromProject | [RemoveUserFromProjectRequest](#ondewo.nlu.RemoveUserFromProjectRequest) | [.google.protobuf.Empty](#google.protobuf.Empty) | Removes a user with specified id from the project (agent) |
| ListUsersInProject | [ListUsersInProjectRequest](#ondewo.nlu.ListUsersInProjectRequest) | [ListUsersInProjectResponse](#ondewo.nlu.ListUsersInProjectResponse) | Lists users in the project (agent) |
| GetPlatformInfo | [.google.protobuf.Empty](#google.protobuf.Empty) | [GetPlatformInfoResponse](#ondewo.nlu.GetPlatformInfoResponse) | Gets information from the platform <br> Request parameter: <a href="https://protobuf.dev/reference/protobuf/google.protobuf/#empty">google.protobuf.Empty</a> |
| ListProjectPermissions | [ListProjectPermissionsRequest](#ondewo.nlu.ListProjectPermissionsRequest) | [ListProjectPermissionsResponse](#ondewo.nlu.ListProjectPermissionsResponse) | List permissions from the project (agent) |
| TrainAgent | [TrainAgentRequest](#ondewo.nlu.TrainAgentRequest) | [Operation](#ondewo.nlu.Operation) | Trains the specified agent.

Operation &lt;response: <a href="https://protobuf.dev/reference/protobuf/google.protobuf/#empty">google.protobuf.Empty</a>, metadata: <a href="https://protobuf.dev/reference/protobuf/google.protobuf/#struct">google.protobuf.Struct</a>&gt; |
| BuildCache | [BuildCacheRequest](#ondewo.nlu.BuildCacheRequest) | [Operation](#ondewo.nlu.Operation) | Builds cache for the specified agent.

Operation &lt;response: <a href="https://protobuf.dev/reference/protobuf/google.protobuf/#empty">google.protobuf.Empty</a>, metadata: <a href="https://protobuf.dev/reference/protobuf/google.protobuf/#struct">google.protobuf.Struct</a>&gt; |
| ExportAgent | [ExportAgentRequest](#ondewo.nlu.ExportAgentRequest) | [Operation](#ondewo.nlu.Operation) | Exports the specified agent to a ZIP file. <br> Operation &lt;response: <a href="index.html#ondewo.nlu.ExportAgentResponse">ExportAgentResponse</a>, metadata: <a href="https://protobuf.dev/reference/protobuf/google.protobuf/#struct">google.protobuf.Struct</a>&gt; |
| ExportBenchmarkAgent | [ExportBenchmarkAgentRequest](#ondewo.nlu.ExportBenchmarkAgentRequest) | [Operation](#ondewo.nlu.Operation) | Exports the specified train agent to a ZIP file after train-test split, returns the test TrainingPhrase list. |
| ImportAgent | [ImportAgentRequest](#ondewo.nlu.ImportAgentRequest) | [Operation](#ondewo.nlu.Operation) | Imports the specified agent from a ZIP file. <br> Uploads new intents and entity types without deleting the existing ones. Intents and entity types with the same name are replaced with the new versions from ImportAgentRequest. <br> Operation &lt;response: <a href="https://protobuf.dev/reference/protobuf/google.protobuf/#empty">google.protobuf.Empty</a>, metadata: <a href="https://protobuf.dev/reference/protobuf/google.protobuf/#struct">google.protobuf.Struct</a>&gt; |
| MigrateAgent | [MigrateAgentRequest](#ondewo.nlu.MigrateAgentRequest) | [Operation](#ondewo.nlu.Operation) |  |
| OptimizeRankingMatch | [OptimizeRankingMatchRequest](#ondewo.nlu.OptimizeRankingMatchRequest) | [Operation](#ondewo.nlu.Operation) |  |
| RestoreAgent | [RestoreAgentRequest](#ondewo.nlu.RestoreAgentRequest) | [Operation](#ondewo.nlu.Operation) | Restores the specified agent from a ZIP file. <br> Replaces the current agent version with a new one. All the intents and entity types in the older version are deleted. <br> Operation &lt;response: <a href="https://protobuf.dev/reference/protobuf/google.protobuf/#empty">google.protobuf.Empty</a>, metadata: <a href="https://protobuf.dev/reference/protobuf/google.protobuf/#struct">google.protobuf.Struct</a>&gt; |
| GetAgentStatistics | [GetAgentStatisticsRequest](#ondewo.nlu.GetAgentStatisticsRequest) | [GetAgentStatisticsResponse](#ondewo.nlu.GetAgentStatisticsResponse) | Gets statistics for the agent |
| GetSessionsStatistics | [GetSessionsStatisticsRequest](#ondewo.nlu.GetSessionsStatisticsRequest) | [GetSessionsStatisticsResponse](#ondewo.nlu.GetSessionsStatisticsResponse) |  |
| SetAgentStatus | [SetAgentStatusRequest](#ondewo.nlu.SetAgentStatusRequest) | [Agent](#ondewo.nlu.Agent) | Sets status for the agent |
| SetResources | [SetResourcesRequest](#ondewo.nlu.SetResourcesRequest) | [.google.protobuf.Empty](#google.protobuf.Empty) | Sets resources |
| DeleteResources | [DeleteResourcesRequest](#ondewo.nlu.DeleteResourcesRequest) | [.google.protobuf.Empty](#google.protobuf.Empty) | Deletes resources |
| ExportResources | [ExportResourcesRequest](#ondewo.nlu.ExportResourcesRequest) | [ExportResourcesResponse](#ondewo.nlu.ExportResourcesResponse) | Exports resources |
| GetModelStatuses | [GetModelStatusesRequest](#ondewo.nlu.GetModelStatusesRequest) | [GetModelStatusesResponse](#ondewo.nlu.GetModelStatusesResponse) | Get statuses of models related to project |
| GetPlatformMapping | [GetPlatformMappingRequest](#ondewo.nlu.GetPlatformMappingRequest) | [PlatformMapping](#ondewo.nlu.PlatformMapping) | Get all set platform name mappings for an Agent |
| SetPlatformMapping | [PlatformMapping](#ondewo.nlu.PlatformMapping) | [PlatformMapping](#ondewo.nlu.PlatformMapping) | Set platform name mappings for an Agent |
| GetFullTextSearchEntityType | [FullTextSearchRequest](#ondewo.nlu.FullTextSearchRequest) | [FullTextSearchResponseEntityType](#ondewo.nlu.FullTextSearchResponseEntityType) | Full text search endpoint in entity types |
| GetFullTextSearchEntity | [FullTextSearchRequest](#ondewo.nlu.FullTextSearchRequest) | [FullTextSearchResponseEntity](#ondewo.nlu.FullTextSearchResponseEntity) | Full text search endpoint in entities |
| GetFullTextSearchEntitySynonym | [FullTextSearchRequest](#ondewo.nlu.FullTextSearchRequest) | [FullTextSearchResponseEntitySynonym](#ondewo.nlu.FullTextSearchResponseEntitySynonym) | Full text search endpoint in entity synonyms |
| GetFullTextSearchIntent | [FullTextSearchRequest](#ondewo.nlu.FullTextSearchRequest) | [FullTextSearchResponseIntent](#ondewo.nlu.FullTextSearchResponseIntent) | Full text search endpoint in intents |
| GetFullTextSearchIntentContextIn | [FullTextSearchRequest](#ondewo.nlu.FullTextSearchRequest) | [FullTextSearchResponseIntentContextIn](#ondewo.nlu.FullTextSearchResponseIntentContextIn) | Full text search endpoint in context ins of intents |
| GetFullTextSearchIntentContextOut | [FullTextSearchRequest](#ondewo.nlu.FullTextSearchRequest) | [FullTextSearchResponseIntentContextOut](#ondewo.nlu.FullTextSearchResponseIntentContextOut) | Full text search endpoint in context outs of intents |
| GetFullTextSearchIntentUsersays | [FullTextSearchRequest](#ondewo.nlu.FullTextSearchRequest) | [FullTextSearchResponseIntentUsersays](#ondewo.nlu.FullTextSearchResponseIntentUsersays) | Full text search endpoint in user says of intents |
| GetFullTextSearchIntentTags | [FullTextSearchRequest](#ondewo.nlu.FullTextSearchRequest) | [FullTextSearchResponseIntentTags](#ondewo.nlu.FullTextSearchResponseIntentTags) | Full text search endpoint in tags of intents |
| GetFullTextSearchIntentResponse | [FullTextSearchRequest](#ondewo.nlu.FullTextSearchRequest) | [FullTextSearchResponseIntentResponse](#ondewo.nlu.FullTextSearchResponseIntentResponse) | Full text search endpoint in responses of intents |
| GetFullTextSearchIntentParameters | [FullTextSearchRequest](#ondewo.nlu.FullTextSearchRequest) | [FullTextSearchResponseIntentParameters](#ondewo.nlu.FullTextSearchResponseIntentParameters) | Full text search endpoint in parameters of intents |
| ReindexAgent | [ReindexAgentRequest](#ondewo.nlu.ReindexAgentRequest) | [Operation](#ondewo.nlu.Operation) | Force reindexing Intent and Entity data of Agent |

 <!-- end services -->



<a name="ondewo/nlu/aiservices.proto"></a>
<p align="right"><a href="#top">Top</a></p>

## ondewo/nlu/aiservices.proto



<a name="ondewo.nlu.AltSentence"></a>

### AltSentence
This message contains an alternative sentence


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| sentence | [string](#string) |  | Alternative sentence |
| score | [float](#float) |  | Score associated to the alternative sentence resulted |






<a name="ondewo.nlu.AltTrainingPhrase"></a>

### AltTrainingPhrase
This message contains an alternative training phrase


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| training_phrase | [Intent.TrainingPhrase](#ondewo.nlu.Intent.TrainingPhrase) |  | Alternative training phrase |
| score | [float](#float) |  | Score associated to training_phrase |






<a name="ondewo.nlu.BertAugEnrichmentConfig"></a>

### BertAugEnrichmentConfig
Configuration for BERT augmenter enrichment


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| is_active | [bool](#bool) |  | Activation flag |
| enrichment_factor | [int32](#int32) |  | Factor of enrichment |
| execution_order | [int32](#int32) |  | Order of augmenter execution |






<a name="ondewo.nlu.ClassifyIntentsRequest"></a>

### ClassifyIntentsRequest
The request for intent classification.


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| parent | [string](#string) |  | Required. The project of this agent. Format: <pre><code>projects/&lt;project_uuid&gt;/agent</code></pre> |
| text | [string](#string) |  | the input text |
| language_code | [string](#string) |  | the input language |
| active_contexts | [bool](#bool) |  | Optional: if restrict classification result with input contexts listed in the field <code>context_names</code> |
| context_names | [string](#string) | repeated | Optional: names of the input contexts to restrict the classification result with. Intents can only be classified if the intent's input context set is the subset of the given context set. |
| mode | [Mode](#ondewo.nlu.Mode) |  | Optional: Which mode to use: <ul> <li>EXCLUSIVE - skip algorithms listed in <code>algorithms</code> field,</li> <li>INCLUSIVE - run ONLY algorithms listed in <code>algorithms</code> field,</li> <li>UNSPECIFIED - default mode, described in agent config</li> </ul> |
| algorithms | [IntentAlgorithms](#ondewo.nlu.IntentAlgorithms) | repeated | Optional: Algorithm list |
| field_mask | [google.protobuf.FieldMask](#google.protobuf.FieldMask) | optional | Optional. The mask to control which fields gets returned. |






<a name="ondewo.nlu.ClassifyIntentsResponse"></a>

### ClassifyIntentsResponse
Response containing the intents classified in a sentence


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| intents_classified | [IntentClassified](#ondewo.nlu.IntentClassified) | repeated | A list of intents detected |
| text | [string](#string) |  | The text containing from which the intents were detected |
| active_contexts | [bool](#bool) |  | Flag that enables the context through the conversation |
| context_names | [string](#string) | repeated | The context tags associated to the intents |






<a name="ondewo.nlu.DataEnrichmentConfig"></a>

### DataEnrichmentConfig
This message contains the configuration of data enrichment


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| entity_enrichment | [EntityEnrichmentConfig](#ondewo.nlu.EntityEnrichmentConfig) |  | Entity augmenter configuration |
| thesaurus_enrichment | [ThesaurusEnrichmentConfig](#ondewo.nlu.ThesaurusEnrichmentConfig) |  | Thesaurus augmenter configuration |
| word2vec_enrichment | [Word2VecEnrichmentConfig](#ondewo.nlu.Word2VecEnrichmentConfig) |  | Word2Vec augmenter configuration |
| word_net_enrichment | [WordNetAugEnrichmentConfig](#ondewo.nlu.WordNetAugEnrichmentConfig) |  | WordNet augmenter configuration |
| gpt2_enrichment | [GPT2EnrichmentConfig](#ondewo.nlu.GPT2EnrichmentConfig) |  | GPT2 augmenter configuration |
| glove_enrichment | [GloVeEnrichmentConfig](#ondewo.nlu.GloVeEnrichmentConfig) |  | GloVe augmenter configuration |
| bert_enrichment | [BertAugEnrichmentConfig](#ondewo.nlu.BertAugEnrichmentConfig) |  | BERT augmenter configuration |
| xlnet_enrichment | [XLNetAugEnrichmentConfig](#ondewo.nlu.XLNetAugEnrichmentConfig) |  | XLNet augmenter configuration |
| llm_enrichment | [LlmEnrichmentConfig](#ondewo.nlu.LlmEnrichmentConfig) |  | Large language model (LLM) augmenter configuration |






<a name="ondewo.nlu.EntityDetected"></a>

### EntityDetected
This message contains the entity detected


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| entity | [Intent.TrainingPhrase.Entity](#ondewo.nlu.Intent.TrainingPhrase.Entity) |  | The entity name that is detected |
| extraction_method | [string](#string) |  | The extractor name, e.g. SpacyNer |
| score | [float](#float) |  | The confidence score of the detected entity |






<a name="ondewo.nlu.EntityEnrichmentConfig"></a>

### EntityEnrichmentConfig
Configuration for Entity enrichment


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| is_active | [bool](#bool) |  | Activation flag |
| enrichment_factor | [int32](#int32) |  | Factor of enrichment |
| execution_order | [int32](#int32) |  | Order of augmenter execution |






<a name="ondewo.nlu.EntityTypeFuzzyNerConfig"></a>

### EntityTypeFuzzyNerConfig
Configuration for Fuzzy Entity Recognizer


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| entity_type | [EntityType](#ondewo.nlu.EntityType) |  | The Entity Type |
| minimal_score | [float](#float) |  | Optional. Overrides the minimal score in ExtractEntitiesFuzzyRequest. |
| entity_values | [string](#string) | repeated | Optional. If defined, only entity value from this list are considered. |
| algorithm | [EntityTypeFuzzyNerConfig.FuzzyNerAlgorithm](#ondewo.nlu.EntityTypeFuzzyNerConfig.FuzzyNerAlgorithm) |  | Optional. Specify the Fuzzy Ner algorithm |
| allow_overlaps | [bool](#bool) |  | Should not use allow_overlaps here, since its default value is False |






<a name="ondewo.nlu.ExtractEntitiesFuzzyRequest"></a>

### ExtractEntitiesFuzzyRequest
This message is a request to extract entities with Fuzzy Entity Recognizer


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| parent | [string](#string) |  | the parent of the request Format: <pre><code>projects/&lt;project_uuid&gt;</code></pre> |
| text | [string](#string) |  | The text to be analyzed |
| potential_entities | [EntityTypeFuzzyNerConfig](#ondewo.nlu.EntityTypeFuzzyNerConfig) | repeated | Potential entities to be extracted from the text with entity-specific configs |
| minimal_score | [float](#float) |  | Minimal similarity score to consider entity as "matched" |
| allow_overlaps | [bool](#bool) |  | Optional. Whether or not entities are allowed to overlap. |
| field_mask | [google.protobuf.FieldMask](#google.protobuf.FieldMask) | optional | Optional. The mask to control which fields gets returned. |






<a name="ondewo.nlu.ExtractEntitiesRequest"></a>

### ExtractEntitiesRequest
The request to detect parameters.


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| parent | [string](#string) |  | the parent of the request Format: <pre><code>projects/&lt;project_uuid&gt;</code></pre> |
| text | [string](#string) |  | the input text |
| language_code | [string](#string) |  | the input language |
| intent_name | [string](#string) |  | Optional. The name of the relevant intent. Used to establish preference hierarchy for entities that correspond to intent parameters Format: <pre><code>projects/&lt;project_uuid&gt;/agent/intents/&lt;intent_uuid&gt;</code></pre> |
| field_mask | [google.protobuf.FieldMask](#google.protobuf.FieldMask) | optional | Optional. The mask to control which fields gets returned. |






<a name="ondewo.nlu.ExtractEntitiesResponse"></a>

### ExtractEntitiesResponse
This message is a response of extracting entities


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| entities_detected | [EntityDetected](#ondewo.nlu.EntityDetected) | repeated | A list of entities detected |
| text | [string](#string) |  | The text containing the entities detected |






<a name="ondewo.nlu.GPT2EnrichmentConfig"></a>

### GPT2EnrichmentConfig
Configuration for GPT2 enrichment


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| is_active | [bool](#bool) |  | Activation flag |
| enrichment_factor | [int32](#int32) |  | Factor of enrichment |
| execution_order | [int32](#int32) |  | Order of augmenter execution |






<a name="ondewo.nlu.GenerateResponsesRequest"></a>

### GenerateResponsesRequest
Request to generate responses


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| language_code | [string](#string) |  | language code specifies the language of the request in IETF BCP 47 language tag format, e.g. de-DE, en-US, etc. |
| parent | [string](#string) |  | the parent of the request Format: <pre><code>projects/&lt;project_uuid&gt;</code></pre> |
| n_repeat_synonym | [int32](#int32) |  | The number of synonyms desired |
| branch | [string](#string) |  | Git branch |
| drop_unknown_parameters | [bool](#bool) |  | Optional. Whether to drop unknown parameters from the generated responses |
| field_mask | [google.protobuf.FieldMask](#google.protobuf.FieldMask) | optional | Optional. The mask to control which fields gets returned. |






<a name="ondewo.nlu.GenerateResponsesResponse"></a>

### GenerateResponsesResponse
Response containing responses


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| responses | [string](#string) | repeated | A list of responses |






<a name="ondewo.nlu.GenerateUserSaysRequest"></a>

### GenerateUserSaysRequest
Request to generate user sentences


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| language_code | [string](#string) |  | language code specifies the language of the request in IETF BCP 47 language tag format, e.g. de-DE, en-US, etc. |
| parent | [string](#string) |  | the parent of the request Format: <pre><code>projects/&lt;project_uuid&gt;</code></pre> |
| n_repeat_synonym | [int32](#int32) |  | The number of synonyms desired |
| branch | [string](#string) |  | Git branch |
| field_mask | [google.protobuf.FieldMask](#google.protobuf.FieldMask) | optional | Optional. The mask to control which fields gets returned. |






<a name="ondewo.nlu.GenerateUserSaysResponse"></a>

### GenerateUserSaysResponse
Response containing user sentences


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| user_says | [string](#string) | repeated | A list of sampled sentences |






<a name="ondewo.nlu.GetAlternativeSentencesRequest"></a>

### GetAlternativeSentencesRequest
Request to get alternative sentences


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| config | [DataEnrichmentConfig](#ondewo.nlu.DataEnrichmentConfig) |  | Configuration type of the enricher |
| sentence | [string](#string) |  | The sentence from which it is desired to get alternative sentences |
| language_code | [string](#string) |  | Language code specifies the language of the request in IETF BCP 47 language tag format, e.g. de-DE, en-US, etc. |
| parent | [string](#string) |  | the parent of the request Format: <pre><code>projects/&lt;project_uuid&gt;</code></pre> |
| protected_words | [string](#string) | repeated | Protected words in the augmentation process |
| words_to_change | [string](#string) | repeated | Words to be changed in the augmentation process |
| field_mask | [google.protobuf.FieldMask](#google.protobuf.FieldMask) | optional | Optional. The mask to control which fields gets returned. |






<a name="ondewo.nlu.GetAlternativeSentencesResponse"></a>

### GetAlternativeSentencesResponse
Response containing alternative sentences


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| alternative_sentences | [AltSentence](#ondewo.nlu.AltSentence) | repeated | A list of alternative sentences |






<a name="ondewo.nlu.GetAlternativeTrainingPhrasesRequest"></a>

### GetAlternativeTrainingPhrasesRequest
Request to get alternative training phrases


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| config | [DataEnrichmentConfig](#ondewo.nlu.DataEnrichmentConfig) |  | Configuration of the enricher |
| training_phrase | [Intent.TrainingPhrase](#ondewo.nlu.Intent.TrainingPhrase) |  | Training phrase from which an alternative one is got |
| intent_name | [string](#string) |  | The intent tag attached to the training phrase |
| language_code | [string](#string) |  | language code specifies the language of the request in IETF BCP 47 language tag format, e.g. de-DE, en-US, etc. |
| parent | [string](#string) |  | the parent of the request Format: <pre><code>projects/&lt;project_uuid&gt;</code></pre> |
| detect_entities | [bool](#bool) |  | Flag to determine whether entities must or not be detected |
| similarity_threshold | [float](#float) |  | similarity threshold defines how similar sentences should be to drop generated training phrase as duplicate. Meaningful values of similarity_threshold are between 0.95 and 1.0 |
| protected_words | [string](#string) | repeated | Protected words in the augmentation process |
| words_to_change | [string](#string) | repeated | Words to be changed in the augmentation process |
| branch | [string](#string) |  | Git branch |
| field_mask | [google.protobuf.FieldMask](#google.protobuf.FieldMask) | optional | Optional. The mask to control which fields gets returned. |






<a name="ondewo.nlu.GetAlternativeTrainingPhrasesResponse"></a>

### GetAlternativeTrainingPhrasesResponse
Response containing alternative training phrases


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| alternative_training_phrases | [AltTrainingPhrase](#ondewo.nlu.AltTrainingPhrase) | repeated | A list of alternative training phrases |






<a name="ondewo.nlu.GetSynonymsRequest"></a>

### GetSynonymsRequest
Request to get synonyms


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| config | [DataEnrichmentConfig](#ondewo.nlu.DataEnrichmentConfig) |  | Configuration of the enricher |
| word | [string](#string) |  | Word from which a synonym is got |
| language_code | [string](#string) |  | language code specifies the language of the request in IETF BCP 47 language tag format, e.g. de-DE, en-US, etc. |
| parent | [string](#string) |  | the parent of the request Format: <pre><code>projects/&lt;project_uuid&gt;</code></pre> |
| field_mask | [google.protobuf.FieldMask](#google.protobuf.FieldMask) | optional | Optional. The mask to control which fields gets returned. |






<a name="ondewo.nlu.GetSynonymsResponse"></a>

### GetSynonymsResponse
Response containing synonyms


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| synonyms | [Synonym](#ondewo.nlu.Synonym) | repeated | A list of synonyms |






<a name="ondewo.nlu.GloVeEnrichmentConfig"></a>

### GloVeEnrichmentConfig
Configuration for GloVe enrichment


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| is_active | [bool](#bool) |  | Activation flag |
| enrichment_factor | [int32](#int32) |  | Factor of enrichment |
| execution_order | [int32](#int32) |  | Order of augmenter execution |






<a name="ondewo.nlu.IntentClassified"></a>

### IntentClassified
Intent classified by a certain intent classifier


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| intent_name | [string](#string) |  | The unique identifier of this intent. Format: <pre><code>projects/&lt;project_uuid&gt;/agent/intents/&lt;intent_uuid&gt;</code></pre> |
| intent_display_name | [string](#string) |  | The name of the intent. |
| classifier | [string](#string) |  | The name of the classifier that detected the intent |
| score | [float](#float) |  | Score associated to the detection of the intent by the classifier |






<a name="ondewo.nlu.ListLlmModelsRequest"></a>

### ListLlmModelsRequest
The request message to list available LLM models for a specified CCAI service.


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| ccai_service_name | [string](#string) |  | The CCAI service for which to list models. Format: <pre><code>projects/&lt;project_uuid&gt;/ccai/services/&lt;service_uuid&gt;</code></pre> |
| field_mask | [google.protobuf.FieldMask](#google.protobuf.FieldMask) | optional | Optional. The mask to control which fields gets returned. |






<a name="ondewo.nlu.ListLlmModelsResponse"></a>

### ListLlmModelsResponse
The response message containing a list of available LLM models.


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| llm_models | [LlmModel](#ondewo.nlu.LlmModel) | repeated | A list of LLM models associated with the specified CCAI service. <br> Each model in this list represents an individual language model that can <br> be used within the service, including details such as name, provider, and description. |






<a name="ondewo.nlu.LlmEnrichmentConfig"></a>

### LlmEnrichmentConfig
Configuration for large language model (LLM) enrichment


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| is_active | [bool](#bool) |  | Activation flag |
| enrichment_factor | [int32](#int32) |  | Factor of enrichment |
| execution_order | [int32](#int32) |  | Order of augmenter execution |
| ccai_service_name | [string](#string) |  | The CCAI service to be used to enrich This specifies which large language model provider and model settings will handle the request. Format: <pre><code>projects/&lt;project_uuid&gt;/ccai/services/&lt;service_uuid&gt;</code></pre> |






<a name="ondewo.nlu.LlmGenerateRequest"></a>

### LlmGenerateRequest
The request message to generate a response from a Large Language Model (LLM).


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| llm_generation_request | [google.protobuf.Struct](#google.protobuf.Struct) |  | The request payload for the LLM, structured according to the specific requirements of the large language model provider. <br> The payload must fit the format expected by the specified LLM provider, as defined by <pre><code>CcaiServiceProvider</code></pre> |
| ccai_service_name | [string](#string) |  | The CCAI service to be used for processing the request. This specifies which large language model provider and model settings will handle the request. Format: <pre><code>projects/&lt;project_uuid&gt;/ccai/services/&lt;service_uuid&gt;</code></pre> |
| file_resources | [FileResource](#ondewo.nlu.FileResource) | repeated | Files as input for the generation request |
| field_mask | [google.protobuf.FieldMask](#google.protobuf.FieldMask) | optional | Optional. The mask to control which fields gets returned. |






<a name="ondewo.nlu.LlmGenerateResponse"></a>

### LlmGenerateResponse
The response message containing the generated output from a Large Language Model (LLM).


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| llm_generation_response | [google.protobuf.Struct](#google.protobuf.Struct) |  | The response data from the LLM, returned as a structured payload. <br> This can contain the text generation, embeddings, or other outputs based on the specific request made to the LLM provider. |
| file_resources | [FileResource](#ondewo.nlu.FileResource) | repeated | Files as input for the generation request, e.g., generated pictures, audio or video |






<a name="ondewo.nlu.LlmModel"></a>

### LlmModel
Represents an individual LLM model available within a CCAI service.


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| name | [string](#string) |  | The resource name of the model. Format: <pre><code>projects/&lt;project_uuid&gt;/ccai/services/&lt;service_uuid&gt;/model/&lt;model_uuid&gt;</code></pre> This is a unique identifier for the model, specifying its project, service, and model ID. |
| display_name | [string](#string) |  | The display name of the model. This is a human-readable name used for identifying the model in other requests, such as <pre><code>LlmGenerateRequest</code></pre> and <pre><code>StreamingLlmGenerateRequest</code></pre> |
| description | [string](#string) |  | The description of the model. Provides additional details about the model, such as its purpose, architecture, or any other relevant information. |
| ccai_service_name | [string](#string) |  | The resource name of the CCAI service to which the model belongs. This field links the model to its service context, helping clients understand which service hosts the model. |
| ccai_service_provider | [CcaiServiceProvider](#ondewo.nlu.CcaiServiceProvider) |  | The provider of the CCAI service that offers this model. Specifies the LLM provider (e.g., Ollama, OpenAI, Google, etc.), indicating the origin or vendor of the model. |






<a name="ondewo.nlu.StreamingLlmGenerateResponse"></a>

### StreamingLlmGenerateResponse
The response message for streaming generation from a Large Language Model (LLM).


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| llm_generation_stream_response | [google.protobuf.Struct](#google.protobuf.Struct) |  | The response data from the LLM in a streaming format, returned as a structured payload. <br> This response is part of a continuous stream of data from the LLM, allowing incremental results to be sent as they are generated. |






<a name="ondewo.nlu.Synonym"></a>

### Synonym
This message contains a Synonym


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| synonym | [string](#string) |  | Synonym word |
| score | [int32](#int32) |  | Score associated to the synonym resulted |






<a name="ondewo.nlu.ThesaurusEnrichmentConfig"></a>

### ThesaurusEnrichmentConfig
Configuration for Thesaurus enrichment


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| is_active | [bool](#bool) |  | Activation flag |
| enrichment_factor | [int32](#int32) |  | Factor of enrichment |
| execution_order | [int32](#int32) |  | Order of augmenter execution |






<a name="ondewo.nlu.Word2VecEnrichmentConfig"></a>

### Word2VecEnrichmentConfig
Configuration for Word2Vec enrichment


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| is_active | [bool](#bool) |  | Activation flag |
| enrichment_factor | [int32](#int32) |  | Factor of enrichment |
| execution_order | [int32](#int32) |  | Order of augmenter execution |






<a name="ondewo.nlu.WordNetAugEnrichmentConfig"></a>

### WordNetAugEnrichmentConfig
Configuration for WordNet augmenter enrichment


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| is_active | [bool](#bool) |  | Activation flag |
| enrichment_factor | [int32](#int32) |  | Factor of enrichment |
| execution_order | [int32](#int32) |  | Order of augmenter execution |






<a name="ondewo.nlu.XLNetAugEnrichmentConfig"></a>

### XLNetAugEnrichmentConfig
Configuration for XLNet enrichment


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| is_active | [bool](#bool) |  | Activation flag |
| enrichment_factor | [int32](#int32) |  | Factor of enrichment |
| execution_order | [int32](#int32) |  | Order of augmenter execution |





 <!-- end messages -->


<a name="ondewo.nlu.EntityTypeFuzzyNerConfig.FuzzyNerAlgorithm"></a>

### EntityTypeFuzzyNerConfig.FuzzyNerAlgorithm
Enum of fuzzy ner algorithms

| Name | Number | Description |
| ---- | ------ | ----------- |
| PREFILTER_LEVENSHTEIN | 0 | Levenshtein algorithm for fuzzy ner matching |
| LOCAL_MAXIMUM | 1 | local maximum |



<a name="ondewo.nlu.IntentAlgorithms"></a>

### IntentAlgorithms
Type of Intent algorithm.

| Name | Number | Description |
| ---- | ------ | ----------- |
| OndewoIntentExactContextDetector | 0 | By enabling this, a specific intent is triggered if the context and the intent name in the user says is matched. This can be used for directly triggering &apos;quick reply&apos; button clicks confidence is always &apos;1.0&apos;. |
| OndewoIntentExactMatch | 1 | exact matching&apos; of user input to user says is used to detect the intent. Confidence is always &apos;1.0&apos; if an &apos;exact match&apos; is found. |
| OndewoIntentNamedExactMatch | 2 | the entity synonym in the user says text is replaced by the entity and &apos;exact matching&apos; of user says text is performed. Confidence is always &apos;1.0&apos;. |
| OndewoIntentSimilarityMatch | 3 | the algorithm computes the similarity of the user input to all user says of all intents. |
| OndewoIntentNamedSimilarityMatch | 4 | the entity synonyms in the user says are replaced by their Entity. Text similarity algorithms are then used to detect the intent. |
| OndewoIntentBertClassifier | 7 | new language representation model called BERT, which stands for Bidirectional Encoder Representations from Transformers.BERT is designed to pre-train deep bidirectional representations by jointly conditioning on both left and right context in all layers. As a result, the pre-trained BERT representations can be fine-tuned for multi-class intent detection. For details see <a href="https://arxiv.org/abs/1810.04805">https://arxiv.org/abs/1810.04805</a> |
| OndewoIntentMetaClassifier | 8 | Meta classifier that combines multiple intent classification algorithms to improve accuracy |
| IntentExitDetector | 10 | Maximum number of repeated fallbacks before this algorithm exists the conversation and resets contexts |
| OndewoIntentRankingMatch | 11 | Algorithm to improve the interplay of the other algorithms |
| OndewoWeightedEnsemble | 13 | Ensemble calculation of used algorithms |
| OndewoIntentExitDetector | 14 | Maximum number of repeated fallbacks before this algorithm exists the conversation and resets contexts |
| OndewoIntentParameterMatch | 15 | Matches the intent based on the parameter constellation and the current user context |



<a name="ondewo.nlu.Mode"></a>

### Mode
Type of mode

| Name | Number | Description |
| ---- | ------ | ----------- |
| UNSPECIFIED | 0 | default mode, described in agent config |
| EXCLUSIVE | 1 | skip algorithms listed in <code>algorithms</code> field, |
| INCLUSIVE | 2 | run ONLY algorithms listed in <code>algorithms</code> field |


 <!-- end enums -->

 <!-- end HasExtensions -->


<a name="ondewo.nlu.AiServices"></a>

### AiServices
The Central class defining the ondewo ai services

| Method Name | Request Type | Response Type | Description |
| ----------- | ------------ | ------------- | ------------|
| ExtractEntities | [ExtractEntitiesRequest](#ondewo.nlu.ExtractEntitiesRequest) | [ExtractEntitiesResponse](#ondewo.nlu.ExtractEntitiesResponse) | Processes a natural language query and returns detected entities |
| GenerateUserSays | [GenerateUserSaysRequest](#ondewo.nlu.GenerateUserSaysRequest) | [GenerateUserSaysResponse](#ondewo.nlu.GenerateUserSaysResponse) | Generates a list of training phrases |
| GenerateResponses | [GenerateResponsesRequest](#ondewo.nlu.GenerateResponsesRequest) | [GenerateResponsesResponse](#ondewo.nlu.GenerateResponsesResponse) | Generate responses from all intents using synonyms |
| GetAlternativeSentences | [GetAlternativeSentencesRequest](#ondewo.nlu.GetAlternativeSentencesRequest) | [GetAlternativeSentencesResponse](#ondewo.nlu.GetAlternativeSentencesResponse) | Generates alternative phrase based on original phrase |
| GetAlternativeTrainingPhrases | [GetAlternativeTrainingPhrasesRequest](#ondewo.nlu.GetAlternativeTrainingPhrasesRequest) | [GetAlternativeTrainingPhrasesResponse](#ondewo.nlu.GetAlternativeTrainingPhrasesResponse) | Generates alternative training phrase based on original training phrase |
| GetSynonyms | [GetSynonymsRequest](#ondewo.nlu.GetSynonymsRequest) | [GetSynonymsResponse](#ondewo.nlu.GetSynonymsResponse) | Generates synonyms for a certain word |
| ClassifyIntents | [ClassifyIntentsRequest](#ondewo.nlu.ClassifyIntentsRequest) | [ClassifyIntentsResponse](#ondewo.nlu.ClassifyIntentsResponse) | Preprocess text and detects intents in a sentence |
| ExtractEntitiesFuzzy | [ExtractEntitiesFuzzyRequest](#ondewo.nlu.ExtractEntitiesFuzzyRequest) | [ExtractEntitiesResponse](#ondewo.nlu.ExtractEntitiesResponse) | Processes a natural language query and returns detected entities |
| LlmGenerate | [LlmGenerateRequest](#ondewo.nlu.LlmGenerateRequest) | [LlmGenerateResponse](#ondewo.nlu.LlmGenerateResponse) | Generates a single response from a Large Language Model (LLM). This RPC method allows a client to make a request to the LLM and receive a single complete response based on the input parameters provided. |
| StreamingLlmGenerate | [LlmGenerateRequest](#ondewo.nlu.LlmGenerateRequest) | [StreamingLlmGenerateResponse](#ondewo.nlu.StreamingLlmGenerateResponse) stream | Generates a response from the LLM in a streaming format. This RPC allows continuous streaming of responses from the model, which is useful for real-time applications or large outputs. |
| ListLlmModels | [ListLlmModelsRequest](#ondewo.nlu.ListLlmModelsRequest) | [ListLlmModelsResponse](#ondewo.nlu.ListLlmModelsResponse) | Lists available Large Language Models (LLMs) for a specified CCAI service. This RPC method allows clients to retrieve metadata about all LLM models associated with a particular service within a project, including model names, descriptions, and providers. |

 <!-- end services -->



<a name="ondewo/nlu/ccai_project.proto"></a>
<p align="right"><a href="#top">Top</a></p>

## ondewo/nlu/ccai_project.proto



<a name="ondewo.nlu.CcaiProject"></a>

### CcaiProject
Message representing a CCAI service project


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| name | [string](#string) |  | Resource name of the CCAI service project |
| display_name | [string](#string) |  | Required. The display name of this ccai project. |
| owner_name | [string](#string) |  | Optional. Resource name of the user who is the owner of the project. |
| ccai_services_map | [CcaiProject.CcaiServicesMapEntry](#ondewo.nlu.CcaiProject.CcaiServicesMapEntry) | repeated | Map of two letter language codes to lists of CcaiServiceList Two-letter language codes following ISO 639-1 (see <a href="https://en.wikipedia.org/wiki/ISO_639-1">https://en.wikipedia.org/wiki/ISO_639-1</a>) |
| ccai_project_status | [CcaiProjectStatus](#ondewo.nlu.CcaiProjectStatus) |  | The status of the ccai project. |
| created_at | [google.protobuf.Timestamp](#google.protobuf.Timestamp) |  | Creation date and time. Read-only field. |
| modified_at | [google.protobuf.Timestamp](#google.protobuf.Timestamp) |  | Modification date and time. Read-only field. |
| created_by | [string](#string) |  | User id in the form of a valid UUID. |
| modified_by | [string](#string) |  | User id in the form of a valid UUID. |
| nlu_project_name | [string](#string) |  | Required. Associated NLU agent Format: <pre><code>projects/&lt;project_uuid&gt;/agent</code></pre> |






<a name="ondewo.nlu.CcaiProject.CcaiServicesMapEntry"></a>

### CcaiProject.CcaiServicesMapEntry



| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| key | [string](#string) |  |  |
| value | [CcaiServiceList](#ondewo.nlu.CcaiServiceList) |  |  |






<a name="ondewo.nlu.CcaiProjectSorting"></a>

### CcaiProjectSorting
This protobuf message defines the sorting order for CCAI service (VOIP Telephone System Integration) projects.


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| sorting_field | [CcaiProjectSorting.CcaiProjectSortingField](#ondewo.nlu.CcaiProjectSorting.CcaiProjectSortingField) | optional | sorting field for ccai projects sorting |
| sorting_mode | [SortingMode](#ondewo.nlu.SortingMode) | optional | Sorting mode |






<a name="ondewo.nlu.CcaiService"></a>

### CcaiService
Definition of a Call Center AI (CCAI service) Service.


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| name | [string](#string) |  | Resource name of the service. Must be unique. |
| display_name | [string](#string) |  | Display name for better identification. |
| language_code | [string](#string) |  | Language code representing the service language Format (e.g., "en" for English, "de" for German). |
| grpc_host | [string](#string) |  | gRPC host for communication with the specified port. |
| grpc_port | [int32](#int32) |  | Port for gRPC communication. |
| webgrpc_host | [string](#string) |  | Web gRPC host for web-based communication with the specified port. |
| webgrpc_port | [int32](#int32) |  | Port for web gRPC communication. |
| grpc_cert | [string](#string) |  | Path to the gRPC certificate for secure communication. |
| host | [string](#string) |  | Additional host for communication, if needed. |
| port | [int32](#int32) |  | Port for additional communication. |
| port2 | [int32](#int32) |  | Another additional port for communication if required. |
| http_basic_auth_token | [string](#string) |  | Http basic auth token |
| account_name | [string](#string) |  | Account name for authentication. |
| account_password | [string](#string) |  | Password for the specified account for authentication. |
| api_key | [string](#string) |  | API key for accessing the service, if applicable. |
| ccai_service_type | [CcaiServiceType](#ondewo.nlu.CcaiServiceType) |  | Type of CCAI service service (e.g., TEXT_TO_SPEECH, SPEECH_TO_TEXT). |
| ccai_project_name | [string](#string) |  | Resource name of the ccai_project the ccai_service belongs to |
| ccai_service_config | [google.protobuf.Struct](#google.protobuf.Struct) |  | Detailed configuration of the CcaiService |
| created_at | [google.protobuf.Timestamp](#google.protobuf.Timestamp) |  | Creation date and time of the service. Read-only field. |
| modified_at | [google.protobuf.Timestamp](#google.protobuf.Timestamp) |  | Modification date and time of the service. Read-only field. |
| created_by | [string](#string) |  | User ID of the creator in the form of a valid UUID. Read-only field. |
| modified_by | [string](#string) |  | User ID of the last modifier in the form of a valid UUID. Read-only field. |
| headers | [google.protobuf.Struct](#google.protobuf.Struct) | optional | Optional. The headers of the request message |
| ccai_service_provider | [CcaiServiceProvider](#ondewo.nlu.CcaiServiceProvider) | optional | Provider of the ccai service |
| service_hierarchy | [string](#string) | optional | Index indicating the hierarchical position of a service within the service hierarchy. The index follows a tree-like structure, where each level of depth is separated by a &quot;_&quot;. For example: <ul> <li>&quot;1&quot; represents a top-level service</li> <li>&quot;1_1&quot; represents a sub-service under &quot;1&quot;</li> <li>&quot;1_1_1&quot; represents a sub-service under &quot;1.1&quot;</li> </ul> This structure allows for easy representation and organization of services in nested workflows.

If CcaiService have the same service_hierarchy they are executed in parallel. For example: <ul> <li>&quot;1&quot; Service A</li> <li>&quot;1_1&quot; Service B</li> <li>&quot;1_1&quot; Service C</li> </ul>

Service B and C will be executed in parallel and the Service A receives both results of service B and C. The variable for the return value of a service is {{OUTPUT_SERVICE_service_hierarchy}}. So in the example above the outputs of the services are {{OUTPUT_SERVICE_1}}, {{OUTPUT_SERVICE_1_1}}, and {{OUTPUT_SERVICE_1_2}}. |






<a name="ondewo.nlu.CcaiServiceFilter"></a>

### CcaiServiceFilter
Filter which services should be included in the returned CcaiProject


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| language_codes | [string](#string) | repeated | Language codes of the projects for which services are filtered. |
| ccai_service_types | [CcaiServiceType](#ondewo.nlu.CcaiServiceType) | repeated | Type of CCAI service service |
| ccai_service_providers | [CcaiServiceProvider](#ondewo.nlu.CcaiServiceProvider) | repeated | Type of CCAI service providers |






<a name="ondewo.nlu.CcaiServiceList"></a>

### CcaiServiceList
Message representing a list of CCAI service services


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| ccai_services | [CcaiService](#ondewo.nlu.CcaiService) | repeated | CCAI service services |






<a name="ondewo.nlu.CreateCcaiProjectRequest"></a>

### CreateCcaiProjectRequest
Request to create a Call Center AI (CCAI service) project.


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| ccai_project | [CcaiProject](#ondewo.nlu.CcaiProject) |  | The CCAI service project to be created. |
| nlu_project_name | [string](#string) |  | Required. The nlu agent project of this CcaiProject. Format: <pre><code>projects/&lt;project_uuid&gt;/agent</code></pre> |






<a name="ondewo.nlu.CreateCcaiProjectResponse"></a>

### CreateCcaiProjectResponse
Response after attempting to create a Call Center AI (CCAI service) project.


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| ccai_project | [CcaiProject](#ondewo.nlu.CcaiProject) |  | The created CCAI service project. |
| error_message | [string](#string) |  | Error message if the creation is unsuccessful. |






<a name="ondewo.nlu.DeleteCcaiProjectRequest"></a>

### DeleteCcaiProjectRequest
Request to delete a CCAI service project
If a deployed CCAI service project was deleted then it was undeployed beforehand automatically


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| name | [string](#string) |  | CCAI service project name with which to perform the call of the form <pre><code>projects/&lt;project_uuid&gt;/project</code></pre> |
| nlu_project_name | [string](#string) |  | Required. The nlu agent project of this CcaiProject. Format: <pre><code>projects/&lt;project_uuid&gt;/agent</code></pre> |






<a name="ondewo.nlu.DeleteCcaiProjectResponse"></a>

### DeleteCcaiProjectResponse
Response to delete a CCAI service project
If a deployed CCAI service project was deleted then it was undeployed beforehand automatically


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| name | [string](#string) |  | CCAI service project name with which to perform the call of the form <pre><code>projects/&lt;project_uuid&gt;/project</code></pre> |
| error_message | [string](#string) |  | error message if there are any. |
| nlu_project_name | [string](#string) |  | Required. The nlu agent project of this CcaiProject. Format: <pre><code>projects/&lt;project_uuid&gt;/agent</code></pre> |






<a name="ondewo.nlu.GetCcaiProjectRequest"></a>

### GetCcaiProjectRequest
Request to retrieve a CCAI service project


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| name | [string](#string) |  | CCAI service project name with which to perform the call of the form <pre><code>projects/&lt;project_uuid&gt;/project</code></pre> |
| ccai_project_view | [CcaiProjectView](#ondewo.nlu.CcaiProjectView) | optional | Optional. Specify the view of the returned CcaiProject (full view by default) |
| ccai_service_filter | [CcaiServiceFilter](#ondewo.nlu.CcaiServiceFilter) | optional | Filter which services should be included in the returned CcaiProject |
| nlu_project_name | [string](#string) |  | Required. The nlu agent project of this CcaiProject. Format: <pre><code>projects/&lt;project_uuid&gt;/agent</code></pre> |
| field_mask | [google.protobuf.FieldMask](#google.protobuf.FieldMask) | optional | Optional. The mask to control which fields gets returned. |






<a name="ondewo.nlu.GetCcaiServiceRequest"></a>

### GetCcaiServiceRequest
Request to retrieve a CCAI service project


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| name | [string](#string) |  | CCAI service project name with which to perform the call of the form <pre><code>projects/&lt;project_uuid&gt;/ccai/services/&lt;service_uuid&gt;</code></pre> |
| nlu_project_name | [string](#string) |  | Required. The nlu agent project of this CcaiProject. Format: <pre><code>projects/&lt;project_uuid&gt;/agent</code></pre> |
| field_mask | [google.protobuf.FieldMask](#google.protobuf.FieldMask) | optional | Optional. The mask to control which fields gets returned. |






<a name="ondewo.nlu.ListCcaiProjectsRequest"></a>

### ListCcaiProjectsRequest
Request to get the list of agents


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| ccai_project_view | [CcaiProjectView](#ondewo.nlu.CcaiProjectView) |  | Optional. Specify the view of the returned CcaiProject (full view by default) |
| ccai_service_filter | [CcaiServiceFilter](#ondewo.nlu.CcaiServiceFilter) | optional | Filter which services should be included in the CcaiProject |
| ccai_project_sorting | [CcaiProjectSorting](#ondewo.nlu.CcaiProjectSorting) | optional | Optional. Field to define the sorting of the list of CCAI service projects in the response. If not specified, the default behavior is to have no sorting. |
| page_token | [string](#string) | optional | Optional. The next_page_token value returned from a previous list request. Example: &quot;current_index-1--page_size-20&quot; The page token to support pagination. Pagination allows you to retrieve a large result set in smaller, more manageable portions. The page token is a string representing the current index and page size.

Valid page token strings: <ul> <li>&quot;&quot; (empty string) - Retrieves the first page.</li> <li>&quot;current_index-0--page_size-20&quot; - Retrieves the first page with a page size of 20.</li> <li>&quot;current_index-1--page_size-20&quot; - Retrieves the second page with a page size of 20.</li> </ul>

Index starts at 0.

Examples of valid page token strings: <ul> <li>&quot;&quot;</li> <li>&quot;current_index-0--page_size-20&quot;</li> <li>&quot;current_index-1--page_size-20&quot;</li> <li>&quot;current_index-10--page_size-20&quot;</li> </ul>

Examples of invalid page token strings: <ul> <li>&quot;1&quot;</li> <li>&quot;current_index-0--page_size-20&quot;</li> <li>&quot;current_index--1--page_size-20&quot;</li> <li>&quot;current_index1--page_size-20&quot;</li> <li>&quot;current_index-1--page_size--20&quot;</li> </ul> |
| nlu_project_name | [string](#string) |  | Required. The nlu agent project of this CcaiProject. Format: <pre><code>projects/&lt;project_uuid&gt;/agent</code></pre> |
| field_mask | [google.protobuf.FieldMask](#google.protobuf.FieldMask) | optional | Optional. The mask to control which fields gets returned. |






<a name="ondewo.nlu.ListCcaiProjectsResponse"></a>

### ListCcaiProjectsResponse
This is a protobuf message definition for the response of getting a list of CCAI service projects.


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| ccai_projects | [CcaiProject](#ondewo.nlu.CcaiProject) | repeated | The list of CCAI service projects returned in the response. Use the 'repeated' keyword to indicate that this field can contain multiple instances of CcaiProject. |
| next_page_token | [string](#string) |  | The next_page_token is used to retrieve the next page of a returned result, e.g. next_page_token is current_index-2 |






<a name="ondewo.nlu.UpdateCcaiProjectRequest"></a>

### UpdateCcaiProjectRequest
Request to updated CCAI service project


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| ccai_project | [CcaiProject](#ondewo.nlu.CcaiProject) |  | The CcaiProject that should be updated |
| ccai_service_filter | [CcaiServiceFilter](#ondewo.nlu.CcaiServiceFilter) | optional | Filter which services should be updated in the CcaiProject |
| update_mask | [google.protobuf.FieldMask](#google.protobuf.FieldMask) | optional | Optional. The mask to control which fields get updated. |
| nlu_project_name | [string](#string) |  | Required. The nlu agent project of this CcaiProject. Format: <pre><code>projects/&lt;project_uuid&gt;/agent</code></pre> |






<a name="ondewo.nlu.UpdateCcaiProjectResponse"></a>

### UpdateCcaiProjectResponse
Request to updated CCAI service project


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| name | [string](#string) |  | CCAI service project name with which to perform the call of the form <pre><code>projects/&lt;project_uuid&gt;/project</code></pre> |
| error_message | [string](#string) |  | error message if there are any. |





 <!-- end messages -->


<a name="ondewo.nlu.CcaiProjectSorting.CcaiProjectSortingField"></a>

### CcaiProjectSorting.CcaiProjectSortingField
Enum to specify the sorting field for CCAI service projects.

| Name | Number | Description |
| ---- | ------ | ----------- |
| NO_CCAI_PROJECT_SORTING | 0 | No sorting |
| SORT_CCAI_PROJECT_BY_NAME | 1 | Sort by project name such as <pre><code>projects/&lt;project_uuid&gt;/project</code></pre> |
| SORT_CCAI_PROJECT_BY_DISPLAY_NAME | 2 | Sort by display name |
| SORT_CCAI_PROJECT_BY_CREATION_DATE | 3 | Sort by creation date |
| SORT_CCAI_PROJECT_BY_LAST_MODIFIED | 4 | Sort by last modified date |



<a name="ondewo.nlu.CcaiProjectStatus"></a>

### CcaiProjectStatus
Status of a Call Center AI (CCAI service) Project.

| Name | Number | Description |
| ---- | ------ | ----------- |
| CCAI_PROJECT_STATUS_UNSPECIFIED | 0 | No status specified |
| CCAI_PROJECT_STATUS_UNDEPLOYED | 1 | Project successfully created and undeployed |
| CCAI_PROJECT_STATUS_UPDATING | 2 | Project configuration is updating |
| CCAI_PROJECT_STATUS_DEPLOYING | 3 | Project is deploying |
| CCAI_PROJECT_STATUS_DEPLOYED | 4 | Project is deployed |
| CCAI_PROJECT_STATUS_UNDEPLOYING | 5 | Project is un-deploying |
| CCAI_PROJECT_STATUS_DELETING | 6 | Project is currently deleting |
| CCAI_PROJECT_STATUS_DELETED | 7 | Project is deleted |



<a name="ondewo.nlu.CcaiProjectView"></a>

### CcaiProjectView
CcaiProjectView defines what the CcaiProject message contains

| Name | Number | Description |
| ---- | ------ | ----------- |
| CCAI_PROJECT_VIEW_UNSPECIFIED | 0 | Unspecified CCAI_PROJECT view: the view is defined by the call: |
| CCAI_PROJECT_VIEW_FULL | 1 | Full CCAI_PROJECT view: populate all the fields of the CCAI_PROJECT message including configs. |
| CCAI_PROJECT_VIEW_SHALLOW | 2 | Shallow CCAI_PROJECT view: populates all the fields except configs. |
| CCAI_PROJECT_VIEW_MINIMUM | 3 | Minimum view including only CCAI_PROJECT UUID and CCAI_PROJECT display name |



<a name="ondewo.nlu.CcaiServiceProvider"></a>

### CcaiServiceProvider


| Name | Number | Description |
| ---- | ------ | ----------- |
| NO_CCAI_SERVICE_PROVIDER | 0 | No specified provider or placeholder |
| CCAI_SERVICE_PROVIDER_ONDEWO | 1 | ONDEWO provider for CCAI service services <a href="https://www.ondewo.com/">ONDEWO</a> |
| CCAI_SERVICE_PROVIDER_GOOGLE_GEMINI | 2 | Google as the CCAI service provider, utilizing Google&apos;s conversational AI capabilities <a href="https://deepmind.google/technologies/gemini/">Google Gemini</a> |
| CCAI_SERVICE_PROVIDER_MICROSOFT_AZURE_OPENAI | 3 | Microsoft Azure as the CCAI service provider, using Microsoft&apos;s Azure cognitive services <a href="https://azure.microsoft.com/en-us/products/cognitive-services/openai-service/">Azure OpenAI</a> |
| CCAI_SERVICE_PROVIDER_MICROSOFT_AUTOGEN | 4 | Microsoft AutoGen as the CCAI service provider <a href="https://github.com/microsoft/autogen">AutoGen</a> |
| CCAI_SERVICE_PROVIDER_OLLAMA | 5 | Ollama as the CCAI service provider, typically associated with specific OLLAMA AI tools <a href="https://github.com/ollama/ollama">Ollama</a> |
| CCAI_SERVICE_PROVIDER_OPENAI | 6 | OpenAI as the CCAI service provider, commonly used for models such as GPT <a href="https://openai.com/">OpenAI</a> |
| CCAI_SERVICE_PROVIDER_ANTHROPIC | 7 | Anthropic as the CCAI service provider, used with AI models from Anthropic <a href="https://www.anthropic.com/">Anthropic</a> |
| CCAI_SERVICE_PROVIDER_HUGGINGFACE | 8 | Hugging Face as the CCAI service provider, often used for open-source NLP models <a href="https://huggingface.co/">Hugging Face</a> |
| CCAI_SERVICE_PROVIDER_IBM | 9 | IBM as the CCAI service provider, such as IBM Watson for conversational AI <a href="https://www.ibm.com/watson">IBM Watson</a> |
| CCAI_SERVICE_PROVIDER_HAYSTACK | 10 | Haystack as the CCAI service provider, e.g., for question answering and conversations <a href="https://github.com/deepset-ai/haystack">Haystack</a> |
| CCAI_SERVICE_PROVIDER_LANGCHAIN | 11 | LangChain as the CCAI service provider <a href="https://github.com/langchain-ai/langchain">LangChain</a> |
| CCAI_SERVICE_PROVIDER_AMAZON | 12 | Amazon AWS as the CCAI service provider, using Amazon&apos;s AI/ML services <a href="https://aws.amazon.com/machine-learning/">AWS AI Services</a> |
| CCAI_SERVICE_PROVIDER_MISTRAL | 13 | Mistral as the CCAI service provider, using Mistral&apos;s services <a href="https://mistral.ai/">Mistral</a> |
| CCAI_SERVICE_PROVIDER_DUCKDUCKGO | 14 | DuckDuckGo Websearch API <a href="https://duckduckgo.com/api">DuckDuckGo API</a> |
| CCAI_SERVICE_PROVIDER_GOOGLE_PSE | 15 | Google PSE Websearch API <a href="https://programmablesearchengine.google.com/">Google Programmable Search Engine</a> |
| CCAI_SERVICE_PROVIDER_JINA | 16 | Jina Websearch API <a href="https://github.com/jina-ai/jina">Jina AI</a> |
| CCAI_SERVICE_PROVIDER_TAVILY | 17 | Tavily Websearch API <a href="https://tavily.com/">Tavily API</a> |
| CCAI_SERVICE_PROVIDER_ELASTICSEARCH | 18 | ElasticSearch vector database service <a href="https://www.elastic.co/">ElasticSearch</a> |
| CCAI_SERVICE_PROVIDER_MILVUS | 19 | Milvus vector database service <a href="https://milvus.io/">Milvus</a> |
| CCAI_SERVICE_PROVIDER_QDRANT | 20 | Qdrant vector database service <a href="https://qdrant.tech/">Qdrant</a> |
| CCAI_SERVICE_PROVIDER_CHROMA | 21 | Chroma vector database service <a href="https://github.com/chroma-core/chroma">ChromaDB</a> |
| CCAI_SERVICE_PROVIDER_GOOGLE | 22 | Google CCAI service provider <a href="https://cloud.google.com/ai">Google Cloud AI</a> |
| CCAI_SERVICE_PROVIDER_MICROSOFT | 23 | Microsoft CCAI service provider <a href="https://www.microsoft.com/en-us/ai">Microsoft AI</a> |
| CCAI_SERVICE_PROVIDER_DEEPGRAM | 24 | Deepgram as the CCAI service provider for speech processing <a href="https://deepgram.com/">Deepgram</a> |
| CCAI_SERVICE_PROVIDER_ELEVENLABS | 25 | ElevenLabs as the CCAI service provider for voice synthesis <a href="https://elevenlabs.io/">ElevenLabs</a> |
| CCAI_SERVICE_PROVIDER_HUGGINGFACE_TGI | 26 | Hugging Face Text Generation Inference (TGI) as the CCAI service provider <a href="https://github.com/huggingface/text-generation-inference">Text Generation Inference</a> |
| CCAI_SERVICE_PROVIDER_HUGGINGFACE_TGE | 27 | Hugging Face Text Embedding Inference (TGE) as the CCAI service provider <a href="https://github.com/huggingface/text-embeddings-inference">Text Embeddings Inference</a> |
| CCAI_SERVICE_PROVIDER_HUGGINGFACE_SMOLAGENTS | 28 | Hugging Face SmolAgents as the CCAI service provider <a href="https://github.com/huggingface/smolagents">SmolAgents</a> |
| CCAI_SERVICE_PROVIDER_GOOGLE_AGENT_DEVELOPMENT_KIT | 29 | Google Agent Development Kit (ADK) as the CCAI service provider <a href="https://google.github.io/adk-docs/">Google Agent Development Kit (ADK)</a> |
| CCAI_SERVICE_PROVIDER_MODEL_CONTEXT_PROTOCOL | 30 | Model Context Protocol as the CCAI service provider, enabling integration with services following the Model Context Protocol standard. <a href="https://modelcontextprotocol.io/introduction">MCP</a> |
| CCAI_SERVICE_PROVIDER_OPENSEARCH | 31 | Opensearch as the CCAI service provider, enabling integration with Opensearch vector database and search services <a href="https://opensearch.org/">Opensearch</a> |
| CCAI_SERVICE_PROVIDER_GROK | 32 | Grok as the CCAI service provider, commonly used for models such as Grok-1 <a href="https://grok.x.ai/">Grok</a> |
| CCAI_SERVICE_PROVIDER_POSTGRES | 33 | PostgreSQL as the CCAI service provider, enabling integration with PostgreSQL databases <a href="https://www.postgresql.org/">PostgreSQL</a> |



<a name="ondewo.nlu.CcaiServiceType"></a>

### CcaiServiceType
Defines the types of CCAI (Call Center AI) services available in the system.

Each service type represents a specific capability or module within the ONDEWO platform
that enables comprehensive call center and customer interaction management. Services can be
composed in workflows and are identified by their type, language code, and provider configuration.

| Name | Number | Description |
| ---- | ------ | ----------- |
| CCAI_SERVICE_TYPE_UNSPECIFIED | 0 | No service type specified or unknown type |
| CCAI_SERVICE_TYPE_ONDEWO_AIM | 1 | ONDEWO Agent Interaction Manager (AIM) Orchestrates multi-channel agent interactions, conversation routing, and workforce management. Handles inbound/outbound call distribution, chat routing, and agent state management. |
| CCAI_SERVICE_TYPE_ONDEWO_BPI | 2 | ONDEWO Business Process Intelligence (BPI) Analyzes call center processes, identifies optimization opportunities, and monitors compliance. Enables workflow automation, process mining, and performance benchmarking. |
| CCAI_SERVICE_TYPE_ONDEWO_CSI | 3 | ONDEWO Customer Service Intelligence (CSI) Provides customer service analytics, sentiment analysis, and interaction quality scoring. Generates insights from call recordings, transcripts, and customer feedback. |
| CCAI_SERVICE_TYPE_ONDEWO_NLU | 4 | ONDEWO Natural Language Understanding (NLU) Core natural language processing service for intent recognition, entity extraction, and dialogue management. Essential for conversational AI and automated customer interactions. |
| CCAI_SERVICE_TYPE_ONDEWO_S2T | 5 | ONDEWO Speech-to-Text (S2T) Converts audio speech to written text with high accuracy and multi-language support. Integrates with voice channels for real-time transcription during calls. |
| CCAI_SERVICE_TYPE_ONDEWO_SIP | 6 | ONDEWO Session Initiation Protocol (SIP) Manages VoIP signaling, call establishment, call control, and telephony infrastructure. Handles SIP trunk integration, PBX connectivity, and call routing logic. |
| CCAI_SERVICE_TYPE_ONDEWO_T2S | 7 | ONDEWO Text-to-Speech (T2S) Converts written text to natural-sounding audio speech with multiple voice options. Enables voice-based responses, IVR prompts, and notification delivery. |
| CCAI_SERVICE_TYPE_ONDEWO_VTSI | 8 | ONDEWO VOIP Telephone System Integration (VTSI) Provides virtual telephony infrastructure for testing, simulation, and call management. Enables stress testing, scenario simulation, and quality assurance for voice applications. |
| CCAI_SERVICE_TYPE_ONDEWO_VTSI_RABBITMQ | 9 | ONDEWO VOIP Telephone System Integration (VTSI) with RabbitMQ Extended VTSI service with RabbitMQ message queue integration for asynchronous processing. Enables decoupled, scalable call handling and event streaming. |
| CCAI_SERVICE_TYPE_ONDEWO_NLU_QA | 10 | ONDEWO NLU Question Answering (QA) Provides intelligent question-answering capabilities for knowledge base queries. Enables automated FAQ handling and self-service customer support. |
| CCAI_SERVICE_TYPE_ONDEWO_NLU_WEBHOOK | 11 | ONDEWO NLU Webhook Enables webhook-based event integration for NLU events and external notifications. Allows real-time integration with third-party systems and custom workflows. |
| CCAI_SERVICE_TYPE_ONDEWO_SURVEY | 12 | ONDEWO Survey Manages survey campaigns, customer feedback collection, and satisfaction measurements. Supports post-call surveys and voice-based survey delivery. |
| CCAI_SERVICE_TYPE_ONDEWO_NLU_LLM | 13 | ONDEWO NLU Large Language Model (LLM) Integrates large language models for advanced NLP tasks and generative AI capabilities. Enables contextual responses, content generation, and semantic understanding. |
| CCAI_SERVICE_TYPE_ONDEWO_NLU_WEBSEARCH | 14 | ONDEWO NLU Web Search Performs real-time internet search queries and retrieves current information. Enables agents to access live data during customer interactions. |
| CCAI_SERVICE_TYPE_ONDEWO_AIM_WEBCHAT | 15 | ONDEWO Agent Interaction Manager (AIM) WebChat Enables live chat interactions via web browsers for customer support. Manages web-based messaging channels with agent assignment and routing. |
| CCAI_SERVICE_TYPE_ONDEWO_AIM_WEBPHONE | 16 | ONDEWO Agent Interaction Manager (AIM) WebPhone Enables VoIP phone interactions directly through web browsers without additional software. Supports WebRTC-based calling for modern browser environments. |
| CCAI_SERVICE_TYPE_ONDEWO_NLU_VECTORSTORE | 17 | ONDEWO NLU Vector Store Manages vector embeddings and semantic search capabilities for knowledge retrieval. Enables similarity matching and context-aware information lookup. |
| CCAI_SERVICE_TYPE_ONDEWO_NLU_LLM_AGENT | 18 | ONDEWO NLU LLM Agent Autonomous agent powered by large language models with tool-calling capabilities. Enables complex, multi-step tasks and dynamic decision-making in customer interactions. |
| CCAI_SERVICE_TYPE_ONDEWO_NLU_LLM_MCP | 19 | ONDEWO NLU LLM Model Context Protocol (MCP) Integrates large language models with the Model Context Protocol standard for tool usage. Enables standardized integration with external tools and data sources. |
| CCAI_SERVICE_TYPE_ONDEWO_NLU_LLM_RAG | 20 | ONDEWO NLU LLM Retrieval-Augmented Generation (RAG) Enhances large language model responses with document and knowledge base retrieval. Enables grounded, factual responses backed by organizational knowledge. |
| CCAI_SERVICE_TYPE_ONDEWO_ANALYTICS | 21 | ONDEWO Analytics Provides comprehensive analytics and metrics for call center operations and KPI tracking. Enables real-time dashboards, historical analysis, and predictive insights. |
| CCAI_SERVICE_TYPE_ONDEWO_ANALYTICS_DASHBOARD | 22 | ONDEWO Analytics Dashboard Visual dashboard for displaying analytics, KPIs, and performance metrics. Provides interactive reports for supervisors, managers, and executives. |
| CCAI_SERVICE_TYPE_ONDEWO_VTSI_OUTBOUND_CAMPAIGN | 23 | ONDEWO VOIP Telephone System Integration (VTSI) Outbound Calling Handles outbound call campaigns and call management. Enables sales outreach, follow-ups, and proactive customer communication. |
| CCAI_SERVICE_TYPE_ONDEWO_VTSI_INBOUND_CAMPAIGN | 24 | ONDEWO VOIP Telephone System Integration (VTSI) Inbound Campaign Manages inbound call campaigns and call routing for marketing or support purposes. Enables targeted call handling and customer engagement strategies. |


 <!-- end enums -->

 <!-- end HasExtensions -->


<a name="ondewo.nlu.CcaiProjects"></a>

### CcaiProjects
Service to manage Call Center AI (CCAI service) Projects.

| Method Name | Request Type | Response Type | Description |
| ----------- | ------------ | ------------- | ------------|
| GetCcaiProject | [GetCcaiProjectRequest](#ondewo.nlu.GetCcaiProjectRequest) | [CcaiProject](#ondewo.nlu.CcaiProject) | Retrieves information about a specific CCAI service project. |
| CreateCcaiProject | [CreateCcaiProjectRequest](#ondewo.nlu.CreateCcaiProjectRequest) | [CreateCcaiProjectResponse](#ondewo.nlu.CreateCcaiProjectResponse) | Creates a new CCAI service project based on the provided request. |
| DeleteCcaiProject | [DeleteCcaiProjectRequest](#ondewo.nlu.DeleteCcaiProjectRequest) | [DeleteCcaiProjectResponse](#ondewo.nlu.DeleteCcaiProjectResponse) | Deletes a CCAI service project identified by the provided request. |
| ListCcaiProjects | [ListCcaiProjectsRequest](#ondewo.nlu.ListCcaiProjectsRequest) | [ListCcaiProjectsResponse](#ondewo.nlu.ListCcaiProjectsResponse) | Lists all CCAI service projects based on the provided request. |
| UpdateCcaiProject | [UpdateCcaiProjectRequest](#ondewo.nlu.UpdateCcaiProjectRequest) | [UpdateCcaiProjectResponse](#ondewo.nlu.UpdateCcaiProjectResponse) | Updates the information of an existing CCAI service project. |
| GetCcaiService | [GetCcaiServiceRequest](#ondewo.nlu.GetCcaiServiceRequest) | [CcaiService](#ondewo.nlu.CcaiService) | Retrieves information about a specific CCAI service. |

 <!-- end services -->



<a name="ondewo/nlu/common.proto"></a>
<p align="right"><a href="#top">Top</a></p>

## ondewo/nlu/common.proto



<a name="ondewo.nlu.AddNotificationsRequest"></a>

### AddNotificationsRequest
Message for adding notifications in a batch.


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| notifications | [Notification](#ondewo.nlu.Notification) | repeated | List of notifications to be added. |






<a name="ondewo.nlu.AddNotificationsResponse"></a>

### AddNotificationsResponse
Message containing the response to adding notifications.


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| notifications | [Notification](#ondewo.nlu.Notification) | repeated | List of notifications that have been added. |






<a name="ondewo.nlu.Comment"></a>

### Comment
Comment message


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| name | [string](#string) |  | resource name of the comment |
| text | [string](#string) |  | text of the comment |
| user_id | [string](#string) |  | User id as resource name. Format: <pre><code>projects/&lt;project_uuid&gt;/agent/users/&lt;user_uuid&gt;</code></pre> |
| comment_about_name | [string](#string) |  | name of the resource for which the comment is about. Format: <pre><code>projects/&lt;project_uuid&gt;/agent/&lt;resource_type&gt;/&lt;resource_uuid&gt;/.../</code></pre> |
| parent_comment_name | [string](#string) |  | The resource name of the parent comment. A parent comment is a reply to a certain comment. Format: <pre><code>projects/&lt;project_uuid&gt;/agent/&lt;resource_type&gt;/&lt;resource_uuid&gt;/.../</code></pre> |
| created_at | [google.protobuf.Timestamp](#google.protobuf.Timestamp) |  | Creation date and time. Read-only field. |
| modified_at | [google.protobuf.Timestamp](#google.protobuf.Timestamp) |  | Modification date and time. Read-only field. |
| created_by | [string](#string) |  | User id in form of a valid UUID. |
| modified_by | [string](#string) |  | User id in form of a valid UUID. |






<a name="ondewo.nlu.KeyValuePair"></a>

### KeyValuePair
Key-Value pair message, where the value can be one of various types (int, float, double, string, etc.).


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| key | [string](#string) |  | The key of the key-value pair. |
| int_value | [int32](#int32) |  | The integer value (if applicable). |
| float_value | [float](#float) |  | The float value (if applicable). |
| double_value | [double](#double) |  | The double value (if applicable). |
| string_value | [string](#string) |  | The string value (if applicable). |
| created_at | [google.protobuf.Timestamp](#google.protobuf.Timestamp) |  | The timestamp value (if applicable). |






<a name="ondewo.nlu.ListNotificationsRequest"></a>

### ListNotificationsRequest
Message for listing notifications based on certain criteria.


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| notification_filter | [NotificationFilter](#ondewo.nlu.NotificationFilter) |  | Optional filter to narrow the response down to specific notifications. |
| page_token | [string](#string) |  | Optional. Token for pagination, obtained from a previous list request. The page token to support pagination. Pagination allows you to retrieve a large result set in smaller, more manageable portions. The page token is a string representing the current index and page size.

Valid page token strings: <ul> <li>&quot;&quot; (empty string) - Retrieves the first page.</li> <li>&quot;current_index-0--page_size-20&quot; - Retrieves the first page with a page size of 20.</li> <li>&quot;current_index-1--page_size-20&quot; - Retrieves the second page with a page size of 20.</li> </ul>

Index starts at 0.

Examples of valid page token strings: <ul> <li>&quot;&quot;</li> <li>&quot;current_index-0--page_size-20&quot;</li> <li>&quot;current_index-1--page_size-20&quot;</li> <li>&quot;current_index-10--page_size-20&quot;</li> </ul>

Examples of invalid page token strings: <ul> <li>&quot;1&quot;</li> <li>&quot;current_index-0--page_size-20&quot;</li> <li>&quot;current_index--1--page_size-20&quot;</li> <li>&quot;current_index1--page_size-20&quot;</li> <li>&quot;current_index-1--page_size--20&quot;</li> </ul> |
| field_mask | [google.protobuf.FieldMask](#google.protobuf.FieldMask) |  | Optional. Mask to control which fields will be filled with data. <br> Example: path=["notification.user_names"] |






<a name="ondewo.nlu.ListNotificationsResponse"></a>

### ListNotificationsResponse
Message containing the response to a list request for notifications.


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| notifications | [Notification](#ondewo.nlu.Notification) | repeated | List of notifications that meet the specified criteria. |






<a name="ondewo.nlu.Notification"></a>

### Notification
Notification message


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| name | [string](#string) |  | resource name of the notification |
| user_name | [string](#string) |  | User id as resource name. Format: <pre><code>projects/&lt;project_uuid&gt;/agent/users/&lt;user_uuid&gt;</code></pre> |
| title | [string](#string) |  | User id as resource name. Format: <pre><code>projects/&lt;project_uuid&gt;/agent/users/&lt;user_uuid&gt;</code></pre> |
| description_short | [string](#string) |  | A short notification text is displayed directly with max. 50 chars which is a truncated version of the long message |
| description_long | [string](#string) |  | A long notification text |
| notification_flagged_status | [NotificationFlaggedStatus](#ondewo.nlu.NotificationFlaggedStatus) |  | Has a notification been flagged by a specific user |
| notification_flagged_timestamp | [google.protobuf.Timestamp](#google.protobuf.Timestamp) |  | When the user marked the notification as read |
| notification_read_status | [NotificationReadStatus](#ondewo.nlu.NotificationReadStatus) |  | Has a notification been read by a specific user |
| notification_read_timestamp | [google.protobuf.Timestamp](#google.protobuf.Timestamp) |  | When the user marked the notification as read, i.e. read the notification |
| notification_origin | [NotificationOrigin](#ondewo.nlu.NotificationOrigin) |  | The origin of a notification. A Notification origin can be from a product (service), e.g. ondewo-nlu, ondewo-s2t, ondewo-t2s, etc. |
| origin_name | [string](#string) |  | The name of resource of where the notification originated |
| origin_language | [string](#string) |  | language of the origin resource e.g. language of the nlu agent or language of the speech-to-text service |
| notification_type | [NotificationType](#ondewo.nlu.NotificationType) |  | The type of notification |
| notification_visibility | [NotificationVisibility](#ondewo.nlu.NotificationVisibility) |  | The visibility level of the notification |
| created_at | [google.protobuf.Timestamp](#google.protobuf.Timestamp) |  | Creation date and time. Read-only field. |
| modified_at | [google.protobuf.Timestamp](#google.protobuf.Timestamp) |  | Modification date and time. Read-only field. |
| created_by | [string](#string) |  | User id in form of a valid UUID. |
| modified_by | [string](#string) |  | User id in form of a valid UUID. |






<a name="ondewo.nlu.NotificationFilter"></a>

### NotificationFilter
Message for filtering notifications based on various criteria.


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| language_codes | [string](#string) | repeated | Language codes of the projects for which notifications are filtered. |
| notification_origins | [NotificationOrigin](#ondewo.nlu.NotificationOrigin) | repeated | Origins of the notifications to filter. |
| notification_visibilities | [NotificationVisibility](#ondewo.nlu.NotificationVisibility) | repeated | Visibilities of the notifications to filter. |
| notification_flagged_status | [NotificationFlaggedStatus](#ondewo.nlu.NotificationFlaggedStatus) | repeated | Flagged status of the notifications to filter. |
| notification_read_status | [NotificationReadStatus](#ondewo.nlu.NotificationReadStatus) | repeated | Read status of the notifications to filter. |
| earliest | [google.protobuf.Timestamp](#google.protobuf.Timestamp) |  | Filter notifications with a time range starting from the specified earliest time. |
| latest | [google.protobuf.Timestamp](#google.protobuf.Timestamp) |  | Filter notifications with a time range ending at the specified latest time. |
| user_names | [string](#string) | repeated | Resource names of users to filter notifications for. |
| origin_names | [string](#string) | repeated | Resource names of the origin of the notification to filter notifications. |






<a name="ondewo.nlu.SetNotificationsFlaggedStatusRequest"></a>

### SetNotificationsFlaggedStatusRequest
Message for setting the flagged status of notifications.


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| notification_names | [string](#string) | repeated | Names of notifications to set the flagged status for. |
| flagged | [bool](#bool) | repeated | Flagged status to set for the specified notifications. |






<a name="ondewo.nlu.SetNotificationsReadStatusRequest"></a>

### SetNotificationsReadStatusRequest
Message for setting the read status of notifications.


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| notification_names | [string](#string) | repeated | Names of notifications to set the read status for. |
| flagged | [bool](#bool) | repeated | Read status to set for the specified notifications. |






<a name="ondewo.nlu.StatResponse"></a>

### StatResponse
statistic response


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| value | [uint32](#uint32) |  | Response wrapper for the &quot;Get&lt;Stat&gt;&quot; endpoints |





 <!-- end messages -->


<a name="ondewo.nlu.NotificationFlaggedStatus"></a>

### NotificationFlaggedStatus
Enumerates the possible flagged statuses for a notification.

| Name | Number | Description |
| ---- | ------ | ----------- |
| NOTIFICATION_FLAGGED_STATUS_UNSPECIFIED | 0 | Unspecified flagged status |
| NOTIFICATION_FLAGGED_STATUS_FLAGGED | 1 | Notification is flagged |
| NOTIFICATION_FLAGGED_STATUS_UNFLAGGED | 2 | Notification is unflagged |



<a name="ondewo.nlu.NotificationOrigin"></a>

### NotificationOrigin
Enumerates the possible origins for a notification.

| Name | Number | Description |
| ---- | ------ | ----------- |
| NOTIFICATION_ORIGIN_UNSPECIFIED | 0 | unspecified |
| NOTIFICATION_ORIGIN_ONDEWO_AIM | 1 | ondewo-aim service |
| NOTIFICATION_ORIGIN_ONDEWO_BPI | 2 | ondewo-bpi service |
| NOTIFICATION_ORIGIN_ONDEWO_CSI | 3 | ondewo-csi service |
| NOTIFICATION_ORIGIN_ONDEWO_NLU | 4 | ondewo-nlu service |
| NOTIFICATION_ORIGIN_ONDEWO_S2T | 5 | ondewo-s2t service |
| NOTIFICATION_ORIGIN_ONDEWO_SIP | 6 | ondewo-sip service |
| NOTIFICATION_ORIGIN_ONDEWO_T2S | 7 | ondewo-t2s service |
| NOTIFICATION_ORIGIN_ONDEWO_VTSI | 8 | ondewo-vtsi service |
| NOTIFICATION_ORIGIN_ONDEWO_VTSI_RABBITMQ | 9 | ondewo-vtsi-rabbitmq service |



<a name="ondewo.nlu.NotificationReadStatus"></a>

### NotificationReadStatus
Enumerates the possible read statuses for a notification.

| Name | Number | Description |
| ---- | ------ | ----------- |
| NOTIFICATION_READ_STATUS_UNSPECIFIED | 0 | Unspecified read status |
| NOTIFICATION_READ_STATUS_READ | 1 | Notification is marked as read |
| NOTIFICATION_READ_STATUS_UNREAD | 2 | Notification is marked as unread |



<a name="ondewo.nlu.NotificationType"></a>

### NotificationType
Enumerates the possible types for a notification.

| Name | Number | Description |
| ---- | ------ | ----------- |
| NOTIFICATION_TYPE_UNSPECIFIED | 0 | Unspecified notification type |
| NOTIFICATION_TYPE_DEBUG | 1 | Debug notification type |
| NOTIFICATION_TYPE_WARNING | 2 | Warning notification type |
| NOTIFICATION_TYPE_INFO | 3 | Informational notification type |
| NOTIFICATION_TYPE_ERROR | 4 | Error notification type |
| NOTIFICATION_TYPE_NEWS | 5 | News notification type |



<a name="ondewo.nlu.NotificationVisibility"></a>

### NotificationVisibility
Enum for notification type

| Name | Number | Description |
| ---- | ------ | ----------- |
| NOTIFICATION_VISIBILITY_UNSPECIFIED | 0 | unspecified |
| NOTIFICATION_VISIBILITY_USER | 1 | only user sees the notification - usually a notification of the user interface |
| NOTIFICATION_VISIBILITY_PROJECT | 2 | all members of a project see this notification |
| NOTIFICATION_VISIBILITY_PROJECT_OWNER | 3 | all admins of a project see this notification |
| NOTIFICATION_VISIBILITY_PROJECT_ADMIN | 4 | all admins of a project see this notification |
| NOTIFICATION_VISIBILITY_PROJECT_DEVELOPER | 5 | all admins of a project see this notification |
| NOTIFICATION_VISIBILITY_PROJECT_USER | 6 | all users of a project see this notification |
| NOTIFICATION_VISIBILITY_PROJECT_EXECUTOR | 7 | all users of a project see this notification |
| NOTIFICATION_VISIBILITY_PROJECT_INACTIVE | 8 | all users of a project see this notification |
| NOTIFICATION_VISIBILITY_SERVER_ADMIN | 9 | all admins of the server |
| NOTIFICATION_VISIBILITY_SERVER_MANAGER | 10 | all admins of the server |
| NOTIFICATION_VISIBILITY_SERVER_USER | 11 | all admins of the server |
| NOTIFICATION_VISIBILITY_SERVER_INACTIVE | 12 | all admins of the server |



<a name="ondewo.nlu.SortingMode"></a>

### SortingMode
Sorting mode

| Name | Number | Description |
| ---- | ------ | ----------- |
| ASCENDING | 0 | ascending sorting |
| DESCENDING | 1 | descending sorting |


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

Note: we are deviating from the dialogflow format <code>projects/&lt;project_uuid&gt;/agent/sessions/&lt;session_uuid&gt;/contexts/&lt;context_uuid&gt;</code>.

<ul> <li>DetectIntent only returns <ul> <li>the short display name in the &quot;name&quot; field in query_result.output_contexts</li> <li>only expects the short display name in the &quot;name&quot; field in query_parameters.contexts</li> </ul> </li> <li>Also inside the persisted session object only the short display name is used. <ul> <li>SessionStep.contexts only contains the short display name</li> <li>SessionReviewStep.contexts only contains the short display name</li> </ul> </li> </ul> |
| lifespan_count | [int32](#int32) |  | Optional. The number of conversational query requests after which the context expires. If set to <code>0</code> (the default) the context expires immediately. Contexts expire automatically after 10 minutes even if there are no matching queries. |
| parameters | [Context.ParametersEntry](#ondewo.nlu.Context.ParametersEntry) | repeated | Optional. The collection of parameters associated with this context. Refer to <a href="https://dialogflow.com/docs/actions-and-parameters">this doc</a> for syntax. Keys are the display names of context parameters. |
| lifespan_time | [float](#float) |  | Optional. The time span in seconds after which the context expires. By default it does not expire. |
| created_at | [google.protobuf.Timestamp](#google.protobuf.Timestamp) |  | Creation date and time. Read-only field. |
| modified_at | [google.protobuf.Timestamp](#google.protobuf.Timestamp) |  | Modification date and time. Read-only field. |
| created_by | [string](#string) |  | User id in form of a valid UUID. |
| modified_by | [string](#string) |  | User id in form of a valid UUID. |






<a name="ondewo.nlu.Context.Parameter"></a>

### Context.Parameter
Represents a parameter associated with a context


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| name | [string](#string) |  | The name of the context parameter. |
| display_name | [string](#string) |  | The display name of the context parameter. |
| value | [string](#string) |  | The value(s) of the context parameter. |
| value_original | [string](#string) |  | The original value(s) of the context parameter. |
| created_at | [google.protobuf.Timestamp](#google.protobuf.Timestamp) |  | Creation date and time. Read-only field. |
| modified_at | [google.protobuf.Timestamp](#google.protobuf.Timestamp) |  | Modification date and time. Read-only field. |
| created_by | [string](#string) |  | User id in form of a valid UUID. |
| modified_by | [string](#string) |  | User id in form of a valid UUID. |






<a name="ondewo.nlu.Context.ParametersEntry"></a>

### Context.ParametersEntry



| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| key | [string](#string) |  |  |
| value | [Context.Parameter](#ondewo.nlu.Context.Parameter) |  |  |






<a name="ondewo.nlu.CreateContextRequest"></a>

### CreateContextRequest
The request message for <a href="index.html#ondewo.nlu.Contexts.CreateContext">Contexts.CreateContext</a>.


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| session_id | [string](#string) |  | Required. The session to create a context for. Format: <pre><code>projects/&lt;project_uuid&gt;/agent/sessions/&lt;session_uuid&gt;</code></pre> |
| context | [Context](#ondewo.nlu.Context) |  | Required. The context to create. |






<a name="ondewo.nlu.DeleteAllContextsRequest"></a>

### DeleteAllContextsRequest
The request message for <a href="index.html#ondewo.nlu.Contexts.DeleteAllContexts">Contexts.DeleteAllContexts</a>.


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| session_id | [string](#string) |  | Required. The name of the session to delete all contexts from. Format: <pre><code>projects/&lt;project_uuid&gt;/agent/sessions/&lt;session_uuid&gt;</code></pre> |






<a name="ondewo.nlu.DeleteContextRequest"></a>

### DeleteContextRequest
The request message for <a href="index.html#ondewo.nlu.Contexts.DeleteContext">Contexts.DeleteContext</a>.


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| name | [string](#string) |  | Required. The name of the context to delete. Format: <code>projects/&lt;project_uuid&gt;/agent/sessions/&lt;session_uuid&gt;/contexts/&lt;context_uuid&gt;</code>. |






<a name="ondewo.nlu.GetContextRequest"></a>

### GetContextRequest
The request message for <a href="index.html#ondewo.nlu.Contexts.GetContext">Contexts.GetContext</a>.


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| name | [string](#string) |  | Required. The name of the context. Format: <code>projects/&lt;project_uuid&gt;/agent/sessions/&lt;session_uuid&gt;/contexts/&lt;context_uuid&gt;</code>. |






<a name="ondewo.nlu.ListContextsRequest"></a>

### ListContextsRequest
The request message for <a href="index.html#ondewo.nlu.Contexts.ListContexts">Contexts.ListContexts</a>.


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| session_id | [string](#string) |  | Required. The session to list all contexts from. Format: <pre><code>projects/&lt;project_uuid&gt;/agent/sessions/&lt;session_uuid&gt;</code></pre> |
| page_token | [string](#string) |  | Optional. The next_page_token value returned from a previous list request. The page token to support pagination. Pagination allows you to retrieve a large result set in smaller, more manageable portions. The page token is a string representing the current index and page size.

Valid page token strings: <ul> <li>&quot;&quot; (empty string) - Retrieves the first page.</li> <li>&quot;current_index-0--page_size-20&quot; - Retrieves the first page with a page size of 20.</li> <li>&quot;current_index-1--page_size-20&quot; - Retrieves the second page with a page size of 20.</li> </ul>

Index starts at 0.

Examples of valid page token strings: <ul> <li>&quot;&quot;</li> <li>&quot;current_index-0--page_size-20&quot;</li> <li>&quot;current_index-1--page_size-20&quot;</li> <li>&quot;current_index-10--page_size-20&quot;</li> </ul>

Examples of invalid page token strings: <ul> <li>&quot;1&quot;</li> <li>&quot;current_index-0--page_size-20&quot;</li> <li>&quot;current_index--1--page_size-20&quot;</li> <li>&quot;current_index1--page_size-20&quot;</li> <li>&quot;current_index-1--page_size--20&quot;</li> </ul> |






<a name="ondewo.nlu.ListContextsResponse"></a>

### ListContextsResponse
The response message for <a href="index.html#ondewo.nlu.Contexts.ListContexts">Contexts.ListContexts</a>.


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| contexts | [Context](#ondewo.nlu.Context) | repeated | The list of contexts. There will be a maximum number of items returned based on the page_token field in the request. |
| next_page_token | [string](#string) |  | The next_page_token is used to retrieve the next page of a returned result, e.g. next_page_token is current_index-2 |






<a name="ondewo.nlu.UpdateContextRequest"></a>

### UpdateContextRequest
The request message for <a href="index.html#ondewo.nlu.Contexts.UpdateContext">Contexts.UpdateContext</a>.


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| context | [Context](#ondewo.nlu.Context) |  | Required. The context to update. |
| update_mask | [google.protobuf.FieldMask](#google.protobuf.FieldMask) |  | Optional. The mask to control which fields get updated. |





 <!-- end messages -->

 <!-- end enums -->

 <!-- end HasExtensions -->


<a name="ondewo.nlu.Contexts"></a>

### Contexts
A context represents additional information included with user input or with an intent returned by the Dialogflow API. Contexts are helpful for differentiating user input which may be vague or have a different meaning depending on additional details from your application such as user setting and preferences, previous user input, where the user is in your application, geographic location, and so on.

You can include contexts as input parameters of a <a href="index.html#ondewo.nlu.Sessions.DetectIntent">DetectIntent</a> (or <a href="index.html#ondewo.nlu.Sessions.StreamingDetectIntent">StreamingDetectIntent</a>) request, or as output contexts included in the returned intent.
Contexts expire when an intent is matched, after the number of <code>DetectIntent</code> requests specified by the <code>lifespan_count</code> parameter, or after 10 minutes if no intents are matched for a <code>DetectIntent</code> request.
For more information about contexts, see the <a href="https://dialogflow.com/docs/contexts">Dialogflow documentation</a>.

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
This message is a request to create a batch entities


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| create_entity_requests | [CreateEntityRequest](#ondewo.nlu.CreateEntityRequest) | repeated | The create entity requests in a batch |






<a name="ondewo.nlu.BatchDeleteEntitiesRequest"></a>

### BatchDeleteEntitiesRequest
This message is a request to delete a batch of entities


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| names | [string](#string) | repeated | The unique identifiers of the entities. Format: <code>projects/&lt;project_uuid&gt;/agent/entityTypes/&lt;entity_type_uuid&gt;/entities/&lt;entity_uuid&gt;</code>. |






<a name="ondewo.nlu.BatchDeleteEntitiesResponse"></a>

### BatchDeleteEntitiesResponse
This message is a response of deletion of a batch of entities


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| delete_statuses | [DeleteEntityStatus](#ondewo.nlu.DeleteEntityStatus) | repeated | status of an entity deletion |
| has_errors | [bool](#bool) |  | error messages |






<a name="ondewo.nlu.BatchDeleteEntityTypesRequest"></a>

### BatchDeleteEntityTypesRequest
The request message for <a href="index.html#ondewo.nlu.EntityTypes.BatchDeleteEntityTypes">EntityTypes.BatchDeleteEntityTypes</a>.


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| parent | [string](#string) |  | Required. The name of the agent to delete all entities types for. Format: <code>projects/&lt;project_uuid&gt;/agent</code>. |
| entity_type_names | [string](#string) | repeated | Required. The names entity types to delete. All names must point to the same agent as `parent`. |






<a name="ondewo.nlu.BatchEntitiesResponse"></a>

### BatchEntitiesResponse
This message is a response of batch entities


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| entity_statuses | [EntityStatus](#ondewo.nlu.EntityStatus) | repeated | A list of entity statuses |
| has_errors | [bool](#bool) |  | indicates if statuses of some of the training phrases have errors |






<a name="ondewo.nlu.BatchGetEntitiesRequest"></a>

### BatchGetEntitiesRequest
This message is a request to get a batch of entities


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| names | [string](#string) | repeated | The unique identifiers of the entities. Format: <code>projects/&lt;project_uuid&gt;/agent/entityTypes/&lt;entity_type_uuid&gt;/entities/&lt;entity_uuid&gt;</code>. |






<a name="ondewo.nlu.BatchUpdateEntitiesRequest"></a>

### BatchUpdateEntitiesRequest
This message is a request to update a batch of entities


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| entities | [EntityType.Entity](#ondewo.nlu.EntityType.Entity) | repeated | The entities to update |






<a name="ondewo.nlu.BatchUpdateEntityTypesRequest"></a>

### BatchUpdateEntityTypesRequest
The request message for <a href="index.html#ondewo.nlu.EntityTypes.BatchUpdateEntityTypes">EntityTypes.BatchUpdateEntityTypes</a>.


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| parent | [string](#string) |  | Required. The name of the agent to update or create entity types in. Format: <pre><code>projects/&lt;project_uuid&gt;/agent</code></pre> |
| entity_type_batch_uri | [string](#string) |  | The URI to a Google Cloud Storage file containing entity types to update or create. The file format can either be a serialized proto (of EntityBatch type) or a JSON object. Note: The URI must start with &quot;gs://&quot;. |
| entity_type_batch_inline | [EntityTypeBatch](#ondewo.nlu.EntityTypeBatch) |  | The collection of entity type to update or create. |
| language_code | [string](#string) |  | Optional. The language of entity synonyms defined in <code>entity_types</code>. If not specified, the agent&apos;s default language is used. <a href="https://dialogflow.com/docs/reference/language">More than a dozen languages</a> are supported. Note: languages must be enabled in the agent, before they can be used. |
| update_mask | [google.protobuf.FieldMask](#google.protobuf.FieldMask) |  | Optional. The mask to control which fields get updated. |






<a name="ondewo.nlu.BatchUpdateEntityTypesResponse"></a>

### BatchUpdateEntityTypesResponse
The response message for <a href="index.html#ondewo.nlu.EntityTypes.BatchUpdateEntityTypes">EntityTypes.BatchUpdateEntityTypes</a>.


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| entity_types | [EntityType](#ondewo.nlu.EntityType) | repeated | The collection of updated or created entity types. |






<a name="ondewo.nlu.CreateEntityRequest"></a>

### CreateEntityRequest



| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| entity_type_name | [string](#string) |  | Required. Name of the entity type in which to create the entity value. Format: <code>projects/&lt;project_uuid&gt;/agent/entityTypes/&lt;entity_type_uuid&gt;/entities/&lt;entity_uuid&gt;</code>. |
| entity | [EntityType.Entity](#ondewo.nlu.EntityType.Entity) |  | The entity value to create |






<a name="ondewo.nlu.CreateEntityTypeRequest"></a>

### CreateEntityTypeRequest
The request message for <a href="index.html#ondewo.nlu.EntityTypes.CreateEntityType">EntityTypes.CreateEntityType</a>.


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| parent | [string](#string) |  | Required. The agent to create a entity type for. Format: <pre><code>projects/&lt;project_uuid&gt;/agent</code></pre> |
| entity_type | [EntityType](#ondewo.nlu.EntityType) |  | Required. The entity type to create. |
| language_code | [string](#string) |  | Optional. The language of entity synonyms defined in <code>entity_type</code>. If not specified, the agent&apos;s default language is used. <a href="https://dialogflow.com/docs/reference/language">More than a dozen languages</a> are supported. Note: languages must be enabled in the agent, before they can be used. |
| entity_type_view | [EntityTypeView](#ondewo.nlu.EntityTypeView) |  | Optional. The resource view to apply to the returned Entity Type |






<a name="ondewo.nlu.DeleteEntityRequest"></a>

### DeleteEntityRequest
This message is a request to delete a batch of entities


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| name | [string](#string) |  | The unique identifiers of the entities. Format: <code>projects/&lt;project_uuid&gt;/agent/entityTypes/&lt;entity_type_uuid&gt;/entities/&lt;entity_uuid&gt;</code>. |






<a name="ondewo.nlu.DeleteEntityStatus"></a>

### DeleteEntityStatus
This message contains the status of an entity deletion


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| successfully_deleted | [google.protobuf.Empty](#google.protobuf.Empty) |  |  |
| error_message | [string](#string) |  |  |






<a name="ondewo.nlu.DeleteEntityTypeRequest"></a>

### DeleteEntityTypeRequest
The request message for <a href="index.html#ondewo.nlu.EntityTypes.DeleteEntityType">EntityTypes.DeleteEntityType</a>.


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| name | [string](#string) |  | Required. The name of the entity type to delete. Format: <pre><code>projects/&lt;project_uuid&gt;/agent/entityTypes/&lt;entity_type_uuid&gt;</code></pre> |






<a name="ondewo.nlu.EntityStatus"></a>

### EntityStatus
This message is for the entity status


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| entity | [EntityType.Entity](#ondewo.nlu.EntityType.Entity) |  | The entity |
| error_message | [string](#string) |  | Error message |






<a name="ondewo.nlu.EntityType"></a>

### EntityType
Represents an entity type.
Entity types serve as a tool for extracting parameter values from natural
language queries.


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| name | [string](#string) |  | Required for all methods except <code>create</code> (<code>create</code> populates the name automatically. The unique identifier of the entity type. Format: <code>projects/&lt;project_uuid&gt;/agent/entityTypes/&lt;entity_type_uuid&gt;</code>. |
| display_name | [string](#string) |  | Required. The name of the entity type. |
| kind | [EntityType.Kind](#ondewo.nlu.EntityType.Kind) |  | Required. Indicates the kind of entity type. |
| auto_expansion_mode | [EntityType.AutoExpansionMode](#ondewo.nlu.EntityType.AutoExpansionMode) |  | Optional. Indicates whether the entity type can be automatically expanded. |
| entities | [EntityType.Entity](#ondewo.nlu.EntityType.Entity) | repeated | Optional. The collection of entities associated with the entity type. |
| next_page_token | [string](#string) |  | The next_page_token is used to retrieve the next page of a returned result, e.g. next_page_token is current_index-2 |
| entity_count | [int32](#int32) |  | Read-Only field. Total count of entity values of the entity type |
| status | [EntityType.EntityTypeStatus](#ondewo.nlu.EntityType.EntityTypeStatus) |  | Indicates whether the entity type is active or not |
| synonym_count | [int32](#int32) |  | Read-Only field. Total count of entity synonyms of the entity type |
| created_at | [google.protobuf.Timestamp](#google.protobuf.Timestamp) |  | Creation date and time. Read-only field. |
| modified_at | [google.protobuf.Timestamp](#google.protobuf.Timestamp) |  | Modification date and time. Read-only field. |
| created_by | [string](#string) |  | User id in form of a valid UUID. |
| modified_by | [string](#string) |  | User id in form of a valid UUID. |






<a name="ondewo.nlu.EntityType.Entity"></a>

### EntityType.Entity
Represents an entity value within an entity type


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| value | [string](#string) |  | Required. For <code>KIND_MAP</code> entity types: A canonical name to be used in place of synonyms. For <code>KIND_LIST</code> entity types: A string that can contain references to other entity types (with or without aliases).

Values can also be described as regexes with postprocessing options such as:

<pre><code> * regex('//1') => references the first group match of the regex defined as a synonym * regex('//2') => references the second group match of the regex defined as a synonym * regex('//1') => references the first group match of the regex defined as a synonym </code></pre>

Values can also be described as regexes with one or more postprocessing options such as one postprocessing option to remove all whitespaces <code>regex('&lt;#RW#&gt;\\1')</code> or by a combination of several postprocessing options such as remove all whitespaces and lower casing <code>regex('&lt;#RW#&gt;&lt;#LC#&gt;\\1')</code>.

All processing options are:

<pre><code> * regex('&lt;#TW&gt;//1') => matches 1st group and trims duplicated whitespaces to one single space * regex('&lt;#RW&gt;//1') => matches 1st group and removes all whitespaces * regex('&lt;#UC&gt;//1') => matches 1st group and converts to upper case * regex('&lt;#LC&gt;//1') => matches 1st group and converts to lower case * regex('&lt;#CC&gt;//1') => matches 1st group and converts to camelCase * regex('&lt;#SC&gt;//1') => matches 1st group and converts to snake_case </code></pre> |
| synonyms | [string](#string) | repeated | Required. A collection of synonyms. For <code>KIND_LIST</code> entity types this must contain exactly one synonym equal to <code>value</code>. Synonyms can be regex expressions, i.e. regular expressions, that are python compatible. See here for supported regex: <a href="https://docs.python.org/3/library/re.html">https://docs.python.org/3/library/re.html</a> Examples are:

<pre><code> * regex('[a-zA-Z]+') => just letters * regex('\d{1,5}') => just numbers * regex('^[a-zA-Z0-9.-]+\.[a-zA-Z]{2,}$') => mix of numbers, letters and dot * regex('(?i)(^|\s)(0\s{0,3}') => with matching groups and case insensitivity </code></pre> |
| name | [string](#string) |  | The unique identifier of the entity. Format: <code>projects/&lt;project_uuid&gt;/agent/entityTypes/&lt;entity_type_uuid&gt;/entities/&lt;entity_uuid&gt;</code>. |
| display_name | [string](#string) |  | The name of the entity. |
| synonym_count | [int32](#int32) |  | Optional. Total count of entity synonyms |
| language_code | [string](#string) |  | Required. The language to list entity synonyms for. |
| created_at | [google.protobuf.Timestamp](#google.protobuf.Timestamp) |  | Creation date and time. Read-only field. |
| modified_at | [google.protobuf.Timestamp](#google.protobuf.Timestamp) |  | Modification date and time. Read-only field. |
| created_by | [string](#string) |  | User id in form of a valid UUID. |
| modified_by | [string](#string) |  | User id in form of a valid UUID. |






<a name="ondewo.nlu.EntityTypeBatch"></a>

### EntityTypeBatch
This message is a wrapper around a collection of entity types.


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| entity_types | [EntityType](#ondewo.nlu.EntityType) | repeated | A collection of entity types. |






<a name="ondewo.nlu.EntityTypeSorting"></a>

### EntityTypeSorting
This message contains Entity type sorting


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| sorting_field | [EntityTypeSorting.EntityTypeSortingField](#ondewo.nlu.EntityTypeSorting.EntityTypeSortingField) |  |  |
| sorting_mode | [SortingMode](#ondewo.nlu.SortingMode) |  |  |






<a name="ondewo.nlu.EntityValueSorting"></a>

### EntityValueSorting
This message contains entity value sorting


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| sorting_field | [EntityValueSorting.EntityValueSortingField](#ondewo.nlu.EntityValueSorting.EntityValueSortingField) |  |  |
| sorting_mode | [SortingMode](#ondewo.nlu.SortingMode) |  |  |






<a name="ondewo.nlu.GetEntityRequest"></a>

### GetEntityRequest
This message is a request to get a an entity


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| name | [string](#string) |  | The unique identifiers of the entities. Format: <code>projects/&lt;project_uuid&gt;/agent/entityTypes/&lt;entity_type_uuid&gt;/entities/&lt;entity_uuid&gt;</code>. |






<a name="ondewo.nlu.GetEntityTypeRequest"></a>

### GetEntityTypeRequest
The request message for <a href="index.html#ondewo.nlu.EntityTypes.GetEntityType">EntityTypes.GetEntityType</a>.


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| name | [string](#string) |  | Required. The name of the entity type. Format: <pre><code>projects/&lt;project_uuid&gt;/agent/entityTypes/&lt;entity_type_uuid&gt;</code></pre> |
| language_code | [string](#string) |  | Optional. The language to retrieve entity synonyms for. If not specified, the agent&apos;s default language is used. <a href="https://dialogflow.com/docs/reference/language">More than a dozen languages</a> are supported. Note: languages must be enabled in the agent, before they can be used. |
| page_token | [string](#string) |  | The page token to support pagination. Pagination allows you to retrieve a large result set in smaller, more manageable portions. The page token is a string representing the current index and page size.

Valid page token strings: <ul> <li>&quot;&quot; (empty string) - Retrieves the first page.</li> <li>&quot;current_index-0--page_size-20&quot; - Retrieves the first page with a page size of 20.</li> <li>&quot;current_index-1--page_size-20&quot; - Retrieves the second page with a page size of 20.</li> </ul>

Index starts at 0.

Examples of valid page token strings: <ul> <li>&quot;&quot;</li> <li>&quot;current_index-0--page_size-20&quot;</li> <li>&quot;current_index-1--page_size-20&quot;</li> <li>&quot;current_index-10--page_size-20&quot;</li> </ul>

Examples of invalid page token strings: <ul> <li>&quot;1&quot;</li> <li>&quot;current_index-0--page_size-20&quot;</li> <li>&quot;current_index--1--page_size-20&quot;</li> <li>&quot;current_index1--page_size-20&quot;</li> <li>&quot;current_index-1--page_size--20&quot;</li> </ul> |
| entity_type_view | [EntityTypeView](#ondewo.nlu.EntityTypeView) |  | Optional. The resource view to apply to the returned Entity Type |






<a name="ondewo.nlu.ListEntitiesRequest"></a>

### ListEntitiesRequest
This message is a request to get a list of entities


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| entity_type_name | [string](#string) |  | The unique identifier of the entity type. Format: <code>projects/&lt;project_uuid&gt;/agent/entityTypes/&lt;entity_type_uuid&gt;</code> |
| language_code | [string](#string) |  | Optional. The language to list training phrases, parameters and rich messages for. If not specified, the agent&apos;s default language is used. |
| page_token | [string](#string) |  | Optional. The next_page_token value returned from a previous list request. The page token to support pagination. Pagination allows you to retrieve a large result set in smaller, more manageable portions. The page token is a string representing the current index and page size.

Valid page token strings: <ul> <li>&quot;&quot; (empty string) - Retrieves the first page.</li> <li>&quot;current_index-0--page_size-20&quot; - Retrieves the first page with a page size of 20.</li> <li>&quot;current_index-1--page_size-20&quot; - Retrieves the second page with a page size of 20.</li> </ul>

Index starts at 0.

Examples of valid page token strings: <ul> <li>&quot;&quot;</li> <li>&quot;current_index-0--page_size-20&quot;</li> <li>&quot;current_index-1--page_size-20&quot;</li> <li>&quot;current_index-10--page_size-20&quot;</li> </ul>

Examples of invalid page token strings: <ul> <li>&quot;1&quot;</li> <li>&quot;current_index-0--page_size-20&quot;</li> <li>&quot;current_index--1--page_size-20&quot;</li> <li>&quot;current_index1--page_size-20&quot;</li> <li>&quot;current_index-1--page_size--20&quot;</li> </ul> |
| sort_by_field | [EntityValueSorting](#ondewo.nlu.EntityValueSorting) |  | Optional. Defines the sorting of the list. Default, no sorting. |
| search_by_pattern | [string](#string) |  | Optional. Defines a pattern to search for in the entity type &quot;values&quot; and &quot;synonyms&quot; Example: <pre><code> Pattern: &quot;dark&quot; Results: [Entity Value] [Entity Synonyms] Red red, scarlett, dark red, ... Blue blue, indico, dark blue, sky blue, ... Dark obscure, black, opaque, ... </code></pre> |






<a name="ondewo.nlu.ListEntitiesResponse"></a>

### ListEntitiesResponse
This message is a response of listing entities


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| entities | [EntityType.Entity](#ondewo.nlu.EntityType.Entity) | repeated | The list of entities |
| next_page_token | [string](#string) |  | The next_page_token is used to retrieve the next page of a returned result, e.g. next_page_token is current_index-2 |






<a name="ondewo.nlu.ListEntityTypesRequest"></a>

### ListEntityTypesRequest
The request message for <a href="index.html#ondewo.nlu.EntityTypes.ListEntityTypes">EntityTypes.ListEntityTypes</a>.


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| parent | [string](#string) |  | Required. The agent to list all entity types from. Format: <pre><code>projects/&lt;project_uuid&gt;/agent</code></pre> |
| language_code | [string](#string) |  | Optional. The language to list entity synonyms for. If not specified, the agent&apos;s default language is used. <a href="https://dialogflow.com/docs/reference/language">More than a dozen languages</a> are supported. Note: languages must be enabled in the agent, before they can be used. |
| page_token | [string](#string) |  | Optional. The next_page_token value returned from a previous list request. The page token to support pagination. Pagination allows you to retrieve a large result set in smaller, more manageable portions. The page token is a string representing the current index and page size.

Valid page token strings: <ul> <li>&quot;&quot; (empty string) - Retrieves the first page.</li> <li>&quot;current_index-0--page_size-20&quot; - Retrieves the first page with a page size of 20.</li> <li>&quot;current_index-1--page_size-20&quot; - Retrieves the second page with a page size of 20.</li> </ul>

Index starts at 0.

Examples of valid page token strings: <ul> <li>&quot;&quot;</li> <li>&quot;current_index-0--page_size-20&quot;</li> <li>&quot;current_index-1--page_size-20&quot;</li> <li>&quot;current_index-10--page_size-20&quot;</li> </ul>

Examples of invalid page token strings: <ul> <li>&quot;1&quot;</li> <li>&quot;current_index-0--page_size-20&quot;</li> <li>&quot;current_index--1--page_size-20&quot;</li> <li>&quot;current_index1--page_size-20&quot;</li> <li>&quot;current_index-1--page_size--20&quot;</li> </ul> |
| entity_type_view | [EntityTypeView](#ondewo.nlu.EntityTypeView) |  | Optional. The resource view to apply to the returned entity type. |
| filter_by_category | [EntityTypeCategory](#ondewo.nlu.EntityTypeCategory) |  | Optional. Applies a filter to the list. Default, no filter. |
| sort_by_field | [EntityTypeSorting](#ondewo.nlu.EntityTypeSorting) |  | Optional. Defines the sorting of the list. Default, no sorting. |






<a name="ondewo.nlu.ListEntityTypesResponse"></a>

### ListEntityTypesResponse
The response message for <a href="index.html#ondewo.nlu.EntityTypes.ListEntityTypes">EntityTypes.ListEntityTypes</a>.


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| entity_types | [EntityType](#ondewo.nlu.EntityType) | repeated | The list of agent entity types. There will be a maximum number of items returned based on the page_token field in the request. |
| next_page_token | [string](#string) |  | The next_page_token is used to retrieve the next page of a returned result, e.g. next_page_token is current_index-2 |






<a name="ondewo.nlu.UpdateEntityRequest"></a>

### UpdateEntityRequest
This message is a request to update an entity


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| entity | [EntityType.Entity](#ondewo.nlu.EntityType.Entity) |  | The entity to update |






<a name="ondewo.nlu.UpdateEntityTypeRequest"></a>

### UpdateEntityTypeRequest
The request message for <a href="index.html#ondewo.nlu.EntityTypes.UpdateEntityType">EntityTypes.UpdateEntityType</a>.


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| entity_type | [EntityType](#ondewo.nlu.EntityType) |  | Required. The entity type to update. Format: <pre><code>projects/&lt;project_uuid&gt;/agent/entityTypes/&lt;entity_type_uuid&gt;</code></pre> |
| language_code | [string](#string) |  | Optional. The language of entity synonyms defined in <code>entity_type</code>. If not specified, the agent&apos;s default language is used. <a href="https://dialogflow.com/docs/reference/language">More than a dozen languages</a> are supported. Note: languages must be enabled in the agent, before they can be used. |
| update_mask | [google.protobuf.FieldMask](#google.protobuf.FieldMask) |  | Optional. The mask to control which fields get updated. |
| entity_type_view | [EntityTypeView](#ondewo.nlu.EntityTypeView) |  | Optional. The resource view to apply to the returned Entity Type |





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
| ACTIVE | 0 | Entity type is active |
| INACTIVE | 1 | Entity type is inactive |



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
Represents the category of entity types to filter by in the &quot;List Entity Types&quot; request

| Name | Number | Description |
| ---- | ------ | ----------- |
| ALL_ENTITY_TYPES | 0 | represent all entity types |
| DEFAULT_ENTITY_TYPES | 1 | represent the default entity types |
| USER_DEFINED_ENTITY_TYPES | 2 | represent the user defined (custom) entity types |



<a name="ondewo.nlu.EntityTypeSorting.EntityTypeSortingField"></a>

### EntityTypeSorting.EntityTypeSortingField
Structure of Entity type sorting field

| Name | Number | Description |
| ---- | ------ | ----------- |
| NO_ENTITY_TYPE_SORTING | 0 | No sorting applied |
| SORT_ENTITY_TYPE_BY_NAME | 1 | Sort by entity type name |
| SORT_ENTITY_TYPE_BY_CREATION_DATE | 2 | Sort by creation date |
| SORT_ENTITY_TYPE_BY_LAST_UPDATED | 3 | Sort by last updated date |
| SORT_ENTITY_TYPE_BY_ENTITY_VALUE_COUNT | 4 | Sort by entity value count |
| SORT_ENTITY_TYPE_BY_SYNONYM_COUNT | 5 | Sort by synonym count |



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
| ENTITY_TYPE_VIEW_MINIMUM | 4 | Minimum view including only entity type UUID and entity type display name |



<a name="ondewo.nlu.EntityValueSorting.EntityValueSortingField"></a>

### EntityValueSorting.EntityValueSortingField
Structure of Entity value sorting field

| Name | Number | Description |
| ---- | ------ | ----------- |
| NO_ENTITY_VALUE_SORTING | 0 | Default behaviour: Sorts by value |
| SORT_ENTITY_VALUE_BY_DISPLAY_NAME | 1 | Sort by display name |
| SORT_ENTITY_VALUE_BY_VALUE | 2 | Sort by value |
| SORT_ENTITY_VALUE_BY_SYNONYM_COUNT | 3 | Sort by synonym count |


 <!-- end enums -->

 <!-- end HasExtensions -->


<a name="ondewo.nlu.EntityTypes"></a>

### EntityTypes
Entities are extracted from user input and represent parameters that are meaningful to your application. For example, a date range, a proper name such as a geographic location or landmark, and so on. Entities represent actionable data for your application.

When you define an entity, you can also include synonyms that all map to that entity. For example, &quot;soft drink&quot;, &quot;soda&quot;, &quot;pop&quot;, and so on.

There are three types of entities:

<ul>
  <li><strong>System</strong> - entities that are defined by the Dialogflow API for common data types such as date, time, currency, and so on. A system entity is represented by the <code>EntityType</code> type.</li>

  <li><strong>Developer</strong> - entities that are defined by you that represent actionable data that is meaningful to your application. For example, you could define a <code>pizza.sauce</code> entity for red or white pizza sauce, a <code>pizza.cheese</code> entity for the different types of cheese on a pizza, a <code>pizza.topping</code> entity for different toppings, and so on. A developer entity is represented by the <code>EntityType</code> type.</li>

  <li><strong>User</strong> - entities that are built for an individual user such as favorites, preferences, playlists, and so on. A user entity is represented by the <a href="index.html#ondewo.nlu.SessionEntityType">SessionEntityType</a> type.</li>
</ul>

For more information about entity types, see the <a href="https://dialogflow.com/docs/entities">Dialogflow documentation</a>.

| Method Name | Request Type | Response Type | Description |
| ----------- | ------------ | ------------- | ------------|
| ListEntityTypes | [ListEntityTypesRequest](#ondewo.nlu.ListEntityTypesRequest) | [ListEntityTypesResponse](#ondewo.nlu.ListEntityTypesResponse) | Returns the list of all entity types in the specified agent. |
| GetEntityType | [GetEntityTypeRequest](#ondewo.nlu.GetEntityTypeRequest) | [EntityType](#ondewo.nlu.EntityType) | Retrieves the specified entity type. |
| CreateEntityType | [CreateEntityTypeRequest](#ondewo.nlu.CreateEntityTypeRequest) | [EntityType](#ondewo.nlu.EntityType) | Creates an entity type in the specified agent. |
| UpdateEntityType | [UpdateEntityTypeRequest](#ondewo.nlu.UpdateEntityTypeRequest) | [EntityType](#ondewo.nlu.EntityType) | Updates the specified entity type. |
| DeleteEntityType | [DeleteEntityTypeRequest](#ondewo.nlu.DeleteEntityTypeRequest) | [.google.protobuf.Empty](#google.protobuf.Empty) | Deletes the specified entity type. |
| BatchUpdateEntityTypes | [BatchUpdateEntityTypesRequest](#ondewo.nlu.BatchUpdateEntityTypesRequest) | [Operation](#ondewo.nlu.Operation) | Updates/Creates multiple entity types in the specified agent.

Operation &lt;response: <a href="index.html#ondewo.nlu.BatchUpdateEntityTypesResponse">BatchUpdateEntityTypesResponse</a>, metadata: <a href="https://protobuf.dev/reference/protobuf/google.protobuf/#struct">google.protobuf.Struct</a>&gt; |
| BatchDeleteEntityTypes | [BatchDeleteEntityTypesRequest](#ondewo.nlu.BatchDeleteEntityTypesRequest) | [Operation](#ondewo.nlu.Operation) | Deletes entity types in the specified agent.

Operation &lt;response: <a href="https://protobuf.dev/reference/protobuf/google.protobuf/#empty">google.protobuf.Empty</a>, metadata: <a href="https://protobuf.dev/reference/protobuf/google.protobuf/#struct">google.protobuf.Struct</a>&gt; |
| GetEntity | [GetEntityRequest](#ondewo.nlu.GetEntityRequest) | [EntityType.Entity](#ondewo.nlu.EntityType.Entity) | Retrieves the specified entity . |
| CreateEntity | [CreateEntityRequest](#ondewo.nlu.CreateEntityRequest) | [EntityType.Entity](#ondewo.nlu.EntityType.Entity) | Creates an entity in the specified agent. |
| UpdateEntity | [UpdateEntityRequest](#ondewo.nlu.UpdateEntityRequest) | [EntityType.Entity](#ondewo.nlu.EntityType.Entity) | Updates the specified entity . |
| DeleteEntity | [DeleteEntityRequest](#ondewo.nlu.DeleteEntityRequest) | [DeleteEntityStatus](#ondewo.nlu.DeleteEntityStatus) | Deletes the specified entity . |
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
Request to create a batch of parameters in the specified intent


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| parameter_requests | [BatchCreateParametersRequest.CreateParameterRequest](#ondewo.nlu.BatchCreateParametersRequest.CreateParameterRequest) | repeated | List of parameters to create |






<a name="ondewo.nlu.BatchCreateParametersRequest.CreateParameterRequest"></a>

### BatchCreateParametersRequest.CreateParameterRequest
Request to create a single parameter


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| intent_name | [string](#string) |  | Required. The name of the intent for which to create a training phrase for. |
| parameter | [Intent.Parameter](#ondewo.nlu.Intent.Parameter) |  | Required. The response message. |






<a name="ondewo.nlu.BatchCreateResponseMessagesRequest"></a>

### BatchCreateResponseMessagesRequest
Request to create a list of new response messages and adds it to an intent


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| response_message_requests | [BatchCreateResponseMessagesRequest.CreateResponseMessageRequest](#ondewo.nlu.BatchCreateResponseMessagesRequest.CreateResponseMessageRequest) | repeated |  |






<a name="ondewo.nlu.BatchCreateResponseMessagesRequest.CreateResponseMessageRequest"></a>

### BatchCreateResponseMessagesRequest.CreateResponseMessageRequest
Request to create a single response message


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| intent_name | [string](#string) |  | Required. The name of the intent for which to create a response message for. |
| response_message | [Intent.Message](#ondewo.nlu.Intent.Message) |  | Required. The response message. |






<a name="ondewo.nlu.BatchCreateTrainingPhrasesRequest"></a>

### BatchCreateTrainingPhrasesRequest
This message is a request of a creation of a batch of training phrases


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| training_phrase_requests | [BatchCreateTrainingPhrasesRequest.CreateTrainingPhraseRequest](#ondewo.nlu.BatchCreateTrainingPhrasesRequest.CreateTrainingPhraseRequest) | repeated |  |






<a name="ondewo.nlu.BatchCreateTrainingPhrasesRequest.CreateTrainingPhraseRequest"></a>

### BatchCreateTrainingPhrasesRequest.CreateTrainingPhraseRequest
Request to create a single training phrase


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| intent_name | [string](#string) |  | Required. The name of the intent for which to create a training phrase for. |
| training_phrase | [Intent.TrainingPhrase](#ondewo.nlu.Intent.TrainingPhrase) |  | Required. The training phrase to create. |






<a name="ondewo.nlu.BatchDeleteIntentsRequest"></a>

### BatchDeleteIntentsRequest
The request message for <a href="index.html#ondewo.nlu.Intents.BatchDeleteIntents">Intents.BatchDeleteIntents</a>.


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| parent | [string](#string) |  | Required. The name of the agent to delete all entities types for. Format: <code>projects/&lt;project_uuid&gt;/agent</code>. |
| intents | [Intent](#ondewo.nlu.Intent) | repeated | Required. The collection of intents to delete. Only intent <code>name</code> must be filled in. |






<a name="ondewo.nlu.BatchDeleteParametersRequest"></a>

### BatchDeleteParametersRequest
Request to delete parameters specified by their names.


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| names | [string](#string) | repeated | Required. The names of the response messages. Format: <pre><code>projects/&lt;project_uuid&gt;/agent/intents/&lt;intent_uuid&gt;/parameters/&lt;parameter_uuid</code></pre> |






<a name="ondewo.nlu.BatchDeleteParametersResponse"></a>

### BatchDeleteParametersResponse
This message contains response of deleted parameters


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| delete_statuses | [BatchDeleteParametersResponse.DeleteParameterStatus](#ondewo.nlu.BatchDeleteParametersResponse.DeleteParameterStatus) | repeated |  |
| has_errors | [bool](#bool) |  |  |






<a name="ondewo.nlu.BatchDeleteParametersResponse.DeleteParameterStatus"></a>

### BatchDeleteParametersResponse.DeleteParameterStatus
Status of a parameter deletion operation


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| successfully_deleted | [google.protobuf.Empty](#google.protobuf.Empty) |  |  |
| error_message | [string](#string) |  |  |






<a name="ondewo.nlu.BatchDeleteResponseMessagesRequest"></a>

### BatchDeleteResponseMessagesRequest
Request to delete response messages specified by their names


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| names | [string](#string) | repeated | Required. The names of the response messages. Format: <pre><code>projects/&lt;project_uuid&gt;/agent/intents/&lt;intent_uuid&gt;/responseMessages/&lt;message_uuid&gt;</code></pre> |






<a name="ondewo.nlu.BatchDeleteResponseMessagesResponse"></a>

### BatchDeleteResponseMessagesResponse
Response containing list with deleted response messages


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| delete_statuses | [BatchDeleteResponseMessagesResponse.DeleteResponseMessageStatus](#ondewo.nlu.BatchDeleteResponseMessagesResponse.DeleteResponseMessageStatus) | repeated |  |
| has_errors | [bool](#bool) |  |  |






<a name="ondewo.nlu.BatchDeleteResponseMessagesResponse.DeleteResponseMessageStatus"></a>

### BatchDeleteResponseMessagesResponse.DeleteResponseMessageStatus
Status of a response message deletion operation


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| successfully_deleted | [google.protobuf.Empty](#google.protobuf.Empty) |  |  |
| error_message | [string](#string) |  |  |






<a name="ondewo.nlu.BatchDeleteTrainingPhrasesRequest"></a>

### BatchDeleteTrainingPhrasesRequest
This message is a request to delete a batch of training phrases


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| names | [string](#string) | repeated | Required. The names of the training phrases. Format: <pre><code>projects/&lt;project_uuid&gt;/agent/intents/&lt;intent_uuid&gt;/trainingPhrases/&lt;training_phrase_uuid&gt;</code></pre> |






<a name="ondewo.nlu.BatchDeleteTrainingPhrasesResponse"></a>

### BatchDeleteTrainingPhrasesResponse
This message is a response of deleting a batch of training phrases


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| delete_statuses | [BatchDeleteTrainingPhrasesResponse.DeleteTrainingPhraseStatus](#ondewo.nlu.BatchDeleteTrainingPhrasesResponse.DeleteTrainingPhraseStatus) | repeated |  |
| has_errors | [bool](#bool) |  |  |






<a name="ondewo.nlu.BatchDeleteTrainingPhrasesResponse.DeleteTrainingPhraseStatus"></a>

### BatchDeleteTrainingPhrasesResponse.DeleteTrainingPhraseStatus
Status of a training phrase deletion operation


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| successfully_deleted | [google.protobuf.Empty](#google.protobuf.Empty) |  |  |
| error_message | [string](#string) |  |  |






<a name="ondewo.nlu.BatchGetParametersRequest"></a>

### BatchGetParametersRequest
Request to get batch of parameters in a specified intent


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| names | [string](#string) | repeated | Required. The names of the response messages. Format: <pre><code>projects/&lt;project_uuid&gt;/agent/intents/&lt;intent_uuid&gt;/parameters/&lt;parameter_uuid&gt;</code></pre> |






<a name="ondewo.nlu.BatchGetResponseMessagesRequest"></a>

### BatchGetResponseMessagesRequest
Request to retrieve a response messages


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| names | [string](#string) | repeated | Required. The names of the response messages. Format: <pre><code>projects/&lt;project_uuid&gt;/agent/intents/&lt;intent_uuid&gt;/responseMessages/&lt;message_uuid&gt;</code></pre> |






<a name="ondewo.nlu.BatchGetTrainingPhrasesRequest"></a>

### BatchGetTrainingPhrasesRequest
This message is a request to get a batch training phrases


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| names | [string](#string) | repeated | Required. The names of the training phrases. Format: <pre><code>projects/&lt;project_uuid&gt;/agent/intents/&lt;intent_uuid&gt;/trainingPhrases/&lt;training_phrase_uuid&gt;</code></pre> |






<a name="ondewo.nlu.BatchParametersStatusResponse"></a>

### BatchParametersStatusResponse
Response containing a batch of parameters in the specified intent


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| parameter_statuses | [BatchParametersStatusResponse.ParameterStatus](#ondewo.nlu.BatchParametersStatusResponse.ParameterStatus) | repeated |  |
| has_errors | [bool](#bool) |  | indicates if statuses of some of the parameters have errors |






<a name="ondewo.nlu.BatchParametersStatusResponse.ParameterStatus"></a>

### BatchParametersStatusResponse.ParameterStatus
Status of a parameter operation


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| parameter | [Intent.Parameter](#ondewo.nlu.Intent.Parameter) |  |  |
| error_message | [string](#string) |  |  |






<a name="ondewo.nlu.BatchResponseMessagesStatusResponse"></a>

### BatchResponseMessagesStatusResponse
This message is a response of a batch responses of message status


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| response_message_statuses | [BatchResponseMessagesStatusResponse.ResponseMessageStatus](#ondewo.nlu.BatchResponseMessagesStatusResponse.ResponseMessageStatus) | repeated |  |
| has_errors | [bool](#bool) |  | indicates if statuses of some of the response messages have errors |






<a name="ondewo.nlu.BatchResponseMessagesStatusResponse.ResponseMessageStatus"></a>

### BatchResponseMessagesStatusResponse.ResponseMessageStatus
Status of a response message operation


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| response_message | [Intent.Message](#ondewo.nlu.Intent.Message) |  |  |
| error_message | [string](#string) |  |  |






<a name="ondewo.nlu.BatchTrainingPhrasesStatusResponse"></a>

### BatchTrainingPhrasesStatusResponse
This message is a response of the status of a batch of training phrases


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| training_phrase_statuses | [TrainingPhraseStatus](#ondewo.nlu.TrainingPhraseStatus) | repeated | A list of training phrase statuses |
| has_errors | [bool](#bool) |  | indicates if statuses of some of the training phrases have errors |






<a name="ondewo.nlu.BatchUpdateIntentsRequest"></a>

### BatchUpdateIntentsRequest
The request message for <a href="index.html#ondewo.nlu.Intents.BatchUpdateIntents">Intents.BatchUpdateIntents</a>.


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| parent | [string](#string) |  | Required. The name of the agent to update or create intents in. Format: <pre><code>projects/&lt;project_uuid&gt;/agent</code></pre> |
| intent_batch_uri | [string](#string) |  | The URI to a Google Cloud Storage file containing intents to update or create. The file format can either be a serialized proto (of IntentBatch type) or JSON object. Note: The URI must start with &quot;gs://&quot;. |
| intent_batch_inline | [IntentBatch](#ondewo.nlu.IntentBatch) |  | The collection of intents to update or create. |
| language_code | [string](#string) |  | Optional. The language of training phrases, parameters and rich messages defined in <code>intents</code>. If not specified, the agent&apos;s default language is used. <a href="https://dialogflow.com/docs/reference/language">More than a dozen languages</a> are supported. Note: languages must be enabled in the agent, before they can be used. |
| update_mask | [google.protobuf.FieldMask](#google.protobuf.FieldMask) |  | Optional. The mask to control which fields get updated. |
| intent_view | [IntentView](#ondewo.nlu.IntentView) |  | Optional. The resource view to apply to the returned intent. |






<a name="ondewo.nlu.BatchUpdateIntentsResponse"></a>

### BatchUpdateIntentsResponse
The response message for <a href="index.html#ondewo.nlu.Intents.BatchUpdateIntents">Intents.BatchUpdateIntents</a>.


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| intents | [Intent](#ondewo.nlu.Intent) | repeated | The collection of updated or created intents. |






<a name="ondewo.nlu.BatchUpdateParametersRequest"></a>

### BatchUpdateParametersRequest
Request to update parameters and adds them to an intent


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| parameters | [Intent.Parameter](#ondewo.nlu.Intent.Parameter) | repeated | The response messages to update |






<a name="ondewo.nlu.BatchUpdateResponseMessagesRequest"></a>

### BatchUpdateResponseMessagesRequest
Request to update a response message in the specified intent


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| response_messages | [Intent.Message](#ondewo.nlu.Intent.Message) | repeated | The response messages to update |






<a name="ondewo.nlu.BatchUpdateTrainingPhrasesRequest"></a>

### BatchUpdateTrainingPhrasesRequest
This message is a request to update a batch of training phrases


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| training_phrases | [Intent.TrainingPhrase](#ondewo.nlu.Intent.TrainingPhrase) | repeated | A list of training phrases |






<a name="ondewo.nlu.CreateIntentRequest"></a>

### CreateIntentRequest
The request message for <a href="index.html#ondewo.nlu.Intents.CreateIntent">Intents.CreateIntent</a>.


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| parent | [string](#string) |  | Required. The agent to create a intent for. Format: <pre><code>projects/&lt;project_uuid&gt;/agent</code></pre> |
| intent | [Intent](#ondewo.nlu.Intent) |  | Required. The intent to create. |
| language_code | [string](#string) |  | Optional. The language of training phrases, parameters and rich messages defined in <code>intent</code>. If not specified, the agent&apos;s default language is used. <a href="https://dialogflow.com/docs/reference/language">More than a dozen languages</a> are supported. Note: languages must be enabled in the agent, before they can be used. |
| intent_view | [IntentView](#ondewo.nlu.IntentView) |  | Optional. The resource view to apply to the returned intent. |






<a name="ondewo.nlu.DeleteIntentRequest"></a>

### DeleteIntentRequest
The request message for <a href="index.html#ondewo.nlu.Intents.DeleteIntent">Intents.DeleteIntent</a>.


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| name | [string](#string) |  | Required. The name of the intent to delete. Format: <pre><code>projects/&lt;project_uuid&gt;/agent/intents/&lt;intent_uuid&gt;</code></pre> |






<a name="ondewo.nlu.GetAllIntentTagsRequest"></a>

### GetAllIntentTagsRequest
This message is a request to get all intent tags


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| parent | [string](#string) |  | Required. The name of the agent to delete all entities types for. Format: <code>projects/&lt;project_uuid&gt;/agent</code>. |






<a name="ondewo.nlu.GetIntentRequest"></a>

### GetIntentRequest
The request message for <a href="index.html#ondewo.nlu.Intents.GetIntent">Intents.GetIntent</a>.


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| name | [string](#string) |  | Required. The name of the intent. Format: <pre><code>projects/&lt;project_uuid&gt;/agent/intents/&lt;intent_uuid&gt;</code></pre> |
| language_code | [string](#string) |  | Optional. The language to retrieve training phrases, parameters and rich messages for. If not specified, the agent&apos;s default language is used. <a href="https://dialogflow.com/docs/reference/language">More than a dozen languages</a> are supported. Note: languages must be enabled in the agent, before they can be used. |
| intent_view | [IntentView](#ondewo.nlu.IntentView) |  | Optional. The resource view to apply to the returned intent. |
| page_token | [string](#string) |  | The page token to support pagination. Pagination allows you to retrieve a large result set in smaller, more manageable portions. The page token is a string representing the current index and page size.

Valid page token strings: <ul> <li>&quot;&quot; (empty string) - Retrieves the first page.</li> <li>&quot;current_index-0--page_size-20&quot; - Retrieves the first page with a page size of 20.</li> <li>&quot;current_index-1--page_size-20&quot; - Retrieves the second page with a page size of 20.</li> </ul>

Index starts at 0.

Examples of valid page token strings: <ul> <li>&quot;&quot;</li> <li>&quot;current_index-0--page_size-20&quot;</li> <li>&quot;current_index-1--page_size-20&quot;</li> <li>&quot;current_index-10--page_size-20&quot;</li> </ul>

Examples of invalid page token strings: <ul> <li>&quot;1&quot;</li> <li>&quot;current_index-0--page_size-20&quot;</li> <li>&quot;current_index--1--page_size-20&quot;</li> <li>&quot;current_index1--page_size-20&quot;</li> <li>&quot;current_index-1--page_size--20&quot;</li> </ul> |






<a name="ondewo.nlu.GetIntentTagsRequest"></a>

### GetIntentTagsRequest
This message is a request to get intent tags


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| intent_name | [string](#string) |  | The path of the intent. Format: <pre><code>projects/&lt;project_uuid&gt;/agent/intents/&lt;intent_uuid&gt;</code></pre> |






<a name="ondewo.nlu.GetIntentTagsResponse"></a>

### GetIntentTagsResponse
This message is a response of getting intent tags


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| intent_tags | [string](#string) | repeated | All the distinct intent tags sorted |






<a name="ondewo.nlu.Intent"></a>

### Intent
Represents an intent.
Intents convert a number of user expressions or patterns into an action. An action is an extraction of a user command or sentence semantics.


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| name | [string](#string) |  | Required for all methods except <code>create</code> (<code>create</code> populates the name automatically. The unique identifier of this intent. Format: <pre><code>projects/&lt;project_uuid&gt;/agent/intents/&lt;intent_uuid&gt;</code></pre> |
| display_name | [string](#string) |  | Required. The name of this intent. |
| webhook_state | [Intent.WebhookState](#ondewo.nlu.Intent.WebhookState) |  | Required. Indicates whether webhooks are enabled for the intent. |
| priority | [int32](#int32) |  | Optional. The priority of this intent. Higher numbers represent higher priorities. Zero or negative numbers mean that the intent is disabled. |
| is_fallback | [bool](#bool) |  | Optional. Indicates whether this is a fallback intent. |
| ml_disabled | [bool](#bool) |  | Optional. Indicates whether Machine Learning is disabled for the intent. Note: If <code>ml_disabled</code> setting is set to true, then this intent is not taken into account during inference in <code>ML ONLY</code> match mode. Also, auto-markup in the UI is turned off. |
| input_context_names | [string](#string) | repeated | Optional. The list of context names required for this intent to be triggered. Format: <pre><code>projects/&lt;project_uuid&gt;/agent/sessions/-/contexts/&lt;context_uuid&gt;</code></pre> |
| events | [string](#string) | repeated | Optional. The collection of event names that trigger the intent. If the collection of input contexts is not empty, all of the contexts must be present in the active user session for an event to trigger this intent. |
| training_phrases | [Intent.TrainingPhrase](#ondewo.nlu.Intent.TrainingPhrase) | repeated | Optional. The collection of examples/templates that the agent is trained on. |
| action | [string](#string) |  | Optional. The name of the action associated with the intent. |
| output_contexts | [Context](#ondewo.nlu.Context) | repeated | Optional. The collection of contexts that are activated when the intent is matched. Context messages in this collection should not set the parameters field. Setting the <code>lifespan_count</code> to 0 will reset the context when the intent is matched. Format: <pre><code>projects/&lt;project_uuid&gt;/agent/sessions/-/contexts/&lt;context_uuid&gt;</code></pre> |
| reset_contexts | [bool](#bool) |  | Optional. Indicates whether to delete all contexts in the current session when this intent is matched. |
| parameters | [Intent.Parameter](#ondewo.nlu.Intent.Parameter) | repeated | Optional. The collection of parameters associated with the intent. |
| messages | [Intent.Message](#ondewo.nlu.Intent.Message) | repeated | Optional. The collection of rich messages corresponding to the <code>Response</code> field in the Dialogflow console. |
| default_response_platforms | [Intent.Message.Platform](#ondewo.nlu.Intent.Message.Platform) | repeated | Optional. The list of platforms for which the first response will be taken from among the messages assigned to the DEFAULT_PLATFORM. |
| root_followup_intent_name | [string](#string) |  | The unique identifier of the root intent in the chain of followup intents. It identifies the correct followup intents chain for this intent. Format: <pre><code>projects/&lt;project_uuid&gt;/agent/intents/&lt;intent_uuid&gt;</code></pre> |
| parent_followup_intent_name | [string](#string) |  | The unique identifier of the parent intent in the chain of followup intents. It identifies the parent followup intent. Format: <pre><code>projects/&lt;project_uuid&gt;/agent/intents/&lt;intent_uuid&gt;</code></pre> |
| followup_intent_info | [Intent.FollowupIntentInfo](#ondewo.nlu.Intent.FollowupIntentInfo) | repeated | Optional. Collection of information about all followup intents that have name of this intent as a root_name. |
| next_page_token | [string](#string) |  | The next_page_token is used to retrieve the next page of a returned result, e.g. next_page_token is current_index-2 |
| domain_name | [string](#string) |  | Optional. Domain to which the intent belongs |
| is_start_of_deviation | [bool](#bool) |  | Optional. Indicates whether the intent starts a deviation in conversation flow |
| is_end_of_deviation | [bool](#bool) |  | Optional. Indicates whether the intent ends a deviation in conversation flow |
| training_phrase_count | [int32](#int32) |  | Optional. Total count of training phrases associated to the intent. |
| status | [Intent.IntentStatus](#ondewo.nlu.Intent.IntentStatus) |  | Indicates whether the intent is active or not |
| start_date | [google.protobuf.Timestamp](#google.protobuf.Timestamp) |  | Optional. Provides information that can be used in custom scripts |
| end_date | [google.protobuf.Timestamp](#google.protobuf.Timestamp) |  | Optional. Provides information that can be used in custom scripts |
| tags | [string](#string) | repeated | Optional. Adds arbitrary &quot;categories&quot; for which one could filter the intents |
| created_at | [google.protobuf.Timestamp](#google.protobuf.Timestamp) |  | Creation date and time. Read-only field. |
| modified_at | [google.protobuf.Timestamp](#google.protobuf.Timestamp) |  | Modification date and time. Read-only field. |
| created_by | [string](#string) |  | User id in form of a valid UUID. |
| modified_by | [string](#string) |  | User id in form of a valid UUID. |






<a name="ondewo.nlu.Intent.FollowupIntentInfo"></a>

### Intent.FollowupIntentInfo
Represents a single followup intent in the chain.


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| followup_intent_name | [string](#string) |  | The unique identifier of the followup intent. Format: <pre><code>projects/&lt;project_uuid&gt;/agent/intents/&lt;intent_uuid&gt;</code></pre> |
| parent_followup_intent_name | [string](#string) |  | The unique identifier of the followup intent parent. Format: <pre><code>projects/&lt;project_uuid&gt;/agent/intents/&lt;intent_uuid&gt;</code></pre> |






<a name="ondewo.nlu.Intent.Message"></a>

### Intent.Message
Corresponds to the <code>Response</code> field in the Dialogflow console.


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| name | [string](#string) |  | Required. The name of the return message. Format: <pre><code>projects/&lt;project_uuid&gt;/agent/intents/&lt;intent_uuid&gt;/responseMessages/&lt;message_uuid&gt;</code></pre> |
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
| is_prompt | [bool](#bool) |  | Read-only. States if a returned message is a prompt or not. |
| created_at | [google.protobuf.Timestamp](#google.protobuf.Timestamp) |  | Creation date and time. Read-only field. |
| modified_at | [google.protobuf.Timestamp](#google.protobuf.Timestamp) |  | Modification date and time. Read-only field. |
| created_by | [string](#string) |  | User id in form of a valid UUID. |
| modified_by | [string](#string) |  | User id in form of a valid UUID. |






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
| text | [string](#string) |  | Note: One of the following is required: Optional. The text to show on the button. |
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
This message contains HTML text


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| text | [string](#string) | repeated | Collection of the agent&apos;s responses in HTML format |






<a name="ondewo.nlu.Intent.Message.Image"></a>

### Intent.Message.Image
The image response message.


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| image_uri | [string](#string) |  | Optional. The public URI to an image file. |
| accessibility_text | [string](#string) |  | Optional. A text description of the image to be used for accessibility, e.g., screen readers. |






<a name="ondewo.nlu.Intent.Message.LinkOutSuggestion"></a>

### Intent.Message.LinkOutSuggestion
The suggestion chip message that allows the user to jump out to the app or website associated with this agent.


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
Additional info about the select item for when it is triggered in a dialog.


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
The collection of simple response candidates. This message in <code>QueryResult.fulfillment_messages</code> and <code>WebhookResponse.fulfillment_messages</code> should contain only one <code>SimpleResponse</code>.


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| simple_responses | [Intent.Message.SimpleResponse](#ondewo.nlu.Intent.Message.SimpleResponse) | repeated | Required. The list of simple responses. |






<a name="ondewo.nlu.Intent.Message.Suggestion"></a>

### Intent.Message.Suggestion
The suggestion chip message that the user can tap to quickly post a reply to the conversation.


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
| text | [string](#string) | repeated | Optional. The collection of the agent&apos;s responses. |






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
| name | [string](#string) |  | The unique identifier of this parameter. Format: <pre><code>projects/&lt;project_uuid&gt;/agent/intents/&lt;intent_uuid&gt;/parameters/&lt;parameter_uuid&gt;</code></pre> |
| display_name | [string](#string) |  | Required. The name of the parameter. |
| value | [string](#string) |  | Optional. The definition of the parameter value. It can be: <ul> <li>a constant string,</li> <li>a parameter value defined as <code>$parameter_name</code>,</li> <li>an original parameter value defined as <code>$parameter_name.original</code>,</li> <li>a parameter value from some context defined as <code>#context_name.parameter_name</code>.</li> </ul> |
| default_value | [string](#string) |  | Optional. The default value to use when the <code>value</code> yields an empty result. Default values can be extracted from contexts by using the following syntax: <code>#context_name.parameter_name</code>. |
| entity_type_name | [string](#string) |  | Optional. The unique identifier of the entity type in format <code>projects/&lt;project_uuid&gt;/agent/entityTypes/&lt;entity_type_uuid&gt;</code> that describes values of the parameter. If the parameter is required, this must be provided. |
| entity_type_display_name | [string](#string) |  | Optional. The name of the entity type that describes values of the parameter. If the parameter is required, this must be provided. |
| mandatory | [bool](#bool) |  | Optional. Indicates whether the parameter is required. That is, whether the intent cannot be completed without collecting the parameter value. |
| prompts | [Intent.Parameter.Prompt](#ondewo.nlu.Intent.Parameter.Prompt) | repeated | Optional. The collection of prompts that the agent can present to the user in order to collect value for the parameter. |
| is_list | [bool](#bool) |  | Optional. Indicates whether the parameter represents a list of values. |
| created_at | [google.protobuf.Timestamp](#google.protobuf.Timestamp) |  | Creation date and time. Read-only field. |
| modified_at | [google.protobuf.Timestamp](#google.protobuf.Timestamp) |  | Modification date and time. Read-only field. |
| created_by | [string](#string) |  | User id in form of a valid UUID. |
| modified_by | [string](#string) |  | User id in form of a valid UUID. |






<a name="ondewo.nlu.Intent.Parameter.Prompt"></a>

### Intent.Parameter.Prompt
Represents the prompts in the parameters.


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| name | [string](#string) |  | The unique identifier of this prompt. Format: <pre><code>projects/&lt;project_uuid&gt;/agent/intents/&lt;intent_uuid&gt;/parameters/&lt;parameter_uuid&gt;/prompts/&lt;prompt_uuid&gt;</code></pre> |
| text | [string](#string) |  | Required. Text of the prompt |
| language_code | [string](#string) |  | The language of the prompts. If not specified, the default language code will be used. |
| created_at | [google.protobuf.Timestamp](#google.protobuf.Timestamp) |  | Creation date and time. Read-only field. |
| modified_at | [google.protobuf.Timestamp](#google.protobuf.Timestamp) |  | Modification date and time. Read-only field. |
| created_by | [string](#string) |  | User id in form of a valid UUID. |
| modified_by | [string](#string) |  | User id in form of a valid UUID. |






<a name="ondewo.nlu.Intent.TrainingPhrase"></a>

### Intent.TrainingPhrase
Represents an example or template that the agent is trained on.


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| name | [string](#string) |  | Required. The unique identifier of this training phrase. Format: <pre><code>projects/&lt;project_uuid&gt;/agent/intents/&lt;intent_uuid&gt;/trainingPhrases/&lt;training_phrase_uuid&gt;</code></pre> |
| type | [Intent.TrainingPhrase.Type](#ondewo.nlu.Intent.TrainingPhrase.Type) |  | Required. The type of the training phrase. |
| text | [string](#string) |  | Required. The text of the training phrase. |
| entities | [Intent.TrainingPhrase.Entity](#ondewo.nlu.Intent.TrainingPhrase.Entity) | repeated | Optional. The collection of annotated entities in the training phrase. |
| times_added_count | [int32](#int32) |  | Optional. Indicates how many times this example or template was added to the intent. Each time a developer adds an existing sample by editing an intent or training, this counter is increased. |
| language_code | [string](#string) |  | Optional. The language of the training phrase. |
| created_at | [google.protobuf.Timestamp](#google.protobuf.Timestamp) |  | Creation date and time. Read-only field. |
| modified_at | [google.protobuf.Timestamp](#google.protobuf.Timestamp) |  | Modification date and time. Read-only field. |
| created_by | [string](#string) |  | User id in form of a valid UUID. |
| modified_by | [string](#string) |  | User id in form of a valid UUID. |






<a name="ondewo.nlu.Intent.TrainingPhrase.Entity"></a>

### Intent.TrainingPhrase.Entity
Represents an entity annotation in a training phrase. The entity can be annotated on the level of
entity type only or both entity type and entity value.


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| entity_type_name | [string](#string) |  | Required. The unique entity type identifier in format <code>projects/&lt;project_uuid&gt;/agent/entityTypes/&lt;entity_type_uuid&gt;</code>. |
| entity_type_display_name | [string](#string) |  | Optional. The entity type name. |
| entity_value_name | [string](#string) |  | Optional. The unique entity value identifier in format <code>projects/&lt;project_uuid&gt;/agent/entityTypes/&lt;entity_type_uuid&gt;/entities/&lt;entity_uuid&gt;</code>. The entity value must belong to the entity type defined in entity_type_name. |
| entity_value_display_name | [string](#string) |  | Optional. The entity value name. |
| start | [int32](#int32) |  | Required. Defines a character position, where the entity starts in the training phrase text (0-indexed). |
| end | [int32](#int32) |  | Required. Defines a character position + 1, where the entity ends in the training phrase. Example: &quot;Meet you tomorrow&quot; -&gt; Entity(entity_type_display_name=&quot;sys.date&quot;, start=9, end=17) |
| parameter_name | [string](#string) |  | Optional. The unique parameter identifier in format <code>projects/&lt;project_uuid&gt;/agent/intents/&lt;intent_uuid&gt;/parameters/&lt;parameter_uuid&gt;</code> for the value extracted from the annotated part of the example. The parameter must be one of the parameters defined in the top-level intent message. Can be unset if the parameter is created in the same create/update intent request as the annotation. |
| parameter_display_name | [string](#string) |  | Optional. The parameter name. |
| created_at | [google.protobuf.Timestamp](#google.protobuf.Timestamp) |  | Creation date and time. Read-only field. |
| modified_at | [google.protobuf.Timestamp](#google.protobuf.Timestamp) |  | Modification date and time. Read-only field. |
| created_by | [string](#string) |  | User id in form of a valid UUID. |
| modified_by | [string](#string) |  | User id in form of a valid UUID. |






<a name="ondewo.nlu.IntentBatch"></a>

### IntentBatch
This message is a wrapper around a collection of intents.


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| intents | [Intent](#ondewo.nlu.Intent) | repeated | A collection of intents. |






<a name="ondewo.nlu.IntentSorting"></a>

### IntentSorting
This message contains sorting of an intent


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| sorting_field | [IntentSorting.IntentSortingField](#ondewo.nlu.IntentSorting.IntentSortingField) |  |  |
| sorting_mode | [SortingMode](#ondewo.nlu.SortingMode) |  |  |






<a name="ondewo.nlu.IntentTagRequest"></a>

### IntentTagRequest
This message is a request to get an intent tag


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| intent_name | [string](#string) |  | The path of the intent. Format: <pre><code>projects/&lt;project_uuid&gt;/agent/intents/&lt;intent_uuid&gt;</code></pre> |
| tags | [string](#string) | repeated | Intent tags for this intent to operate on |






<a name="ondewo.nlu.ListIntentsRequest"></a>

### ListIntentsRequest
The request message for <a href="index.html#ondewo.nlu.Intents.ListIntents">Intents.ListIntents</a>.


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| parent | [string](#string) |  | Required. The agent to list all intents from. Format: <pre><code>projects/&lt;project_uuid&gt;/agent</code></pre> |
| language_code | [string](#string) |  | Optional. The language to list training phrases, parameters and rich messages for. If not specified, the agent&apos;s default language is used. <a href="https://dialogflow.com/docs/reference/language">More than a dozen languages</a> are supported. Note: languages must be enabled in the agent before they can be used. |
| intent_view | [IntentView](#ondewo.nlu.IntentView) |  | Optional. The resource view to apply to the returned intent. |
| page_token | [string](#string) |  | Optional: The page token to support pagination. Pagination allows you to retrieve a large result set in smaller, more manageable portions. The page token is a string representing the current index and page size.

Valid page token strings: <ul> <li>&quot;&quot; (empty string) - Retrieves the first page.</li> <li>&quot;current_index-0--page_size-20&quot; - Retrieves the first page with a page size of 20.</li> <li>&quot;current_index-1--page_size-20&quot; - Retrieves the second page with a page size of 20.</li> </ul>

Index starts at 0.

Examples of valid page token strings: <ul> <li>&quot;&quot;</li> <li>&quot;current_index-0--page_size-20&quot;</li> <li>&quot;current_index-1--page_size-20&quot;</li> <li>&quot;current_index-10--page_size-20&quot;</li> </ul>

Examples of invalid page token strings: <ul> <li>&quot;1&quot;</li> <li>&quot;current_index-0--page_size-20&quot;</li> <li>&quot;current_index--1--page_size-20&quot;</li> <li>&quot;current_index1--page_size-20&quot;</li> <li>&quot;current_index-1--page_size--20&quot;</li> </ul> |
| filter_by_category | [IntentCategory](#ondewo.nlu.IntentCategory) |  | Optional. Applies a filter to the list. Default, no filter. |
| sort_by_field | [IntentSorting](#ondewo.nlu.IntentSorting) |  | Optional. Defines the sorting of the list. Default, no sorting. |
| filter_by_tags | [string](#string) | repeated | Optional. Applies a filter to the list by tags. Default, no filter. |






<a name="ondewo.nlu.ListIntentsResponse"></a>

### ListIntentsResponse
The response message for <a href="index.html#ondewo.nlu.Intents.ListIntents">Intents.ListIntents</a>.


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| intents | [Intent](#ondewo.nlu.Intent) | repeated | The list of agent intents. There will be a maximum number of items returned based on the page_token field in the request. |
| next_page_token | [string](#string) |  | The next_page_token is used to retrieve the next page of a returned result, e.g. next_page_token is current_index-2 |






<a name="ondewo.nlu.ListParametersRequest"></a>

### ListParametersRequest
The request message for TrainingPhraseRequest


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| intent_name | [string](#string) |  | Required. The agent to list all intents from. Format: <pre><code>projects/&lt;project_uuid&gt;/agent/intents/&lt;intent_uuid&gt;</code></pre> |
| language_code | [string](#string) |  | Optional. The language code used to filter out prompts. |
| page_token | [string](#string) |  | Optional: The page token to support pagination. Pagination allows you to retrieve a large result set in smaller, more manageable portions. The page token is a string representing the current index and page size.

Valid page token strings: <ul> <li>&quot;&quot; (empty string) - Retrieves the first page.</li> <li>&quot;current_index-0--page_size-20&quot; - Retrieves the first page with a page size of 20.</li> <li>&quot;current_index-1--page_size-20&quot; - Retrieves the second page with a page size of 20.</li> </ul>

Index starts at 0.

Examples of valid page token strings: <ul> <li>&quot;&quot;</li> <li>&quot;current_index-0--page_size-20&quot;</li> <li>&quot;current_index-1--page_size-20&quot;</li> <li>&quot;current_index-10--page_size-20&quot;</li> </ul>

Examples of invalid page token strings: <ul> <li>&quot;1&quot;</li> <li>&quot;current_index-0--page_size-20&quot;</li> <li>&quot;current_index--1--page_size-20&quot;</li> <li>&quot;current_index1--page_size-20&quot;</li> <li>&quot;current_index-1--page_size--20&quot;</li> </ul> |






<a name="ondewo.nlu.ListParametersResponse"></a>

### ListParametersResponse
The response message for ListTrainingPhrase


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| parameters | [Intent.Parameter](#ondewo.nlu.Intent.Parameter) | repeated | The list of parameters. There will be a maximum number of items returned based on the page_token field in the request. |
| next_page_token | [string](#string) |  | Token to retrieve the next page of results, or empty if there are no more results in the list. Format: <code>current_index-&lt;CURRENT_INDEX&gt;--page_size-&lt;PAGE_SIZE&gt;--sub_field-&lt;SUB_FIELD&gt;</code> where &lt;CURRENT_INDEX&gt; and &lt;PAGE_SIZE&gt; are of type int, &lt;SUB_FIELD&gt; is of type str (example: <code>parameters</code>) |






<a name="ondewo.nlu.ListResponseMessagesRequest"></a>

### ListResponseMessagesRequest
The request message for ResponseMessageRequest


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| intent_name | [string](#string) |  | Required. The agent to list all intents from. Format: <pre><code>projects/&lt;project_uuid&gt;/agent/intents/&lt;intent_uuid&gt;</code></pre> |
| language_code | [string](#string) |  | Optional. The language to list response messages, parameters and rich messages for. If not specified, the agent&apos;s default language is used. |
| page_token | [string](#string) |  | Optional: The page token to support pagination. Pagination allows you to retrieve a large result set in smaller, more manageable portions. The page token is a string representing the current index and page size.

Valid page token strings: <ul> <li>&quot;&quot; (empty string) - Retrieves the first page.</li> <li>&quot;current_index-0--page_size-20&quot; - Retrieves the first page with a page size of 20.</li> <li>&quot;current_index-1--page_size-20&quot; - Retrieves the second page with a page size of 20.</li> </ul>

Index starts at 0.

Examples of valid page token strings: <ul> <li>&quot;&quot;</li> <li>&quot;current_index-0--page_size-20&quot;</li> <li>&quot;current_index-1--page_size-20&quot;</li> <li>&quot;current_index-10--page_size-20&quot;</li> </ul>

Examples of invalid page token strings: <ul> <li>&quot;1&quot;</li> <li>&quot;current_index-0--page_size-20&quot;</li> <li>&quot;current_index--1--page_size-20&quot;</li> <li>&quot;current_index1--page_size-20&quot;</li> <li>&quot;current_index-1--page_size--20&quot;</li> </ul> |






<a name="ondewo.nlu.ListResponseMessagesResponse"></a>

### ListResponseMessagesResponse
The response message for ListResponseMessage


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| response_messages | [Intent.Message](#ondewo.nlu.Intent.Message) | repeated | The list of response messages. There will be a maximum number of items returned based on the page_token field in the request. |
| next_page_token | [string](#string) |  | Token to retrieve the next page of results, or empty if there are no more results in the list. Format: <code>current_index-&lt;CURRENT_INDEX&gt;--page_size-&lt;PAGE_SIZE&gt;--sub_field-&lt;SUB_FIELD&gt;</code> where &lt;CURRENT_INDEX&gt; and &lt;PAGE_SIZE&gt; are of type int, &lt;SUB_FIELD&gt; is of type str (example: <code>messages</code>) |






<a name="ondewo.nlu.ListTrainingPhrasesRequest"></a>

### ListTrainingPhrasesRequest
The request message for TrainingPhraseRequest


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| intent_name | [string](#string) |  | Required. The agent to list all intents from. Format: <pre><code>projects/&lt;project_uuid&gt;/agent/intents/&lt;intent_uuid&gt;</code></pre> |
| language_code | [string](#string) |  | Optional. The language to list training phrases, parameters and rich messages for. If not specified, the agent&apos;s default language is used. |
| page_token | [string](#string) |  | Optional: The page token to support pagination. Pagination allows you to retrieve a large result set in smaller, more manageable portions. The page token is a string representing the current index and page size.

Valid page token strings: <ul> <li>&quot;&quot; (empty string) - Retrieves the first page.</li> <li>&quot;current_index-0--page_size-20&quot; - Retrieves the first page with a page size of 20.</li> <li>&quot;current_index-1--page_size-20&quot; - Retrieves the second page with a page size of 20.</li> </ul>

Index starts at 0.

Examples of valid page token strings: <ul> <li>&quot;&quot;</li> <li>&quot;current_index-0--page_size-20&quot;</li> <li>&quot;current_index-1--page_size-20&quot;</li> <li>&quot;current_index-10--page_size-20&quot;</li> </ul>

Examples of invalid page token strings: <ul> <li>&quot;1&quot;</li> <li>&quot;current_index-0--page_size-20&quot;</li> <li>&quot;current_index--1--page_size-20&quot;</li> <li>&quot;current_index1--page_size-20&quot;</li> <li>&quot;current_index-1--page_size--20&quot;</li> </ul> |






<a name="ondewo.nlu.ListTrainingPhrasesResponse"></a>

### ListTrainingPhrasesResponse
The response message for ListTrainingPhrase


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| training_phrases | [Intent.TrainingPhrase](#ondewo.nlu.Intent.TrainingPhrase) | repeated | The list of training phrases. There will be a maximum number of items returned based on the page_token field in the request. |
| next_page_token | [string](#string) |  | Token to retrieve the next page of results, or empty if there are no more results in the list. Format: <code>current_index-&lt;CURRENT_INDEX&gt;--page_size-&lt;PAGE_SIZE&gt;--sub_field-&lt;SUB_FIELD&gt;</code> where &lt;CURRENT_INDEX&gt; and &lt;PAGE_SIZE&gt; are of type int, &lt;SUB_FIELD&gt; is of type str (example: <code>training_phrases</code>) |






<a name="ondewo.nlu.ListTrainingPhrasesofIntentsWithEnrichmentRequest"></a>

### ListTrainingPhrasesofIntentsWithEnrichmentRequest
The request message for TrainingPhraseRequest


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| parent | [string](#string) |  | Required. The name of the agent to delete all entities types for. Format: <code>projects/&lt;project_uuid&gt;/agent</code>. |
| language_code | [string](#string) |  | Optional. The language code used to filter out prompts. |
| intent_ids | [string](#string) | repeated | Optional. List of intent uuids to filter by. Only training phrases that have this intent uuid will be returned If not passed, returns all |
| page_token | [string](#string) |  | Optional: The page token to support pagination. Pagination allows you to retrieve a large result set in smaller, more manageable portions. The page token is a string representing the current index and page size.

Valid page token strings: <ul> <li>&quot;&quot; (empty string) - Retrieves the first page.</li> <li>&quot;current_index-0--page_size-20&quot; - Retrieves the first page with a page size of 20.</li> <li>&quot;current_index-1--page_size-20&quot; - Retrieves the second page with a page size of 20.</li> </ul>

Index starts at 0.

Examples of valid page token strings: <ul> <li>&quot;&quot;</li> <li>&quot;current_index-0--page_size-20&quot;</li> <li>&quot;current_index-1--page_size-20&quot;</li> <li>&quot;current_index-10--page_size-20&quot;</li> </ul>

Examples of invalid page token strings: <ul> <li>&quot;1&quot;</li> <li>&quot;current_index-0--page_size-20&quot;</li> <li>&quot;current_index--1--page_size-20&quot;</li> <li>&quot;current_index1--page_size-20&quot;</li> <li>&quot;current_index-1--page_size--20&quot;</li> </ul> |






<a name="ondewo.nlu.ListTrainingPhrasesofIntentsWithEnrichmentResponse"></a>

### ListTrainingPhrasesofIntentsWithEnrichmentResponse
This message contains a list of training phrases filtered by intent ids, language code and parent passed through the request


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| training_phrases | [string](#string) | repeated | List of user_says values. There will be a maximum number of items returned based on the page_token field in the request. |
| next_page_token | [string](#string) |  | Optional. The next_page_token value returned from a previous list request. Format: <code>current_index-&lt;CURRENT_INDEX&gt;--page_size-&lt;PAGE_SIZE&gt;--sub_field-&lt;SUB_FIELD&gt;</code> where &lt;CURRENT_INDEX&gt; and &lt;PAGE_SIZE&gt; are of type int, &lt;SUB_FIELD&gt; is of type str (example: <code>parameters</code>) |






<a name="ondewo.nlu.TrainingPhraseStatus"></a>

### TrainingPhraseStatus
This message containing the training phrases status


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| training_phrase | [Intent.TrainingPhrase](#ondewo.nlu.Intent.TrainingPhrase) |  |  |
| error_message | [string](#string) |  |  |






<a name="ondewo.nlu.UpdateIntentRequest"></a>

### UpdateIntentRequest
The request message for <a href="index.html#ondewo.nlu.Intents.UpdateIntent">Intents.UpdateIntent</a>.


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| intent | [Intent](#ondewo.nlu.Intent) |  | Required. The intent to update. Format: <pre><code>projects/&lt;project_uuid&gt;/agent/intents/&lt;intent_uuid&gt;</code></pre> |
| language_code | [string](#string) |  | Optional. The language of training phrases, parameters and rich messages defined in <code>intent</code>. If not specified, the agent&apos;s default language is used. <a href="https://dialogflow.com/docs/reference/language">More than a dozen languages</a> are supported. Note: languages must be enabled in the agent, before they can be used. |
| update_mask | [google.protobuf.FieldMask](#google.protobuf.FieldMask) |  | Optional. The mask to control which fields get updated. |
| intent_view | [IntentView](#ondewo.nlu.IntentView) |  | Optional. The resource view to apply to the returned intent. |





 <!-- end messages -->


<a name="ondewo.nlu.Intent.IntentStatus"></a>

### Intent.IntentStatus
Structure of status of an Intent

| Name | Number | Description |
| ---- | ------ | ----------- |
| ACTIVE | 0 | Intent is active |
| INACTIVE | 1 | Intent is inactive |



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
| ACTIONS_ON_GOOGLE | 8 | Actions on Google. When using Actions on Google, you can choose one of the specific Intent.Message types that mention support for Actions on Google, or you can use the advanced Intent.Message.payload field. The payload field provides access to AoG features not available in the specific message types. If using the Intent.Message.payload field, it should have a structure similar to the JSON message shown here. For more information, see <a href="https://developers.google.com/actions/dialogflow/webhook">Actions on Google Webhook Format</a> <pre><code>{ &quot;expectUserResponse&quot;: true, &quot;isSsml&quot;: false, &quot;noInputPrompts&quot;: [], &quot;richResponse&quot;: { &quot;items&quot;: [ { &quot;simpleResponse&quot;: { &quot;displayText&quot;: &quot;hi&quot;, &quot;textToSpeech&quot;: &quot;hello&quot; } } ], &quot;suggestions&quot;: [ { &quot;title&quot;: &quot;Say this&quot; }, { &quot;title&quot;: &quot;or this&quot; } ] }, &quot;systemIntent&quot;: { &quot;data&quot;: { &quot;@type&quot;: &quot;type.googleapis.com/google.actions.v2.OptionValueSpec&quot;, &quot;listSelect&quot;: { &quot;items&quot;: [ { &quot;optionInfo&quot;: { &quot;key&quot;: &quot;key1&quot;, &quot;synonyms&quot;: [ &quot;key one&quot; ] }, &quot;title&quot;: &quot;must not be empty, but unique&quot; }, { &quot;optionInfo&quot;: { &quot;key&quot;: &quot;key2&quot;, &quot;synonyms&quot;: [ &quot;key two&quot; ] }, &quot;title&quot;: &quot;must not be empty, but unique&quot; } ] } }, &quot;intent&quot;: &quot;actions.intent.OPTION&quot; } }</code></pre> |
| PLACEHOLDER_1 | 9 | Placeholder platform 1 |
| PLACEHOLDER_2 | 10 | Placeholder platform 2 |
| PLACEHOLDER_3 | 11 | Placeholder platform 3 |
| PLACEHOLDER_4 | 12 | Placeholder platform 4 |
| PLACEHOLDER_5 | 13 | Placeholder platform 5 |
| PLACEHOLDER_6 | 14 | Placeholder platform 6 |
| PLACEHOLDER_7 | 15 | Placeholder platform 7 |
| PLACEHOLDER_8 | 16 | Placeholder platform 8 |
| PLACEHOLDER_9 | 17 | Placeholder platform 9 |
| PLACEHOLDER_10 | 18 | Placeholder platform 10 |
| PLACEHOLDER_11 | 19 | Placeholder platform 11 |
| PLACEHOLDER_12 | 20 | Placeholder platform 12 |
| PLACEHOLDER_13 | 21 | Placeholder platform 13 |
| PLACEHOLDER_14 | 22 | Placeholder platform 14 |
| PLACEHOLDER_15 | 23 | Placeholder platform 15 |
| PLACEHOLDER_16 | 24 | Placeholder platform 16 |
| PLACEHOLDER_17 | 25 | Placeholder platform 17 |
| PLACEHOLDER_18 | 26 | Placeholder platform 18 |
| PLACEHOLDER_19 | 27 | Placeholder platform 19 |
| PLACEHOLDER_20 | 28 | Placeholder platform 20 |



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
Represents the type of intents to filter by in the &quot;List Intents&quot; request

| Name | Number | Description |
| ---- | ------ | ----------- |
| ALL_INTENTS | 0 | represent all intents |
| DEFAULT_INTENTS | 1 | represent the default intents |
| USER_DEFINED_INTENTS | 2 | represent the user defined (custom) intents |
| DATE_EXPIRED_INTENTS | 3 | represents the intents that had its end_date elapsed |
| DATE_ACTIVE_INTENTS | 4 | represents the intents that its start_date began but had not yet expired |
| DATE_UPCOMING_INTENTS | 5 | represent the intents that are still expecting its start_date to begin |



<a name="ondewo.nlu.IntentSorting.IntentSortingField"></a>

### IntentSorting.IntentSortingField
Structure of intent sorting field

| Name | Number | Description |
| ---- | ------ | ----------- |
| NO_INTENT_SORTING | 0 | No sorting applied |
| SORT_INTENT_BY_NAME | 1 | Sort by intent name |
| SORT_INTENT_BY_CREATION_DATE | 2 | Sort by creation date |
| SORT_INTENT_BY_LAST_UPDATED | 3 | Sort by last updated date |
| SORT_INTENT_BY_USERSAYS_COUNT | 4 | Sort by training phrase (user says) count |
| SORT_INTENT_BY_START_DATE | 5 | Sort by start date |
| SORT_INTENT_BY_END_DATE | 6 | Sort by end date |



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
| INTENT_VIEW_MINIMUM | 4 | Minimum view including only intent UUID and intent display name |


 <!-- end enums -->

 <!-- end HasExtensions -->


<a name="ondewo.nlu.Intents"></a>

### Intents
An intent represents a mapping between input from a user and an action to be taken by your application. When you pass user input to the <a href="index.html#ondewo.nlu.Sessions.DetectIntent">DetectIntent</a> (or <a href="index.html#ondewo.nlu.Sessions.StreamingDetectIntent">StreamingDetectIntent</a>) method, the Dialogflow API analyzes the input and searches for a matching intent. If no match is found, the Dialogflow API returns a fallback intent (<code>is_fallback</code> = true).

You can provide additional information for the Dialogflow API to use to match user input to an intent by adding the following to your intent.

<ul>
  <li><strong>Contexts</strong> - provide additional context for intent analysis. For example, if an intent is related to an object in your application that plays music, you can provide a context to determine when to match the intent if the user input is &quot;turn it off&quot;.  You can include a context that matches the intent when there is previous user input of &quot;play music&quot;, and not when there is previous user input of &quot;turn on the light&quot;.</li>

  <li><strong>Events</strong> - allow for matching an intent by using an event name instead of user input. Your application can provide an event name and related parameters to the Dialogflow API to match an intent. For example, when your application starts, you can send a welcome event with a user name parameter to the Dialogflow API to match an intent with a personalized welcome message for the user.</li>

  <li><strong>Training phrases</strong> - provide examples of user input to train the Dialogflow API agent to better match intents.</li>
</ul>

For more information about intents, see the <a href="https://dialogflow.com/docs/intents">Dialogflow documentation</a>.

| Method Name | Request Type | Response Type | Description |
| ----------- | ------------ | ------------- | ------------|
| ListIntents | [ListIntentsRequest](#ondewo.nlu.ListIntentsRequest) | [ListIntentsResponse](#ondewo.nlu.ListIntentsResponse) | Returns the list of all intents in the specified agent. |
| GetIntent | [GetIntentRequest](#ondewo.nlu.GetIntentRequest) | [Intent](#ondewo.nlu.Intent) | Retrieves the specified intent. |
| CreateIntent | [CreateIntentRequest](#ondewo.nlu.CreateIntentRequest) | [Intent](#ondewo.nlu.Intent) | Creates an intent in the specified agent. |
| UpdateIntent | [UpdateIntentRequest](#ondewo.nlu.UpdateIntentRequest) | [Intent](#ondewo.nlu.Intent) | Updates the specified intent. |
| DeleteIntent | [DeleteIntentRequest](#ondewo.nlu.DeleteIntentRequest) | [.google.protobuf.Empty](#google.protobuf.Empty) | Deletes the specified intent. |
| BatchUpdateIntents | [BatchUpdateIntentsRequest](#ondewo.nlu.BatchUpdateIntentsRequest) | [BatchUpdateIntentsResponse](#ondewo.nlu.BatchUpdateIntentsResponse) | Updates/Creates multiple intents in the specified agent.

Operation &lt;response: <a href="index.html#ondewo.nlu.BatchUpdateIntentsResponse">BatchUpdateIntentsResponse</a>&gt; |
| BatchDeleteIntents | [BatchDeleteIntentsRequest](#ondewo.nlu.BatchDeleteIntentsRequest) | [Operation](#ondewo.nlu.Operation) | Deletes intents in the specified agent. <br> Operation &lt;response: <a href="https://protobuf.dev/reference/protobuf/google.protobuf/#empty">google.protobuf.Empty</a>&gt; |
| TagIntent | [IntentTagRequest](#ondewo.nlu.IntentTagRequest) | [.google.protobuf.Empty](#google.protobuf.Empty) | Tags a specific intent with tag(s) |
| DeleteIntentTag | [IntentTagRequest](#ondewo.nlu.IntentTagRequest) | [.google.protobuf.Empty](#google.protobuf.Empty) | Deletes tag(s) for a specific intent |
| GetIntentTags | [GetIntentTagsRequest](#ondewo.nlu.GetIntentTagsRequest) | [GetIntentTagsResponse](#ondewo.nlu.GetIntentTagsResponse) | Gets all the tags for a specific intent |
| GetAllIntentTags | [GetAllIntentTagsRequest](#ondewo.nlu.GetAllIntentTagsRequest) | [GetIntentTagsResponse](#ondewo.nlu.GetIntentTagsResponse) | Gets all the tags for all the intents |
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
| ListTrainingPhrasesofIntentsWithEnrichment | [ListTrainingPhrasesofIntentsWithEnrichmentRequest](#ondewo.nlu.ListTrainingPhrasesofIntentsWithEnrichmentRequest) | [ListTrainingPhrasesofIntentsWithEnrichmentResponse](#ondewo.nlu.ListTrainingPhrasesofIntentsWithEnrichmentResponse) | List Training phrases (of a specific intent). |

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
| sub_operation_names | [string](#string) | repeated | list of the sub-operations&apos; names of the operation |
| create_time | [google.protobuf.Timestamp](#google.protobuf.Timestamp) |  | the time the operation was submitted. |
| start_time | [google.protobuf.Timestamp](#google.protobuf.Timestamp) |  | the time operation processing started. |
| end_time | [google.protobuf.Timestamp](#google.protobuf.Timestamp) |  | the time operation processing completed. |
| is_cancellation_requested | [bool](#bool) |  | indicates whether a request to cancel this operation has been made. |
| cancel_command | [string](#string) |  | command executed at cancel operation |
| user_id_created | [string](#string) |  | id of the user who created the operation |
| user_id_cancelled | [string](#string) |  | id of the user who cancelled the operation |
| project_parent | [string](#string) |  | project parent name, e.g. &quot;projects/pepper/agent&quot; |
| operation_type | [OperationMetadata.OperationType](#ondewo.nlu.OperationMetadata.OperationType) |  | operation type |
| host_name | [string](#string) |  | name of the host where the operation was executed |
| num_reruns | [int32](#int32) |  | number of times the operation was re-run |
| max_num_reruns | [int32](#int32) |  | maximum number of re-runs in case the operation fails |
| description | [string](#string) |  | description, normally needed for sub operations when type is OPERATION_TYPE_UNSPECIFIED |
| log | [string](#string) | repeated | The log output of an operation |
| log_limit | [int32](#int32) |  | The log output of an operation limited to the last x log entries |
| created_at | [google.protobuf.Timestamp](#google.protobuf.Timestamp) |  | Creation date and time. Read-only field. |
| modified_at | [google.protobuf.Timestamp](#google.protobuf.Timestamp) |  | Modification date and time. Read-only field. |
| created_by | [string](#string) |  | User id in form of a valid UUID. |
| modified_by | [string](#string) |  | User id in form of a valid UUID. |





 <!-- end messages -->


<a name="ondewo.nlu.OperationMetadata.OperationType"></a>

### OperationMetadata.OperationType
Type of operation.
It can be creating, importing, exporting, deleting, restoring, building cache, training or exporting benchmark an agent

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
| EXPORT_BENCHMARK_AGENT | 8 | export benchmark agent to a zip file |
| INDEX_AGENT | 9 | force loading agent data for full text search |



<a name="ondewo.nlu.OperationMetadata.Status"></a>

### OperationMetadata.Status
Structure to set status of operation.
An operation may not be started if NOT_STARTED is set, in progress if IN_PROGRESS, finished if DONE, interrupted if CANCELED or failed if FAILED.

| Name | Number | Description |
| ---- | ------ | ----------- |
| STATUS_UNSPECIFIED | 0 | unspecified status code |
| NOT_STARTED | 1 | operation haven&apos;t started yet |
| IN_PROGRESS | 2 | operation currently in progress |
| DONE | 3 | operation has completed without any error |
| CANCELLED | 4 | operation has completed with cancellation by user |
| FAILED | 5 | operation has completed with errors |


 <!-- end enums -->

 <!-- end HasExtensions -->

 <!-- end services -->



<a name="ondewo/nlu/operations.proto"></a>
<p align="right"><a href="#top">Top</a></p>

## ondewo/nlu/operations.proto



<a name="ondewo.nlu.CancelOperationRequest"></a>

### CancelOperationRequest
The request message for <a href="index.html#ondewo.nlu.Operations.CancelOperation">Operations.CancelOperation</a>.


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| name | [string](#string) |  | The name of the operation resource to be cancelled. |






<a name="ondewo.nlu.DeleteOperationRequest"></a>

### DeleteOperationRequest
The request message for <a href="index.html#ondewo.nlu.Operations.DeleteOperation">Operations.DeleteOperation</a>.


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| name | [string](#string) |  | The name of the operation resource to be deleted. |






<a name="ondewo.nlu.GetOperationRequest"></a>

### GetOperationRequest
The request message for <a href="index.html#ondewo.nlu.Operations.GetOperation">Operations.GetOperation</a>.


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| name | [string](#string) |  | The name of the operation resource. |
| field_mask | [google.protobuf.FieldMask](#google.protobuf.FieldMask) | optional | Optional. The mask to control which fields gets returned. |






<a name="ondewo.nlu.ListOperationsRequest"></a>

### ListOperationsRequest
The request message for <a href="index.html#ondewo.nlu.Operations.ListOperations">Operations.ListOperations</a>.


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| name | [string](#string) |  | The name of the operation collection. |
| filter | [string](#string) |  | The standard list filter. |
| page_size | [int32](#int32) |  | The standard list page size. |
| page_token | [string](#string) |  | Optional: The page token to support pagination. Pagination allows you to retrieve a large result set in smaller, more manageable portions. The page token is a string representing the current index and page size.

Valid page token strings: <ul> <li>&quot;&quot; (empty string) - Retrieves the first page.</li> <li>&quot;current_index-0--page_size-20&quot; - Retrieves the first page with a page size of 20.</li> <li>&quot;current_index-1--page_size-20&quot; - Retrieves the second page with a page size of 20.</li> </ul>

Index starts at 0.

Examples of valid page token strings: <ul> <li>&quot;&quot;</li> <li>&quot;current_index-0--page_size-20&quot;</li> <li>&quot;current_index-1--page_size-20&quot;</li> <li>&quot;current_index-10--page_size-20&quot;</li> </ul>

Examples of invalid page token strings: <ul> <li>&quot;1&quot;</li> <li>&quot;current_index-0--page_size-20&quot;</li> <li>&quot;current_index--1--page_size-20&quot;</li> <li>&quot;current_index1--page_size-20&quot;</li> <li>&quot;current_index-1--page_size--20&quot;</li> </ul> |
| operation_filter | [OperationFilter](#ondewo.nlu.OperationFilter) |  | Optional. A filter to narrow the response down to operations of interest. |
| field_mask | [google.protobuf.FieldMask](#google.protobuf.FieldMask) | optional | Optional. The mask to control which fields gets returned. |






<a name="ondewo.nlu.ListOperationsResponse"></a>

### ListOperationsResponse
The response message for <a href="index.html#ondewo.nlu.Operations.ListOperations">Operations.ListOperations</a>.


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| operations | [Operation](#ondewo.nlu.Operation) | repeated | A list of operations that matches the specified filter in the request. |
| next_page_token | [string](#string) |  | The next_page_token is used to retrieve the next page of a returned result, e.g. next_page_token is current_index-2 |






<a name="ondewo.nlu.Operation"></a>

### Operation
This resource represents a long-running operation that is the result of a network API call.


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| name | [string](#string) |  | The server-assigned name, which is only unique within the same service that originally returns it. If you use the default HTTP mapping, the <code>name</code> should have the format of <code>operations/some/unique/name</code>. |
| metadata | [OperationMetadata](#ondewo.nlu.OperationMetadata) |  | Service-specific metadata associated with the operation. It typically contains progress information and common metadata such as create time. Some services might not provide such metadata. Any method that returns a long-running operation should document the metadata type, if any. |
| done | [bool](#bool) |  | If the value is <code>false</code>, it means the operation is still in progress. If true, the operation is completed, and either <code>error</code> or <code>response</code> is available. |
| error | [google.rpc.Status](#google.rpc.Status) |  | The error result of the operation in case of failure or cancellation. |
| response | [google.protobuf.Any](#google.protobuf.Any) |  | The normal response of the operation in case of success. If the original method returns no data on success, such as <code>Delete</code>, the response is <code>google.protobuf.Empty</code>. If the original method is standard <code>Get</code>/<code>Create</code>/<code>Update</code>, the response should be the resource. For other methods, the response should have the type <code>XxxResponse</code>, where <code>Xxx</code> is the original method name. For example, if the original method name is <code>TakeSnapshot()</code>, the inferred response type is <code>TakeSnapshotResponse</code>. |






<a name="ondewo.nlu.OperationFilter"></a>

### OperationFilter
This message contains an operation filter


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| project_parents | [string](#string) | repeated | An operationFilter can be used in some requests to return only operations matching certain filter conditions.

All fields below are optional. Multiple fields specified at the same time are chained via OR. Match operations with any of the following project parents. |
| statuses | [OperationMetadata.Status](#ondewo.nlu.OperationMetadata.Status) | repeated | Match operation which had any of the following operation statuses. |
| types | [OperationMetadata.OperationType](#ondewo.nlu.OperationMetadata.OperationType) | repeated | Match operation which had any of the following operation types. |
| start_time | [google.protobuf.Timestamp](#google.protobuf.Timestamp) |  | The time operation processing started. |
| end_time | [google.protobuf.Timestamp](#google.protobuf.Timestamp) |  | The time operation processing completed. |
| user_ids | [string](#string) | repeated | Match operation which had any of the following user_ids. |





 <!-- end messages -->

 <!-- end enums -->

 <!-- end HasExtensions -->


<a name="ondewo.nlu.Operations"></a>

### Operations
Manages long-running operations with an API service.

When an API method normally takes long time to complete, it can be designed to return <a href="index.html#ondewo.nlu.Operation">Operation</a> to the client, and the client can use this interface to receive the real response asynchronously by polling the operation resource, or pass the operation resource to another API (such as Google Cloud Pub/Sub API) to receive the response.  Any API service that returns long-running operations should implement the <code>Operations</code> interface so developers can have a consistent client experience.

| Method Name | Request Type | Response Type | Description |
| ----------- | ------------ | ------------- | ------------|
| ListOperations | [ListOperationsRequest](#ondewo.nlu.ListOperationsRequest) | [ListOperationsResponse](#ondewo.nlu.ListOperationsResponse) | Lists operations that match the specified filter in the request. If the server doesn&apos;t support this method, it returns <code>UNIMPLEMENTED</code>. <br> NOTE: the <code>name</code> binding below allows API services to override the binding to use different resource name schemes, such as <code>users/*/operations</code>. |
| GetOperation | [GetOperationRequest](#ondewo.nlu.GetOperationRequest) | [Operation](#ondewo.nlu.Operation) | Gets the latest state of a long-running operation. Clients can use this method to poll the operation result at intervals as recommended by the API service. |
| DeleteOperation | [DeleteOperationRequest](#ondewo.nlu.DeleteOperationRequest) | [.google.protobuf.Empty](#google.protobuf.Empty) | Deletes a long-running operation. This method indicates that the client is no longer interested in the operation result. It does not cancel the operation. If the server doesn&apos;t support this method, it returns <code>google.rpc.Code.UNIMPLEMENTED</code> |
| CancelOperation | [CancelOperationRequest](#ondewo.nlu.CancelOperationRequest) | [.google.protobuf.Empty](#google.protobuf.Empty) | Starts asynchronous cancellation on a long-running operation. The server makes a best effort to cancel the operation, but success is not guaranteed. If the server doesn&apos;t support this method, it returns <code>google.rpc.Code.UNIMPLEMENTED</code>. Clients can use <a href="index.html#ondewo.nlu.Operations.GetOperation">Operations.GetOperation</a> or other methods to verify whether the cancellation succeeded or whether the operation completed despite cancellation. On successful cancellation, the operation is not deleted; instead, it becomes an operation with an <a href="index.html#ondewo.nlu.Operation">Operation.error</a> value with a <a href="https://developers.google.com/actions-center/reference/grpc-api/status_codes">google.rpc.Status.code</a> of 1, corresponding to <code>Code.CANCELLED</code>. |

 <!-- end services -->



<a name="ondewo/nlu/project_role.proto"></a>
<p align="right"><a href="#top">Top</a></p>

## ondewo/nlu/project_role.proto



<a name="ondewo.nlu.CreateProjectRoleRequest"></a>

### CreateProjectRoleRequest
This message is a request to create project role


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| parent | [string](#string) |  | Required. The project that the agent to fetch is associated with. Format: <pre><code>projects/&lt;project_uuid&gt;/agents</code></pre> |
| role | [ProjectRole](#ondewo.nlu.ProjectRole) |  | If the role_id is not provided, an incremental value will be assigned The &quot;name&quot; and &quot;role_type&quot; are mandatory values The permissions all default to False if not provided specifically |
| project_role_view | [ProjectRoleView](#ondewo.nlu.ProjectRoleView) |  | Optional. specify the view of the created project role, PROJECT_ROLE_VIEW_FULL by default |






<a name="ondewo.nlu.DeleteProjectRoleRequest"></a>

### DeleteProjectRoleRequest
This message is a request to delete project role


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| parent | [string](#string) |  | Required. The project that the agent to fetch is associated with. Format: <pre><code>projects/&lt;project_uuid&gt;/agents</code></pre> |
| role_id | [uint32](#uint32) |  | role is identified by role id, if empty will throw an error in the backend |






<a name="ondewo.nlu.GetProjectRoleRequest"></a>

### GetProjectRoleRequest
This message is a request to get project role


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| parent | [string](#string) |  | Required. The project that the agent to fetch is associated with. Format: <pre><code>projects/&lt;project_uuid&gt;/agents</code></pre> |
| role_id | [uint32](#uint32) |  | role is identified by role id |
| role_name | [string](#string) |  | role can also be uniquely identified by its name |
| project_role_view | [ProjectRoleView](#ondewo.nlu.ProjectRoleView) |  | Optional. specify the view of the project role, PROJECT_ROLE_VIEW_FULL by default |
| field_mask | [google.protobuf.FieldMask](#google.protobuf.FieldMask) | optional | Optional. The mask to control which fields gets returned. |






<a name="ondewo.nlu.ListProjectRolesRequest"></a>

### ListProjectRolesRequest
This message is a request to list project role


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| parent | [string](#string) |  | Required. The project that the agent to fetch is associated with. Format: <pre><code>projects/&lt;project_uuid&gt;/agents</code></pre> |
| page_token | [string](#string) |  | Optional: The page token to support pagination. Pagination allows you to retrieve a large result set in smaller, more manageable portions. The page token is a string representing the current index and page size.

Valid page token strings: <ul> <li>&quot;&quot; (empty string) - Retrieves the first page.</li> <li>&quot;current_index-0--page_size-20&quot; - Retrieves the first page with a page size of 20.</li> <li>&quot;current_index-1--page_size-20&quot; - Retrieves the second page with a page size of 20.</li> </ul>

Index starts at 0.

Examples of valid page token strings: <ul> <li>&quot;&quot;</li> <li>&quot;current_index-0--page_size-20&quot;</li> <li>&quot;current_index-1--page_size-20&quot;</li> <li>&quot;current_index-10--page_size-20&quot;</li> </ul>

Examples of invalid page token strings: <ul> <li>&quot;1&quot;</li> <li>&quot;current_index-0--page_size-20&quot;</li> <li>&quot;current_index--1--page_size-20&quot;</li> <li>&quot;current_index1--page_size-20&quot;</li> <li>&quot;current_index-1--page_size--20&quot;</li> </ul> |
| project_role_view | [ProjectRoleView](#ondewo.nlu.ProjectRoleView) |  | Optional. specify the view of the project roles, PROJECT_ROLE_VIEW_FULL by default |
| field_mask | [google.protobuf.FieldMask](#google.protobuf.FieldMask) | optional | Optional. The mask to control which fields gets returned. |






<a name="ondewo.nlu.ListProjectRolesResponse"></a>

### ListProjectRolesResponse
This message is a response of listing project role


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| project_roles | [ProjectRole](#ondewo.nlu.ProjectRole) | repeated | The list of project roles. There will be a maximum number of items returned based on the page_token field in the request. |
| next_page_token | [string](#string) |  | The next_page_token is used to retrieve the next page of a returned result, e.g. next_page_token is current_index-2 |






<a name="ondewo.nlu.ProjectRole"></a>

### ProjectRole
Project Role messages


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| role_id | [uint32](#uint32) |  | unique identifier of the role |
| name | [string](#string) |  | unique name of the role |
| permissions | [string](#string) | repeated | defines the permissions for the given role (the strings can be gotten from the ListProjectPermissions) |
| created_at | [google.protobuf.Timestamp](#google.protobuf.Timestamp) |  | Creation date and time. Read-only field. |
| modified_at | [google.protobuf.Timestamp](#google.protobuf.Timestamp) |  | Modification date and time. Read-only field. |
| created_by | [string](#string) |  | User id in form of a valid UUID. |
| modified_by | [string](#string) |  | User id in form of a valid UUID. |






<a name="ondewo.nlu.UpdateProjectRoleRequest"></a>

### UpdateProjectRoleRequest
This message is a request to update project role


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| parent | [string](#string) |  | Required. The project that the agent to fetch is associated with. Format: <pre><code>projects/&lt;project_uuid&gt;/agents</code></pre> |
| role | [ProjectRole](#ondewo.nlu.ProjectRole) |  | role_id in the Role message should be given, if empty will throw an error in the backend other fields in the Role are optional. Only the fields to be updated should be provided |
| update_mask | [google.protobuf.FieldMask](#google.protobuf.FieldMask) |  | Optional. The mask to control which fields get updated. |
| project_role_view | [ProjectRoleView](#ondewo.nlu.ProjectRoleView) |  | Optional. specify the view of the updated project role, PROJECT_ROLE_VIEW_FULL by default |





 <!-- end messages -->


<a name="ondewo.nlu.DefaultProjectRole"></a>

### DefaultProjectRole
Structure of project role

| Name | Number | Description |
| ---- | ------ | ----------- |
| PROJECT_UNSPECIFIED | 0 | These roles have permissions valid only on a specific project unspecified, default value depends on endpoint |
| PROJECT_USER | 1 | read-only access |
| PROJECT_EXECUTOR | 2 | permissions of PROJECT_USER + execution rights (detect intent, extract entities, train, etc) |
| PROJECT_DEVELOPER | 3 | permissions of PROJECT_EXECUTOR + CRUD rights |
| PROJECT_ADMIN | 4 | this role can do everything. The creator of a project is set automatically as PROJECT_ADMIN of it. |
| PROJECT_INACTIVE | 5 | This role can do nothing. Used to set a user as inactive inside a project |



<a name="ondewo.nlu.ProjectRoleView"></a>

### ProjectRoleView
Structure of project role view

| Name | Number | Description |
| ---- | ------ | ----------- |
| PROJECT_ROLE_VIEW_UNSPECIFIED | 0 | The view depends on the endpoint: <ul> <li>CreateProjectRole: FULL</li> <li>GetProjectRole: FULL</li> <li>UpdateProjectRole: FULL</li> <li>ListProjectRoles: FULL</li> </ul> |
| PROJECT_ROLE_VIEW_SHALLOW | 1 | only role ID and name fields are populated |
| PROJECT_ROLE_VIEW_FULL | 2 | all fields including permissions are populated |


 <!-- end enums -->

 <!-- end HasExtensions -->


<a name="ondewo.nlu.ProjectRoles"></a>

### ProjectRoles
Project roles

| Method Name | Request Type | Response Type | Description |
| ----------- | ------------ | ------------- | ------------|
| CreateProjectRole | [CreateProjectRoleRequest](#ondewo.nlu.CreateProjectRoleRequest) | [ProjectRole](#ondewo.nlu.ProjectRole) | Creates a project role by creating the knowledge base master |
| GetProjectRole | [GetProjectRoleRequest](#ondewo.nlu.GetProjectRoleRequest) | [ProjectRole](#ondewo.nlu.ProjectRole) | Creates a project role by getting the knowledge base master |
| DeleteProjectRole | [DeleteProjectRoleRequest](#ondewo.nlu.DeleteProjectRoleRequest) | [.google.protobuf.Empty](#google.protobuf.Empty) | Deletes project role |
| UpdateProjectRole | [UpdateProjectRoleRequest](#ondewo.nlu.UpdateProjectRoleRequest) | [ProjectRole](#ondewo.nlu.ProjectRole) | Updates project role |
| ListProjectRoles | [ListProjectRolesRequest](#ondewo.nlu.ListProjectRolesRequest) | [ListProjectRolesResponse](#ondewo.nlu.ListProjectRolesResponse) | List project roles |

 <!-- end services -->



<a name="ondewo/nlu/project_statistics.proto"></a>
<p align="right"><a href="#top">Top</a></p>

## ondewo/nlu/project_statistics.proto



<a name="ondewo.nlu.GetEntityTypeCountRequest"></a>

### GetEntityTypeCountRequest
Request to get entity type count


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| parent | [string](#string) |  | Required. The project that the agent to fetch is associated with. Format: <pre><code>projects/&lt;project_uuid&gt;/agents</code></pre> |
| filter_by_category | [EntityTypeCategory](#ondewo.nlu.EntityTypeCategory) |  | Optional. Applies a filter to the list to be counted. Default, no filter. |






<a name="ondewo.nlu.GetIntentCountRequest"></a>

### GetIntentCountRequest
Request to get the intent count


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| parent | [string](#string) |  | Required. The project that the agent to fetch is associated with. Format: <pre><code>projects/&lt;project_uuid&gt;/agents</code></pre> |
| filter_by_category | [IntentCategory](#ondewo.nlu.IntentCategory) |  | Optional. Applies a filter to the list to be counted. Default, no filter. |






<a name="ondewo.nlu.GetProjectElementStatRequest"></a>

### GetProjectElementStatRequest
Request to get project element statistics


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| name | [string](#string) |  | Required. The name/path of the concept to get the statistic from. Example: <ul> <li><code>projects/&lt;project_uuid&gt;/agent/intents/&lt;intent_uuid&gt;</code></li> <li><code>projects/&lt;project_uuid&gt;/agent/entityTypes/&lt;entity_type_uuid&gt;</code></li> <li><code>projects/&lt;project_uuid&gt;/agent/entityTypes/&lt;entity_type_uuid&gt;/entityValues/&lt;entity_value_uuid&gt;</code></li> </ul> |
| language_code | [string](#string) |  | Language code |






<a name="ondewo.nlu.GetProjectStatRequest"></a>

### GetProjectStatRequest
Request to get project statistics


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| parent | [string](#string) |  | Required. The project that the agent to fetch is associated with. Format: <pre><code>projects/&lt;project_uuid&gt;/agents</code></pre> |





 <!-- end messages -->

 <!-- end enums -->

 <!-- end HasExtensions -->


<a name="ondewo.nlu.ProjectStatistics"></a>

### ProjectStatistics
Project Root Statistics

| Method Name | Request Type | Response Type | Description |
| ----------- | ------------ | ------------- | ------------|
| GetIntentCount | [GetIntentCountRequest](#ondewo.nlu.GetIntentCountRequest) | [StatResponse](#ondewo.nlu.StatResponse) | Returns the intent count within a project |
| GetEntityTypeCount | [GetEntityTypeCountRequest](#ondewo.nlu.GetEntityTypeCountRequest) | [StatResponse](#ondewo.nlu.StatResponse) | Returns the entity types count within a project |
| GetUserCount | [GetProjectStatRequest](#ondewo.nlu.GetProjectStatRequest) | [StatResponse](#ondewo.nlu.StatResponse) | Returns the users count within a project |
| GetSessionCount | [GetProjectStatRequest](#ondewo.nlu.GetProjectStatRequest) | [StatResponse](#ondewo.nlu.StatResponse) | Returns the sessions count within a project |
| GetTrainingPhraseCount | [GetProjectElementStatRequest](#ondewo.nlu.GetProjectElementStatRequest) | [StatResponse](#ondewo.nlu.StatResponse) | Returns the training phrases count within a project |
| GetResponseCount | [GetProjectElementStatRequest](#ondewo.nlu.GetProjectElementStatRequest) | [StatResponse](#ondewo.nlu.StatResponse) | Returns the responses count within a project |
| GetEntityValueCount | [GetProjectElementStatRequest](#ondewo.nlu.GetProjectElementStatRequest) | [StatResponse](#ondewo.nlu.StatResponse) | Returns the entity value count within a project |
| GetEntitySynonymCount | [GetProjectElementStatRequest](#ondewo.nlu.GetProjectElementStatRequest) | [StatResponse](#ondewo.nlu.StatResponse) | Returns the entity synonyms count within a project |

 <!-- end services -->



<a name="ondewo/nlu/rag.proto"></a>
<p align="right"><a href="#top">Top</a></p>

## ondewo/nlu/rag.proto
File-level comment for <code>ondewo/nlu/rags.proto</code>.
This file contains a single service <a href="index.html#ondewo.nlu.Rags">Rags</a>. The Rags service provides integration with RAGFlow for Retrieval-Augmented Generation (RAG), including dataset management, document processing, chunk retrieval, conversational AI with chat and agent assistants, and file management. Key message types include <a href="index.html#ondewo.nlu.RagDataset">RagDataset</a>, <a href="index.html#ondewo.nlu.RagChat">RagChat</a>, and <a href="index.html#ondewo.nlu.RagAgent">RagAgent</a>.


<a name="ondewo.nlu.RagAddChunkRequest"></a>

### RagAddChunkRequest
Request message for manually adding a chunk to a document.<br>
The chunk content is automatically tokenized and embeddings are generated.


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| parent | [string](#string) |  | Required. The agent to add the chunk for. Format: <pre><code>projects/&lt;project_uuid&gt;/agent</code></pre> |
| dataset_id | [string](#string) |  | Required. Dataset ID containing the document. |
| document_id | [string](#string) |  | Required. Document ID to add the chunk to. |
| content | [string](#string) |  | Required. Chunk text content. |
| important_keywords | [string](#string) | repeated | Optional. Important keywords to associate with this chunk. |
| questions | [string](#string) | repeated | Optional. Associated questions for this chunk (useful for Q&amp;A-style retrieval). |
| additional_fields | [google.protobuf.Struct](#google.protobuf.Struct) |  | Optional. Additional fields to pass through to RAGFlow. |






<a name="ondewo.nlu.RagAddChunkResponse"></a>

### RagAddChunkResponse
Response message for adding a chunk.


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| chunk | [RagChunk](#ondewo.nlu.RagChunk) |  | The newly created chunk. |






<a name="ondewo.nlu.RagAgent"></a>

### RagAgent
RAGFlow agent (workflow-based AI assistant).
Agents are workflow-based AI assistants configured using Domain Specific Language (DSL).


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| id | [string](#string) |  | Agent UUID uniquely identifying this agent. |
| title | [string](#string) |  | Agent title. Must be unique within the project. |
| description | [string](#string) |  | Optional. Agent description providing details about the agent's purpose and functionality. |
| avatar | [string](#string) |  | Optional. Base64-encoded avatar image for visual identification. |
| dsl | [google.protobuf.Struct](#google.protobuf.Struct) |  | Domain Specific Language (DSL) configuration defining the agent's workflow, logic, and behavior. The DSL structure determines how the agent processes requests and generates responses. |
| create_time | [int64](#int64) |  | Creation timestamp (Unix timestamp in milliseconds). |
| create_date | [string](#string) |  | Creation date in ISO 8601 datetime format. |
| update_time | [int64](#int64) |  | Last update timestamp (Unix timestamp in milliseconds). |
| update_date | [string](#string) |  | Last update date in ISO 8601 datetime format. |
| user_id | [string](#string) |  | User ID of the agent owner. |
| canvas_type | [string](#string) |  | Canvas type for the agent's workflow visualization. |
| additional_fields | [google.protobuf.Struct](#google.protobuf.Struct) |  | Additional fields returned by RAGFlow API. |






<a name="ondewo.nlu.RagAgentCompletionData"></a>

### RagAgentCompletionData
Data payload in agent completion response.


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| content | [string](#string) |  | Response text content. Incremental for streaming mode, complete for non-streaming mode. |
| inputs | [google.protobuf.Struct](#google.protobuf.Struct) |  | Input data that was passed to the agent workflow. |
| outputs | [google.protobuf.Struct](#google.protobuf.Struct) |  | Output data produced by the agent workflow. Structure depends on the agent's DSL configuration. |
| reference | [google.protobuf.Struct](#google.protobuf.Struct) |  | Source references including document chunks used to generate the response. |
| additional_fields | [google.protobuf.Struct](#google.protobuf.Struct) |  | Additional fields returned by RAGFlow API. |






<a name="ondewo.nlu.RagAgentCompletionRequest"></a>

### RagAgentCompletionRequest
Request message for generating an agent completion.
Agents are workflow-based AI assistants with Domain Specific Language (DSL) configuration.


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| parent | [string](#string) |  | Required. The agent to generate the completion for. Format: <pre><code>projects/&lt;project_uuid&gt;/agent</code></pre> |
| agent_id | [string](#string) |  | Required. RAGFlow agent ID to use for generating the completion. |
| session_id | [string](#string) |  | Optional. Session ID to continue an existing conversation. If not provided, a new session will be created. |
| question | [string](#string) |  | Required. User question or message to send to the agent. |
| stream | [bool](#bool) | optional | Optional. Enable streaming mode. If <code>true</code>, the response will be streamed as Server-Sent Events (SSE). Default: <code>true</code>. |
| files | [RagFile](#ondewo.nlu.RagFile) | repeated | Optional. Files to include in the agent's context for processing. |
| inputs | [google.protobuf.Struct](#google.protobuf.Struct) |  | Optional. Input form data to pass to the agent workflow. The structure depends on the agent's DSL configuration. |
| user_id | [string](#string) |  | Optional. User identifier for tracking and personalization. |
| additional_fields | [google.protobuf.Struct](#google.protobuf.Struct) |  | Optional. Additional fields to pass through to RAGFlow API. |






<a name="ondewo.nlu.RagAgentCompletionResponse"></a>

### RagAgentCompletionResponse
Response message for agent completion.
<ul>
    <li>For streaming: Each message represents one Server-Sent Event with <code>event</code> indicating the event type (e.g., <code>"message"</code>, <code>"message_end"</code>).</li>
    <li>For non-streaming: Single message with accumulated content.</li>
</ul>


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| event | [RagAgentEventType](#ondewo.nlu.RagAgentEventType) |  | Event type indicating the kind of event in the stream. |
| message_id | [string](#string) |  | Message ID uniquely identifying this response. |
| created_at | [int64](#int64) |  | Creation timestamp (Unix timestamp in milliseconds). |
| task_id | [string](#string) |  | Task ID associated with this agent workflow execution. |
| data | [RagAgentCompletionData](#ondewo.nlu.RagAgentCompletionData) |  | Event data payload containing the actual response content. |
| session_id | [string](#string) |  | Session ID for the conversation. |
| additional_fields | [google.protobuf.Struct](#google.protobuf.Struct) |  | Additional fields returned by RAGFlow API. |






<a name="ondewo.nlu.RagAgentList"></a>

### RagAgentList
Response message containing a list of RAGFlow agents.


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| agents | [RagAgent](#ondewo.nlu.RagAgent) | repeated | List of RAGFlow agents owned by the user. Note: No pagination metadata is included in this response. |






<a name="ondewo.nlu.RagAgentSession"></a>

### RagAgentSession
Agent session containing conversation history for an agent workflow.


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| id | [string](#string) |  | Session UUID. |
| agent_id | [string](#string) |  | RAGFlow agent UUID. |
| user_id | [string](#string) |  | User identifier. |
| message | [RagMessage](#ondewo.nlu.RagMessage) | repeated | Message history in chronological order. |
| source | [string](#string) |  | Session source. |
| dsl | [google.protobuf.Struct](#google.protobuf.Struct) |  | Agent DSL (Domain Specific Language) workflow configuration. |
| create_time | [int64](#int64) |  | Creation timestamp (Unix timestamp in milliseconds). |
| create_date | [string](#string) |  | Creation date (ISO 8601 datetime). |
| update_time | [int64](#int64) |  | Last update timestamp (Unix timestamp in milliseconds). |
| update_date | [string](#string) |  | Last update date (ISO 8601 datetime). |
| additional_fields | [google.protobuf.Struct](#google.protobuf.Struct) |  | Additional fields returned by RAGFlow. |






<a name="ondewo.nlu.RagAgentSessionList"></a>

### RagAgentSessionList
Response message for listing agent sessions.


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| agent_sessions | [RagAgentSession](#ondewo.nlu.RagAgentSession) | repeated | List of agent sessions (no pagination metadata included). |






<a name="ondewo.nlu.RagAgentbotCompletionRequest"></a>

### RagAgentbotCompletionRequest
Request message for generating completions using a RAGFlow agent.
Agents are workflow-based systems that can combine multiple operations and tools.
Corresponds to RAGFlow&apos;s <code>POST /api/v1/agents/{agent_id}/completions</code> endpoint.


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| parent | [string](#string) |  | Required. The agent to generate agentbot completion for. Format: <pre><code>projects/&lt;project_uuid&gt;/agent</code></pre> |
| agent_id | [string](#string) |  | Required. RAGFlow agent ID identifying the specific agent configuration. Agents support workflow-based processing with multiple steps. |
| question | [string](#string) |  | Required. User question or input to be processed by the agent. |
| stream | [bool](#bool) | optional | Optional. Enable streaming responses for real-time interaction. Default: true. When enabled, response chunks are sent incrementally. |
| session_id | [string](#string) |  | Optional. Session ID for maintaining conversation context across multiple turns. Agents maintain session state for multi-turn interactions. |
| additional_fields | [google.protobuf.Struct](#google.protobuf.Struct) |  | Optional. Additional fields to pass through to RAGFlow. |






<a name="ondewo.nlu.RagAgentbotInputsRequest"></a>

### RagAgentbotInputsRequest
Request message for retrieving agent input configuration.
Returns the form configuration and initialization data for an agent.


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| parent | [string](#string) |  | Required. The agent to get agentbot input configuration for. Format: <pre><code>projects/&lt;project_uuid&gt;/agent</code></pre> |
| agent_id | [string](#string) |  | Required. RAGFlow agent ID to retrieve input configuration for. |






<a name="ondewo.nlu.RagAgentbotInputsResponse"></a>

### RagAgentbotInputsResponse
Response message containing agent input configuration and display information.


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| title | [string](#string) |  | Agent display name for UI presentation. |
| avatar | [string](#string) |  | Base64-encoded avatar image or URL for the agent. |
| inputs | [google.protobuf.Struct](#google.protobuf.Struct) | repeated | Input form field configurations extracted from the "begin" component in agent DSL. Each struct defines form fields that users must provide before starting interaction. |
| prologue | [string](#string) |  | Opening greeting message displayed when starting a new agent session. |
| mode | [string](#string) |  | Agent operational mode. |






<a name="ondewo.nlu.RagAskRequest"></a>

### RagAskRequest
Request message for asking a question using RAGFlow&apos;s basic QA endpoint.
This endpoint searches specified datasets and returns an answer.


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| parent | [string](#string) |  | Required. The agent to ask the question for. Format: <pre><code>projects/&lt;project_uuid&gt;/agent</code></pre> |
| question | [string](#string) |  | Required. User question to be answered. |
| dataset_ids | [string](#string) | repeated | Required. List of dataset IDs to search for relevant information. The system will search across all specified datasets. |
| additional_fields | [google.protobuf.Struct](#google.protobuf.Struct) |  | Optional. Additional fields to pass through to RAGFlow. |






<a name="ondewo.nlu.RagAskResponse"></a>

### RagAskResponse
Response message containing the answer to a user's question.


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| answer | [string](#string) |  | Generated answer text based on the retrieved information. When streaming is enabled, this field contains incremental text chunks. |
| reference | [google.protobuf.Struct](#google.protobuf.Struct) |  | Source references and citations for the generated answer. Typically includes chunk information, document titles, and similarity scores. |
| additional_fields | [google.protobuf.Struct](#google.protobuf.Struct) |  | Optional. Additional fields returned by RAGFlow. |






<a name="ondewo.nlu.RagChat"></a>

### RagChat
Chat assistant configuration.


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| id | [string](#string) |  | Chat UUID. |
| name | [string](#string) |  | Chat name (required, unique). |
| description | [string](#string) |  | Optional description. |
| avatar | [string](#string) |  | Base64-encoded avatar image. |
| dataset_ids | [string](#string) | repeated | Dataset IDs (used for requests). |
| datasets | [RagDataset](#ondewo.nlu.RagDataset) | repeated | Full dataset objects (used for list responses). |
| llm | [RagLLMSetting](#ondewo.nlu.RagLLMSetting) |  | LLM configuration. |
| prompt | [RagPromptConfig](#ondewo.nlu.RagPromptConfig) |  | Prompt and retrieval configuration. |
| create_time | [int64](#int64) |  | Creation timestamp (Unix timestamp in milliseconds). |
| create_date | [string](#string) |  | Creation date (ISO 8601 datetime). |
| update_time | [int64](#int64) |  | Last update timestamp (Unix timestamp in milliseconds). |
| update_date | [string](#string) |  | Last update date (ISO 8601 datetime). |
| do_refer | [string](#string) |  | Whether to insert reference index into answer. <code>"1"</code> yes, <code>"0"</code> no |
| language | [string](#string) |  | Lanugage of the chat |
| prompt_type | [string](#string) |  | Prompt type. Either <code>"simple"</code> or <code>"advanced"</code> |
| status | [string](#string) |  | Validation status indicating if chat is enabled (<code>&quot;1&quot;</code>=valid/enabled, <code>&quot;0&quot;</code>=invalid/disabled). |
| tenant_id | [string](#string) |  | Tenant ID. |
| top_k | [int32](#int32) |  | Top K setting for retrieval. |
| additional_fields | [google.protobuf.Struct](#google.protobuf.Struct) |  | Additional fields returned by RAGFlow. |






<a name="ondewo.nlu.RagChatCompletionRequest"></a>

### RagChatCompletionRequest
Request message for generating a chat completion.


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| parent | [string](#string) |  | Required. The agent to generate the chat completion for. Format: <pre><code>projects/&lt;project_uuid&gt;/agent</code></pre> |
| chat_id | [string](#string) |  | Required. Chat assistant ID to use for generating the completion. |
| session_id | [string](#string) |  | Optional. Session ID to continue an existing conversation. If not provided, a new session will be created. |
| question | [string](#string) |  | Required. User question or message to send to the chat assistant. |
| stream | [bool](#bool) | optional | Optional. Enable streaming mode. If <code>true</code>, the response will be streamed as Server-Sent Events (SSE). Default: <code>true</code>. |
| additional_fields | [google.protobuf.Struct](#google.protobuf.Struct) |  | Optional. Additional fields to pass through to RAGFlow API. |






<a name="ondewo.nlu.RagChatCompletionResponse"></a>

### RagChatCompletionResponse
Response message for chat completion.
<ul>
    <li>For streaming: Each message represents one Server-Sent Event's data field with incremental content.</li>
    <li>For non-streaming: Single message containing the complete response.</li>
</ul>


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| answer | [string](#string) |  | Response text. Incremental for streaming mode, complete for non-streaming mode. |
| reference | [google.protobuf.Struct](#google.protobuf.Struct) |  | Source references including document chunks used to generate the response. Contains a <code>chunks</code> array with metadata about retrieved documents. |
| audio_binary | [string](#string) |  | Optional. Base64-encoded audio response when text-to-speech is enabled. |
| id | [string](#string) |  | Message ID uniquely identifying this response. |
| session_id | [string](#string) |  | Session ID for the conversation. |
| prompt | [string](#string) |  | Prompt used for generation. Usually empty string. |
| created_at | [double](#double) |  | Creation timestamp (Unix timestamp in seconds). |
| additional_fields | [google.protobuf.Struct](#google.protobuf.Struct) |  | Additional fields returned by RAGFlow API. |






<a name="ondewo.nlu.RagChatList"></a>

### RagChatList
Response message for listing chat assistants.


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| chats | [RagChat](#ondewo.nlu.RagChat) | repeated | List of chat assistants (with full dataset objects embedded). |






<a name="ondewo.nlu.RagChatSession"></a>

### RagChatSession
Chat session containing conversation history for a chat assistant.


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| id | [string](#string) |  | Session UUID. |
| chat_id | [string](#string) |  | Parent chat assistant UUID. |
| name | [string](#string) |  | Session name (default: <code>&quot;New session&quot;</code>). |
| messages | [RagMessage](#ondewo.nlu.RagMessage) | repeated | Message history in chronological order. |
| create_time | [int64](#int64) |  | Creation timestamp (Unix timestamp in milliseconds). |
| create_date | [string](#string) |  | Creation date (ISO 8601 datetime). |
| update_time | [int64](#int64) |  | Last update timestamp (Unix timestamp in milliseconds). |
| update_date | [string](#string) |  | Last update date (ISO 8601 datetime). |
| additional_fields | [google.protobuf.Struct](#google.protobuf.Struct) |  | Additional fields returned by RAGFlow. |






<a name="ondewo.nlu.RagChatSessionList"></a>

### RagChatSessionList
Response message for listing chat sessions.


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| chat_sessions | [RagChatSession](#ondewo.nlu.RagChatSession) | repeated | List of chat sessions (no pagination metadata included). |






<a name="ondewo.nlu.RagChatbotCompletionRequest"></a>

### RagChatbotCompletionRequest
Request message for generating chat completions using a configured chatbot.
Corresponds to RAGFlow&apos;s <code>POST /api/v1/chats/{chat_id}/completions</code> endpoint.


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| parent | [string](#string) |  | Required. The agent to generate chatbot completion for. Format: <pre><code>projects/&lt;project_uuid&gt;/agent</code></pre> |
| dialog_id | [string](#string) |  | Required. Chat dialog ID identifying the specific chatbot configuration. This corresponds to <code>chat_id</code> in RAGFlow&apos;s API. |
| question | [string](#string) |  | Required. User question or message to be processed by the chatbot. |
| stream | [bool](#bool) | optional | Optional. Enable streaming responses for real-time interaction. Default: true. When enabled, response chunks are sent incrementally. |
| session_id | [string](#string) |  | Optional. Session ID for maintaining conversation context across multiple turns. If not provided, a new session will be created. |
| additional_fields | [google.protobuf.Struct](#google.protobuf.Struct) |  | Optional. Additional fields to pass through to RAGFlow. |






<a name="ondewo.nlu.RagChatbotInfoRequest"></a>

### RagChatbotInfoRequest
Request message for retrieving chatbot configuration and initialization data.
Used to obtain display information for the chat interface.


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| parent | [string](#string) |  | Required. The agent to get chatbot information for. Format: <pre><code>projects/&lt;project_uuid&gt;/agent</code></pre> |
| dialog_id | [string](#string) |  | Required. Chat dialog ID identifying the chatbot. |






<a name="ondewo.nlu.RagChatbotInfoResponse"></a>

### RagChatbotInfoResponse
Response message containing chatbot display and initialization information.


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| title | [string](#string) |  | Chat display name for UI presentation. |
| avatar | [string](#string) |  | Base64-encoded avatar image or URL for the chatbot. |
| prologue | [string](#string) |  | Opening greeting message displayed when starting a new conversation. |






<a name="ondewo.nlu.RagChunk"></a>

### RagChunk
Chunk of text extracted from a document.<br>
Chunks are the basic retrieval units used for vector similarity search in RAG.


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| id | [string](#string) |  | Chunk ID (computed as xxhash of content combined with document_id). |
| dataset_id | [string](#string) |  | Parent dataset ID. |
| document_id | [string](#string) |  | Parent document ID. |
| content | [string](#string) |  | Chunk text content (the actual text segment extracted from the document). |
| docnm_kwd | [string](#string) |  | Document name keyword used for filtering and identification. |
| important_keywords | [string](#string) | repeated | Important keywords extracted from or manually assigned to this chunk. |
| questions | [string](#string) | repeated | Associated questions for Q&amp;A chunks (used when <code>chunk_method=qa</code>). |
| image_id | [string](#string) |  | Associated image ID if this chunk references an image. |
| available | [bool](#bool) | optional | Availability status indicating if the chunk is active and can be retrieved (can be disabled without deletion). |
| positions | [google.protobuf.ListValue](#google.protobuf.ListValue) | repeated | Position information in the original document.<br> Each position is an array of 5 integers representing location data (format varies by document type). |
| create_time | [string](#string) |  | Creation timestamp (ISO 8601 datetime string). |
| create_timestamp | [float](#float) |  | Creation timestamp as a floating-point Unix timestamp. |
| document_keyword | [string](#string) |  | Document name used as a keyword for retrieval. |
| similarity | [float](#float) |  | Similarity score between <code>0.0</code> and <code>1.0</code> (only populated in retrieval responses). |
| vector | [google.protobuf.Struct](#google.protobuf.Struct) |  | Embedding vector for this chunk (optional, rarely included in responses for performance reasons). |
| additional_fields | [google.protobuf.Struct](#google.protobuf.Struct) |  | Additional fields returned by RAGFlow not explicitly defined above. |






<a name="ondewo.nlu.RagCreateAgentRequest"></a>

### RagCreateAgentRequest
Request message for creating a new RAGFlow agent.


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| parent | [string](#string) |  | Required. The agent to create the RAGFlow agent for. Format: <pre><code>projects/&lt;project_uuid&gt;/agent</code></pre> |
| title | [string](#string) |  | Required. Unique agent title. Must be unique within the project. |
| description | [string](#string) |  | Optional. Agent description providing details about the agent's purpose and functionality. |
| dsl | [google.protobuf.Struct](#google.protobuf.Struct) |  | Required. Domain Specific Language (DSL) configuration defining the agent's workflow. A version snapshot is automatically created when the agent is created. |
| additional_fields | [google.protobuf.Struct](#google.protobuf.Struct) |  | Optional. Additional fields to pass through to RAGFlow API. |






<a name="ondewo.nlu.RagCreateAgentSessionRequest"></a>

### RagCreateAgentSessionRequest
Request message for creating a new agent session.


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| parent | [string](#string) |  | Required. The agent to create an agent session for. Format: <pre><code>projects/&lt;project_uuid&gt;/agent</code></pre> |
| agent_id | [string](#string) |  | Required. RAGFlow agent UUID. |
| user_id | [string](#string) |  | Optional. User identifier (defaults to <code>tenant_id</code> if not specified). |
| additional_fields | [google.protobuf.Struct](#google.protobuf.Struct) |  | Optional. Additional fields to pass through to RAGFlow. |






<a name="ondewo.nlu.RagCreateChatRequest"></a>

### RagCreateChatRequest
Request message for creating a new chat assistant.


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| parent | [string](#string) |  | Required. The agent to create a chat assistant for. Format: <pre><code>projects/&lt;project_uuid&gt;/agent</code></pre> |
| name | [string](#string) |  | Required. Unique name for the chat assistant. Must be unique within the agent. |
| description | [string](#string) |  | Optional. Description of the chat assistant's purpose. |
| avatar | [string](#string) |  | Optional. Base64-encoded avatar image. |
| dataset_ids | [string](#string) | repeated | Required. Dataset IDs to use as knowledge base (all datasets must have parsed files and use the same embedding model). |
| llm | [RagLLMSetting](#ondewo.nlu.RagLLMSetting) |  | Optional. LLM configuration settings. |
| prompt | [RagPromptConfig](#ondewo.nlu.RagPromptConfig) |  | Optional. Prompt and retrieval configuration settings. |
| additional_fields | [google.protobuf.Struct](#google.protobuf.Struct) |  | Optional. Additional fields to pass through to RAGFlow. |






<a name="ondewo.nlu.RagCreateChatSessionRequest"></a>

### RagCreateChatSessionRequest
Request message for creating a new chat session.


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| parent | [string](#string) |  | Required. The agent to create a chat session for. Format: <pre><code>projects/&lt;project_uuid&gt;/agent</code></pre> |
| chat_id | [string](#string) |  | Required. Parent chat assistant UUID. |
| name | [string](#string) |  | Optional. Session name (default: <code>"New session"</code>). |
| user_id | [string](#string) |  | Optional. User identifier for tracking conversation ownership. |
| additional_fields | [google.protobuf.Struct](#google.protobuf.Struct) |  | Optional. Additional fields to pass through to RAGFlow. |






<a name="ondewo.nlu.RagCreateDatasetRequest"></a>

### RagCreateDatasetRequest
Request message for creating a new dataset.


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| parent | [string](#string) |  | Required. The agent to create the dataset for. Format: <pre><code>projects/&lt;project_uuid&gt;/agent</code></pre> |
| name | [string](#string) |  | Required. Unique name of the dataset to create. Must follow these requirements: <ul> <li>contain only characters from the basic multilingual Unicode plane</li> <li>maximum 128 characters</li> <li>case-insensitive</li> </ul> |
| description | [string](#string) |  | Optional. Dataset description. Maximum 65,535 characters. |
| avatar | [string](#string) |  | Optional. Base64-encoded avatar image. Maximum 65,535 characters. |
| permission | [RagPermission](#ondewo.nlu.RagPermission) |  | Optional. Access permission for new dataset |
| chunk_method | [RagChunkMethod](#ondewo.nlu.RagChunkMethod) |  | Optional. Default chunking method for documents in this dataset. |
| parser_config | [RagParserConfig](#ondewo.nlu.RagParserConfig) |  | Optional. Configuration settings for the dataset parser. The used fields vary depending on the selected <code>chunk_method</code>. |
| embedding_model | [string](#string) |  | Optional. Embedding model name (uses user&apos;s default if not specified). |
| additional_fields | [google.protobuf.Struct](#google.protobuf.Struct) |  | Optional. Additional fields to pass through to RAGFlow. |






<a name="ondewo.nlu.RagCreateFileRequest"></a>

### RagCreateFileRequest
Request message for creating a file or folder in RAGFlow.


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| parent | [string](#string) |  | Required. The agent to create the file for. Format: <pre><code>projects/&lt;project_uuid&gt;/agent</code></pre> |
| name | [string](#string) |  | Required. Name of the file or folder to create. |
| parent_id | [string](#string) |  | Optional. Parent folder ID. If not provided, creates in root directory. |
| type | [string](#string) |  | Required. Type of item to create: <code>&quot;folder&quot;</code> for directories or <code>&quot;virtual&quot;</code> for virtual files. |
| additional_fields | [google.protobuf.Struct](#google.protobuf.Struct) |  | Optional. Additional fields to pass through to RAGFlow. |






<a name="ondewo.nlu.RagDataset"></a>

### RagDataset
Dataset containing documents for RAG.


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| id | [string](#string) |  | Dataset UUID. |
| name | [string](#string) |  | Dataset name. |
| description | [string](#string) |  | Dataset description. |
| avatar | [string](#string) |  | Base64-encoded avatar image. |
| language | [string](#string) |  | Dataset language (e.g. <code>&quot;English&quot;</code>). |
| permission | [RagPermission](#ondewo.nlu.RagPermission) |  | Access permission. |
| document_count | [int32](#int32) |  | Number of documents in the dataset. |
| chunk_count | [int32](#int32) |  | Number of chunks of all documents in the dataset. |
| chunk_method | [RagChunkMethod](#ondewo.nlu.RagChunkMethod) |  | Default chunking method for documents in this dataset. |
| parser_config | [RagParserConfig](#ondewo.nlu.RagParserConfig) |  | Document parser configuration (auto-generated based on chunk_method). |
| embedding_model | [string](#string) |  | Embedding model name. |
| create_time | [int64](#int64) |  | Creation timestamp (Unix timestamp in milliseconds). |
| create_date | [string](#string) |  | Creation date (ISO 8601 datetime). |
| update_time | [int64](#int64) |  | Last update timestamp (Unix timestamp in milliseconds). |
| update_date | [string](#string) |  | Last update date (ISO 8601 datetime). |
| token_count | [int32](#int32) |  | Number of tokens across all documents. |
| similarity_threshold | [float](#float) |  | Default similarity threshold (0.0-1.0). |
| vector_similarity_weight | [float](#float) |  | Default vector similarity weight (0.0-1.0). |
| additional_fields | [google.protobuf.Struct](#google.protobuf.Struct) |  | Additional fields returned by RAGFlow. |






<a name="ondewo.nlu.RagDatasetList"></a>

### RagDatasetList
Response message for listing datasets.


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| datasets | [RagDataset](#ondewo.nlu.RagDataset) | repeated | List of datasets. |






<a name="ondewo.nlu.RagDeleteAgentRequest"></a>

### RagDeleteAgentRequest
Request message for deleting a RAGFlow agent.


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| parent | [string](#string) |  | Required. The agent to delete the RAGFlow agent from. Format: <pre><code>projects/&lt;project_uuid&gt;/agent</code></pre> |
| agent_id | [string](#string) |  | Required. ID of the RAGFlow agent to delete. Only the agent owner can delete the agent. |






<a name="ondewo.nlu.RagDeleteAgentSessionsRequest"></a>

### RagDeleteAgentSessionsRequest
Request message for deleting agent sessions.


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| parent | [string](#string) |  | Required. The agent to delete agent sessions from. Format: <pre><code>projects/&lt;project_uuid&gt;/agent</code></pre> |
| agent_id | [string](#string) |  | Required. RAGFlow agent UUID. |
| ids | [string](#string) | repeated | Optional. Session UUIDs to delete. Specify either this field or <code>delete_all</code>. |
| delete_all | [bool](#bool) | optional | Optional. Delete all sessions for this agent (needed because protobuf cannot represent <code>ids=null</code>). |






<a name="ondewo.nlu.RagDeleteChatSessionsRequest"></a>

### RagDeleteChatSessionsRequest
Request message for deleting chat sessions.


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| parent | [string](#string) |  | Required. The agent to delete chat sessions from. Format: <pre><code>projects/&lt;project_uuid&gt;/agent</code></pre> |
| chat_id | [string](#string) |  | Required. Chat assistant UUID. |
| ids | [string](#string) | repeated | Optional. Session UUIDs to delete. Specify either this field or <code>delete_all</code>. |
| delete_all | [bool](#bool) | optional | Optional. Delete all sessions for this chat (needed because protobuf cannot represent <code>ids=null</code>). |






<a name="ondewo.nlu.RagDeleteChatsRequest"></a>

### RagDeleteChatsRequest
Request message for deleting chat assistants.


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| parent | [string](#string) |  | Required. The agent to delete chat assistants from. Format: <pre><code>projects/&lt;project_uuid&gt;/agent</code></pre> |
| ids | [string](#string) | repeated | Optional. Chat assistant IDs to delete. Specify either this field or <code>delete_all</code>. |
| delete_all | [bool](#bool) | optional | Optional. Delete all chat assistants (needed because protobuf cannot represent <code>ids=null</code>). |






<a name="ondewo.nlu.RagDeleteDatasetsRequest"></a>

### RagDeleteDatasetsRequest
Request message for deleting one or more datasets.


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| parent | [string](#string) |  | Required. The agent to delete datasets from. Format: <pre><code>projects/&lt;project_uuid&gt;/agent</code></pre> |
| ids | [string](#string) | repeated | Optional. Dataset IDs to delete. If empty and <code>delete_all</code> is <code>true</code>, deletes all datasets. |
| delete_all | [bool](#bool) | optional | Optional. Delete all datasets (needed because protobuf cannot represent <code>ids=null</code>). |






<a name="ondewo.nlu.RagDeleteDocumentsRequest"></a>

### RagDeleteDocumentsRequest
Request message for deleting one or more documents from a dataset.


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| parent | [string](#string) |  | Required. The agent to delete documents from. Format: <pre><code>projects/&lt;project_uuid&gt;/agent</code></pre> |
| dataset_id | [string](#string) |  | Required. Dataset ID containing the documents to delete. |
| ids | [string](#string) | repeated | Optional. Document IDs to delete. If empty and <code>delete_all</code> is <code>true</code>, deletes all documents in the dataset. |
| delete_all | [bool](#bool) | optional | Optional. Delete all documents in the dataset (needed because protobuf cannot represent <code>ids=null</code>). |






<a name="ondewo.nlu.RagDeleteFilesRequest"></a>

### RagDeleteFilesRequest
Request message for deleting files or folders.


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| parent | [string](#string) |  | Required. The agent to delete files from. Format: <pre><code>projects/&lt;project_uuid&gt;/agent</code></pre> |
| file_ids | [string](#string) | repeated | Required. UUIDs of files or folders to delete. Supports batch deletion. |






<a name="ondewo.nlu.RagDeleteKnowledgeGraphRequest"></a>

### RagDeleteKnowledgeGraphRequest
Request message for deleting a dataset's knowledge graph.


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| parent | [string](#string) |  | Required. The agent to delete knowledge graph for. Format: <pre><code>projects/&lt;project_uuid&gt;/agent</code></pre> |
| dataset_id | [string](#string) |  | Required. Dataset ID. |






<a name="ondewo.nlu.RagDifyRecord"></a>

### RagDifyRecord
Individual record structure in Dify-compatible format representing a retrieved chunk.


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| content | [string](#string) |  | Text content of the retrieved chunk. |
| score | [float](#float) |  | Similarity score indicating relevance to the query (0.0-1.0). Higher scores indicate better matches. |
| title | [string](#string) |  | Title of the source document containing this chunk. |
| metadata | [google.protobuf.Struct](#google.protobuf.Struct) |  | Additional metadata associated with this chunk. May include document ID, page numbers, timestamps, or custom fields. |
| additional_fields | [google.protobuf.Struct](#google.protobuf.Struct) |  | Optional. Additional fields to pass through to RAGFlow. |






<a name="ondewo.nlu.RagDifyRecordList"></a>

### RagDifyRecordList
Response message containing a list of retrieved records in Dify-compatible format.


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| records | [RagDifyRecord](#ondewo.nlu.RagDifyRecord) | repeated | List of retrieved records matching the query. |






<a name="ondewo.nlu.RagDifyRetrievalRequest"></a>

### RagDifyRetrievalRequest
Request message for retrieving data from RAGFlow using Dify-compatible format.
This provides compatibility with Dify&apos;s knowledge retrieval API structure.


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| parent | [string](#string) |  | Required. The agent to retrieve data for. Format: <pre><code>projects/&lt;project_uuid&gt;/agent</code></pre> |
| knowledge_id | [string](#string) |  | Required. Dataset ID (called <code>knowledge_id</code> in Dify API format). This is the UUID of the dataset to search within. |
| query | [string](#string) |  | Required. Search query string for retrieving relevant chunks. |
| retrieval_setting | [RagDifyRetrievalSetting](#ondewo.nlu.RagDifyRetrievalSetting) |  | Optional. Retrieval configuration settings including score threshold and result limit. |
| metadata_condition | [google.protobuf.Struct](#google.protobuf.Struct) |  | Optional. Metadata filter conditions to narrow down search results. Structure depends on your metadata schema. |
| use_kg | [bool](#bool) | optional | Optional. Whether to use knowledge graph for enhanced retrieval. Knowledge graphs can improve context and relationships between entities. |
| additional_fields | [google.protobuf.Struct](#google.protobuf.Struct) |  | Optional. Additional fields to pass through to RAGFlow. |






<a name="ondewo.nlu.RagDifyRetrievalSetting"></a>

### RagDifyRetrievalSetting
Configuration settings for Dify-compatible retrieval operations.


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| score_threshold | [float](#float) |  | Minimum similarity score threshold for including results (0.0-1.0). Default: 0.0 (no filtering by score). |
| top_k | [int32](#int32) |  | Maximum number of results to return. Default: 1024. |
| additional_fields | [google.protobuf.Struct](#google.protobuf.Struct) |  | Optional. Additional fields to pass through to RAGFlow. |






<a name="ondewo.nlu.RagDocument"></a>

### RagDocument
Document uploaded to a dataset.


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| id | [string](#string) |  | Document UUID. |
| dataset_id | [string](#string) |  | Parent dataset ID. |
| name | [string](#string) |  | Document filename. |
| type | [string](#string) |  | File type or extension (e.g., <code>&quot;pdf&quot;</code>, <code>&quot;docx&quot;</code>, <code>&quot;txt&quot;</code>). |
| size | [int64](#int64) |  | File size in bytes. |
| chunk_count | [int32](#int32) |  | Number of chunks extracted from this document (initially <code>0</code> until parsed). |
| token_count | [int32](#int32) |  | Number of tokens across all chunks in this document. |
| chunk_method | [RagChunkMethod](#ondewo.nlu.RagChunkMethod) |  | Chunking method used for this document. |
| parser_config | [RagParserConfig](#ondewo.nlu.RagParserConfig) |  | Parser configuration used for chunking this document. |
| source_type | [string](#string) |  | Source type indicating how the document was added (e.g., <code>&quot;local&quot;</code> for direct uploads, <code>&quot;knowledgebase&quot;</code> for file system imports). |
| run | [RagDocumentStatus](#ondewo.nlu.RagDocumentStatus) |  | Document processing status. |
| progress | [float](#float) |  | Processing progress as a decimal value between <code>0.0</code> (not started) and <code>1.0</code> (complete). |
| progress_msg | [string](#string) |  | Human-readable progress message describing current processing state. |
| process_duration | [float](#float) |  | Total processing duration in seconds. |
| create_time | [int64](#int64) |  | Creation timestamp (Unix timestamp in milliseconds). |
| create_date | [string](#string) |  | Creation date (ISO 8601 datetime string). |
| update_time | [int64](#int64) |  | Last update timestamp (Unix timestamp in milliseconds). |
| update_date | [string](#string) |  | Last update date (ISO 8601 datetime string). |
| meta_fields | [google.protobuf.Struct](#google.protobuf.Struct) |  | Custom metadata fields specific to this document (arbitrary key-value pairs). |
| thumbnail | [string](#string) |  | Base64-encoded thumbnail image for preview. |
| location | [string](#string) |  | Storage location path in the backend file system or object storage. |
| process_begin_at | [string](#string) |  | Processing start timestamp (ISO 8601 datetime string). |
| suffix | [string](#string) |  | Actual file extension extracted from the file (may differ from filename extension). |
| status | [string](#string) |  | Validation status indicating if document is enabled (<code>&quot;1&quot;</code>=valid/enabled, <code>&quot;0&quot;</code>=invalid/disabled). |
| additional_fields | [google.protobuf.Struct](#google.protobuf.Struct) |  | Additional fields returned by RAGFlow not explicitly defined above. |






<a name="ondewo.nlu.RagDocumentList"></a>

### RagDocumentList
Response message containing a list of documents.


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| documents | [RagDocument](#ondewo.nlu.RagDocument) | repeated | List of documents. |






<a name="ondewo.nlu.RagDownloadDocumentRequest"></a>

### RagDownloadDocumentRequest
Request message for downloading the original document file.


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| parent | [string](#string) |  | Required. The agent to download the document from. Format: <pre><code>projects/&lt;project_uuid&gt;/agent</code></pre> |
| dataset_id | [string](#string) |  | Required. Dataset ID containing the document. |
| document_id | [string](#string) |  | Required. Document ID to download. |






<a name="ondewo.nlu.RagFile"></a>

### RagFile
File or folder in RAGFlow file system.


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| id | [string](#string) |  | File or folder UUID. |
| name | [string](#string) |  | File or folder name. |
| type | [string](#string) |  | File type/extension or <code>&quot;folder&quot;</code> for directories. Check <code>type == &quot;folder&quot;</code> to distinguish folders from files. |
| size | [int64](#int64) |  | File size in bytes (0 for folders). |
| parent_id | [string](#string) |  | Parent folder ID. Empty string for root-level items. |
| create_time | [int64](#int64) |  | Creation timestamp (Unix timestamp in milliseconds). |
| create_date | [string](#string) |  | Creation date (ISO 8601 datetime format). |
| update_time | [int64](#int64) |  | Last update timestamp (Unix timestamp in milliseconds). |
| update_date | [string](#string) |  | Last update date (ISO 8601 datetime format). |
| location | [string](#string) |  | Storage location path within the RAGFlow file system. |
| source_type | [string](#string) |  | Source type indicating file origin (e.g., <code>&quot;local&quot;</code> for uploaded files). |
| additional_fields | [google.protobuf.Struct](#google.protobuf.Struct) |  | Additional fields returned by RAGFlow. |






<a name="ondewo.nlu.RagFileChunk"></a>

### RagFileChunk
File chunk for streaming downloads.<br>
First chunk contains metadata, subsequent chunks only contain data.


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| data | [bytes](#bytes) |  | Chunk of file content. |
| metadata | [RagFileMetadata](#ondewo.nlu.RagFileMetadata) |  | File metadata (only in first chunk). |






<a name="ondewo.nlu.RagFileID"></a>

### RagFileID
Deprecated: Use GetParentFolderRequest, GetAllParentFoldersRequest, or GetFileRequest instead.


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| file_id | [string](#string) |  | File ID (required). |






<a name="ondewo.nlu.RagFileList"></a>

### RagFileList
Response message containing a list of files.


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| files | [RagFile](#ondewo.nlu.RagFile) | repeated | Uploaded files. RAGFlow automatically creates intermediate folders as needed during upload. |






<a name="ondewo.nlu.RagFileMetadata"></a>

### RagFileMetadata
File metadata for streaming uploads/downloads.


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| file_name | [string](#string) |  | Filename. |
| content_type | [string](#string) |  | MIME type (e.g., <code>&quot;application/pdf&quot;</code>, <code>&quot;image/png&quot;</code>). |
| size | [int64](#int64) |  | File size in bytes (if known, 0 if unknown). |






<a name="ondewo.nlu.RagFileToDocument"></a>

### RagFileToDocument
Association between a file and a document in a dataset.
Tracks the relationship when files are converted to documents for use in RAG operations.


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| id | [string](#string) |  | UUID of the file-to-document association. |
| file_id | [string](#string) |  | UUID of the source file. |
| document_id | [string](#string) |  | UUID of the generated document in the dataset. |
| create_time | [int64](#int64) |  | Creation timestamp (Unix timestamp in milliseconds). |
| create_date | [string](#string) |  | Creation date (ISO 8601 datetime format). |
| update_time | [int64](#int64) |  | Last update timestamp (Unix timestamp in milliseconds). |
| update_date | [string](#string) |  | Last update date (ISO 8601 datetime format). |
| additional_fields | [google.protobuf.Struct](#google.protobuf.Struct) |  | Additional fields returned by RAGFlow. |






<a name="ondewo.nlu.RagFileToDocumentList"></a>

### RagFileToDocumentList
Response message containing a list of file-to-document associations.


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| filesToDocuments | [RagFileToDocument](#ondewo.nlu.RagFileToDocument) | repeated | List of file-to-document associations created during the conversion operation. |






<a name="ondewo.nlu.RagFileToDocumentRequest"></a>

### RagFileToDocumentRequest
Request message for converting files to documents and linking them to datasets.
RAGFlow allows linking uploaded files to multiple target datasets for RAG operations.


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| parent | [string](#string) |  | Required. The agent to convert files to documents for. Format: <pre><code>projects/&lt;project_uuid&gt;/agent</code></pre> |
| file_ids | [string](#string) | repeated | Required. UUIDs of files to convert. If folders are provided, processes contents recursively. |
| kb_ids | [string](#string) | repeated | Required. Target dataset IDs (knowledge base IDs). A single file can be linked to multiple datasets. |
| additional_fields | [google.protobuf.Struct](#google.protobuf.Struct) |  | Optional. Additional fields to pass through to RAGFlow. |






<a name="ondewo.nlu.RagGetAllParentFoldersRequest"></a>

### RagGetAllParentFoldersRequest
Request message for getting all parent folders in the hierarchy.


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| parent | [string](#string) |  | Required. The agent to get all parent folders for. Format: <pre><code>projects/&lt;project_uuid&gt;/agent</code></pre> |
| file_id | [string](#string) |  | Required. UUID of the file to get all parent folders for. |






<a name="ondewo.nlu.RagGetAllParentFoldersResponse"></a>

### RagGetAllParentFoldersResponse
Response message for getting all parent folders in the hierarchy.


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| parent_folders | [RagFile](#ondewo.nlu.RagFile) | repeated | All parent folders in the hierarchy, from immediate parent to root folder. |






<a name="ondewo.nlu.RagGetFileRequest"></a>

### RagGetFileRequest
Request message for getting file details.


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| parent | [string](#string) |  | Required. The agent to get the file from. Format: <pre><code>projects/&lt;project_uuid&gt;/agent</code></pre> |
| file_id | [string](#string) |  | Required. UUID of the file to retrieve. |






<a name="ondewo.nlu.RagGetKnowledgeGraphRequest"></a>

### RagGetKnowledgeGraphRequest
Request message for getting a dataset's knowledge graph.


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| parent | [string](#string) |  | Required. The agent to get knowledge graph for. Format: <pre><code>projects/&lt;project_uuid&gt;/agent</code></pre> |
| dataset_id | [string](#string) |  | Required. Dataset ID. |






<a name="ondewo.nlu.RagGetKnowledgeGraphResponse"></a>

### RagGetKnowledgeGraphResponse
Response message for getting a dataset's knowledge graph.


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| graph | [google.protobuf.Struct](#google.protobuf.Struct) |  | Graph structure with nodes (max 256) and edges (max 128).<br> Format: <code>{nodes: [{id, pagerank}], edges: [{source, target, weight}]}</code> |
| mind_map | [google.protobuf.Struct](#google.protobuf.Struct) |  | Mind map structure (optional). |
| additional_fields | [google.protobuf.Struct](#google.protobuf.Struct) |  | Additional fields to pass through to RAGFlow. |






<a name="ondewo.nlu.RagGetParentFolderRequest"></a>

### RagGetParentFolderRequest
Request message for getting the parent folder of a file.


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| parent | [string](#string) |  | Required. The agent to get the parent folder for. Format: <pre><code>projects/&lt;project_uuid&gt;/agent</code></pre> |
| file_id | [string](#string) |  | Required. UUID of the file to get the parent folder for. |






<a name="ondewo.nlu.RagGetParentFolderResponse"></a>

### RagGetParentFolderResponse
Response message for getting the parent folder of a file.


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| parent_folder | [RagFile](#ondewo.nlu.RagFile) |  | The immediate parent folder of the requested file. |






<a name="ondewo.nlu.RagGetRootFolderRequest"></a>

### RagGetRootFolderRequest
Request message for getting the root folder of the project


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| parent | [string](#string) |  | Required. The agent to get the parent folder for. Format: <pre><code>projects/&lt;project_uuid&gt;/agent</code></pre> |






<a name="ondewo.nlu.RagGetRootFolderResponse"></a>

### RagGetRootFolderResponse
Response message for getting the root folder.


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| root_folder | [RagFile](#ondewo.nlu.RagFile) |  | The root folder of the file system. |






<a name="ondewo.nlu.RagLLMSetting"></a>

### RagLLMSetting
LLM configuration for chat assistant.


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| model_name | [string](#string) |  | LLM model name (required). |
| temperature | [float](#float) |  | Sampling temperature (0.0-2.0). Controls randomness in responses. |
| top_p | [float](#float) |  | Nucleus sampling parameter (0.0-1.0). Filters token choices by cumulative probability. |
| frequency_penalty | [float](#float) |  | Frequency penalty (-2.0 to 2.0). Reduces repetition of frequent tokens. |
| presence_penalty | [float](#float) |  | Presence penalty (-2.0 to 2.0). Reduces repetition of any tokens already used. |
| additional_fields | [google.protobuf.Struct](#google.protobuf.Struct) |  | Additional fields to pass through to RAGFlow. |






<a name="ondewo.nlu.RagListAgentSessionsRequest"></a>

### RagListAgentSessionsRequest
Request message for listing agent sessions.


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| parent | [string](#string) |  | Required. The agent to list agent sessions from. Format: <pre><code>projects/&lt;project_uuid&gt;/agent</code></pre> |
| agent_id | [string](#string) |  | Required. RAGFlow agent UUID. |
| pagination | [RagPagination](#ondewo.nlu.RagPagination) |  | Optional. Pagination parameters for paging through results. |
| orderby | [string](#string) |  | Sort field (default: <code>&quot;update_time&quot;</code>). |
| desc | [bool](#bool) | optional | Optional. Sort in descending order (default: <code>true</code>). |
| id | [string](#string) |  | Optional. Filter by session UUID. |
| user_id | [string](#string) |  | Optional. Filter by user identifier. |
| dsl | [bool](#bool) | optional | Optional. Include DSL (Domain Specific Language) workflow configuration in response. |
| additional_fields | [google.protobuf.Struct](#google.protobuf.Struct) |  | Optional. Additional fields to pass through to RAGFlow. |






<a name="ondewo.nlu.RagListAgentsRequest"></a>

### RagListAgentsRequest
Request message for listing RAGFlow agents.


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| parent | [string](#string) |  | Required. The agent to list RAGFlow agents from. Format: <pre><code>projects/&lt;project_uuid&gt;/agent</code></pre> |
| pagination | [RagPagination](#ondewo.nlu.RagPagination) |  | Optional. Pagination parameters to control the number and offset of results. |
| title | [string](#string) |  | Optional. Filter results by agent title. Only agents with matching titles will be returned. |
| orderby | [string](#string) |  | Optional. Sort field for ordering results. Default: <code>"update_time"</code>. |
| desc | [bool](#bool) | optional | Optional. Sort in descending order. If <code>true</code>, results are sorted from highest to lowest. Default: <code>true</code>. |
| id | [string](#string) |  | Optional. Filter results by specific agent ID. |
| additional_fields | [google.protobuf.Struct](#google.protobuf.Struct) |  | Optional. Additional fields to pass through to RAGFlow API. |






<a name="ondewo.nlu.RagListChatSessionsRequest"></a>

### RagListChatSessionsRequest
Request message for listing chat sessions.


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| parent | [string](#string) |  | Required. The agent to list chat sessions from. Format: <pre><code>projects/&lt;project_uuid&gt;/agent</code></pre> |
| chat_id | [string](#string) |  | Required. Chat assistant UUID. |
| pagination | [RagPagination](#ondewo.nlu.RagPagination) |  | Optional. Pagination parameters for paging through results. |
| orderby | [string](#string) |  | Sort field (default: <code>&quot;create_time&quot;</code>). |
| desc | [bool](#bool) | optional | Optional. Sort in descending order (default: <code>true</code>). |
| name | [string](#string) |  | Optional. Filter by session name. |
| id | [string](#string) |  | Optional. Filter by session UUID. |
| user_id | [string](#string) |  | Optional. Filter by user identifier. |
| additional_fields | [google.protobuf.Struct](#google.protobuf.Struct) |  | Optional. Additional fields to pass through to RAGFlow. |






<a name="ondewo.nlu.RagListChatsRequest"></a>

### RagListChatsRequest
Request message for listing chat assistants.


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| parent | [string](#string) |  | Required. The agent to list chat assistants from. Format: <pre><code>projects/&lt;project_uuid&gt;/agent</code></pre> |
| pagination | [RagPagination](#ondewo.nlu.RagPagination) |  | Optional. Pagination parameters for paging through results. |
| id | [string](#string) |  | Optional. Filter by chat assistant UUID. |
| name | [string](#string) |  | Optional. Filter by chat assistant name. |
| orderby | [string](#string) |  | Sort field (default: <code>&quot;create_time&quot;</code>). |
| desc | [bool](#bool) | optional | Optional. Sort in descending order (default: <code>true</code>). |
| additional_fields | [google.protobuf.Struct](#google.protobuf.Struct) |  | Optional. Additional fields to pass through to RAGFlow. |






<a name="ondewo.nlu.RagListChunksRequest"></a>

### RagListChunksRequest
Request message for listing chunks of a document with pagination.


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| parent | [string](#string) |  | Required. The agent to list chunks from. Format: <pre><code>projects/&lt;project_uuid&gt;/agent</code></pre> |
| dataset_id | [string](#string) |  | Required. Dataset ID containing the document. |
| document_id | [string](#string) |  | Required. Document ID to list chunks from. |
| pagination | [RagPagination](#ondewo.nlu.RagPagination) |  | Optional. Pagination parameters. |
| keywords | [string](#string) |  | Optional. Search keywords to filter chunks (supports content highlighting in results). |
| id | [string](#string) |  | Optional. Filter by specific chunk ID. |
| additional_fields | [google.protobuf.Struct](#google.protobuf.Struct) |  | Optional. Additional fields to pass through to RAGFlow. |






<a name="ondewo.nlu.RagListChunksResponse"></a>

### RagListChunksResponse
Response message for listing chunks.


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| total | [int32](#int32) |  | Total number of chunks matching the filter criteria (not limited by pagination). |
| chunks | [RagChunk](#ondewo.nlu.RagChunk) | repeated | List of chunks for the current page. |
| doc | [RagDocument](#ondewo.nlu.RagDocument) |  | Document details for the parent document. |






<a name="ondewo.nlu.RagListDatasetsRequest"></a>

### RagListDatasetsRequest
Request message for listing datasets with pagination and filtering.


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| parent | [string](#string) |  | Required. The agent to list all datasets from. Format: <pre><code>projects/&lt;project_uuid&gt;/agent</code></pre> |
| pagination | [RagPagination](#ondewo.nlu.RagPagination) |  | Optional. Pagination parameters. |
| id | [string](#string) |  | Optional. Filter by dataset ID. |
| name | [string](#string) |  | Optional. Filter by dataset name. |
| orderby | [string](#string) |  | Optional. Sort field (default: <code>create_time</code>). |
| desc | [bool](#bool) | optional | Optional. Sort descending (default: <code>true</code>). |
| additional_fields | [google.protobuf.Struct](#google.protobuf.Struct) |  | Optional. Additional fields to pass through to RAGFlow. |






<a name="ondewo.nlu.RagListDocumentsRequest"></a>

### RagListDocumentsRequest
Request message for listing documents in a dataset with pagination and filtering.


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| parent | [string](#string) |  | Required. The agent to list documents from. Format: <pre><code>projects/&lt;project_uuid&gt;/agent</code></pre> |
| dataset_id | [string](#string) |  | Required. Dataset ID to list documents from. |
| pagination | [RagPagination](#ondewo.nlu.RagPagination) |  | Optional. Pagination parameters. |
| id | [string](#string) |  | Optional. Filter by specific document ID. |
| name | [string](#string) |  | Optional. Filter by document name (exact match). |
| keywords | [string](#string) |  | Optional. Search keywords to filter documents (searches in document name and metadata). |
| orderby | [string](#string) |  | Optional. Sort field (default: <code>"create_time"</code>). Accepted values include <code>"create_time"</code> and <code>"update_time"</code>. |
| desc | [bool](#bool) | optional | Optional. Sort in descending order (default: <code>true</code>). |
| create_time_from | [int64](#int64) |  | Optional. Filter by creation time start (Unix timestamp in milliseconds, <code>0</code> = no filter). |
| create_time_to | [int64](#int64) |  | Optional. Filter by creation time end (Unix timestamp in milliseconds, <code>0</code> = no filter). |
| additional_fields | [google.protobuf.Struct](#google.protobuf.Struct) |  | Optional. Additional fields to pass through to RAGFlow. |






<a name="ondewo.nlu.RagListDocumentsResponse"></a>

### RagListDocumentsResponse
Response message for listing documents.


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| total | [int32](#int32) |  | Total number of documents matching the filter criteria (not limited by pagination). |
| docs | [RagDocument](#ondewo.nlu.RagDocument) | repeated | List of documents for the current page. |






<a name="ondewo.nlu.RagListFilesRequest"></a>

### RagListFilesRequest
Request message for listing files and folders.


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| parent | [string](#string) |  | Required. The agent to list files from. Format: <pre><code>projects/&lt;project_uuid&gt;/agent</code></pre> |
| parent_id | [string](#string) |  | Optional. Folder ID to list contents from. If not provided, lists root directory contents. |
| pagination | [RagPagination](#ondewo.nlu.RagPagination) |  | Optional. Pagination parameters. Default page size is 15 items per page. |
| keywords | [string](#string) |  | Optional. Search keywords to filter files by name or other searchable attributes. |
| orderby | [string](#string) |  | Optional. Field to sort results by. Common values include <code>"create_time"</code> (default) and <code>"update_time"</code>. |
| desc | [bool](#bool) | optional | Optional. Sort in descending order. Default is <code>true</code> (newest first). |
| additional_fields | [google.protobuf.Struct](#google.protobuf.Struct) |  | Optional. Additional fields to pass through to RAGFlow. |






<a name="ondewo.nlu.RagListFilesResponse"></a>

### RagListFilesResponse
Response message for listing files and folders.


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| total | [int32](#int32) |  | Total number of files and folders matching the query (before pagination). |
| files | [RagFile](#ondewo.nlu.RagFile) | repeated | List of files and folders in the current page. |
| parent_folder | [RagFile](#ondewo.nlu.RagFile) |  | Information about the parent folder being listed. |






<a name="ondewo.nlu.RagMessage"></a>

### RagMessage
Message in a conversation session.


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| role | [RagMessageRole](#ondewo.nlu.RagMessageRole) |  | Role of the message sender. |
| content | [string](#string) |  | Message content text. |






<a name="ondewo.nlu.RagMoveFileRequest"></a>

### RagMoveFileRequest
Request message for moving files or folders.


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| parent | [string](#string) |  | Required. The agent to move files for. Format: <pre><code>projects/&lt;project_uuid&gt;/agent</code></pre> |
| src_file_ids | [string](#string) | repeated | Required. UUIDs of source files or folders to move. Supports batch move operations. |
| dest_file_id | [string](#string) |  | Required. UUID of the destination folder. |






<a name="ondewo.nlu.RagOpenAiAgentCompletionRequest"></a>

### RagOpenAiAgentCompletionRequest
Request message for OpenAI-compatible agent completion.
Follows OpenAI Chat Completions API format. All string fields must remain as strings to maintain OpenAI API compatibility.
Agents are workflow-based AI assistants with Domain Specific Language (DSL) configuration.


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| parent | [string](#string) |  | Required. The agent to generate the completion for. Format: <pre><code>projects/&lt;project_uuid&gt;/agent</code></pre> |
| agent_id | [string](#string) |  | Required. RAGFlow agent ID to use for generating the completion. |
| model | [string](#string) |  | Required. Model identifier. Required for OpenAI API compatibility but value is typically ignored by RAGFlow. |
| messages | [RagMessage](#ondewo.nlu.RagMessage) | repeated | Required. Conversation history as an array of messages. Only user and assistant role messages are processed; system messages are filtered out. |
| stream | [bool](#bool) | optional | Optional. Enable streaming mode. If <code>true</code>, the response will be streamed as Server-Sent Events (SSE). Default: <code>true</code>. |
| session_id | [string](#string) |  | Optional. Session ID to continue an existing conversation. Can alternatively be passed in <code>additional_fields.metadata.id</code>. |
| id | [string](#string) |  | Optional. Custom identifier field for the request. |
| additional_fields | [google.protobuf.Struct](#google.protobuf.Struct) |  | Optional. Additional fields to pass through to RAGFlow API (e.g., <code>temperature</code>, <code>max_tokens</code>, <code>metadata</code> with session info). |






<a name="ondewo.nlu.RagOpenAiChatChoice"></a>

### RagOpenAiChatChoice
Choice in OpenAI-compatible chat completion response.
Follows OpenAI Chat Completions API format.


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| index | [int32](#int32) |  | Choice index in the array. Zero-based. |
| message | [RagOpenAiChatContent](#ondewo.nlu.RagOpenAiChatContent) |  | Non-streaming: Complete message with full content. |
| delta | [RagOpenAiChatContent](#ondewo.nlu.RagOpenAiChatContent) |  | Streaming: Incremental delta containing partial content. |
| finish_reason | [string](#string) |  | Reason why the completion finished. Common values include <code>&quot;stop&quot;</code> (natural completion), <code>&quot;length&quot;</code> (max tokens reached). Only present in the final chunk for streaming mode or in the single response for non-streaming mode. This field must remain a string for OpenAI API compatibility. |
| logprobs | [google.protobuf.Value](#google.protobuf.Value) |  | Log probabilities for the generated tokens. Usually <code>null</code>. |
| additional_fields | [google.protobuf.Struct](#google.protobuf.Struct) |  | Additional fields returned by RAGFlow API. |






<a name="ondewo.nlu.RagOpenAiChatCompletionRequest"></a>

### RagOpenAiChatCompletionRequest
Request message for OpenAI-compatible chat completion.
Follows OpenAI Chat Completions API format. All string fields must remain as strings to maintain OpenAI API compatibility.


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| parent | [string](#string) |  | Required. The agent to generate the chat completion for. Format: <pre><code>projects/&lt;project_uuid&gt;/agent</code></pre> |
| chat_id | [string](#string) |  | Required. Chat assistant ID to use for generating the completion. |
| model | [string](#string) |  | Required. Model identifier. Required for OpenAI API compatibility but value is typically ignored by RAGFlow. |
| messages | [RagMessage](#ondewo.nlu.RagMessage) | repeated | Required. Conversation history as an array of messages with roles (system, user, assistant). |
| stream | [bool](#bool) | optional | Optional. Enable streaming mode. If <code>true</code>, the response will be streamed as Server-Sent Events (SSE). Default: <code>true</code>. |
| reference | [bool](#bool) | optional | Optional. Include source references in the response. If <code>true</code>, the <code>reference</code> field will be populated in the last message. Default: <code>false</code>. |
| additional_fields | [google.protobuf.Struct](#google.protobuf.Struct) |  | Optional. Additional fields to pass through to RAGFlow API (e.g., <code>temperature</code>, <code>max_tokens</code>). |






<a name="ondewo.nlu.RagOpenAiChatCompletionResponse"></a>

### RagOpenAiChatCompletionResponse
Response message for OpenAI-compatible chat completion.
Follows OpenAI Chat Completions API format. All string fields must remain as strings to maintain OpenAI API compatibility.
<ul>
    <li>For streaming: Each message represents one Server-Sent Event with <code>delta</code> populated in choices.</li>
    <li>For non-streaming: Single message with <code>message</code> populated in choices containing the complete response.</li>
</ul>


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| id | [string](#string) |  | Completion ID in format <code>&quot;chatcmpl-{chat_id}&quot;</code>. |
| object | [string](#string) |  | Object type indicating response format. Value is <code>&quot;chat.completion.chunk&quot;</code> for streaming or <code>&quot;chat.completion&quot;</code> for non-streaming. This field must remain a string for OpenAI API compatibility. |
| created | [int64](#int64) |  | Creation timestamp (Unix timestamp in seconds). |
| model | [string](#string) |  | Model name used for completion. |
| system_fingerprint | [string](#string) |  | System fingerprint for backend configuration. Usually empty string. |
| choices | [RagOpenAiChatChoice](#ondewo.nlu.RagOpenAiChatChoice) | repeated | Array of generated choices. Typically contains one choice. |
| usage | [RagOpenAiChatUsage](#ondewo.nlu.RagOpenAiChatUsage) |  | Token usage statistics. Only populated in the final chunk for streaming mode or in the single response for non-streaming mode. |
| additional_fields | [google.protobuf.Struct](#google.protobuf.Struct) |  | Additional fields returned by RAGFlow API. |






<a name="ondewo.nlu.RagOpenAiChatContent"></a>

### RagOpenAiChatContent
Message or delta content in OpenAI-compatible response.
Follows OpenAI Chat Completions API format.
<ul>
    <li>For streaming (delta): Contains incremental content. The <code>role</code> field is only present in the first chunk.</li>
    <li>For non-streaming (message): Contains complete content with all fields populated.</li>
</ul>


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| role | [string](#string) |  | Message role. Value is typically <code>&quot;assistant&quot;</code>. For streaming, only present in the first chunk. This field must remain a string for OpenAI API compatibility (not the <code>MessageRole</code> enum). |
| content | [string](#string) |  | Response text content. Incremental for streaming mode, complete for non-streaming mode. |
| reasoning_content | [string](#string) |  | Reasoning content extracted from <code>&lt;think&gt;...&lt;/think&gt;</code> tags if present in the model&apos;s response. |
| function_call | [google.protobuf.Value](#google.protobuf.Value) |  | Function call information. Usually <code>null</code>. |
| tool_calls | [google.protobuf.Value](#google.protobuf.Value) |  | Tool calls information. Usually <code>null</code>. |
| reference | [google.protobuf.Value](#google.protobuf.Value) |  | Source references including document chunks. Only present in the last chunk if <code>reference=true</code> was set in the request. |
| final_content | [string](#string) |  | Complete accumulated response text. Only present in the last chunk for streaming mode. |
| additional_fields | [google.protobuf.Struct](#google.protobuf.Struct) |  | Additional fields returned by RAGFlow API. |






<a name="ondewo.nlu.RagOpenAiChatUsage"></a>

### RagOpenAiChatUsage
Token usage statistics in OpenAI format.
Only populated in the final chunk for streaming mode or in the single response for non-streaming mode.


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| prompt_tokens | [int32](#int32) |  | Number of tokens in the prompt (input). |
| completion_tokens | [int32](#int32) |  | Number of tokens in the completion (output). |
| total_tokens | [int32](#int32) |  | Total tokens used (sum of <code>prompt_tokens</code> and <code>completion_tokens</code>). |
| additional_fields | [google.protobuf.Struct](#google.protobuf.Struct) |  | Additional fields returned by RAGFlow API. |






<a name="ondewo.nlu.RagPagination"></a>

### RagPagination
Pagination parameters for list requests.


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| page | [int32](#int32) |  | Page number (1-indexed, default: 1). |
| page_size | [int32](#int32) |  | Number of items per page (default varies by endpoint). |






<a name="ondewo.nlu.RagParseDocumentsRequest"></a>

### RagParseDocumentsRequest
Request message for starting document parsing.<br>
Parsing extracts chunks from documents using the configured chunk method.


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| parent | [string](#string) |  | Required. The agent to parse documents for. Format: <pre><code>projects/&lt;project_uuid&gt;/agent</code></pre> |
| dataset_id | [string](#string) |  | Required. Dataset ID containing the documents to parse. |
| document_ids | [string](#string) | repeated | Required. Document IDs to parse into chunks (queues documents for background processing). |






<a name="ondewo.nlu.RagParserConfig"></a>

### RagParserConfig
Document parser configuration.

Used fields depend on the chunking method of the document.
<ul>
    <li><code>naive</code>: uses the following fields (all optional)</li>
    <ul>
        <li><code>auto_keywords</code></li>
        <li><code>auto_questions</code></li>
        <li><code>chunk_token_num</code></li>
        <li><code>delimiter</code></li>
        <li><code>html4excel</code></li>
        <li><code>layout_recognize</code></li>
        <li><code>tag_kb_ids</code></li>
        <li><code>task_page_size</code></li>
        <li><code>rapter</code></li>
        <li><code>graphrag</code></li>
    </ul>
    <li><code>qa</code>, <code>manual</code>, <code>paper</code>, <code>book</code>, <code>laws</code>, <code>presentation</code>: uses only the <code>raptor</code> field</li>
    <li><code>table</code>, <code>picture</code>, <code>one</code>, <code>email</code>: does not use any field (expects empty message)</li>
</ul>


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| auto_keyword | [int32](#int32) |  | Optional. Minimum 0, maximum 32, default 0. See <a href="https://ragflow.io/docs/dev/autokeyword_autoquestion">https://ragflow.io/docs/dev/autokeyword_autoquestion</a> for details. |
| auto_questions | [int32](#int32) |  | Optional. Minimum 0, maximum 10, default 0. See <a href="https://ragflow.io/docs/dev/autokeyword_autoquestion">https://ragflow.io/docs/dev/autokeyword_autoquestion</a> for details. |
| chunk_token_num | [int32](#int32) |  | Optional. Minimum 1, maximum 2048, default 512. |
| delimiter | [string](#string) |  | Optional. Default <code>&quot;\n&quot;</code>. |
| html4excel | [bool](#bool) |  | Optional. Convert Excel documents to HTML. Default <code>false</code>. |
| layout_recognize | [string](#string) |  | Optional. Default <code>&quot;DeepDOC&quot;</code> |
| tag_kb_ids | [string](#string) | repeated | Optional. List of dataset IDs. See <a href="https://ragflow.io/docs/dev/use_tag_sets">https://ragflow.io/docs/dev/use_tag_sets</a> for details. |
| task_page_size | [int32](#int32) |  | Optional. Minimum 1, default 12. Only applies to PDFs. |
| raptor | [google.protobuf.Struct](#google.protobuf.Struct) |  | Optional. RAPTOR-specific settings. Default <code>{ &quot;use_raptor&quot;: false }</code>. |
| graphrag | [google.protobuf.Struct](#google.protobuf.Struct) |  | Optional. GRAPHRAG-specific settings. Default <code>{ &quot;use_graphrag&quot;: false }</code>. |






<a name="ondewo.nlu.RagPartialSuccess"></a>

### RagPartialSuccess
On complete success: no fields set (empty message).
On partial success/failure: both fields set.


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| success_count | [int32](#int32) |  | Number of successful operations. |
| errors | [string](#string) | repeated | Error messages for failed operations. |






<a name="ondewo.nlu.RagPromptConfig"></a>

### RagPromptConfig
Prompt and retrieval configuration for chat assistant.


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| prompt | [string](#string) |  | System prompt (RAGFlow provides default if not specified). |
| variables | [RagPromptVariable](#ondewo.nlu.RagPromptVariable) | repeated | Prompt template variables for dynamic content insertion. |
| opener | [string](#string) |  | Opening message displayed at conversation start. |
| show_quote | [bool](#bool) | optional | Show quotations from retrieved source chunks in responses. |
| empty_response | [string](#string) |  | Response to return when no relevant chunks are found in the knowledge base. |
| tts | [bool](#bool) | optional | Enable text-to-speech for responses. |
| refine_multiturn | [bool](#bool) | optional | Refine and optimize multi-turn conversation context. |
| similarity_threshold | [float](#float) |  | Minimum similarity score for chunk retrieval (0.0-1.0). |
| keywords_similarity_weight | [float](#float) |  | Weight for keywords versus vector similarity in hybrid search (0.0-1.0). |
| top_n | [int32](#int32) |  | Number of chunks to retrieve after reranking. |
| top_k | [int32](#int32) |  | Maximum chunks to retrieve before reranking. |
| rerank_model | [string](#string) |  | Rerank model ID for reordering retrieved chunks. |
| additional_fields | [google.protobuf.Struct](#google.protobuf.Struct) |  | Additional fields to pass through to RAGFlow. |






<a name="ondewo.nlu.RagPromptVariable"></a>

### RagPromptVariable
Prompt template variable for dynamic content insertion.


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| key | [string](#string) |  | Variable name used in prompt template. |
| optional | [bool](#bool) | optional | Whether this variable is optional in the template. |






<a name="ondewo.nlu.RagRelatedQuestionsRequest"></a>

### RagRelatedQuestionsRequest
Request message for generating related questions based on a user&apos;s query.
This helps improve user experience by suggesting follow-up questions.


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| parent | [string](#string) |  | Required. The agent to generate related questions for. Format: <pre><code>projects/&lt;project_uuid&gt;/agent</code></pre> |
| question | [string](#string) |  | Required. Original user question to generate related questions from. |
| industry | [string](#string) |  | Optional. Industry context to focus the related questions. Helps tailor suggestions to specific domains (e.g., "healthcare", "finance"). |
| additional_fields | [google.protobuf.Struct](#google.protobuf.Struct) |  | Optional. Additional fields to pass through to RAGFlow. |






<a name="ondewo.nlu.RagRelatedQuestionsResponse"></a>

### RagRelatedQuestionsResponse
Response message containing a list of suggested related questions.


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| questions | [string](#string) | repeated | List of 5-10 related question suggestions based on the original query. These can be used to guide users toward additional relevant information. |






<a name="ondewo.nlu.RagRemoveChunksRequest"></a>

### RagRemoveChunksRequest
Request message for removing one or more chunks from a document.


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| parent | [string](#string) |  | Required. The agent to remove chunks from. Format: <pre><code>projects/&lt;project_uuid&gt;/agent</code></pre> |
| dataset_id | [string](#string) |  | Required. Dataset ID containing the document. |
| document_id | [string](#string) |  | Required. Document ID to remove chunks from. |
| chunk_ids | [string](#string) | repeated | Required. Chunk IDs to remove. If empty, removes all chunks from the document. |






<a name="ondewo.nlu.RagRenameFileRequest"></a>

### RagRenameFileRequest
Request message for renaming a file or folder.


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| parent | [string](#string) |  | Required. The agent to rename the file for. Format: <pre><code>projects/&lt;project_uuid&gt;/agent</code></pre> |
| file_id | [string](#string) |  | Required. UUID of the file or folder to rename. |
| name | [string](#string) |  | Required. New name for the file or folder. For files, the extension must remain the same. |






<a name="ondewo.nlu.RagRetrievalRequest"></a>

### RagRetrievalRequest
Request message for retrieving chunks using vector similarity search.<br>
Supports hybrid search combining vector similarity with keyword matching.


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| parent | [string](#string) |  | Required. The agent to retrieve chunks for. Format: <pre><code>projects/&lt;project_uuid&gt;/agent</code></pre> |
| pagination | [RagPagination](#ondewo.nlu.RagPagination) |  | Optional. Pagination parameters. |
| dataset_ids | [string](#string) | repeated | Required. Dataset IDs to search (all datasets must use the same embedding model). |
| question | [string](#string) |  | Required. Query string to search for. |
| document_ids | [string](#string) | repeated | Optional. Filter by specific document IDs within the datasets. |
| similarity_threshold | [float](#float) |  | Optional. Minimum similarity score threshold between <code>0.0</code> and <code>1.0</code> (default: <code>0.2</code>). |
| vector_similarity_weight | [float](#float) |  | Optional. Weight for vector similarity versus keyword matching between <code>0.0</code> and <code>1.0</code> (default: <code>0.3</code>).<br> Higher values favor vector similarity, lower values favor keyword matching. |
| top_k | [int32](#int32) |  | Optional. Maximum number of chunks to retrieve before reranking (default: <code>1024</code>). |
| highlight | [bool](#bool) | optional | Optional. Whether to highlight matched content in the returned chunks. |
| metadata_condition | [google.protobuf.Struct](#google.protobuf.Struct) |  | Optional. Metadata filter condition to restrict results based on document metadata. |
| use_kg | [bool](#bool) | optional | Optional. Include knowledge graph retrieval to enhance results with graph relationships. |
| cross_languages | [string](#string) | repeated | Optional. Cross-language translation codes to enable multilingual retrieval. |
| keyword | [bool](#bool) | optional | Optional. Extract additional keywords from the query to improve retrieval. |
| rerank_id | [string](#string) |  | Optional. Rerank model ID to reorder results after initial retrieval. |
| additional_fields | [google.protobuf.Struct](#google.protobuf.Struct) |  | Optional. Additional fields to pass through to RAGFlow. |






<a name="ondewo.nlu.RagRetrievalResponse"></a>

### RagRetrievalResponse
Response message for chunk retrieval.


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| chunks | [RagChunk](#ondewo.nlu.RagChunk) | repeated | Retrieved chunks with similarity scores populated (ordered by relevance). |
| doc_aggs | [google.protobuf.Struct](#google.protobuf.Struct) | repeated | Document aggregations providing statistics about which documents matched. |
| total | [int32](#int32) |  | Total number of chunks matching the query (not limited by pagination). |
| additional_fields | [google.protobuf.Struct](#google.protobuf.Struct) |  | Additional fields returned by RAGFlow not explicitly defined above. |






<a name="ondewo.nlu.RagSearchbotAskRequest"></a>

### RagSearchbotAskRequest
Request message for asking questions using RAGFlow&apos;s search application.
Search apps provide advanced retrieval with configurable settings.


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| parent | [string](#string) |  | Required. The agent to ask searchbot question for. Format: <pre><code>projects/&lt;project_uuid&gt;/agent</code></pre> |
| question | [string](#string) |  | Required. User question to search for and answer. |
| kb_ids | [string](#string) | repeated | Required. List of dataset IDs (knowledge base IDs) to search within. Called <code>kb_ids</code> in RAGFlow&apos;s internal API. |
| search_id | [string](#string) |  | Optional. Search application ID to load predefined configuration. If provided, uses the search app's retrieval settings and metadata filters. |
| additional_fields | [google.protobuf.Struct](#google.protobuf.Struct) |  | Optional. Additional fields to pass through to RAGFlow. |






<a name="ondewo.nlu.RagSearchbotDetailRequest"></a>

### RagSearchbotDetailRequest
Request message for retrieving detailed information about a search application.


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| parent | [string](#string) |  | Required. The agent to get searchbot detail for. Format: <pre><code>projects/&lt;project_uuid&gt;/agent</code></pre> |
| search_id | [string](#string) |  | Required. Search application ID to retrieve details for. |






<a name="ondewo.nlu.RagSearchbotDetailResponse"></a>

### RagSearchbotDetailResponse
Response message containing detailed information about a search application.


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| id | [string](#string) |  | Search application UUID. |
| avatar | [string](#string) |  | Base64-encoded avatar image or URL for the search app. |
| tenant_id | [string](#string) |  | Tenant ID that owns this search application. |
| name | [string](#string) |  | Search application name. |
| description | [string](#string) |  | Search application description. |
| create_by | [string](#string) |  | User ID of the creator. |
| search_config | [google.protobuf.Struct](#google.protobuf.Struct) |  | Complete search configuration including retrieval settings, filters, and LLM configuration. |
| update_time | [int64](#int64) |  | Last update timestamp (Unix timestamp in milliseconds). |
| nickname | [string](#string) |  | Display name (nickname) of the creator. |
| tenant_avatar | [string](#string) |  | Base64-encoded avatar image or URL for the tenant. |
| additional_fields | [google.protobuf.Struct](#google.protobuf.Struct) |  | Optional. Additional fields returned by RAGFlow. |






<a name="ondewo.nlu.RagSearchbotMindmapRequest"></a>

### RagSearchbotMindmapRequest
Request message for generating a mindmap visualization from search results.
Mindmaps organize retrieved information into hierarchical visual structures.


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| parent | [string](#string) |  | Required. The agent to generate searchbot mindmap for. Format: <pre><code>projects/&lt;project_uuid&gt;/agent</code></pre> |
| question | [string](#string) |  | Required. User question to generate mindmap around. |
| kb_ids | [string](#string) | repeated | Required. List of dataset IDs (knowledge base IDs) to search for mindmap content. |
| search_id | [string](#string) |  | Optional. Search application ID to load predefined configuration. If provided, uses the search app's retrieval and LLM settings. |
| additional_fields | [google.protobuf.Struct](#google.protobuf.Struct) |  | Optional. Additional fields to pass through to RAGFlow. |






<a name="ondewo.nlu.RagSearchbotMindmapResponse"></a>

### RagSearchbotMindmapResponse
Response message containing the generated mindmap structure.


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| mindmap | [google.protobuf.Struct](#google.protobuf.Struct) |  | Generated mindmap structure in hierarchical format. The structure organizes retrieved information into nodes and relationships. |






<a name="ondewo.nlu.RagSearchbotRelatedQuestionsRequest"></a>

### RagSearchbotRelatedQuestionsRequest
Request message for generating related questions using a search application.
Uses the search app&apos;s LLM configuration for question generation.


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| parent | [string](#string) |  | Required. The agent to generate searchbot related questions for. Format: <pre><code>projects/&lt;project_uuid&gt;/agent</code></pre> |
| question | [string](#string) |  | Required. Original user question to generate related questions from. |
| search_id | [string](#string) |  | Optional. Search application ID to load LLM configuration. If provided, uses the search app's configured language model for generation. |
| additional_fields | [google.protobuf.Struct](#google.protobuf.Struct) |  | Optional. Additional fields to pass through to RAGFlow. |






<a name="ondewo.nlu.RagSearchbotRetrievalRequest"></a>

### RagSearchbotRetrievalRequest
Request message for advanced search retrieval with extensive configuration options.
Provides fine-grained control over the search and ranking process.


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| parent | [string](#string) |  | Required. The agent to retrieve searchbot results for. Format: <pre><code>projects/&lt;project_uuid&gt;/agent</code></pre> |
| kb_id | [string](#string) | repeated | Required. List of dataset IDs (knowledge base IDs) to search. Called <code>dataset_ids</code> in RAGFlow&apos;s response format. |
| question | [string](#string) |  | Required. Search query string. |
| page | [int32](#int32) |  | Optional. Page number for pagination. Default: 1. |
| size | [int32](#int32) |  | Optional. Number of results per page. Default: 30. |
| doc_ids | [string](#string) | repeated | Optional. Filter results to specific document IDs only. Useful for searching within a subset of documents. |
| similarity_threshold | [float](#float) |  | Optional. Minimum similarity score threshold (0.0-1.0). Default: 0.0 (no filtering by score). |
| vector_similarity_weight | [float](#float) |  | Optional. Weight balance between vector similarity and keyword matching (0.0-1.0). Higher values favor vector similarity, lower values favor keyword matching. Default: 0.3. |
| use_kg | [bool](#bool) | optional | Optional. Whether to use knowledge graph for enhanced retrieval. Knowledge graphs can improve context and entity relationships. |
| top_k | [int32](#int32) |  | Optional. Maximum number of results to retrieve before reranking. Default: 1024. |
| cross_languages | [string](#string) | repeated | Optional. Languages to enable cross-language translation. Called <code>langs</code> in RAGFlow&apos;s internal API. |
| keyword | [bool](#bool) | optional | Optional. Whether to extract and return additional keywords from the query. |
| rerank_id | [string](#string) |  | Optional. Rerank model ID for post-processing retrieved results. Reranking can improve relevance of final results. |
| search_id | [string](#string) |  | Optional. Search application ID to load predefined metadata filters. |
| highlight | [bool](#bool) | optional | Optional. Whether to highlight matched content in the returned chunks. |
| additional_fields | [google.protobuf.Struct](#google.protobuf.Struct) |  | Optional. Additional fields to pass through to RAGFlow. |






<a name="ondewo.nlu.RagSearchbotRetrievalResponse"></a>

### RagSearchbotRetrievalResponse
Response message containing search retrieval results with metadata.


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| chunks | [RagChunk](#ondewo.nlu.RagChunk) | repeated | List of retrieved chunks with similarity scores and content. |
| doc_aggs | [google.protobuf.Struct](#google.protobuf.Struct) | repeated | Document aggregations providing statistics per source document. Typically includes document IDs and match counts. |
| total | [int32](#int32) |  | Total number of matching chunks across all pages. Used for pagination calculations. |
| labels | [string](#string) | repeated | Extracted labels or categories from the results. |
| additional_fields | [google.protobuf.Struct](#google.protobuf.Struct) |  | Optional. Additional fields returned by RAGFlow. |






<a name="ondewo.nlu.RagStopParsingRequest"></a>

### RagStopParsingRequest
Request message for stopping document parsing.<br>
Only documents currently being processed can be stopped.


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| parent | [string](#string) |  | Required. The agent to stop parsing for. Format: <pre><code>projects/&lt;project_uuid&gt;/agent</code></pre> |
| dataset_id | [string](#string) |  | Required. Dataset ID containing the documents to stop parsing. |
| document_ids | [string](#string) | repeated | Required. Document IDs to stop parsing (only stops documents with progress between <code>0</code> and <code>1</code>). |






<a name="ondewo.nlu.RagUpdateAgentRequest"></a>

### RagUpdateAgentRequest
Request message for updating an existing RAGFlow agent.


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| parent | [string](#string) |  | Required. The agent to update the RAGFlow agent for. Format: <pre><code>projects/&lt;project_uuid&gt;/agent</code></pre> |
| agent_id | [string](#string) |  | Required. ID of the RAGFlow agent to update. |
| title | [string](#string) |  | Optional. New agent title. If provided, must be unique within the project. |
| description | [string](#string) |  | Optional. New agent description. |
| dsl | [google.protobuf.Struct](#google.protobuf.Struct) |  | Optional. New Domain Specific Language (DSL) configuration. A version snapshot is automatically created when the DSL is updated. Only the agent owner can update the DSL. |
| additional_fields | [google.protobuf.Struct](#google.protobuf.Struct) |  | Optional. Additional fields to pass through to RAGFlow API. |






<a name="ondewo.nlu.RagUpdateChatRequest"></a>

### RagUpdateChatRequest
Request message for updating an existing chat assistant.


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| parent | [string](#string) |  | Required. The agent containing the chat assistant to update. Format: <pre><code>projects/&lt;project_uuid&gt;/agent</code></pre> |
| chat_id | [string](#string) |  | Required. UUID of the chat assistant to update. |
| name | [string](#string) |  | Optional. New name (must be unique within the agent). |
| description | [string](#string) |  | Optional. New description. |
| avatar | [string](#string) |  | Optional. New base64-encoded avatar image. |
| dataset_ids | [string](#string) | repeated | Optional. New dataset IDs (all datasets must have parsed files and use the same embedding model). |
| llm | [RagLLMSetting](#ondewo.nlu.RagLLMSetting) |  | Optional. New LLM configuration settings (merged with existing configuration). |
| prompt | [RagPromptConfig](#ondewo.nlu.RagPromptConfig) |  | Optional. New prompt configuration settings (merged with existing configuration). |
| additional_fields | [google.protobuf.Struct](#google.protobuf.Struct) |  | Optional. Additional fields to pass through to RAGFlow. |






<a name="ondewo.nlu.RagUpdateChatSessionRequest"></a>

### RagUpdateChatSessionRequest
Request message for updating an existing chat session.


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| parent | [string](#string) |  | Required. The agent containing the chat session to update. Format: <pre><code>projects/&lt;project_uuid&gt;/agent</code></pre> |
| chat_id | [string](#string) |  | Required. Chat assistant UUID. |
| session_id | [string](#string) |  | Required. Session UUID to update. |
| name | [string](#string) |  | Optional. New session name. |
| user_id | [string](#string) |  | Optional. User identifier. |
| additional_fields | [google.protobuf.Struct](#google.protobuf.Struct) |  | Optional. Additional fields to pass through to RAGFlow. |






<a name="ondewo.nlu.RagUpdateChunkRequest"></a>

### RagUpdateChunkRequest
Request message for updating an existing chunk&apos;s content and metadata.<br>
Content changes trigger re-tokenization and re-generation of embeddings.


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| parent | [string](#string) |  | Required. The agent to update the chunk for. Format: <pre><code>projects/&lt;project_uuid&gt;/agent</code></pre> |
| dataset_id | [string](#string) |  | Required. Dataset ID containing the document. |
| document_id | [string](#string) |  | Required. Document ID containing the chunk. |
| chunk_id | [string](#string) |  | Required. Chunk ID to update. |
| content | [string](#string) |  | Optional. New chunk content (re-tokenizes and re-generates embeddings if changed). |
| important_keywords | [string](#string) | repeated | Optional. Updated important keywords for this chunk. |
| questions | [string](#string) | repeated | Optional. Updated questions associated with this chunk. |
| available | [bool](#bool) | optional | Optional. Availability status (disable chunk without deleting it). |
| additional_fields | [google.protobuf.Struct](#google.protobuf.Struct) |  | Optional. Additional fields to pass through to RAGFlow. |






<a name="ondewo.nlu.RagUpdateDatasetRequest"></a>

### RagUpdateDatasetRequest
Request message for updating an existing dataset.


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| parent | [string](#string) |  | Required. The agent to update the dataset for. Format: <pre><code>projects/&lt;project_uuid&gt;/agent</code></pre> |
| dataset_id | [string](#string) |  | Required. Dataset ID. |
| name | [string](#string) |  | Optional. New dataset name. |
| description | [string](#string) |  | Optional. New dataset description. |
| avatar | [string](#string) |  | Optional. New avatar image. |
| permission | [RagPermission](#ondewo.nlu.RagPermission) |  | Optional. New access permission. |
| chunk_method | [RagChunkMethod](#ondewo.nlu.RagChunkMethod) |  | Optional. New chunk method. |
| parser_config | [RagParserConfig](#ondewo.nlu.RagParserConfig) |  | Optional. New parser config (deep merged with existing). |
| embedding_model | [string](#string) |  | Optional. New embedding model (cannot change if chunk_count &gt; 0). |
| pagerank | [int32](#int32) |  | Optional. PageRank value (only for elasticsearch). |
| additional_fields | [google.protobuf.Struct](#google.protobuf.Struct) |  | Optional. Additional fields to pass through to RAGFlow. |






<a name="ondewo.nlu.RagUpdateDocumentRequest"></a>

### RagUpdateDocumentRequest
Request message for updating an existing document's metadata and configuration.


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| parent | [string](#string) |  | Required. The agent to update the document for. Format: <pre><code>projects/&lt;project_uuid&gt;/agent</code></pre> |
| dataset_id | [string](#string) |  | Required. Dataset ID containing the document. |
| document_id | [string](#string) |  | Required. Document ID to update. |
| name | [string](#string) |  | Optional. New document name (file extension must remain the same). |
| chunk_method | [RagChunkMethod](#ondewo.nlu.RagChunkMethod) |  | Optional. New chunking method (resets document to <code>UNSTART</code> status and deletes all existing chunks). |
| parser_config | [RagParserConfig](#ondewo.nlu.RagParserConfig) |  | Optional. New parser configuration (deep merged with existing configuration). |
| enabled | [bool](#bool) | optional | Optional. Document enabled/disabled status. |
| meta_fields | [google.protobuf.Struct](#google.protobuf.Struct) |  | Optional. Custom metadata fields for document-specific metadata (replaces existing metadata). |
| additional_fields | [google.protobuf.Struct](#google.protobuf.Struct) |  | Optional. Additional fields to pass through to RAGFlow. |






<a name="ondewo.nlu.RagUploadChunk"></a>

### RagUploadChunk
Upload chunk for streaming uploads.
Used to stream file data after metadata is sent in first message.


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| file_index | [int32](#int32) | optional | Not actually optional but <code>optional</code> keyword is needed to enable presence tracking. Without it, it is impossible to distinguish between <code>0</code> and not present. Index into metadata.files array (0-based). |
| data | [bytes](#bytes) |  | Chunk of file content, null indicates EOF. |






<a name="ondewo.nlu.RagUploadDocumentsRequest"></a>

### RagUploadDocumentsRequest
Request message for uploading documents to a dataset.<br>
Documents are uploaded via streaming multipart form data.


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| parent | [string](#string) |  | Required. The agent to upload documents for. Format: <pre><code>projects/&lt;project_uuid&gt;/agent</code></pre> |
| metadata | [RagUploadDocumentsRequest.RagMetadata](#ondewo.nlu.RagUploadDocumentsRequest.RagMetadata) |  | First message: declares all files to be uploaded. |
| chunk | [RagUploadChunk](#ondewo.nlu.RagUploadChunk) |  | Subsequent messages: stream file data chunks. |






<a name="ondewo.nlu.RagUploadDocumentsRequest.RagMetadata"></a>

### RagUploadDocumentsRequest.RagMetadata
Metadata for the upload (first message only).


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| dataset_id | [string](#string) |  | Required. Target dataset ID to upload documents to. |
| files | [RagFileMetadata](#ondewo.nlu.RagFileMetadata) | repeated | Required. Metadata for all files being uploaded in this stream. |






<a name="ondewo.nlu.RagUploadFilesRequest"></a>

### RagUploadFilesRequest
Request message for uploading files via streaming multipart form data.
RAGFlow supports individual and bulk file uploads. Files can be uploaded to a specific folder
or to the root directory if no parent folder is specified.


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| parent | [string](#string) |  | Required. The agent to upload files for. Format: <pre><code>projects/&lt;project_uuid&gt;/agent</code></pre> |
| metadata | [RagUploadFilesRequest.RagMetadata](#ondewo.nlu.RagUploadFilesRequest.RagMetadata) |  | First message: declares all files to be uploaded. |
| chunk | [RagUploadChunk](#ondewo.nlu.RagUploadChunk) |  | Subsequent messages: stream file data in chunks. |






<a name="ondewo.nlu.RagUploadFilesRequest.RagMetadata"></a>

### RagUploadFilesRequest.RagMetadata
Metadata for the upload operation (must be sent in first message only).


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| parent_id | [string](#string) |  | Optional. Parent folder ID. If not provided, files will be uploaded to root directory. |
| files | [RagFileMetadata](#ondewo.nlu.RagFileMetadata) | repeated | Required. Metadata for all files being uploaded in this request. |





 <!-- end messages -->


<a name="ondewo.nlu.RagAgentEventType"></a>

### RagAgentEventType
Agent completion event type.

| Name | Number | Description |
| ---- | ------ | ----------- |
| message | 0 | Regular message event. |
| message_end | 1 | Message completion event. |



<a name="ondewo.nlu.RagChunkMethod"></a>

### RagChunkMethod
Chunking method for documents. See <a href="https://ragflow.io/docs/dev/configure_knowledge_base#select-chunking-method">https://ragflow.io/docs/dev/configure_knowledge_base#select-chunking-method</a> for details.

| Name | Number | Description |
| ---- | ------ | ----------- |
| naive | 0 | General (default). |
| book | 1 | Book. |
| email | 2 | Email. |
| laws | 3 | Laws. |
| manual | 4 | Manual. |
| one | 5 | One. |
| paper | 6 | Paper. |
| picture | 7 | Picture. |
| presentation | 8 | Presentation. |
| qa | 9 | Q&amp;A. |
| table | 10 | Table. |
| tag | 11 | Tag. |



<a name="ondewo.nlu.RagDocumentStatus"></a>

### RagDocumentStatus
Document processing status.

| Name | Number | Description |
| ---- | ------ | ----------- |
| UNSTART | 0 | Document has not started processing. |
| RUNNING | 1 | Document is currently being processed. |
| CANCEL | 2 | Document processing was cancelled. |
| DONE | 3 | Document processing completed successfully. |
| FAIL | 4 | Document processing failed. |



<a name="ondewo.nlu.RagMessageRole"></a>

### RagMessageRole
Role of message sender in conversation.

| Name | Number | Description |
| ---- | ------ | ----------- |
| user | 0 | Message from user. |
| assistant | 1 | Message from AI assistant. |
| system | 2 | System message. |



<a name="ondewo.nlu.RagPermission"></a>

### RagPermission
Access permissions for a dataset

| Name | Number | Description |
| ---- | ------ | ----------- |
| me | 0 | Only the current user can manage the dataset (default). |
| team | 1 | All team members of the current user can manage the dataset. |


 <!-- end enums -->

 <!-- end HasExtensions -->


<a name="ondewo.nlu.Rags"></a>

### Rags
Provides an interface for interacting with the RAGFlow RAG engine.
Covers all entpoints of the <a href="https://github.com/ondewo/ragflow">RAGFlow</a> HTTP API. For more information on RAGFlow refer to the <a href="https://ragflow.io/docs/dev/">official documentation</a>

| Method Name | Request Type | Response Type | Description |
| ----------- | ------------ | ------------- | ------------|
| RagCreateDataset | [RagCreateDatasetRequest](#ondewo.nlu.RagCreateDatasetRequest) | [RagDataset](#ondewo.nlu.RagDataset) | Create a new dataset (knowledge base).<br> Uses tenant&apos;s default embedding model if not specified. |
| RagUpdateDataset | [RagUpdateDatasetRequest](#ondewo.nlu.RagUpdateDatasetRequest) | [RagDataset](#ondewo.nlu.RagDataset) | Update an existing dataset&apos;s configuration.<br> Cannot change embedding_model if dataset has chunks. |
| RagDeleteDatasets | [RagDeleteDatasetsRequest](#ondewo.nlu.RagDeleteDatasetsRequest) | [RagPartialSuccess](#ondewo.nlu.RagPartialSuccess) | Delete one or more datasets (batch operation).<br> If ids is null or empty, deletes all user&apos;s datasets.<br> Deletes all associated documents, files, and chunks. |
| RagListDatasets | [RagListDatasetsRequest](#ondewo.nlu.RagListDatasetsRequest) | [RagDatasetList](#ondewo.nlu.RagDatasetList) | List datasets with pagination and filtering.<br> Returns datasets from all tenants the user has access to. |
| RagGetKnowledgeGraph | [RagGetKnowledgeGraphRequest](#ondewo.nlu.RagGetKnowledgeGraphRequest) | [RagGetKnowledgeGraphResponse](#ondewo.nlu.RagGetKnowledgeGraphResponse) | Get the knowledge graph for a dataset.<br> Returns graph structure with nodes (max 256) and edges (max 128). |
| RagDeleteKnowledgeGraph | [RagDeleteKnowledgeGraphRequest](#ondewo.nlu.RagDeleteKnowledgeGraphRequest) | [.google.protobuf.Empty](#google.protobuf.Empty) | Delete the knowledge graph for a dataset.<br> Deletes graph-related chunks but not the dataset itself. |
| RagUploadDocuments | [RagUploadDocumentsRequest](#ondewo.nlu.RagUploadDocumentsRequest) stream | [RagDocumentList](#ondewo.nlu.RagDocumentList) | Upload one or more documents to a dataset.<br> Documents start in UNSTART state and must be parsed. |
| RagUpdateDocument | [RagUpdateDocumentRequest](#ondewo.nlu.RagUpdateDocumentRequest) | [RagDocument](#ondewo.nlu.RagDocument) | Update document metadata and configuration.<br> Changing chunk_method resets document to UNSTART and deletes chunks. |
| RagDownloadDocument | [RagDownloadDocumentRequest](#ondewo.nlu.RagDownloadDocumentRequest) | [RagFileChunk](#ondewo.nlu.RagFileChunk) stream | Download the original document file.<br> Returns binary file stream from storage.<br> First chunk contains metadata, subsequent chunks only contain data. |
| RagListDocuments | [RagListDocumentsRequest](#ondewo.nlu.RagListDocumentsRequest) | [RagListDocumentsResponse](#ondewo.nlu.RagListDocumentsResponse) | List documents in a dataset with pagination and filtering.<br> Supports time range filtering and keyword search. |
| RagDeleteDocuments | [RagDeleteDocumentsRequest](#ondewo.nlu.RagDeleteDocumentsRequest) | [RagPartialSuccess](#ondewo.nlu.RagPartialSuccess) | Delete one or more documents from a dataset (batch operation).<br> If ids empty, deletes all documents. Removes chunks and storage files. |
| RagParseDocuments | [RagParseDocumentsRequest](#ondewo.nlu.RagParseDocumentsRequest) | [RagPartialSuccess](#ondewo.nlu.RagPartialSuccess) | Start parsing documents into chunks.<br> Cannot parse documents currently being processed (0 &lt; progress &lt; 1).<br> Queues documents for background processing. |
| RagStopParsing | [RagStopParsingRequest](#ondewo.nlu.RagStopParsingRequest) | [RagPartialSuccess](#ondewo.nlu.RagPartialSuccess) | Stop parsing documents.<br> Can only stop documents with progress between 0 and 1. |
| RagListChunks | [RagListChunksRequest](#ondewo.nlu.RagListChunksRequest) | [RagListChunksResponse](#ondewo.nlu.RagListChunksResponse) | List chunks of a document with pagination.<br> Supports keyword search with content highlighting. |
| RagAddChunk | [RagAddChunkRequest](#ondewo.nlu.RagAddChunkRequest) | [RagAddChunkResponse](#ondewo.nlu.RagAddChunkResponse) | Manually add a chunk to a document.<br> Automatically tokenizes content and generates embeddings. |
| RagRemoveChunks | [RagRemoveChunksRequest](#ondewo.nlu.RagRemoveChunksRequest) | [RagPartialSuccess](#ondewo.nlu.RagPartialSuccess) | Remove one or more chunks from a document.<br> If chunk_ids empty, removes all chunks from document. |
| RagUpdateChunk | [RagUpdateChunkRequest](#ondewo.nlu.RagUpdateChunkRequest) | [.google.protobuf.Empty](#google.protobuf.Empty) | Update an existing chunk&apos;s content and metadata.<br> Re-tokenizes content and re-generates embeddings if content changed. |
| RagRetrieval | [RagRetrievalRequest](#ondewo.nlu.RagRetrievalRequest) | [RagRetrievalResponse](#ondewo.nlu.RagRetrievalResponse) | Retrieve chunks using vector similarity search.<br> All datasets must use the same embedding model.<br> Supports reranking, metadata filtering, and knowledge graph retrieval. |
| RagCreateChat | [RagCreateChatRequest](#ondewo.nlu.RagCreateChatRequest) | [RagChat](#ondewo.nlu.RagChat) | Create a new chat assistant.<br> All datasets must have parsed files (chunk_num &gt; 0).<br> All datasets must use the same embedding model. |
| RagUpdateChat | [RagUpdateChatRequest](#ondewo.nlu.RagUpdateChatRequest) | [.google.protobuf.Empty](#google.protobuf.Empty) | Update an existing chat assistant&apos;s configuration.<br> LLM and prompt configs are merged with existing values. |
| RagDeleteChats | [RagDeleteChatsRequest](#ondewo.nlu.RagDeleteChatsRequest) | [RagPartialSuccess](#ondewo.nlu.RagPartialSuccess) | Delete one or more chat assistants (batch operation).<br> If ids empty, deletes all user&apos;s chats (soft delete). |
| RagListChats | [RagListChatsRequest](#ondewo.nlu.RagListChatsRequest) | [RagChatList](#ondewo.nlu.RagChatList) | List chat assistants with pagination.<br> Returns full dataset objects (not just IDs). |
| RagCreateChatSession | [RagCreateChatSessionRequest](#ondewo.nlu.RagCreateChatSessionRequest) | [RagChatSession](#ondewo.nlu.RagChatSession) | Create a new chat session (conversation).<br> Session initialized with assistant&apos;s prologue message. |
| RagCreateAgentSession | [RagCreateAgentSessionRequest](#ondewo.nlu.RagCreateAgentSessionRequest) | [RagAgentSession](#ondewo.nlu.RagAgentSession) | Create a new agent session.<br> Initializes Canvas with agent&apos;s DSL configuration. |
| RagUpdateChatSession | [RagUpdateChatSessionRequest](#ondewo.nlu.RagUpdateChatSessionRequest) | [.google.protobuf.Empty](#google.protobuf.Empty) | Update a chat session&apos;s metadata (name only).<br> Cannot update message or reference fields. |
| RagListChatSessions | [RagListChatSessionsRequest](#ondewo.nlu.RagListChatSessionsRequest) | [RagChatSessionList](#ondewo.nlu.RagChatSessionList) | List sessions for a chat assistant.<br> Returns message history with embedded chunk references. |
| RagListAgentSessions | [RagListAgentSessionsRequest](#ondewo.nlu.RagListAgentSessionsRequest) | [RagAgentSessionList](#ondewo.nlu.RagAgentSessionList) | List sessions for an agent.<br> Can optionally exclude DSL from response for performance. |
| RagDeleteChatSessions | [RagDeleteChatSessionsRequest](#ondewo.nlu.RagDeleteChatSessionsRequest) | [RagPartialSuccess](#ondewo.nlu.RagPartialSuccess) | Delete one or more chat sessions (batch operation).<br> If ids empty, deletes all sessions for the chat (hard delete). |
| RagDeleteAgentSessions | [RagDeleteAgentSessionsRequest](#ondewo.nlu.RagDeleteAgentSessionsRequest) | [RagPartialSuccess](#ondewo.nlu.RagPartialSuccess) | Delete one or more agent sessions (batch operation).<br> If ids empty, deletes all sessions for the agent (hard delete). |
| RagChatCompletion | [RagChatCompletionRequest](#ondewo.nlu.RagChatCompletionRequest) | [RagChatCompletionResponse](#ondewo.nlu.RagChatCompletionResponse) stream | Generate chat completion with RAG (server streaming).<br> Creates new session if session_id not provided. |
| RagOpenAiChatCompletion | [RagOpenAiChatCompletionRequest](#ondewo.nlu.RagOpenAiChatCompletionRequest) | [RagOpenAiChatCompletionResponse](#ondewo.nlu.RagOpenAiChatCompletionResponse) stream | OpenAI-compatible chat completion endpoint (server streaming).<br> Compatible with OpenAI Python client.<br> Supports reasoning content in &lt;redacted_reasoning&gt; tags. |
| RagAgentCompletion | [RagAgentCompletionRequest](#ondewo.nlu.RagAgentCompletionRequest) | [RagAgentCompletionResponse](#ondewo.nlu.RagAgentCompletionResponse) stream | Generate agent completion (server streaming).<br> Filters events to only return message-related events. |
| RagOpenAiAgentCompletion | [RagOpenAiAgentCompletionRequest](#ondewo.nlu.RagOpenAiAgentCompletionRequest) | [RagOpenAiChatCompletionResponse](#ondewo.nlu.RagOpenAiChatCompletionResponse) stream | OpenAI-compatible agent completion endpoint (server streaming).<br> Uses tiktoken for token counting. |
| RagCreateAgent | [RagCreateAgentRequest](#ondewo.nlu.RagCreateAgentRequest) | [.google.protobuf.Empty](#google.protobuf.Empty) | Create a new agent with DSL configuration.<br> Title must be unique for the user. |
| RagUpdateAgent | [RagUpdateAgentRequest](#ondewo.nlu.RagUpdateAgentRequest) | [.google.protobuf.Empty](#google.protobuf.Empty) | Update an existing agent.<br> DSL updates create new version snapshot. Only owner can update. |
| RagDeleteAgent | [RagDeleteAgentRequest](#ondewo.nlu.RagDeleteAgentRequest) | [.google.protobuf.Empty](#google.protobuf.Empty) | Delete an agent (hard delete).<br> Only owner can delete. |
| RagListAgents | [RagListAgentsRequest](#ondewo.nlu.RagListAgentsRequest) | [RagAgentList](#ondewo.nlu.RagAgentList) | List agents with pagination.<br> Only returns user&apos;s own agents. |
| RagUploadFiles | [RagUploadFilesRequest](#ondewo.nlu.RagUploadFilesRequest) stream | [RagFileList](#ondewo.nlu.RagFileList) | Upload one or more files via multipart form data.<br> Supports nested folder paths in filename.<br> Auto-creates intermediate folders. |
| RagCreateFile | [RagCreateFileRequest](#ondewo.nlu.RagCreateFileRequest) | [RagFile](#ondewo.nlu.RagFile) | Create a new folder.<br> Duplicate names in same folder not allowed. |
| RagListFiles | [RagListFilesRequest](#ondewo.nlu.RagListFilesRequest) | [RagListFilesResponse](#ondewo.nlu.RagListFilesResponse) | List files in a folder with pagination.<br> Supports keyword search. Auto-initializes knowledgebase docs folder. |
| RagGetRootFolder | [RagGetRootFolderRequest](#ondewo.nlu.RagGetRootFolderRequest) | [RagGetRootFolderResponse](#ondewo.nlu.RagGetRootFolderResponse) | Get user&apos;s root folder information.<br> Each tenant has a unique root folder. |
| RagGetParentFolder | [RagGetParentFolderRequest](#ondewo.nlu.RagGetParentFolderRequest) | [RagGetParentFolderResponse](#ondewo.nlu.RagGetParentFolderResponse) | Get the parent folder of a file.<br> Returns 404 if file or parent not found. |
| RagGetAllParentFolders | [RagGetAllParentFoldersRequest](#ondewo.nlu.RagGetAllParentFoldersRequest) | [RagGetAllParentFoldersResponse](#ondewo.nlu.RagGetAllParentFoldersResponse) | Get all parent folders (breadcrumb path) of a file.<br> Returns array from file itself to root (includes the file, ordered deepest to root). |
| RagDeleteFiles | [RagDeleteFilesRequest](#ondewo.nlu.RagDeleteFilesRequest) | [.google.protobuf.Empty](#google.protobuf.Empty) | Delete one or more files/folders (hard delete).<br> Recursively deletes folder contents. Removes from storage. |
| RagRenameFile | [RagRenameFileRequest](#ondewo.nlu.RagRenameFileRequest) | [.google.protobuf.Empty](#google.protobuf.Empty) | Rename a file or folder.<br> Cannot change file extension. Duplicate names not allowed. |
| RagGetFile | [RagGetFileRequest](#ondewo.nlu.RagGetFileRequest) | [RagFileChunk](#ondewo.nlu.RagFileChunk) stream | Download a file.<br> Retrieves from MinIO/S3 storage.<br> First chunk contains metadata, subsequent chunks only contain data. |
| RagMoveFile | [RagMoveFileRequest](#ondewo.nlu.RagMoveFileRequest) | [.google.protobuf.Empty](#google.protobuf.Empty) | Move one or more files to another folder.<br> Validates all files and destination exist. |
| RagFileToDocument | [RagFileToDocumentRequest](#ondewo.nlu.RagFileToDocumentRequest) | [RagFileToDocumentList](#ondewo.nlu.RagFileToDocumentList) | Convert files to documents and add to datasets.<br> Handles folders recursively (converts all inner files).<br> Links files to multiple datasets if multiple dataset_ids provided. |
| RagDifyRetrieval | [RagDifyRetrievalRequest](#ondewo.nlu.RagDifyRetrievalRequest) | [RagDifyRecordList](#ondewo.nlu.RagDifyRecordList) | Retrieve chunks in Dify-compatible format.<br> Uses API key authentication (not Bearer token). |
| RagAsk | [RagAskRequest](#ondewo.nlu.RagAskRequest) | [RagAskResponse](#ondewo.nlu.RagAskResponse) stream | Ask a question across datasets without a chat assistant.<br> Streaming only. All datasets must have parsed files. |
| RagRelatedQuestions | [RagRelatedQuestionsRequest](#ondewo.nlu.RagRelatedQuestionsRequest) | [RagRelatedQuestionsResponse](#ondewo.nlu.RagRelatedQuestionsResponse) | Generate related search terms for a question.<br> Returns 5-10 suggestions considering industry context. |
| RagChatbotCompletion | [RagChatbotCompletionRequest](#ondewo.nlu.RagChatbotCompletionRequest) | [RagChatCompletionResponse](#ondewo.nlu.RagChatCompletionResponse) stream | Chat completion for iframe/embedded chatbot (server streaming).<br> Uses API key from APIToken table. |
| RagChatbotInfo | [RagChatbotInfoRequest](#ondewo.nlu.RagChatbotInfoRequest) | [RagChatbotInfoResponse](#ondewo.nlu.RagChatbotInfoResponse) | Get chatbot information for embedded UI initialization.<br> Returns title, avatar, and prologue. |
| RagAgentbotCompletion | [RagAgentbotCompletionRequest](#ondewo.nlu.RagAgentbotCompletionRequest) | [RagAgentCompletionResponse](#ondewo.nlu.RagAgentCompletionResponse) stream | Agent completion for iframe/embedded agentbot (server streaming).<br> Uses API key authentication. |
| RagAgentbotInputs | [RagAgentbotInputsRequest](#ondewo.nlu.RagAgentbotInputsRequest) | [RagAgentbotInputsResponse](#ondewo.nlu.RagAgentbotInputsResponse) | Get agent input form configuration for embedded UI.<br> Returns input schema from &quot;begin&quot; component in DSL. |
| RagSearchbotAsk | [RagSearchbotAskRequest](#ondewo.nlu.RagSearchbotAskRequest) | [RagAskResponse](#ondewo.nlu.RagAskResponse) stream | Ask question in searchbot with search app configuration.<br> Uses search app config if provided. |
| RagSearchbotRetrieval | [RagSearchbotRetrievalRequest](#ondewo.nlu.RagSearchbotRetrievalRequest) | [RagSearchbotRetrievalResponse](#ondewo.nlu.RagSearchbotRetrievalResponse) | Test retrieval with searchbot configuration.<br> Supports search app configuration with auto metadata filtering. |
| RagSearchbotRelatedQuestions | [RagSearchbotRelatedQuestionsRequest](#ondewo.nlu.RagSearchbotRelatedQuestionsRequest) | [RagRelatedQuestionsResponse](#ondewo.nlu.RagRelatedQuestionsResponse) | Generate related questions for searchbot.<br> Uses search app LLM config if available. |
| RagSearchbotDetail | [RagSearchbotDetailRequest](#ondewo.nlu.RagSearchbotDetailRequest) | [RagSearchbotDetailResponse](#ondewo.nlu.RagSearchbotDetailResponse) | Get search app configuration details.<br> Requires user to have access to search app. |
| RagSearchbotMindmap | [RagSearchbotMindmapRequest](#ondewo.nlu.RagSearchbotMindmapRequest) | [.google.protobuf.Struct](#google.protobuf.Struct) | Generate mindmap for a question.<br> Uses search app config if provided. |

 <!-- end services -->



<a name="ondewo/nlu/server_statistics.proto"></a>
<p align="right"><a href="#top">Top</a></p>

## ondewo/nlu/server_statistics.proto



<a name="ondewo.nlu.GetUserProjectCountRequest"></a>

### GetUserProjectCountRequest
Request to get user project count


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| user_id | [string](#string) |  | Required. The ID of the User to count the projects from |





 <!-- end messages -->

 <!-- end enums -->

 <!-- end HasExtensions -->


<a name="ondewo.nlu.ServerStatistics"></a>

### ServerStatistics
Server project statistics

| Method Name | Request Type | Response Type | Description |
| ----------- | ------------ | ------------- | ------------|
| GetProjectCount | [.google.protobuf.Empty](#google.protobuf.Empty) | [StatResponse](#ondewo.nlu.StatResponse) | Returns the count of projects in the CAI server |
| GetUserProjectCount | [GetUserProjectCountRequest](#ondewo.nlu.GetUserProjectCountRequest) | [StatResponse](#ondewo.nlu.StatResponse) | Returns the count of projects of a user |
| GetUserCount | [.google.protobuf.Empty](#google.protobuf.Empty) | [StatResponse](#ondewo.nlu.StatResponse) | Returns the users count within a project |

 <!-- end services -->



<a name="ondewo/nlu/session.proto"></a>
<p align="right"><a href="#top">Top</a></p>

## ondewo/nlu/session.proto



<a name="ondewo.nlu.AddAudioFilesRequest"></a>

### AddAudioFilesRequest
This message is a request to add the audio files specified


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| parent | [string](#string) |  | Required. The project of this agent. Format: <pre><code>projects/&lt;project_uuid&gt;/agent</code></pre> |
| session_id | [string](#string) |  | The unique identifier of the session for which the audio files should be listed Format: <pre><code>projects/&lt;project_uuid&gt;/agent/sessions/&lt;session_uuid&gt;/&lt</code></pre> |
| audio_file_resources | [AudioFileResource](#ondewo.nlu.AudioFileResource) | repeated | AudioFileResources to be added |
| session_step_id | [string](#string) |  | The unique identifier of the session step for which the audio files should be listed Format: <pre><code>projects/&lt;project_uuid&gt;/agent/sessions/&lt;session_uuid&gt;/sessionsteps/&lt;session_step_uuid&gt;/&lt</code></pre> |






<a name="ondewo.nlu.AddAudioFilesResponse"></a>

### AddAudioFilesResponse
This message is a request to add the audio files specified


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| audio_file_resources | [AudioFileResource](#ondewo.nlu.AudioFileResource) | repeated | The unique identifier of the audio files for a specific session. Format: <pre><code>projects/&lt;project_uuid&gt;/agent/sessions/&lt;session_uuid&gt;/audios/&lt;audio_uuid&gt;</code></pre> |
| error_message | [string](#string) |  | error message if there are any. |






<a name="ondewo.nlu.AddSessionCommentRequest"></a>

### AddSessionCommentRequest
This message is a request to add a comment to a session


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| session_id | [string](#string) |  | The id of the session |
| comment | [Comment](#ondewo.nlu.Comment) |  | The comment to add to the session |






<a name="ondewo.nlu.AddSessionLabelsRequest"></a>

### AddSessionLabelsRequest
This message is a request to add session labels


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| session_id | [string](#string) |  | The id of the session |
| labels | [string](#string) | repeated | The labels to add to the session |






<a name="ondewo.nlu.AudioFileResource"></a>

### AudioFileResource



| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| name | [string](#string) |  | The unique identifier of the session for which the latest review should be returned Format: <pre><code>projects/&lt;project_uuid&gt;/agent/sessions/&lt;session_uuid&gt;/audios/&lt;audio_uuid&gt;</code></pre> |
| bytes | [bytes](#bytes) |  | Bytes of the audio file |
| language | [string](#string) |  | Language of the audio file |
| duration_in_s | [float](#float) |  | Duration in seconds and milliseconds of the audio file |
| sample_rate | [int32](#int32) |  | sample rate of the audio |
| audio_file_resource_type | [AudioFileResourceType](#ondewo.nlu.AudioFileResourceType) |  | File type of an audio resource |
| transcriptions | [S2tTranscription](#ondewo.nlu.S2tTranscription) | repeated | transcriptions of the user input sorted by score. A transcription can be from a speech-to-text system or a human |
| created_at | [google.protobuf.Timestamp](#google.protobuf.Timestamp) |  | Creation date and time. Read-only field. |
| modified_at | [google.protobuf.Timestamp](#google.protobuf.Timestamp) |  | Modification date and time. Read-only field. |
| created_by | [string](#string) |  | User id in form of a valid UUID. |
| modified_by | [string](#string) |  | User id in form of a valid UUID. |
| display_name | [string](#string) |  | Bytes of the audio file |






<a name="ondewo.nlu.ContextFilter"></a>

### ContextFilter
Message used to filter sessions based on contextual information


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| context_name | [string](#string) |  | name of the context |
| key | [string](#string) |  | name of the key of the context parameter |
| value | [string](#string) |  | value of the parameter |
| operator | [ComparisonOperator](#ondewo.nlu.ComparisonOperator) |  | comparison operator to use for filtering |






<a name="ondewo.nlu.CreateSessionRequest"></a>

### CreateSessionRequest
This message is a request to create a session


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| parent | [string](#string) |  | Required. The project that the agent to fetch is associated with. Format: <pre><code>projects/&lt;project_uuid&gt;/agents</code></pre> |
| session_uuid | [string](#string) |  | The unique UUID of a Session Format: UUID Version 4, e.g. 2f59fad2-06bc-4730-9920-d3148f28f357

Optional. If not provided, it will be auto-generated |
| labels | [string](#string) | repeated | Optional. labels for the session. |
| contexts | [Context](#ondewo.nlu.Context) | repeated | Optional. The collection of contexts to be activated before this query is executed. |






<a name="ondewo.nlu.CreateSessionReviewRequest"></a>

### CreateSessionReviewRequest



| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| session_id | [string](#string) |  | The unique identifier for the session under review Format: <pre><code>projects/&lt;project_uuid&gt;/agent/sessions/&lt;session_uuid&gt;</code></pre> |
| parent_review_id | [string](#string) |  | Optional: The unique identifier of the parent review Format: <pre><code>projects/&lt;project_uuid&gt;/agent/sessions/&lt;session_uuid&gt;/reviews/&lt;session_review_uuid&gt;</code></pre> |
| session_review | [SessionReview](#ondewo.nlu.SessionReview) |  | The reviews for all steps in the session |
| session_review_view | [SessionReview.View](#ondewo.nlu.SessionReview.View) |  | Represents the options for views of a session_review. A session_review can be a sizable object. Therefore, we provide a resource view that does not return all data |






<a name="ondewo.nlu.CreateSessionStepRequest"></a>

### CreateSessionStepRequest
CreateSessionStepRequest stores a session step into the session


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| session_id | [string](#string) |  | The unique identifier for the given review Format: <pre><code>projects/&lt;project_uuid&gt;/agent/sessions/&lt;session_uuid&gt;/sessionsteps/&lt;session_step_uuid&gt;</code></pre>. |
| session_step | [SessionStep](#ondewo.nlu.SessionStep) |  | The session step to be added |
| field_mask | [google.protobuf.FieldMask](#google.protobuf.FieldMask) |  | field mask specifying what the request should return, e.g. only name, created_at etc. |






<a name="ondewo.nlu.DeleteAudioFilesRequest"></a>

### DeleteAudioFilesRequest
This message is a request to the delete audio files specified


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| parent | [string](#string) |  | Required. The project of this agent. Format: <pre><code>projects/&lt;project_uuid&gt;/agent</code></pre> |
| names | [string](#string) | repeated | The unique identifier of the audio file of the specific session Format: <pre><code>projects/&lt;project_uuid&gt;/agent/sessions/&lt;session_uuid&gt;/audios/&lt;audio_uuid&gt;</code></pre> |






<a name="ondewo.nlu.DeleteAudioFilesResponse"></a>

### DeleteAudioFilesResponse
This message is a request to the delete audio files specified


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| names | [string](#string) | repeated | The unique identifier of the audio file of the specific session Format: <pre><code>projects/&lt;project_uuid&gt;/agent/sessions/&lt;session_uuid&gt;/audios/&lt;audio_uuid&gt;</code></pre> |
| error_message | [string](#string) |  | error message if there are any. |






<a name="ondewo.nlu.DeleteSessionCommentsRequest"></a>

### DeleteSessionCommentsRequest
This message is a request to delete a session comment


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| session_id | [string](#string) |  | The id of the session |
| comment_names | [string](#string) | repeated | The comment names to delete from the session |






<a name="ondewo.nlu.DeleteSessionLabelsRequest"></a>

### DeleteSessionLabelsRequest
This message is a request to delete session labels


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| session_id | [string](#string) |  | The id of the session |
| labels | [string](#string) | repeated | The labels to delete from the session |






<a name="ondewo.nlu.DeleteSessionRequest"></a>

### DeleteSessionRequest
This message is a request to delete a session


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| session_id | [string](#string) |  | Required. The session to be deleted Format: <pre><code>projects/&lt;project_uuid&gt;/agent/sessions/&lt;session_uuid&gt;</code></pre> |






<a name="ondewo.nlu.DeleteSessionStepRequest"></a>

### DeleteSessionStepRequest
This message is a request to delete a session step of a session


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| name | [string](#string) |  | The unique identifier for the given session step Format: <pre><code>projects/&lt;project_uuid&gt;/agent/sessions/&lt;session_uuid&gt;/sessionsteps/&lt;session_step_uuid&gt;</code></pre>. |






<a name="ondewo.nlu.DetectIntentRequest"></a>

### DetectIntentRequest
The request to detect user&apos;s intent.


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| session | [string](#string) |  | Required. The name of the session this query is sent to. Format: <code>projects/&lt;project_uuid&gt;/agent/sessions/&lt;session_uuid&gt;</code>. It&apos;s up to the API caller to choose an appropriate session ID. It can be a random number or some type of user identifier (preferably hashed). The length of the session ID must not exceed 36 bytes. |
| query_params | [QueryParameters](#ondewo.nlu.QueryParameters) |  | Optional. The parameters of this query. |
| query_input | [QueryInput](#ondewo.nlu.QueryInput) |  | Required. The input specification. It can be set to: <ol> <li>an audio config which instructs the speech recognizer how to process the speech audio,</li> <li>a conversational query in the form of text, or</li> <li>an event that specifies which intent to trigger.</li> </ol> |
| input_audio | [bytes](#bytes) |  | Optional. The natural language speech audio to be processed. This field should be populated iff <code>query_input</code> is set to an input audio config. A single request can contain up to 1 minute of speech audio data. |






<a name="ondewo.nlu.DetectIntentResponse"></a>

### DetectIntentResponse
The message returned from the DetectIntent method.


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| response_id | [string](#string) |  | The unique identifier of the response. It can be used to locate a response in the training example set or for reporting issues. |
| query_result | [QueryResult](#ondewo.nlu.QueryResult) |  | The results of the conversational query or event processing. |
| webhook_status | [google.rpc.Status](#google.rpc.Status) |  | Specifies the status of the webhook request. <code>webhook_status</code> is never populated in webhook requests. |






<a name="ondewo.nlu.DetectedIntent"></a>

### DetectedIntent
This message contains a detected intent


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| intent | [Intent](#ondewo.nlu.Intent) |  | intent |
| score | [float](#float) |  | score of intent detection |
| algorithm | [string](#string) |  | intent detection algorithm |
| fulfillment_messages | [Intent.Message](#ondewo.nlu.Intent.Message) | repeated | collection of rich messages to present to the user This field is set only for the first detected intent. For the rest of the intents the messages are not resolved and the raw messages for the current language code are available in self.intent.messages |
| required_param_missing | [bool](#bool) |  | This field is set to: <ul> <li><code>true</code> if the matched intent has required parameters and not all of the required parameter values have been collected.</li> <li><code>false</code> if all required parameter values have been collected, or if the matched intent doesn&apos;t contain any required parameters.</li> </ul> |






<a name="ondewo.nlu.DocumentFileResource"></a>

### DocumentFileResource
Represents a document file resource (e.g., text, markdown, PDF, DOCX).


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| name | [string](#string) |  | The unique identifier for the document file resource. Format: <pre><code>projects/&lt;project_uuid&gt;/agent/sessions/&lt;session_uuid&gt;/documents/&lt;document_uuid&gt;</code></pre> |
| display_name | [string](#string) |  | The display name of the document file, which can be the file name (e.g., "report.pdf") or a user-assigned name. |
| bytes | [bytes](#bytes) |  | The raw bytes of the document file (e.g., PDF, DOCX, TXT). |
| created_at | [google.protobuf.Timestamp](#google.protobuf.Timestamp) |  | Creation date and time of the document file. This is a read-only field. |
| modified_at | [google.protobuf.Timestamp](#google.protobuf.Timestamp) |  | The last modification date and time of the document file. This is a read-only field. |
| created_by | [string](#string) |  | The UUID of the user who created the document file. |
| modified_by | [string](#string) |  | The UUID of the user who last modified the document file. |






<a name="ondewo.nlu.EventInput"></a>

### EventInput
Events allow for matching intents by event name instead of the natural language input.
For instance, input <code>&lt;event: { name: &quot;welcome_event&quot;, parameters: { name: &quot;Sam&quot; } }&gt;</code> can trigger a personalized welcome response.
The parameter <code>name</code> may be used by the agent in the response: <code>&quot;Hello #welcome_event.name! What can I do for you today?&quot;</code>.


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| name | [string](#string) |  | Required. The unique identifier of the event. |
| parameters | [google.protobuf.Struct](#google.protobuf.Struct) |  | Optional. The collection of parameters associated with the event. |
| language_code | [string](#string) |  | Required. The language of this query. See <a href="https://dialogflow.com/docs/languages">Language Support</a> for a list of the currently supported language codes. Note that queries in the same session do not necessarily need to specify the same language. |






<a name="ondewo.nlu.FileResource"></a>

### FileResource
Represents a file resource that can either be an image, audio, document, or video file.


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| document_file_resource | [DocumentFileResource](#ondewo.nlu.DocumentFileResource) |  | Document file resource (e.g., markdown, text, word, powerpoint, pdf, excel etc.). |
| audio_file_resource | [AudioFileResource](#ondewo.nlu.AudioFileResource) |  | An audio file resource, such as a recording or sound file. |
| image_file_resource | [ImageFileResource](#ondewo.nlu.ImageFileResource) |  | An image file resource, such as a JPEG, PNG, etc. |
| video_file_resource | [VideoFileResource](#ondewo.nlu.VideoFileResource) |  | A video file resource, such as an MP4 or AVI file. |






<a name="ondewo.nlu.GetAudioFileOfSessionRequest"></a>

### GetAudioFileOfSessionRequest
This message is a request to get one one file combining all audios of a specific session


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| parent | [string](#string) |  | Required. The project of this agent. Format: <pre><code>projects/&lt;project_uuid&gt;/agent</code></pre> |
| session_id | [string](#string) |  | The unique identifier of the session for which the audio files should be combined Format: <pre><code>projects/&lt;project_uuid&gt;/agent/sessions/&lt;session_uuid&gt;/&lt</code></pre> |
| resource_view | [ResourceView](#ondewo.nlu.ResourceView) |  | Represents the options for views of resources |
| field_mask | [google.protobuf.FieldMask](#google.protobuf.FieldMask) | optional | Optional. The mask to control which fields gets returned. |






<a name="ondewo.nlu.GetAudioFilesRequest"></a>

### GetAudioFilesRequest
This message is a request to get audio files specified


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| parent | [string](#string) |  | Required. The project of this agent. Format: <pre><code>projects/&lt;project_uuid&gt;/agent</code></pre> |
| names | [string](#string) | repeated | The unique identifier of the audio file of the specific session Format: <pre><code>projects/&lt;project_uuid&gt;/agent/sessions/&lt;session_uuid&gt;/audios/&lt;audio_uuid&gt;</code></pre> |
| resource_view | [ResourceView](#ondewo.nlu.ResourceView) |  | Represents the options for views of resources |
| page_token | [string](#string) |  | Optional: The page token to support pagination. Pagination allows you to retrieve a large result set in smaller, more manageable portions. The page token is a string representing the current index and page size.

Valid page token strings: <ul> <li><code>&quot;&quot;</code> (empty string) - Retrieves the first page.</li> <li><code>&quot;current_index-0--page_size-20&quot;</code> - Retrieves the first page with a page size of 20.</li> <li><code>&quot;current_index-1--page_size-20&quot;</code> - Retrieves the second page with a page size of 20.</li> </ul>

Index starts at 0.

Examples of valid page token strings: <ul> <li><code>&quot;&quot;</code></li> <li><code>&quot;current_index-0--page_size-20&quot;</code></li> <li><code>&quot;current_index-1--page_size-20&quot;</code></li> <li><code>&quot;current_index-10--page_size-20&quot;</code></li> </ul>

Examples of invalid page token strings: <ul> <li><code>&quot;1&quot;</code></li> <li><code>&quot;current_index-0--page_size-20&quot;</code></li> <li><code>&quot;current_index--1--page_size-20&quot;</code></li> <li><code>&quot;current_index1--page_size-20&quot;</code></li> <li><code>&quot;current_index-1--page_size--20&quot;</code></li> </ul> |
| sorting_mode | [SortingMode](#ondewo.nlu.SortingMode) |  | sorting mode |
| field_mask | [google.protobuf.FieldMask](#google.protobuf.FieldMask) | optional | Optional. The mask to control which fields gets returned. |






<a name="ondewo.nlu.GetAudioFilesResponse"></a>

### GetAudioFilesResponse
This message is a request to retrieve the audio files specified


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| audio_files | [AudioFileResource](#ondewo.nlu.AudioFileResource) | repeated | The unique identifier of the audio file for a specific session. Format: <pre><code>projects/&lt;project_uuid&gt;/agent/sessions/&lt;session_uuid&gt;/audios/&lt;audio_uuid&gt;</code></pre> |
| error_message | [string](#string) |  | error message if there are any. |
| next_page_token | [string](#string) |  | The next_page_token is used to retrieve the next page of a returned result, e.g. next_page_token is current_index-2 |






<a name="ondewo.nlu.GetLatestSessionReviewRequest"></a>

### GetLatestSessionReviewRequest
This message is a request to get latest session review


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| session_id | [string](#string) |  | The unique identifier of the session for which the latest review should be returned Format: <pre><code>projects/&lt;project_uuid&gt;/agent/sessions/&lt;session_uuid&gt;</code></pre> |
| session_review_view | [SessionReview.View](#ondewo.nlu.SessionReview.View) |  | An enum specifying the amount of information to be returned for the desired session review |
| field_mask | [google.protobuf.FieldMask](#google.protobuf.FieldMask) | optional | Optional. The mask to control which fields gets returned. |






<a name="ondewo.nlu.GetSessionRequest"></a>

### GetSessionRequest
This message is a request to get a session


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| session_id | [string](#string) |  | The session to be returned Format: <pre><code>projects/&lt;project_uuid&gt;/agent/sessions/&lt;session_uuid&gt;</code></pre> |
| session_view | [Session.View](#ondewo.nlu.Session.View) |  | whether to return a full or sparse view; if unspecified full view is returned |
| field_mask | [google.protobuf.FieldMask](#google.protobuf.FieldMask) |  | Optional. The mask to control which fields will be filled with data. Example: path=["session_info.duration_in_s_min"] |






<a name="ondewo.nlu.GetSessionReviewRequest"></a>

### GetSessionReviewRequest
This message is a request to get session review


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| session_review_id | [string](#string) |  | The unique identifier of the session review to be returned |
| session_review_view | [SessionReview.View](#ondewo.nlu.SessionReview.View) |  | The view of the session review to be returned |
| field_mask | [google.protobuf.FieldMask](#google.protobuf.FieldMask) | optional | Optional. The mask to control which fields gets returned. |






<a name="ondewo.nlu.GetSessionStepRequest"></a>

### GetSessionStepRequest
This message is a request to get a session step


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| name | [string](#string) |  | The unique identifier for the given session step Format: <pre><code>projects/&lt;project_uuid&gt;/agent/sessions/&lt;session_uuid&gt;/sessionsteps/&lt;session_step_uuid&gt; |
| field_mask | [google.protobuf.FieldMask](#google.protobuf.FieldMask) |  | Optional. The mask to control which fields will be filled with data. Example: path=["session_step.detect_intent_response.query_result.fulfillment_messages"] |






<a name="ondewo.nlu.ImageFileResource"></a>

### ImageFileResource



| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| name | [string](#string) |  | The unique identifier of the session for which the latest review should be returned Format: <pre><code>projects/&lt;project_uuid&gt;/agent/sessions/&lt;session_uuid&gt;/images/&lt;image_uuid&gt;</code></pre> |
| display_name | [string](#string) |  | File name of the image, e.g., MyPicture.jpg, or a user assigned display name |
| bytes | [bytes](#bytes) |  | Bytes of the audio file |
| created_at | [google.protobuf.Timestamp](#google.protobuf.Timestamp) |  | Creation date and time. Read-only field. |
| modified_at | [google.protobuf.Timestamp](#google.protobuf.Timestamp) |  | Modification date and time. Read-only field. |
| created_by | [string](#string) |  | User id in form of a valid UUID. |
| modified_by | [string](#string) |  | User id in form of a valid UUID. |






<a name="ondewo.nlu.InputAudioConfig"></a>

### InputAudioConfig
Instructs the speech recognizer how to process the audio content.


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| audio_encoding | [AudioEncoding](#ondewo.nlu.AudioEncoding) |  | Required. Audio encoding of the audio content to process. |
| sample_rate_hertz | [int32](#int32) |  | Required. Sample rate (in Hertz) of the audio content sent in the query. Refer to <a href="/speech/docs/basics">Cloud Speech API documentation</a> for more details. |
| language_code | [string](#string) |  | Required. The language of the supplied audio. Dialogflow does not do translations. See <a href="https://dialogflow.com/docs/languages">Language Support</a> for a list of the currently supported language codes. Note that queries in the same session do not necessarily need to specify the same language. |
| phrase_hints | [string](#string) | repeated | Optional. The collection of phrase hints which are used to boost accuracy of speech recognition. Refer to <a href="/speech/docs/basics#phrase-hints">Cloud Speech API documentation</a> for more details. |






<a name="ondewo.nlu.ListAccountIdsOfAllSessionsRequest"></a>

### ListAccountIdsOfAllSessionsRequest
request to list all account_ids of all sessions


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| parent | [string](#string) |  | The parent for which the account_ids for all sessions should be listed Format: <pre><code>projects/&lt;project_uuid&gt;/agent</code></pre> |
| session_filter | [SessionFilter](#ondewo.nlu.SessionFilter) |  | Optional. A filter to narrow the response down to sessions of interest. |
| field_mask | [google.protobuf.FieldMask](#google.protobuf.FieldMask) | optional | Optional. The mask to control which fields gets returned. |






<a name="ondewo.nlu.ListAccountIdsResponse"></a>

### ListAccountIdsResponse
This message is a response of listing session account_ids


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| account_ids | [string](#string) | repeated | The account_ids of the session |






<a name="ondewo.nlu.ListAudioFilesRequest"></a>

### ListAudioFilesRequest
This message is a request to list all available audio files of a session


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| parent | [string](#string) |  | Required. The project of this agent. Format: <pre><code>projects/&lt;project_uuid&gt;/agent</code></pre> |
| session_id | [string](#string) |  | Optional: The unique identifier of the session for which the audio files should be listed Format: <pre><code>projects/&lt;project_uuid&gt;/agent/sessions/&lt;session_uuid&gt;/&lt</code></pre> |
| resource_view | [ResourceView](#ondewo.nlu.ResourceView) |  | Represents the options for views of resources |
| page_token | [string](#string) |  | Optional: The page token to support pagination. Pagination allows you to retrieve a large result set in smaller, more manageable portions. The page token is a string representing the current index and page size.

Valid page token strings: <ul> <li><code>&quot;&quot;</code> (empty string) - Retrieves the first page.</li> <li><code>&quot;current_index-0--page_size-20&quot;</code> - Retrieves the first page with a page size of 20.</li> <li><code>&quot;current_index-1--page_size-20&quot;</code> - Retrieves the second page with a page size of 20.</li> </ul>

Index starts at 0.

Examples of valid page token strings: <ul> <li><code>&quot;&quot;</code></li> <li><code>&quot;current_index-0--page_size-20&quot;</code></li> <li><code>&quot;current_index-1--page_size-20&quot;</code></li> <li><code>&quot;current_index-10--page_size-20&quot;</code></li> </ul>

Examples of invalid page token strings: <ul> <li><code>&quot;1&quot;</code></li> <li><code>&quot;current_index-0--page_size-20&quot;</code></li> <li><code>&quot;current_index--1--page_size-20&quot;</code></li> <li><code>&quot;current_index1--page_size-20&quot;</code></li> <li><code>&quot;current_index-1--page_size--20&quot;</code></li> </ul> |
| sorting_mode | [SortingMode](#ondewo.nlu.SortingMode) |  | sorting mode |
| field_mask | [google.protobuf.FieldMask](#google.protobuf.FieldMask) | optional | Optional. The mask to control which fields gets returned. |






<a name="ondewo.nlu.ListAudioFilesResponse"></a>

### ListAudioFilesResponse
This message is a request to retrieve the audio files specified


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| audio_files | [AudioFileResource](#ondewo.nlu.AudioFileResource) | repeated | The requested audio files . Format: <pre><code>projects/&lt;project_uuid&gt;/agent/sessions/&lt;session_uuid&gt;/audios/&lt;audio_uuid&gt;</code></pre> |
| next_page_token | [string](#string) |  | The next_page_token is used to retrieve the next page of a returned result, e.g. next_page_token is current_index-2 |
| error_message | [string](#string) |  | error message if there are any. |






<a name="ondewo.nlu.ListDatastreamIdsOfAllSessionsRequest"></a>

### ListDatastreamIdsOfAllSessionsRequest
request to list all datastream_ids of all sessions


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| parent | [string](#string) |  | The parent for which the datastream_ids for all sessions should be listed Format: <pre><code>projects/&lt;project_uuid&gt;/agent</code></pre> |
| session_filter | [SessionFilter](#ondewo.nlu.SessionFilter) |  | Optional. A filter to narrow the response down to sessions of interest. |






<a name="ondewo.nlu.ListDatastreamIdsResponse"></a>

### ListDatastreamIdsResponse
This message is a response of listing session datastream_ids


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| datastream_ids | [string](#string) | repeated | The datastream_ids of the session |






<a name="ondewo.nlu.ListIdentifiedUserIdsOfAllSessionsRequest"></a>

### ListIdentifiedUserIdsOfAllSessionsRequest
request to list all identified_user_ids of all sessions


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| parent | [string](#string) |  | The parent for which the identified_user_ids for all sessions should be listed Format: <pre><code>projects/&lt;project_uuid&gt;/agent</code></pre> |
| session_filter | [SessionFilter](#ondewo.nlu.SessionFilter) |  | Optional. A filter to narrow the response down to sessions of interest. |
| field_mask | [google.protobuf.FieldMask](#google.protobuf.FieldMask) | optional | Optional. The mask to control which fields gets returned. |






<a name="ondewo.nlu.ListIdentifiedUserIdsResponse"></a>

### ListIdentifiedUserIdsResponse
This message is a response of listing session identified_user_ids


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| identified_user_ids | [string](#string) | repeated | The identified_user_ids of the session |






<a name="ondewo.nlu.ListInputContextsOfAllSessionsRequest"></a>

### ListInputContextsOfAllSessionsRequest
request to list all input_contexts of all sessions


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| parent | [string](#string) |  | The parent for which the input_contexts for all sessions should be listed Format: <pre><code>projects/&lt;project_uuid&gt;/agent</code></pre> |
| session_filter | [SessionFilter](#ondewo.nlu.SessionFilter) |  | Optional. A filter to narrow the response down to sessions of interest. |
| field_mask | [google.protobuf.FieldMask](#google.protobuf.FieldMask) | optional | Optional. The mask to control which fields gets returned. |






<a name="ondewo.nlu.ListInputContextsResponse"></a>

### ListInputContextsResponse
This message is a response of listing session input_contexts


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| input_contexts | [string](#string) | repeated | The input_contexts ids of the session |






<a name="ondewo.nlu.ListLanguageCodesOfAllSessionsRequest"></a>

### ListLanguageCodesOfAllSessionsRequest
request to list all language codes of all sessions


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| parent | [string](#string) |  | The parent for which the language_codes for all sessions should be listed Format: <pre><code>projects/&lt;project_uuid&gt;/agent</code></pre> |
| session_filter | [SessionFilter](#ondewo.nlu.SessionFilter) |  | Optional. A filter to narrow the response down to sessions of interest. |
| field_mask | [google.protobuf.FieldMask](#google.protobuf.FieldMask) | optional | Optional. The mask to control which fields gets returned. |






<a name="ondewo.nlu.ListLanguageCodesResponse"></a>

### ListLanguageCodesResponse
This message is a response of listing session language_codes


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| language_codes | [string](#string) | repeated | The language_codes of the session |






<a name="ondewo.nlu.ListMatchedEntityTypesOfAllSessionsRequest"></a>

### ListMatchedEntityTypesOfAllSessionsRequest
request to list all matched_entity_types of all sessions


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| parent | [string](#string) |  | The parent for which the matched_entity_types for all sessions should be listed Format: <pre><code>projects/&lt;project_uuid&gt;/agent</code></pre> |
| session_filter | [SessionFilter](#ondewo.nlu.SessionFilter) |  | Optional. A filter to narrow the response down to sessions of interest. |
| field_mask | [google.protobuf.FieldMask](#google.protobuf.FieldMask) | optional | Optional. The mask to control which fields gets returned. |






<a name="ondewo.nlu.ListMatchedEntityTypesResponse"></a>

### ListMatchedEntityTypesResponse
This message is a response of listing session matched_entity_types


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| matched_entity_types | [string](#string) | repeated | The matched_entity_types of the session |






<a name="ondewo.nlu.ListMatchedIntentsOfAllSessionsRequest"></a>

### ListMatchedIntentsOfAllSessionsRequest
request to list all matched_intents of all sessions


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| parent | [string](#string) |  | The parent for which the matched_intents for all sessions should be listed Format: <pre><code>projects/&lt;project_uuid&gt;/agent</code></pre> |
| session_filter | [SessionFilter](#ondewo.nlu.SessionFilter) |  | Optional. A filter to narrow the response down to sessions of interest. |
| field_mask | [google.protobuf.FieldMask](#google.protobuf.FieldMask) | optional | Optional. The mask to control which fields gets returned. |






<a name="ondewo.nlu.ListMatchedIntentsResponse"></a>

### ListMatchedIntentsResponse
This message is a response of listing session matched_intents


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| matched_intents | [string](#string) | repeated | The matched_intents of the session |






<a name="ondewo.nlu.ListOriginIdsOfAllSessionsRequest"></a>

### ListOriginIdsOfAllSessionsRequest
request to list all origin_ids of all sessions


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| parent | [string](#string) |  | The parent for which the origin_ids for all sessions should be listed Format: <pre><code>projects/&lt;project_uuid&gt;/agent</code></pre> |
| session_filter | [SessionFilter](#ondewo.nlu.SessionFilter) |  | Optional. A filter to narrow the response down to sessions of interest. |
| field_mask | [google.protobuf.FieldMask](#google.protobuf.FieldMask) | optional | Optional. The mask to control which fields gets returned. |






<a name="ondewo.nlu.ListOriginIdsResponse"></a>

### ListOriginIdsResponse
This message is a response of listing session origin_ids


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| origin_ids | [string](#string) | repeated | The origin_ids of the session |






<a name="ondewo.nlu.ListOutputContextsOfAllSessionsRequest"></a>

### ListOutputContextsOfAllSessionsRequest
request to list all output_contexts of all sessions


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| parent | [string](#string) |  | The parent for which the output_contexts for all sessions should be listed Format: <pre><code>projects/&lt;project_uuid&gt;/agent</code></pre> |
| session_filter | [SessionFilter](#ondewo.nlu.SessionFilter) |  | Optional. A filter to narrow the response down to sessions of interest. |
| field_mask | [google.protobuf.FieldMask](#google.protobuf.FieldMask) | optional | Optional. The mask to control which fields gets returned. |






<a name="ondewo.nlu.ListOutputContextsResponse"></a>

### ListOutputContextsResponse
This message is a response of listing session output_contexts


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| output_contexts | [string](#string) | repeated | The output_contexts ids of the session |






<a name="ondewo.nlu.ListPlatformsOfAllSessionsRequest"></a>

### ListPlatformsOfAllSessionsRequest
request to list all labels of all sessions


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| parent | [string](#string) |  | The parent for which the platforms for all sessions should be listed Format: <pre><code>projects/&lt;project_uuid&gt;/agent</code></pre> |
| session_filter | [SessionFilter](#ondewo.nlu.SessionFilter) |  | Optional. A filter to narrow the response down to sessions of interest. |
| field_mask | [google.protobuf.FieldMask](#google.protobuf.FieldMask) | optional | Optional. The mask to control which fields gets returned. |






<a name="ondewo.nlu.ListPlatformsResponse"></a>

### ListPlatformsResponse
This message is a response of listing session platforms


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| platforms | [string](#string) | repeated | The platforms of the session |






<a name="ondewo.nlu.ListPropertyIdsOfAllSessionsRequest"></a>

### ListPropertyIdsOfAllSessionsRequest
request to list all property_ids of all sessions


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| parent | [string](#string) |  | The parent for which the property_ids for all sessions should be listed Format: <pre><code>projects/&lt;project_uuid&gt;/agent</code></pre> |
| session_filter | [SessionFilter](#ondewo.nlu.SessionFilter) |  | Optional. A filter to narrow the response down to sessions of interest. |






<a name="ondewo.nlu.ListPropertyIdsResponse"></a>

### ListPropertyIdsResponse
This message is a response of listing session property_ids


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| property_ids | [string](#string) | repeated | The property_ids of the session |






<a name="ondewo.nlu.ListSessionCommentsRequest"></a>

### ListSessionCommentsRequest
This message is a request to list comments of a session


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| session_id | [string](#string) |  | The unique identifier for the session for which reviews should be listed Format: <pre><code>projects/&lt;project_uuid&gt;/agent/sessions/&lt;session_uuid&gt;</code></pre> |
| page_token | [string](#string) |  | Optional: The page token to support pagination. Pagination allows you to retrieve a large result set in smaller, more manageable portions. The page token is a string representing the current index and page size.

Valid page token strings: <ul> <li><code>&quot;&quot;</code> (empty string) - Retrieves the first page.</li> <li><code>&quot;current_index-0--page_size-20&quot;</code> - Retrieves the first page with a page size of 20.</li> <li><code>&quot;current_index-1--page_size-20&quot;</code> - Retrieves the second page with a page size of 20.</li> </ul>

Index starts at 0.

Examples of valid page token strings: <ul> <li><code>&quot;&quot;</code></li> <li><code>&quot;current_index-0--page_size-20&quot;</code></li> <li><code>&quot;current_index-1--page_size-20&quot;</code></li> <li><code>&quot;current_index-10--page_size-20&quot;</code></li> </ul>

Examples of invalid page token strings: <ul> <li><code>&quot;1&quot;</code></li> <li><code>&quot;current_index-0--page_size-20&quot;</code></li> <li><code>&quot;current_index--1--page_size-20&quot;</code></li> <li><code>&quot;current_index1--page_size-20&quot;</code></li> <li><code>&quot;current_index-1--page_size--20&quot;</code></li> </ul> |
| field_mask | [google.protobuf.FieldMask](#google.protobuf.FieldMask) | optional | Optional. The mask to control which fields gets returned. |






<a name="ondewo.nlu.ListSessionCommentsResponse"></a>

### ListSessionCommentsResponse
This message is a request to list comments of a session


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| comment | [Comment](#ondewo.nlu.Comment) | repeated | The comments of a specific session Format: <pre><code>projects/&lt;project_uuid&gt;/agent/sessions/&lt;session_uuid&gt;/comments/&lt;comment_uuid&gt;</code></pre> |
| page_token | [string](#string) |  | Optional: The page token to support pagination. Pagination allows you to retrieve a large result set in smaller, more manageable portions. The page token is a string representing the current index and page size.

Valid page token strings: <ul> <li><code>&quot;&quot;</code> (empty string) - Retrieves the first page.</li> <li><code>&quot;current_index-0--page_size-20&quot;</code> - Retrieves the first page with a page size of 20.</li> <li><code>&quot;current_index-1--page_size-20&quot;</code> - Retrieves the second page with a page size of 20.</li> </ul>

Index starts at 0.

Examples of valid page token strings: <ul> <li><code>&quot;&quot;</code></li> <li><code>&quot;current_index-0--page_size-20&quot;</code></li> <li><code>&quot;current_index-1--page_size-20&quot;</code></li> <li><code>&quot;current_index-10--page_size-20&quot;</code></li> </ul>

Examples of invalid page token strings: <ul> <li><code>&quot;1&quot;</code></li> <li><code>&quot;current_index-0--page_size-20&quot;</code></li> <li><code>&quot;current_index--1--page_size-20&quot;</code></li> <li><code>&quot;current_index1--page_size-20&quot;</code></li> <li><code>&quot;current_index-1--page_size--20&quot;</code></li> </ul> |






<a name="ondewo.nlu.ListSessionLabelsOfAllSessionsRequest"></a>

### ListSessionLabelsOfAllSessionsRequest
request to list all labels of all sessions


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| parent | [string](#string) |  | The parent for which the labels for all sessions should be listed Format: <pre><code>projects/&lt;project_uuid&gt;/agent</code></pre> |
| session_filter | [SessionFilter](#ondewo.nlu.SessionFilter) |  | Optional. A filter to narrow the response down to sessions of interest. |
| field_mask | [google.protobuf.FieldMask](#google.protobuf.FieldMask) | optional | Optional. The mask to control which fields gets returned. |






<a name="ondewo.nlu.ListSessionLabelsRequest"></a>

### ListSessionLabelsRequest
This message is a request to list session labels


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| session_id | [string](#string) |  | The id of the session |






<a name="ondewo.nlu.ListSessionLabelsResponse"></a>

### ListSessionLabelsResponse
This message is a response of listing session labels


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| labels | [string](#string) | repeated | The labels of the session |






<a name="ondewo.nlu.ListSessionReviewsRequest"></a>

### ListSessionReviewsRequest
This message is a request to list session reviews


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| session_id | [string](#string) |  | The unique identifier for the session for which reviews should be listed Format: <pre><code>projects/&lt;project_uuid&gt;/agent/sessions/&lt;session_uuid&gt;</code></pre> |
| session_review_view | [SessionReview.View](#ondewo.nlu.SessionReview.View) |  | An enum specifying the amount of information to be returned per session review |
| page_token | [string](#string) |  | Optional: The page token to support pagination. Pagination allows you to retrieve a large result set in smaller, more manageable portions. The page token is a string representing the current index and page size.

Valid page token strings: <ul> <li><code>&quot;&quot;</code> (empty string) - Retrieves the first page.</li> <li><code>&quot;current_index-0--page_size-20&quot;</code> - Retrieves the first page with a page size of 20.</li> <li><code>&quot;current_index-1--page_size-20&quot;</code> - Retrieves the second page with a page size of 20.</li> </ul>

Index starts at 0.

Examples of valid page token strings: <ul> <li><code>&quot;&quot;</code></li> <li><code>&quot;current_index-0--page_size-20&quot;</code></li> <li><code>&quot;current_index-1--page_size-20&quot;</code></li> <li><code>&quot;current_index-10--page_size-20&quot;</code></li> </ul>

Examples of invalid page token strings: <ul> <li><code>&quot;1&quot;</code></li> <li><code>&quot;current_index-0--page_size-20&quot;</code></li> <li><code>&quot;current_index--1--page_size-20&quot;</code></li> <li><code>&quot;current_index1--page_size-20&quot;</code></li> <li><code>&quot;current_index-1--page_size--20&quot;</code></li> </ul> |






<a name="ondewo.nlu.ListSessionReviewsResponse"></a>

### ListSessionReviewsResponse
This message is a response of listing session reviews


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| session_reviews | [SessionReview](#ondewo.nlu.SessionReview) | repeated | The requested session reviews |
| next_page_token | [string](#string) |  | The next_page_token is used to retrieve the next page of a returned result, e.g. next_page_token is current_index-2 |






<a name="ondewo.nlu.ListSessionsRequest"></a>

### ListSessionsRequest
This message is a request to list sessions


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| parent | [string](#string) |  | Required. The project that the agent to fetch is associated with. Format: <pre><code>projects/&lt;project_uuid&gt;/agents</code></pre> |
| session_view | [Session.View](#ondewo.nlu.Session.View) |  | An enum specifying the amount of information to be returned per session |
| page_token | [string](#string) |  | Optional: The page token to support pagination. Pagination allows you to retrieve a large result set in smaller, more manageable portions. The page token is a string representing the current index and page size.

Valid page token strings: <ul> <li><code>&quot;&quot;</code> (empty string) - Retrieves the first page.</li> <li><code>&quot;current_index-0--page_size-20&quot;</code> - Retrieves the first page with a page size of 20.</li> <li><code>&quot;current_index-1--page_size-20&quot;</code> - Retrieves the second page with a page size of 20.</li> </ul>

Index starts at 0.

Examples of valid page token strings: <ul> <li><code>&quot;&quot;</code></li> <li><code>&quot;current_index-0--page_size-20&quot;</code></li> <li><code>&quot;current_index-1--page_size-20&quot;</code></li> <li><code>&quot;current_index-10--page_size-20&quot;</code></li> </ul>

Examples of invalid page token strings: <ul> <li><code>&quot;1&quot;</code></li> <li><code>&quot;current_index-0--page_size-20&quot;</code></li> <li><code>&quot;current_index--1--page_size-20&quot;</code></li> <li><code>&quot;current_index1--page_size-20&quot;</code></li> <li><code>&quot;current_index-1--page_size--20&quot;</code></li> </ul> |
| session_filter | [SessionFilter](#ondewo.nlu.SessionFilter) |  | Optional. A filter to narrow the response down to sessions of interest. |
| field_mask | [google.protobuf.FieldMask](#google.protobuf.FieldMask) |  | Optional. The mask to control which fields will be filled with data. Example: path=["session_info.duration_in_s_min"] |






<a name="ondewo.nlu.ListSessionsResponse"></a>

### ListSessionsResponse
This message is a response including the listing of sessions


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| sessions | [Session](#ondewo.nlu.Session) | repeated | The requested sessions |
| next_page_token | [string](#string) |  | The next_page_token is used to retrieve the next page of a returned result, e.g. next_page_token is current_index-2 |






<a name="ondewo.nlu.ListTagsOfAllSessionsRequest"></a>

### ListTagsOfAllSessionsRequest
request to list all tags of all sessions


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| parent | [string](#string) |  | The parent for which the tags for all sessions should be listed Format: <pre><code>projects/&lt;project_uuid&gt;/agent</code></pre> |
| session_filter | [SessionFilter](#ondewo.nlu.SessionFilter) |  | Optional. A filter to narrow the response down to sessions of interest. |
| field_mask | [google.protobuf.FieldMask](#google.protobuf.FieldMask) | optional | Optional. The mask to control which fields gets returned. |






<a name="ondewo.nlu.ListTagsResponse"></a>

### ListTagsResponse
This message is a response of listing session tags


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| tags | [string](#string) | repeated | The tags of the session |






<a name="ondewo.nlu.ListUserIdsOfAllSessionsRequest"></a>

### ListUserIdsOfAllSessionsRequest
request to list all user_ids of all sessions


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| parent | [string](#string) |  | The parent for which the user_ids for all sessions should be listed Format: <pre><code>projects/&lt;project_uuid&gt;/agent</code></pre> |
| session_filter | [SessionFilter](#ondewo.nlu.SessionFilter) |  | Optional. A filter to narrow the response down to sessions of interest. |
| field_mask | [google.protobuf.FieldMask](#google.protobuf.FieldMask) | optional | Optional. The mask to control which fields gets returned. |






<a name="ondewo.nlu.ListUserIdsResponse"></a>

### ListUserIdsResponse
This message is a response of listing session user_ids


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| user_ids | [string](#string) | repeated | The user_ids of the session |






<a name="ondewo.nlu.QueryInput"></a>

### QueryInput
Represents the query input. It can contain either:

1.  An audio config which instructs the speech recognizer how to process the speech audio.

2.  A conversational query in the form of text,.

3.  An event that specifies which intent to trigger.


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| audio_config | [InputAudioConfig](#ondewo.nlu.InputAudioConfig) |  | Instructs the speech recognizer how to process the speech audio. |
| text | [TextInput](#ondewo.nlu.TextInput) |  | The natural language text to be processed. |
| event | [EventInput](#ondewo.nlu.EventInput) |  | The event to be processed. |
| file_resources | [FileResource](#ondewo.nlu.FileResource) | repeated | Files as input for the detect intent request, e.g., image, document, audio, video etc. |






<a name="ondewo.nlu.QueryParameters"></a>

### QueryParameters
Represents the parameters of the conversational query.


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| time_zone | [string](#string) |  | Optional. The time zone of this conversational query from the <a href="https://www.iana.org/time-zones">time zone database</a>, e.g., America/New_York, Europe/Paris. If not provided, the time zone specified in agent settings is used. |
| geo_location | [google.type.LatLng](#google.type.LatLng) |  | Optional. The geo location of this conversational query. |
| contexts | [Context](#ondewo.nlu.Context) | repeated | Optional. The collection of contexts to be activated before this query is executed. |
| reset_contexts | [bool](#bool) |  | Optional. Specifies whether to delete all contexts in the current session before the new ones are activated. |
| payload | [google.protobuf.Struct](#google.protobuf.Struct) |  | Optional. This field can be used to pass custom data into the webhook associated with the agent.

Following <code>key:value</code> pairs are supported in the JSON objects:

key: <code>language</code> <pre>language=LanguageCode.de.value</pre> key: <code>timestamp</code> <pre>timestamp=time.time() # float python timestamp in seconds since epoch </pre> key: <code>source</code> <pre>source=&apos;https://ondewo.com&apos;</pre> key: <code>configuration</code> <pre>configuration=&apos;config_example_123&apos;</pre> key: <code>single_intent_algorithm</code> <pre>single_intent_algorithm=&apos;IntentClassifierType.OndewoIntentAgent&apos;</pre> =&gt; allowed other values for <code>single_intent_algorithm</code>: <pre> IntentClassifierType.DefaultFallBackAlgorithm IntentClassifierType.DeviationEndingDetection IntentClassifierType.IntentExitDetector IntentClassifierType.OndewoIntentAgent IntentClassifierType.OndewoIntentBertClassifier IntentClassifierType.OndewoIntentExactContextDetector IntentClassifierType.OndewoIntentExactMatch IntentClassifierType.OndewoIntentExitDetector IntentClassifierType.OndewoIntentLogisticRegression IntentClassifierType.OndewoIntentMetaClassifier IntentClassifierType.OndewoIntentNamedExactMatch IntentClassifierType.OndewoIntentNamedSimilarityMatch IntentClassifierType.OndewoIntentParameterMatch IntentClassifierType.OndewoIntentRandomForestClassifier IntentClassifierType.OndewoIntentRankingMatch IntentClassifierType.OndewoIntentSimilarityMatch IntentClassifierType.OndewoIntentSupportVectorClassifier IntentClassifierType.OndewoWeightedEnsemble </pre> key: <code>single_ner_algorithm</code> <pre>single_ner_algorithm=&apos;NerMethodType.OndewoNerRegex&apos;</pre> <pre> =&gt; allowed other values for <code>single_ner_algorithm</code>: NerMethodType.OndewoNerBert NerMethodType.OndewoNerDateNer NerMethodType.OndewoNerDictionary NerMethodType.OndewoNerDuckling NerMethodType.OndewoNerFuzzy NerMethodType.OndewoNerHybrid NerMethodType.OndewoNerRegex NerMethodType.OndewoNerSpacy NerMethodType.OndewoNerTfNer </pre> |
| labels | [string](#string) | repeated | labels associated to this request |
| platforms | [Intent.Message.Platform](#ondewo.nlu.Intent.Message.Platform) | repeated | Only messages for the specified Intent.Message.Platform platforms are sent to the user in the <code>DetectIntentResponse</code> |
| account_id | [string](#string) |  | Id of the account, e.g. Company Ondewo |
| property_id | [string](#string) |  | Id of the property of the account, e.g. Domain ondewo.com This field can also be used for a customized tracking id or tag id |
| datastream_id | [string](#string) |  | Id of the datastream of the property of the account, e.g. Subdomain sub1.ondewo.com or sub2.ondewo.com This field can also be used for a customized tracking id or tag id |
| origin_id | [string](#string) |  | Id of the the origin of the user request

For a phone bot, this is the phone number +123456789 the user called (Note: This is not the user&apos;s phone number) For a chatbot or voicebot on the web, this is the URL on which the bo, e.g. https://ondewo.com/webchat For a voice assistant device, this is the device-id or the app id This field can also be used for a customized tracking id or tag id

https://aim-develop.ondewo.com/ |
| identified_user_id | [string](#string) |  | Id of the &quot;identified user&quot; e.g. for a chatbot the email address or for a phone bot the phone number of the user This field can also be used for a customized tracking id or tag id |
| transcriptions | [S2tTranscription](#ondewo.nlu.S2tTranscription) | repeated | transcriptions of the user input sorted by score |






<a name="ondewo.nlu.QueryResult"></a>

### QueryResult
Represents the result of conversational query or event processing.


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| query_text | [string](#string) |  | The original conversational query text: <ul> <li>If natural language text was provided as input, <code>query_text</code> contains a copy of the input.</li> <li>If natural language speech audio was provided as input, <code>query_text</code> contains the speech recognition result. If speech recognizer produced multiple alternatives, a particular one is picked.</li> <li>If an event was provided as input, <code>query_text</code> is not set.</li> </ul> |
| speech_recognition_confidence | [float](#float) |  | The Speech recognition confidence between 0.0 and 1.0. A higher number indicates an estimated greater likelihood that the recognized words are correct. The default of 0.0 is a sentinel value indicating that confidence was not set.

You should not rely on this field as it isn&apos;t guaranteed to be accurate, or even set. In particular this field isn&apos;t set in Webhook calls and for StreamingDetectIntent since the streaming endpoint has separate confidence estimates per portion of the audio in StreamingRecognitionResult. |
| action | [string](#string) |  | The action name from the matched intent. |
| parameters | [google.protobuf.Struct](#google.protobuf.Struct) |  | The collection of extracted parameters. |
| all_required_params_present | [bool](#bool) |  | This field is set to: <ul> <li><code>false</code> if the matched intent has required parameters and not all of the required parameter values have been collected.</li> <li><code>true</code> if all required parameter values have been collected, or if the matched intent doesn&apos;t contain any required parameters.</li> </ul> |
| fulfillment_text | [string](#string) |  | The text to be pronounced to the user or shown on the screen. |
| fulfillment_messages | [Intent.Message](#ondewo.nlu.Intent.Message) | repeated | The collection of rich messages to present to the user. |
| webhook_source | [string](#string) |  | If the query was fulfilled by a webhook call, this field is set to the value of the <code>source</code> field returned in the webhook response. |
| webhook_payload | [google.protobuf.Struct](#google.protobuf.Struct) |  | If the query was fulfilled by a webhook call, this field is set to the value of the <code>payload</code> field returned in the webhook response. |
| output_contexts | [Context](#ondewo.nlu.Context) | repeated | The collection of output contexts. If applicable, <code>output_contexts.parameters</code> contains entries with name <code>&lt;parameter name&gt;.original</code> containing the original parameter values before the query. |
| intent | [Intent](#ondewo.nlu.Intent) |  | The intent that matched the conversational query. Some, not all fields are filled in this message, including but not limited to: <code>name</code>, <code>display_name</code> and <code>webhook_state</code>. |
| intent_detection_confidence | [float](#float) |  | The intent detection confidence. Values range from 0.0 (completely uncertain) to 1.0 (completely certain). |
| query_text_original | [string](#string) |  | The user input gets pre-processed by spelling correction, stop word removal etc. This property holds the string that is passed to the entity recognition and intent detection |
| diagnostic_info | [google.protobuf.Struct](#google.protobuf.Struct) |  | The free-form diagnostic info. For example, this field could contain webhook call latency. |
| language_code | [string](#string) |  | The language that was triggered during intent detection. See <a href="https://dialogflow.com/docs/reference/language">Language Support</a> for a list of the currently supported language codes. |
| file_resources | [FileResource](#ondewo.nlu.FileResource) | repeated | Generated or attached files, e.g., llm generates a picture or file attachment |






<a name="ondewo.nlu.S2tTranscription"></a>

### S2tTranscription
Represents a speech-to-text transcription.


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| name | [string](#string) |  | resource name of the transcription |
| text | [string](#string) |  | The transcribed text content. |
| score | [float](#float) |  | Optional. A confidence score associated with the transcription. The score indicates the level of confidence in the accuracy of the transcription. It is a floating-point number, typically ranging from 0.0 (low confidence) to 1.0 (high confidence). |
| language_code | [string](#string) |  | Optional. The detected language of the transcription. The language is represented by a string following language codes (e.g., "en" for English, "es" for Spanish). |
| audio_resource_name | [string](#string) |  | the resource name of the audio file of the transcription |
| pipeline_id | [string](#string) |  | Optional. pipeline used for transcription. A pipeline ID. Example: "pipeline_1" |
| duration_in_s | [float](#float) |  | Optional. Duration in seconds for transcription |
| transcription_type | [TranscriptionType](#ondewo.nlu.TranscriptionType) |  | Whether a speech-to-text engine or a human has transcribed the audio |
| created_at | [google.protobuf.Timestamp](#google.protobuf.Timestamp) |  | Creation date and time. Read-only field. |
| modified_at | [google.protobuf.Timestamp](#google.protobuf.Timestamp) |  | Modification date and time. Read-only field. |
| created_by | [string](#string) |  | User id in form of a valid UUID. |
| modified_by | [string](#string) |  | User id in form of a valid UUID. |






<a name="ondewo.nlu.Session"></a>

### Session
Session of a user interaction


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| name | [string](#string) |  | The unique identifier of the session Format: <pre><code>projects/&lt;project_uuid&gt;/agent/sessions/&lt;session_uuid&gt;</code></pre> |
| session_steps | [SessionStep](#ondewo.nlu.SessionStep) | repeated | The list of all the steps of the session |
| session_info | [SessionInfo](#ondewo.nlu.SessionInfo) |  | session information |
| created_at | [google.protobuf.Timestamp](#google.protobuf.Timestamp) |  | Creation date and time. Read-only field. |
| modified_at | [google.protobuf.Timestamp](#google.protobuf.Timestamp) |  | Modification date and time. Read-only field. |
| created_by | [string](#string) |  | User id in form of a valid UUID. |
| modified_by | [string](#string) |  | User id in form of a valid UUID. |






<a name="ondewo.nlu.SessionFilter"></a>

### SessionFilter
This message contains a session filter


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| language_codes | [string](#string) | repeated | A SessionFilter can be used in some requests to return only sessions matching certain filter conditions. All fields below are optional. Multiple fields specified at the same time are chained via AND. Match only sessions with all of the following language_codes |
| matched_intents | [Intent](#ondewo.nlu.Intent) | repeated | Match only sessions during which all of the following intents were detected NOTE: only name and display name fields are used for comparison |
| matched_entity_types | [EntityType](#ondewo.nlu.EntityType) | repeated | Match only sessions during which all of the following entity types were recognized NOTE: only name and display name fields are used for comparison |
| min_intents_confidence_min | [float](#float) |  | Match only sessions where the minimum confidence for intent detection along the session falls in the following range. Defaults to -1 if not set. |
| min_intents_confidence_max | [float](#float) |  | Match only sessions where the minimum confidence for intent detection along the session falls in the following range. Defaults to +1 if not set. |
| min_entity_types_confidence_min | [float](#float) |  | Match only sessions where the minimum confidence for entity recognition along the session falls in the following range. Defaults to -1 if not set. |
| min_entity_types_confidence_max | [float](#float) |  | Match only sessions where the minimum confidence for entity recognition along the session falls in the following range. Defaults to +1 if not set. |
| earliest | [double](#double) |  | Match only sessions whose time range falls within the following range (in UNIX epochs). Defaults to 0 if not set. |
| latest | [double](#double) |  | Match only sessions whose time range falls within the following range (in UNIX epochs). Defaults to current epoch if not set |
| min_number_turns | [int32](#int32) |  | Match only sessions for which the number of turns (interaction steps) falls in the following range Defaults to 0 if not set. |
| max_number_turns | [int32](#int32) |  | Match only sessions for which the number of turns (interaction steps) falls in the following range Defaults to MAXINT if not set. |
| labels | [string](#string) | repeated | Match only session which have all of the following labels assigned |
| user_ids | [string](#string) | repeated | Match only session which had all of the following user_ids interacting with them. |
| intent_tags | [string](#string) | repeated | Match only session which have all of the following intent tags assigned |
| session_ids | [string](#string) | repeated | Match only sessions whose IDs are specified here |
| input_contexts | [Context](#ondewo.nlu.Context) | repeated | Match only sessions whose session info contains at least one step having all the contexts specified here The input contexts are pre-conditions for detecting intents |
| output_contexts | [Context](#ondewo.nlu.Context) | repeated | The output contexts are the result of the intent matching and track the contextual state of a conversation |
| duration_in_s_min | [float](#float) |  | Match only sessions for which the duration in seconds are larger or equal |
| duration_in_s_max | [float](#float) |  | Match only sessions for which the duration in seconds are smaller or equal |
| duration_in_m_min | [float](#float) |  | Match only sessions for which the duration in minutes are larger or equal |
| duration_in_m_max | [float](#float) |  | Match only sessions for which the duration in minutes are smaller or equal |
| duration_in_m_rounded_min | [float](#float) |  | Match only sessions for which the duration in minutes rounded are larger or equal |
| duration_in_m_rounded_max | [float](#float) |  | Match only sessions for which the duration in minutes rounded are smaller or equal |
| duration_interval_15s_rounded_min | [float](#float) |  | Match only sessions for which the duration in 15 seconds rounded are larger or equal |
| duration_interval_15s_rounded_max | [float](#float) |  | Match only sessions for which the duration in 15 seconds rounded are smaller or equal |
| duration_interval_30s_rounded_min | [float](#float) |  | Match only sessions for which the duration in 30 seconds rounded are larger or equal |
| duration_interval_30s_rounded_max | [float](#float) |  | Match only sessions for which the duration in 30 seconds rounded are smaller or equal |
| duration_interval_45s_rounded_min | [float](#float) |  | Match only sessions for which the duration in 45 seconds rounded are larger or equal |
| duration_interval_45s_rounded_max | [float](#float) |  | Match only sessions for which the duration in 45 seconds rounded are smaller or equal |
| started_time_slot_per_hour_min | [string](#string) |  | Match only sessions for which the started_time_slot_per_hour (e.g. 08:00) are larger or equal |
| started_time_slot_per_hour_max | [string](#string) |  | Match only sessions for which the started_time_slot_per_hour (e.g. 14:00) are smaller or equal |
| started_time_slot_per_quarter_hour_min | [string](#string) |  | Match only sessions for which the started_time_slot_per_quarter_hour (e.g. 08:00) are larger or equal |
| started_time_slot_per_quarter_hour_max | [string](#string) |  | Match only sessions for which the started_time_slot_per_quarter_hour (e.g. 14:00) are smaller or equal |
| started_time_slot_per_half_hour_min | [string](#string) |  | Match only sessions for which the started_time_slot_per_half_hour (e.g. 08:00) are larger or equal |
| started_time_slot_per_half_hour_max | [string](#string) |  | Match only sessions for which the started_time_slot_per_half_hour (e.g. 14:00) are smaller or equal |
| started_time_slot_per_day_phase_min | [string](#string) |  | Match only sessions for which the started_time_slot_per_day_phase (e.g. 08:00) are larger or equal |
| started_time_slot_per_day_phase_max | [string](#string) |  | Match only sessions for which the started_time_slot_per_day_phase (e.g. 14:00) are smaller or equal |
| started_time_slot_per_minute_min | [string](#string) |  | Match only sessions for which the started_time_slot_per_minute (e.g. 08:00) are larger or equal |
| started_time_slot_per_minute_max | [string](#string) |  | Match only sessions for which the started_time_slot_per_minute (e.g. 14:00) are smaller or equal |
| duration_in_s_rounded_min | [float](#float) |  | Match only sessions for which the duration in seconds rounded are larger or equal |
| duration_in_s_rounded_max | [float](#float) |  | Match only sessions for which the duration in seconds rounded are smaller or equal |
| platforms | [Intent.Message.Platform](#ondewo.nlu.Intent.Message.Platform) | repeated | Messages for each of the Intent.Message.Platform were sent to the user |
| account_ids | [string](#string) | repeated | Ids of the account, e.g. Company Ondewo, This field can also be used for customized tracking ids or tag ids |
| property_ids | [string](#string) | repeated | Ids of the property of the account, e.g. Domain ondewo.com This field can also be used for customized tracking ids or tag ids |
| datastream_ids | [string](#string) | repeated | Ids of the datastream of the property of the account, e.g. Subdomain sub1.ondewo.com or sub2.ondewo.com This field can also be used for customized tracking ids or tag ids |
| origin_ids | [string](#string) | repeated | Ids of the the origin of the user request

For a phone bot, this is the phone number +123456789 the user called (Note: This is not the user's phone number) For a chatbot or voicebot on the web, this is the URL on which the bo, e.g. https://ondewo.com/webchat For a voice assistant device, this is the device-id or the app id |
| identified_user_ids | [string](#string) | repeated | Ids of the "identified user" e.g. for a chatbot the email address or for a phone bot the phone number of the user |
| duration_interval_60s_rounded_min | [float](#float) |  | Match only sessions for which the duration in 60 seconds rounded are larger or equal |
| duration_interval_60s_rounded_max | [float](#float) |  | Match only sessions for which the duration in 60 seconds rounded are smaller or equal |






<a name="ondewo.nlu.SessionInfo"></a>

### SessionInfo
This message contains information about session


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| language_codes | [string](#string) | repeated | A SessionInfo contains some general information about a session.

This information can be returned inside a Session object for consumption by a client. Or it can be used by the backend to check whether the Session matches a given SessionFilter.

All fields below are optional. Multiple fields specified at the same time are chained The language codes used in the given session. |
| matched_intents | [Intent](#ondewo.nlu.Intent) | repeated | A list of intents which have been matched |
| matched_entity_types | [EntityType](#ondewo.nlu.EntityType) | repeated | A list of entity types which have been matched |
| min_intents_confidence | [float](#float) |  | The minimum confidence for intent recognition along the session |
| min_entity_types_confidence | [float](#float) |  | The minimum confidence for entity recognition along the session |
| earliest | [double](#double) |  | The earliest date of the given session (in UNIX epochs), i.e. the time of the first interaction of a user in the given session |
| latest | [double](#double) |  | The latest date of the given session (in UNIX epochs), i.e. the time of the last interaction of a user in the given session |
| number_turns | [int32](#int32) |  | The number of turns (interaction steps) in the given session |
| labels | [string](#string) | repeated | The list of labels of the given session |
| user_ids | [string](#string) | repeated | The user_ids of the users which were interacting within the given session |
| intent_tags | [string](#string) | repeated | The list of intent tags in the given session |
| input_context_steps | [SessionInfo.ContextSteps](#ondewo.nlu.SessionInfo.ContextSteps) | repeated | The input contexts that are matched in the given session. The name of the context here is the short name and not the full URL name including the project parent |
| output_context_steps | [SessionInfo.ContextSteps](#ondewo.nlu.SessionInfo.ContextSteps) | repeated | The output contexts that are matched in the given session. The name of the context here is the short name and not the full URL name including the project parent |
| duration_in_s | [float](#float) |  | duration in seconds |
| duration_in_m | [float](#float) |  | duration in minutes |
| duration_in_m_rounded | [float](#float) |  | duration in minutes rounded |
| duration_interval_15s_rounded | [float](#float) |  | duration in 15 seconds intervals rounded |
| duration_interval_30s_rounded | [float](#float) |  | duration in 30 seconds intervals rounded |
| duration_interval_45s_rounded | [float](#float) |  | duration in 45 seconds intervals rounded |
| started_time_slot_per_hour | [string](#string) |  | started_time_slot_per_hour (e.g. 08:00) |
| started_time_slot_per_quarter_hour | [string](#string) |  | started_time_slot_per_quarter_hour (e.g. 08:00) |
| started_time_slot_per_half_hour | [string](#string) |  | started_time_slot_per_half_hour (e.g. 08:00) |
| started_time_slot_per_day_phase | [string](#string) |  | started_time_slot_per_day_phase (e.g. 14:00) |
| started_time_slot_per_minute | [string](#string) |  | started_time_slot_per_minute (e.g. 14:00) |
| duration_in_s_rounded | [float](#float) |  | duration in seconds rounded |
| platforms | [Intent.Message.Platform](#ondewo.nlu.Intent.Message.Platform) | repeated | Messages for each of the Intent.Message.Platform were sent to the user |
| account_ids | [string](#string) | repeated | Ids of the account, e.g. Company Ondewo, This field can also be used for customized tracking ids or tag ids |
| property_ids | [string](#string) | repeated | Ids of the property of the account, e.g. Domain ondewo.com This field can also be used for customized tracking ids or tag ids |
| datastream_ids | [string](#string) | repeated | Ids of the datastream of the property of the account, e.g. Subdomain sub1.ondewo.com or sub2.ondewo.com This field can also be used for customized tracking ids or tag ids |
| origin_ids | [string](#string) | repeated | Ids of the the origin of the user request

For a phone bot, this is the phone number +123456789 the user called (Note: This is not the user's phone number) For a chatbot or voicebot on the web, this is the URL on which the bo, e.g. https://ondewo.com/webchat For a voice assistant device, this is the device-id or the app id |
| identified_user_ids | [string](#string) | repeated | Ids of the "identified user" e.g. for a chatbot the email address or for a phone bot the phone number of the user |
| duration_interval_60s_rounded | [float](#float) |  | duration in 60 seconds intervals rounded |
| parent_comment | [Comment](#ondewo.nlu.Comment) | repeated | comments about a session |






<a name="ondewo.nlu.SessionInfo.ContextSteps"></a>

### SessionInfo.ContextSteps
The list of contexts of each step collected in an outer list


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| contexts | [Context](#ondewo.nlu.Context) | repeated | List of contexts for a session step |






<a name="ondewo.nlu.SessionReview"></a>

### SessionReview
This message contains a session review


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| name | [string](#string) |  | The unique identifier for the given review Format: <pre><code>projects/&lt;project_uuid&gt;/agent/sessions/&lt;session_uuid&gt;/reviews/&lt;session_review_uuid&gt;</code></pre> |
| session_review_steps | [SessionReviewStep](#ondewo.nlu.SessionReviewStep) | repeated | The reviews for all steps in the session |
| created_at | [google.protobuf.Timestamp](#google.protobuf.Timestamp) |  | Creation date and time. Read-only field. |
| modified_at | [google.protobuf.Timestamp](#google.protobuf.Timestamp) |  | Modification date and time. Read-only field. |
| created_by | [string](#string) |  | User id in form of a valid UUID. |
| modified_by | [string](#string) |  | User id in form of a valid UUID. |






<a name="ondewo.nlu.SessionReviewStep"></a>

### SessionReviewStep
This message contains a session review step


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| name | [string](#string) |  | The unique identifier for the given review step Format: <pre><code>projects/&lt;project_uuid&gt;/agent/sessions/&lt;session_uuid&gt;/reviews/&lt;review_uuid&gt;/sessionreviewsteps/&lt;session_review_step_uuid&gt;</code></pre> |
| annotated_usersays | [Intent.TrainingPhrase](#ondewo.nlu.Intent.TrainingPhrase) |  | The user says with markup of the detected entity types after the preprocessing such as spelling correction, stopword removal etc. has been applied.

This string represents what has been passed to the entity recognition and intent detection algorithms. |
| language_code | [string](#string) |  | The language code |
| detected_intents | [DetectedIntent](#ondewo.nlu.DetectedIntent) | repeated | Unique detected intents ordered by descending confidence |
| contexts | [Context](#ondewo.nlu.Context) | repeated | The contexts which were active at the beginning of this step |
| contexts_out | [Context](#ondewo.nlu.Context) | repeated | The output contexts of this step |
| query_text_original | [string](#string) |  | User input without any pre-processing applied |
| platforms | [Intent.Message.Platform](#ondewo.nlu.Intent.Message.Platform) | repeated | Messages for each of the Intent.Message.Platform were sent to the user |
| timestamp | [google.protobuf.Timestamp](#google.protobuf.Timestamp) |  | Timestamp of session review step |
| created_at | [google.protobuf.Timestamp](#google.protobuf.Timestamp) |  | Creation date and time. Read-only field. |
| modified_at | [google.protobuf.Timestamp](#google.protobuf.Timestamp) |  | Modification date and time. Read-only field. |
| created_by | [string](#string) |  | User id in form of a valid UUID. |
| modified_by | [string](#string) |  | User id in form of a valid UUID. |
| audio_file_resources | [AudioFileResource](#ondewo.nlu.AudioFileResource) | repeated | audio file resources associated with the session review step |






<a name="ondewo.nlu.SessionStep"></a>

### SessionStep
SessionStep is a single user interaction as part of a session


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| name | [string](#string) |  | The unique identifier for the given review Format: <pre><code>projects/&lt;project_uuid&gt;/agent/sessions/&lt;session_uuid&gt;/sessionsteps/&lt;session_step_uuid&gt;</code></pre> |
| detect_intent_request | [DetectIntentRequest](#ondewo.nlu.DetectIntentRequest) |  | The detect intent request of the session step |
| detect_intent_response | [DetectIntentResponse](#ondewo.nlu.DetectIntentResponse) |  | The detect intent response of the session step |
| contexts | [Context](#ondewo.nlu.Context) | repeated | The contexts which were active at the beginning of this step |
| timestamp | [google.protobuf.Timestamp](#google.protobuf.Timestamp) |  | Timestamp of session step |
| created_at | [google.protobuf.Timestamp](#google.protobuf.Timestamp) |  | Creation date and time. Read-only field. |
| modified_at | [google.protobuf.Timestamp](#google.protobuf.Timestamp) |  | Modification date and time. Read-only field. |
| created_by | [string](#string) |  | User id in form of a valid UUID. |
| modified_by | [string](#string) |  | User id in form of a valid UUID. |
| audio_file_resources | [AudioFileResource](#ondewo.nlu.AudioFileResource) | repeated | audio file resources associated with the session step |






<a name="ondewo.nlu.StreamingDetectIntentRequest"></a>

### StreamingDetectIntentRequest
The top-level message sent by the client to the <code>StreamingDetectIntent</code> method.
Multiple request messages should be sent in order:
1.  The first message must contain <code>session</code>, <code>query_input</code> plus optionally <code>query_params</code> and/or <code>single_utterance</code>. The message must not contain <code>input_audio</code>.
2.  If <code>query_input</code> was set to a streaming input audio config, all subsequent messages must contain only <code>input_audio</code>. Otherwise, finish the request stream.


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| session | [string](#string) |  | Required. The name of the session the query is sent to. Format of the session name: <code>projects/&lt;project_uuid&gt;/agent/sessions/&lt;session_uuid&gt;</code>. It&apos;s up to the API caller to choose an appropriate &lt;session_uuid&gt;. It can be a random number or some type of user identifier (preferably hashed). The length of the session ID must not exceed 36 characters. |
| query_params | [QueryParameters](#ondewo.nlu.QueryParameters) |  | Optional. The parameters of this query. |
| query_input | [QueryInput](#ondewo.nlu.QueryInput) |  | Required. The input specification. It can be set to: <ol> <li>an audio config which instructs the speech recognizer how to process the speech audio,</li> <li>a conversational query in the form of text, or</li> <li>an event that specifies which intent to trigger.</li> </ol> |
| single_utterance | [bool](#bool) |  | Optional. If <code>false</code> (default), recognition does not cease until the client closes the stream. If <code>true</code>, the recognizer will detect a single spoken utterance in input audio. Recognition ceases when it detects the audio&apos;s voice has stopped or paused. In this case, once a detected intent is received, the client should close the stream and start a new request with a new stream as needed. This setting is ignored when <code>query_input</code> is a piece of text or an event. |
| input_audio | [bytes](#bytes) |  | Optional. The input audio content to be recognized. Must be sent if <code>query_input</code> was set to a streaming input audio config. The complete audio over all streaming messages must not exceed 1 minute. |






<a name="ondewo.nlu.StreamingDetectIntentResponse"></a>

### StreamingDetectIntentResponse
The top-level message returned from the <code>StreamingDetectIntent</code> method.
Multiple response messages can be returned in order:
1.  If the input was set to streaming audio, the first one or more messages contain <code>recognition_result</code>. Each <code>recognition_result</code> represents a more complete transcript of what the user said. The last <code>recognition_result</code> has <code>is_final</code> set to <code>true</code>.
2.  The next message contains <code>response_id</code>, <code>query_result</code> and optionally <code>webhook_status</code> if a WebHook was called.


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| response_id | [string](#string) |  | The unique identifier of the response. It can be used to locate a response in the training example set or for reporting issues. |
| recognition_result | [StreamingRecognitionResult](#ondewo.nlu.StreamingRecognitionResult) |  | The result of speech recognition. |
| query_result | [QueryResult](#ondewo.nlu.QueryResult) |  | The result of the conversational query or event processing. |
| webhook_status | [google.rpc.Status](#google.rpc.Status) |  | Specifies the status of the webhook request. |






<a name="ondewo.nlu.StreamingRecognitionResult"></a>

### StreamingRecognitionResult
Contains a speech recognition result corresponding to a portion of the audio that is currently being processed or an indication that this is the end of the single requested utterance.

Example:

1.  transcript: &quot;tube&quot;

2.  transcript: &quot;to be a&quot;

3.  transcript: &quot;to be&quot;

4.  transcript: &quot;to be or not to be&quot;
    is_final: true

5.  transcript: &quot; that&apos;s&quot;

6.  transcript: &quot; that is&quot;

7.  recognition_event_type: <code>RECOGNITION_EVENT_END_OF_SINGLE_UTTERANCE</code>

8.  transcript: &quot; that is the question&quot;
    is_final: true

Only two of the responses contain final results (#4 and #8 indicated by <code>is_final: true</code>). Concatenating these generates the full transcript: <code>"to be or not to be that is the question"</code>.

In each response we populate:

<ul>
    <li>for <code>MESSAGE_TYPE_TRANSCRIPT</code>: <code>transcript</code> and possibly <code>is_final</code>.</li>
    <li>for <code>MESSAGE_TYPE_END_OF_SINGLE_UTTERANCE</code>: only <code>event_type</code>.</li>
</ul>


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| message_type | [StreamingRecognitionResult.MessageType](#ondewo.nlu.StreamingRecognitionResult.MessageType) |  | Type of the result message. |
| transcript | [string](#string) |  | Transcript text representing the words that the user spoke. Populated if and only if <code>event_type</code> = <code>RECOGNITION_EVENT_TRANSCRIPT</code>. |
| is_final | [bool](#bool) |  | The default of 0.0 is a sentinel value indicating <code>confidence</code> was not set. If <code>false</code>, the <code>StreamingRecognitionResult</code> represents an interim result that may change. If <code>true</code>, the recognizer will not return any further hypotheses about this piece of the audio. May only be populated for <code>event_type</code> = <code>RECOGNITION_EVENT_TRANSCRIPT</code>. |
| confidence | [float](#float) |  | The Speech confidence between 0.0 and 1.0 for the current portion of audio. A higher number indicates an estimated greater likelihood that the recognized words are correct. The default of 0.0 is a sentinel value indicating that confidence was not set.

This field is typically only provided if <code>is_final</code> is true and you should not rely on it being accurate or even set. |






<a name="ondewo.nlu.TextInput"></a>

### TextInput
Represents the natural language text to be processed.


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| text | [string](#string) |  | Required. The UTF-8 encoded natural language text to be processed. Text length must not exceed 256 bytes. |
| language_code | [string](#string) |  | Required. The language of this conversational query. See <a href="https://dialogflow.com/docs/languages">Language Support</a> for a list of the currently supported language codes. Note that queries in the same session do not necessarily need to specify the same language. |






<a name="ondewo.nlu.UpdateSessionCommentsRequest"></a>

### UpdateSessionCommentsRequest
This message is a request to update a session comment


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| session_id | [string](#string) |  | The id of the session |
| comment | [Comment](#ondewo.nlu.Comment) |  | The comment of a session to be updated |






<a name="ondewo.nlu.UpdateSessionStepRequest"></a>

### UpdateSessionStepRequest
UpdateSessionStepRequest stores a session step into the session


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| session_step | [SessionStep](#ondewo.nlu.SessionStep) |  | The session step to be updated |
| update_mask | [google.protobuf.FieldMask](#google.protobuf.FieldMask) |  | Optional. The mask to control which fields will be updated. Example: path=["session_step.detect_intent_response.query_result.fulfillment_messages"] |
| field_mask | [google.protobuf.FieldMask](#google.protobuf.FieldMask) |  | Optional. The mask to control which fields will be filled with data. Example: path=["session_step.detect_intent_response.query_result.fulfillment_messages"] |






<a name="ondewo.nlu.VideoFileResource"></a>

### VideoFileResource
Represents a video file resource (e.g., MP4, AVI).


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| name | [string](#string) |  | The unique identifier for the video file resource. Format: <pre><code>projects/&lt;project_uuid&gt;/agent/sessions/&lt;session_uuid&gt;/videos/&lt;video_uuid&gt;</code></pre> |
| display_name | [string](#string) |  | The display name of the video file, which can be a user-assigned label. |
| bytes | [bytes](#bytes) |  | The raw bytes representing the video file (e.g., MP4, AVI). |
| duration_in_s | [float](#float) |  | The duration of the video file in seconds. |
| resolution | [string](#string) |  | The resolution of the video (e.g., "1920x1080" for Full HD). |
| frame_rate | [float](#float) |  | The frame rate of the video (e.g., 30 fps). |
| created_at | [google.protobuf.Timestamp](#google.protobuf.Timestamp) |  | Creation date and time of the video file. This is a read-only field. |
| modified_at | [google.protobuf.Timestamp](#google.protobuf.Timestamp) |  | The last modification date and time of the video file. This is a read-only field. |
| created_by | [string](#string) |  | The UUID of the user who created the video file. |
| modified_by | [string](#string) |  | The UUID of the user who last modified the video file. |





 <!-- end messages -->


<a name="ondewo.nlu.AudioEncoding"></a>

### AudioEncoding
Audio encoding of the audio content sent in the conversational query request.
Refer to the <a href="/speech/docs/basics">Cloud Speech API documentation</a> for more details.

| Name | Number | Description |
| ---- | ------ | ----------- |
| AUDIO_ENCODING_UNSPECIFIED | 0 | Not specified. |
| AUDIO_ENCODING_LINEAR_16 | 1 | Uncompressed 16-bit signed little-endian samples (Linear PCM). |
| AUDIO_ENCODING_FLAC | 2 | <a href="https://xiph.org/flac/documentation.html">FLAC</a> (Free Lossless Audio Codec) is the recommended encoding because it is lossless (therefore recognition is not compromised) and requires only about half the bandwidth of <code>LINEAR16</code>. <code>FLAC</code> stream encoding supports 16-bit and 24-bit samples, however, not all fields in <code>STREAMINFO</code> are supported. |
| AUDIO_ENCODING_MULAW | 3 | 8-bit samples that compand 14-bit audio samples using G.711 PCMU/mu-law. |
| AUDIO_ENCODING_AMR | 4 | Adaptive Multi-Rate Narrowband codec. <code>sample_rate_hertz</code> must be 8000. |
| AUDIO_ENCODING_AMR_WB | 5 | Adaptive Multi-Rate wideband codec. <code>sample_rate_hertz</code> must be 16000. |
| AUDIO_ENCODING_OGG_OPUS | 6 | Opus encoded audio frames in Ogg container (<a href="https://wiki.xiph.org/OggOpus">OggOpus</a>). <code>sample_rate_hertz</code> must be 16000. |
| AUDIO_ENCODING_SPEEX_WITH_HEADER_BYTE | 7 | Although the use of lossy encodings is not recommended, if a very low bitrate encoding is required, <code>OGG_OPUS</code> is highly preferred over Speex encoding. The <a href="https://speex.org/">Speex</a> encoding supported by Dialogflow API has a header byte in each block, as in MIME type <code>audio/x-speex-with-header-byte</code>. It is a variant of the RTP Speex encoding defined in <a href="https://tools.ietf.org/html/rfc5574">RFC 5574</a>. The stream is a sequence of blocks, one block per RTP packet. Each block starts with a byte containing the length of the block, in bytes, followed by one or more frames of Speex data, padded to an integral number of bytes (octets) as specified in RFC 5574. In other words, each RTP header is replaced with a single byte containing the block length. Only Speex wideband is supported. <code>sample_rate_hertz</code> must be 16000. |



<a name="ondewo.nlu.AudioFileResourceType"></a>

### AudioFileResourceType
File type of an audio resource

| Name | Number | Description |
| ---- | ------ | ----------- |
| AUDIO_FILE_RESOURCE_TYPE_UNSPECIFIED | 0 | Unspecified audio file type |
| AUDIO_FILE_RESOURCE_TYPE_T2S | 1 | Audio file from text to speech |
| AUDIO_FILE_RESOURCE_TYPE_S2T | 2 | Audio file from speech to text |
| AUDIO_FILE_RESOURCE_TYPE_S2T_AND_T2S | 3 | Audio file from speech to text and text to speech |



<a name="ondewo.nlu.ComparisonOperator"></a>

### ComparisonOperator
Type of operator to compare

| Name | Number | Description |
| ---- | ------ | ----------- |
| EQUAL | 0 | equal operator |
| GREATER | 1 | greater operator, e.g. for numbers, dates, and strings |
| GREATER_OR_EQUAL | 2 | greater or equal operator, e.g. for numbers, dates, and strings |
| LESS_OR_EQUAL | 3 | less or equal operator, e.g. for numbers, dates, and strings |
| CONTAINS | 4 | contains operator, e.g. part of string, or one of the elements in an iterable such as set or list |
| STARTS_WITH | 5 | starts with operator for string comparison only |
| ENDS_WITH | 6 | ends with operator for string comparison only |



<a name="ondewo.nlu.ResourceView"></a>

### ResourceView
Represents the options for views of resources.

| Name | Number | Description |
| ---- | ------ | ----------- |
| RESOURCE_VIEW_UNSPECIFIED | 0 | Resource view not specified |
| RESOURCE_VIEW_FULL | 1 | All fields are populated including bytes e.g., for audio files |
| RESOURCE_VIEW_PARTIAL | 2 | Fields include metadata but no bytes |
| RESOURCE_VIEW_MINIMUM | 3 | Minimum view only without bytes and metadata |



<a name="ondewo.nlu.Session.View"></a>

### Session.View
Represents the options for views of a session.
A session can be a sizable object. Therefore, we provide a resource view that does not return all data

| Name | Number | Description |
| ---- | ------ | ----------- |
| VIEW_UNSPECIFIED | 0 | Endpoints decide whether to return the full or the sparse view |
| VIEW_FULL | 1 | All fields are populated. |
| VIEW_SPARSE | 2 | Only some fields are populated in the response. |



<a name="ondewo.nlu.SessionReview.View"></a>

### SessionReview.View
Represents the options for views of a session_review.
A session_review can be a sizable object. Therefore, we provide a resource view that does not return all data

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
| END_OF_SINGLE_UTTERANCE | 2 | Event indicates that the server has detected the end of the user&apos;s speech utterance and expects no additional speech. Therefore, the server will not process additional audio (although it may subsequently return additional results). The client should stop sending additional audio data, half-close the gRPC connection, and wait for any additional results until the server closes the gRPC connection. This message is only sent if <code>single_utterance</code> was set to <code>true</code>, and is not used otherwise. |



<a name="ondewo.nlu.TranscriptionType"></a>

### TranscriptionType


| Name | Number | Description |
| ---- | ------ | ----------- |
| TRANSCRIPTION_TYPE_UNSPECIFIED | 0 | unspecified |
| TRANSCRIPTION_TYPE_S2T | 1 | Automatic transcription by a speech to text system |
| TRANSCRIPTION_TYPE_HUMAN | 2 | Manual human transcription |


 <!-- end enums -->

 <!-- end HasExtensions -->


<a name="ondewo.nlu.Sessions"></a>

### Sessions
A session represents an interaction with a user. You retrieve user input and pass it to the <a href="index.html#ondewo.nlu.Sessions.DetectIntent">DetectIntent</a> (or <a href="index.html#ondewo.nlu.Sessions.StreamingDetectIntent">StreamingDetectIntent</a>) method to determine user intent and respond.

| Method Name | Request Type | Response Type | Description |
| ----------- | ------------ | ------------- | ------------|
| DetectIntent | [DetectIntentRequest](#ondewo.nlu.DetectIntentRequest) | [DetectIntentResponse](#ondewo.nlu.DetectIntentResponse) | Processes a natural language query and returns structured, actionable data as a result. This method is not idempotent, because it may cause contexts and session entity types to be updated, which in turn might affect results of future queries. |
| StreamingDetectIntent | [StreamingDetectIntentRequest](#ondewo.nlu.StreamingDetectIntentRequest) stream | [StreamingDetectIntentResponse](#ondewo.nlu.StreamingDetectIntentResponse) stream | Processes a natural language query in audio format in a streaming fashion and returns structured, actionable data as a result. This method is only available via the gRPC API (not REST). |
| ListSessions | [ListSessionsRequest](#ondewo.nlu.ListSessionsRequest) | [ListSessionsResponse](#ondewo.nlu.ListSessionsResponse) | ListSessions: returns list of sessions from ondewo-kb; by default returns only session IDs |
| GetSession | [GetSessionRequest](#ondewo.nlu.GetSessionRequest) | [Session](#ondewo.nlu.Session) | GetSession: returns a session(=conversation) from ondewo-kb |
| CreateSession | [CreateSessionRequest](#ondewo.nlu.CreateSessionRequest) | [Session](#ondewo.nlu.Session) | CreateSession: creates and returns a session(=conversation) from ondewo-kb |
| CreateSessionStep | [CreateSessionStepRequest](#ondewo.nlu.CreateSessionStepRequest) | [SessionStep](#ondewo.nlu.SessionStep) | CreateSessionStep: creates a new session step for a session |
| GetSessionStep | [GetSessionStepRequest](#ondewo.nlu.GetSessionStepRequest) | [SessionStep](#ondewo.nlu.SessionStep) | GetSessionStep: gets an existing session step of a session |
| UpdateSessionStep | [UpdateSessionStepRequest](#ondewo.nlu.UpdateSessionStepRequest) | [SessionStep](#ondewo.nlu.SessionStep) | UpdateSessionStep: updates an existing session step in a session |
| DeleteSessionStep | [DeleteSessionStepRequest](#ondewo.nlu.DeleteSessionStepRequest) | [.google.protobuf.Empty](#google.protobuf.Empty) | DeleteSessionStep: deletes an existing session step from the session |
| DeleteSession | [DeleteSessionRequest](#ondewo.nlu.DeleteSessionRequest) | [.google.protobuf.Empty](#google.protobuf.Empty) | DeleteSession: delete a session(=conversation) from ondewo-kb (for testing only) |
| ListSessionLabels | [ListSessionLabelsRequest](#ondewo.nlu.ListSessionLabelsRequest) | [ListSessionLabelsResponse](#ondewo.nlu.ListSessionLabelsResponse) |  |
| ListSessionLabelsOfAllSessions | [ListSessionLabelsOfAllSessionsRequest](#ondewo.nlu.ListSessionLabelsOfAllSessionsRequest) | [ListSessionLabelsResponse](#ondewo.nlu.ListSessionLabelsResponse) |  |
| ListLanguageCodesOfAllSessions | [ListLanguageCodesOfAllSessionsRequest](#ondewo.nlu.ListLanguageCodesOfAllSessionsRequest) | [ListLanguageCodesResponse](#ondewo.nlu.ListLanguageCodesResponse) |  |
| ListMatchedIntentsOfAllSessions | [ListMatchedIntentsOfAllSessionsRequest](#ondewo.nlu.ListMatchedIntentsOfAllSessionsRequest) | [ListMatchedIntentsResponse](#ondewo.nlu.ListMatchedIntentsResponse) |  |
| ListMatchedEntityTypesOfAllSessions | [ListMatchedEntityTypesOfAllSessionsRequest](#ondewo.nlu.ListMatchedEntityTypesOfAllSessionsRequest) | [ListMatchedEntityTypesResponse](#ondewo.nlu.ListMatchedEntityTypesResponse) |  |
| ListUserIdsOfAllSessions | [ListUserIdsOfAllSessionsRequest](#ondewo.nlu.ListUserIdsOfAllSessionsRequest) | [ListUserIdsResponse](#ondewo.nlu.ListUserIdsResponse) |  |
| ListIdentifiedUserIdsOfAllSessions | [ListIdentifiedUserIdsOfAllSessionsRequest](#ondewo.nlu.ListIdentifiedUserIdsOfAllSessionsRequest) | [ListIdentifiedUserIdsResponse](#ondewo.nlu.ListIdentifiedUserIdsResponse) |  |
| ListTagsOfAllSessions | [ListTagsOfAllSessionsRequest](#ondewo.nlu.ListTagsOfAllSessionsRequest) | [ListTagsResponse](#ondewo.nlu.ListTagsResponse) |  |
| ListInputContextsOfAllSessions | [ListInputContextsOfAllSessionsRequest](#ondewo.nlu.ListInputContextsOfAllSessionsRequest) | [ListInputContextsResponse](#ondewo.nlu.ListInputContextsResponse) |  |
| ListOutputContextsOfAllSessions | [ListOutputContextsOfAllSessionsRequest](#ondewo.nlu.ListOutputContextsOfAllSessionsRequest) | [ListOutputContextsResponse](#ondewo.nlu.ListOutputContextsResponse) |  |
| ListPlatformsOfAllSessions | [ListPlatformsOfAllSessionsRequest](#ondewo.nlu.ListPlatformsOfAllSessionsRequest) | [ListPlatformsResponse](#ondewo.nlu.ListPlatformsResponse) |  |
| ListAccountIdsOfAllSessions | [ListAccountIdsOfAllSessionsRequest](#ondewo.nlu.ListAccountIdsOfAllSessionsRequest) | [ListAccountIdsResponse](#ondewo.nlu.ListAccountIdsResponse) |  |
| ListPropertyIdsOfAllSessions | [ListPropertyIdsOfAllSessionsRequest](#ondewo.nlu.ListPropertyIdsOfAllSessionsRequest) | [ListPropertyIdsResponse](#ondewo.nlu.ListPropertyIdsResponse) |  |
| ListDatastreamIdsOfAllSessions | [ListDatastreamIdsOfAllSessionsRequest](#ondewo.nlu.ListDatastreamIdsOfAllSessionsRequest) | [ListDatastreamIdsResponse](#ondewo.nlu.ListDatastreamIdsResponse) |  |
| ListOriginIdsOfAllSessions | [ListOriginIdsOfAllSessionsRequest](#ondewo.nlu.ListOriginIdsOfAllSessionsRequest) | [ListOriginIdsResponse](#ondewo.nlu.ListOriginIdsResponse) |  |
| AddSessionLabels | [AddSessionLabelsRequest](#ondewo.nlu.AddSessionLabelsRequest) | [Session](#ondewo.nlu.Session) |  |
| DeleteSessionLabels | [DeleteSessionLabelsRequest](#ondewo.nlu.DeleteSessionLabelsRequest) | [Session](#ondewo.nlu.Session) |  |
| AddSessionComment | [AddSessionCommentRequest](#ondewo.nlu.AddSessionCommentRequest) | [Comment](#ondewo.nlu.Comment) |  |
| DeleteSessionComments | [DeleteSessionCommentsRequest](#ondewo.nlu.DeleteSessionCommentsRequest) | [Session](#ondewo.nlu.Session) |  |
| UpdateSessionComments | [UpdateSessionCommentsRequest](#ondewo.nlu.UpdateSessionCommentsRequest) | [Session](#ondewo.nlu.Session) |  |
| ListSessionComments | [ListSessionCommentsRequest](#ondewo.nlu.ListSessionCommentsRequest) | [ListSessionCommentsResponse](#ondewo.nlu.ListSessionCommentsResponse) |  |
| ListSessionReviews | [ListSessionReviewsRequest](#ondewo.nlu.ListSessionReviewsRequest) | [ListSessionReviewsResponse](#ondewo.nlu.ListSessionReviewsResponse) | ListSessionReviews: returns list of session reviews from ondewo-kb; by default only returns session review IDs |
| GetSessionReview | [GetSessionReviewRequest](#ondewo.nlu.GetSessionReviewRequest) | [SessionReview](#ondewo.nlu.SessionReview) | GetSessionReview: returns a session-review from ondewo-kb or computes the first review if none exists |
| GetLatestSessionReview | [GetLatestSessionReviewRequest](#ondewo.nlu.GetLatestSessionReviewRequest) | [SessionReview](#ondewo.nlu.SessionReview) | GetLatestSessionReview: returns a session-review from ondewo-kb or computes the first review if none exists |
| CreateSessionReview | [CreateSessionReviewRequest](#ondewo.nlu.CreateSessionReviewRequest) | [SessionReview](#ondewo.nlu.SessionReview) | CreateSessionReview: persist a session review in ondewo-kb as a side effect: also update training data in ondewo-cai |
| GetAudioFiles | [GetAudioFilesRequest](#ondewo.nlu.GetAudioFilesRequest) | [GetAudioFilesResponse](#ondewo.nlu.GetAudioFilesResponse) | RPC to get audio files based on specified criteria. Retrieves information about audio files associated with specific sessions. Returns a response containing details of the requested audio files. |
| AddAudioFiles | [AddAudioFilesRequest](#ondewo.nlu.AddAudioFilesRequest) | [AddAudioFilesResponse](#ondewo.nlu.AddAudioFilesResponse) | RPC to add audio files to a session. Adds new audio files to the specified session, providing details about each file. Returns a response containing information about the added audio files. |
| DeleteAudioFiles | [DeleteAudioFilesRequest](#ondewo.nlu.DeleteAudioFilesRequest) | [DeleteAudioFilesResponse](#ondewo.nlu.DeleteAudioFilesResponse) | RPC to delete specified audio files. Deletes audio files associated with specific sessions based on unique identifiers. Returns an empty response indicating the successful deletion of the specified audio files. |
| GetAudioFileOfSession | [GetAudioFileOfSessionRequest](#ondewo.nlu.GetAudioFileOfSessionRequest) | [AudioFileResource](#ondewo.nlu.AudioFileResource) | RPC to get a consolidated audio file for a specific session. Retrieves a single audio file that combines all audio files associated with the specified session. Returns details of the consolidated audio file. |
| ListAudioFiles | [ListAudioFilesRequest](#ondewo.nlu.ListAudioFilesRequest) | [ListAudioFilesResponse](#ondewo.nlu.ListAudioFilesResponse) | RPC to get a list audio files for a specific session. Retrieves a single audio file that combines all audio files associated with the specified session. |

 <!-- end services -->



<a name="ondewo/nlu/user.proto"></a>
<p align="right"><a href="#top">Top</a></p>

## ondewo/nlu/user.proto



<a name="ondewo.nlu.CreateServerRoleRequest"></a>

### CreateServerRoleRequest
Request to create server role


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| role | [ServerRole](#ondewo.nlu.ServerRole) |  | If the role_id is not provided, an incremental value will be assigned The &quot;name&quot; and &quot;role_type&quot; are mandatory values The permissions all default to False if not provided specifically |






<a name="ondewo.nlu.CreateUserRequest"></a>

### CreateUserRequest
Request to create user


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| user | [User](#ondewo.nlu.User) |  | user_id in the User message should be given, if empty will throw an error in the backend |
| password | [string](#string) |  | password |






<a name="ondewo.nlu.DeleteAllUserPreferencesRequest"></a>

### DeleteAllUserPreferencesRequest
Request to delete all user preferences with an optional filter substring.


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| user_name | [string](#string) |  | The name of the user. Format: <pre><code>projects/&lt;project_uuid&gt;/agent/users/&lt;user_uuid&gt;</code></pre> |
| regex_filter | [string](#string) |  | Optional: Only delete keys that match the provided regular expression. If user does not add regex_filter, then all user preferences will be deleted Example: Only delete keys starting with DE: <code>^DE_</code> Only delete keys matching: <code>.*user.*</code> |






<a name="ondewo.nlu.DeleteServerRoleRequest"></a>

### DeleteServerRoleRequest
Request to delete server role


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| role_id | [uint32](#uint32) |  | role is identified by role id, if empty will throw an error in the backend |






<a name="ondewo.nlu.DeleteUserPreferencesRequest"></a>

### DeleteUserPreferencesRequest
Request to delete specific user preferences.


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| user_name | [string](#string) |  | The name of the user. Format: <pre><code>projects/&lt;project_uuid&gt;/agent/users/&lt;user_uuid&gt;</code></pre> |
| keys | [string](#string) | repeated | List of keys to delete from user preferences. |
| regex_include | [string](#string) |  | Optional: In addition to the keys specified also include all <code>keys</code> that match the provided <code>regex_include</code> regular expression. If user does not add regex_filter, then only the keys specified in the keys field are deleted. If both, a key in the keys field and in the regex_include is matched then the key is deleted without raising an error. |






<a name="ondewo.nlu.DeleteUserPreferencesResponse"></a>

### DeleteUserPreferencesResponse
Response to delete specific user preferences.


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| user_name | [string](#string) |  | The name of the user. Format: <pre><code>projects/&lt;project_uuid&gt;/agent/users/&lt;user_uuid&gt;</code></pre> |
| keys | [string](#string) | repeated | List of keys to delete from user preferences. |
| error_message | [string](#string) |  | error message if there are any. |






<a name="ondewo.nlu.DeleteUserRequest"></a>

### DeleteUserRequest
Request to delete user


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| user_id | [string](#string) |  | user is identified by user id, if empty will throw an error in the backend |






<a name="ondewo.nlu.GetServerRoleRequest"></a>

### GetServerRoleRequest
Request to get server role


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| role_id | [uint32](#uint32) |  | role is identified by role id |
| role_name | [string](#string) |  | role can also be uniquely identified by its name |
| field_mask | [google.protobuf.FieldMask](#google.protobuf.FieldMask) | optional | Optional. The mask to control which fields gets returned. |






<a name="ondewo.nlu.GetUserPreferencesRequest"></a>

### GetUserPreferencesRequest
Request to get user preferences.


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| user_name | [string](#string) |  | The name of the user. Format: <pre><code>projects/&lt;project_uuid&gt;/agent/users/&lt;user_uuid&gt;</code></pre> |
| keys | [string](#string) | repeated | Specific keys to retrieve from user preferences. If keys are specified multiple times then only one KeyValue pair is returned |
| regex_include | [string](#string) |  | Optional: In addition to the keys specified also include all <code>keys</code> that match the provided <code>regex_include</code> regular expression. If user does not add regex_filter, then only the keys specified in the keys field are returned. If both, a key in the keys field and in the regex_include will be matched than only a single <code>KeyValuePair</code> is returned. |
| field_mask | [google.protobuf.FieldMask](#google.protobuf.FieldMask) | optional | Optional. The mask to control which fields gets returned. |






<a name="ondewo.nlu.GetUserPreferencesResponse"></a>

### GetUserPreferencesResponse
Response containing user preferences.


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| user_name | [string](#string) |  | The name of the user. Format: <pre><code>projects/&lt;project_uuid&gt;/agent/users/&lt;user_uuid&gt;</code></pre> |
| key_value_pairs | [KeyValuePair](#ondewo.nlu.KeyValuePair) | repeated | List of key-value pairs representing user preferences. |
| error_message | [string](#string) |  | error message if there are any. |






<a name="ondewo.nlu.GetUserRequest"></a>

### GetUserRequest
Request to get user


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| user_id | [string](#string) |  | the user is identified by user id |
| user_email | [string](#string) |  | the user can identified by their email |
| field_mask | [google.protobuf.FieldMask](#google.protobuf.FieldMask) |  | Optional field mask to specify which fields to return in the response |






<a name="ondewo.nlu.ListServerPermissionsRequest"></a>

### ListServerPermissionsRequest
Server permissions


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| page_token | [string](#string) |  | Optional: The page token to support pagination. Pagination allows you to retrieve a large result set in smaller, more manageable portions. The page token is a string representing the current index and page size.

Valid page token strings: <ul> <li><code>&quot;&quot;</code> (empty string) - Retrieves the first page.</li> <li><code>&quot;current_index-0--page_size-20&quot;</code> - Retrieves the first page with a page size of 20.</li> <li><code>&quot;current_index-1--page_size-20&quot;</code> - Retrieves the second page with a page size of 20.</li> </ul>

Index starts at 0.

Examples of valid page token strings: <ul> <li><code>&quot;&quot;</code></li> <li><code>&quot;current_index-0--page_size-20&quot;</code></li> <li><code>&quot;current_index-1--page_size-20&quot;</code></li> <li><code>&quot;current_index-10--page_size-20&quot;</code></li> </ul>

Examples of invalid page token strings: <ul> <li><code>&quot;1&quot;</code></li> <li><code>&quot;current_index-0--page_size-20&quot;</code></li> <li><code>&quot;current_index--1--page_size-20&quot;</code></li> <li><code>&quot;current_index1--page_size-20&quot;</code></li> <li><code>&quot;current_index-1--page_size--20&quot;</code></li> </ul> |
| field_mask | [google.protobuf.FieldMask](#google.protobuf.FieldMask) | optional | Optional. The mask to control which fields gets returned. |






<a name="ondewo.nlu.ListServerPermissionsResponse"></a>

### ListServerPermissionsResponse
Response containing list of server permissions


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| permissions | [string](#string) | repeated | The list of server permissions. There will be a maximum number of items returned based on the page_token field in the request. |
| next_page_token | [string](#string) |  | The next_page_token is used to retrieve the next page of a returned result, e.g. next_page_token is current_index-2 |






<a name="ondewo.nlu.ListServerRolesRequest"></a>

### ListServerRolesRequest
Request to list server roles


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| page_token | [string](#string) |  | Optional: The page token to support pagination. Pagination allows you to retrieve a large result set in smaller, more manageable portions. The page token is a string representing the current index and page size.

Valid page token strings: <ul> <li><code>&quot;&quot;</code> (empty string) - Retrieves the first page.</li> <li><code>&quot;current_index-0--page_size-20&quot;</code> - Retrieves the first page with a page size of 20.</li> <li><code>&quot;current_index-1--page_size-20&quot;</code> - Retrieves the second page with a page size of 20.</li> </ul>

Index starts at 0.

Examples of valid page token strings: <ul> <li><code>&quot;&quot;</code></li> <li><code>&quot;current_index-0--page_size-20&quot;</code></li> <li><code>&quot;current_index-1--page_size-20&quot;</code></li> <li><code>&quot;current_index-10--page_size-20&quot;</code></li> </ul>

Examples of invalid page token strings: <ul> <li><code>&quot;1&quot;</code></li> <li><code>&quot;current_index-0--page_size-20&quot;</code></li> <li><code>&quot;current_index--1--page_size-20&quot;</code></li> <li><code>&quot;current_index1--page_size-20&quot;</code></li> <li><code>&quot;current_index-1--page_size--20&quot;</code></li> </ul> |
| field_mask | [google.protobuf.FieldMask](#google.protobuf.FieldMask) | optional | Optional. The mask to control which fields gets returned. |






<a name="ondewo.nlu.ListServerRolesResponse"></a>

### ListServerRolesResponse
Response containing list of server roles


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| server_roles | [ServerRole](#ondewo.nlu.ServerRole) | repeated | The list of server roles. There will be a maximum number of items returned based on the page_token field in the request. |
| next_page_token | [string](#string) |  | The next_page_token is used to retrieve the next page of a returned result, e.g. next_page_token is current_index-2 |






<a name="ondewo.nlu.ListUserInfosResponse"></a>

### ListUserInfosResponse
Response containing list of users


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| users | [UserInfo](#ondewo.nlu.UserInfo) | repeated | The list of server roles. There will be a maximum number of items returned based on the page_token field in the request. |
| next_page_token | [string](#string) |  | The next_page_token is used to retrieve the next page of a returned result, e.g. next_page_token is current_index-2 |






<a name="ondewo.nlu.ListUserPreferencesRequest"></a>

### ListUserPreferencesRequest
Request to list all user preferences for a specific user.


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| user_name | [string](#string) |  | The name of the user. Format: <pre><code>projects/&lt;project_uuid&gt;/agent/users/&lt;user_uuid&gt;</code></pre> |
| regex_filter | [string](#string) |  | Optional: Only list keys that match the provided regular expression |
| field_mask | [google.protobuf.FieldMask](#google.protobuf.FieldMask) | optional | Optional. The mask to control which fields gets returned. |






<a name="ondewo.nlu.ListUserPreferencesResponse"></a>

### ListUserPreferencesResponse
Response containing a list of user preferences for a specific user with an optional filter substring.


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| user_name | [string](#string) |  | The name of the user. |
| key_value_pairs | [KeyValuePair](#ondewo.nlu.KeyValuePair) | repeated | List of key-value pairs representing user preferences. |
| error_message | [string](#string) |  | error message if there are any. |






<a name="ondewo.nlu.ListUsersRequest"></a>

### ListUsersRequest
Request to list user


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| page_token | [string](#string) |  | Optional: The page token to support pagination. Pagination allows you to retrieve a large result set in smaller, more manageable portions. The page token is a string representing the current index and page size.

Valid page token strings: <ul> <li><code>&quot;&quot;</code> (empty string) - Retrieves the first page.</li> <li><code>&quot;current_index-0--page_size-20&quot;</code> - Retrieves the first page with a page size of 20.</li> <li><code>&quot;current_index-1--page_size-20&quot;</code> - Retrieves the second page with a page size of 20.</li> </ul>

Index starts at 0.

Examples of valid page token strings: <ul> <li><code>&quot;&quot;</code></li> <li><code>&quot;current_index-0--page_size-20&quot;</code></li> <li><code>&quot;current_index-1--page_size-20&quot;</code></li> <li><code>&quot;current_index-10--page_size-20&quot;</code></li> </ul>

Examples of invalid page token strings: <ul> <li><code>&quot;1&quot;</code></li> <li><code>&quot;current_index-0--page_size-20&quot;</code></li> <li><code>&quot;current_index--1--page_size-20&quot;</code></li> <li><code>&quot;current_index1--page_size-20&quot;</code></li> <li><code>&quot;current_index-1--page_size--20&quot;</code></li> </ul> |
| field_mask | [google.protobuf.FieldMask](#google.protobuf.FieldMask) | optional | Optional. The mask to control which fields gets returned. |






<a name="ondewo.nlu.ListUsersResponse"></a>

### ListUsersResponse
Response containing list of users


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| users | [User](#ondewo.nlu.User) | repeated | The list of users. There will be a maximum number of items returned based on the page_token field in the request. |
| next_page_token | [string](#string) |  | The next_page_token is used to retrieve the next page of a returned result, e.g. next_page_token is current_index-2 |






<a name="ondewo.nlu.LoginRequest"></a>

### LoginRequest
Authentication messages


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| user_email | [string](#string) |  | user email |
| password | [string](#string) |  | user password |
| field_mask | [google.protobuf.FieldMask](#google.protobuf.FieldMask) | optional | Optional. The mask to control which fields gets returned. |






<a name="ondewo.nlu.LoginResponse"></a>

### LoginResponse
This message is a response of logging


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| user | [User](#ondewo.nlu.User) |  | user object - user_id must be there |
| auth_token | [string](#string) |  | authentication token after successful login of the user to access NLU services |






<a name="ondewo.nlu.ServerRole"></a>

### ServerRole
Server Role messages


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| role_id | [uint32](#uint32) |  | unique identifier of the role |
| name | [string](#string) |  | unique name of the role |
| permissions | [string](#string) | repeated | defines the permissions for the given role (the strings can be gotten from the ListServerPermissions) |
| created_at | [google.protobuf.Timestamp](#google.protobuf.Timestamp) |  | Creation date and time. Read-only field. |
| modified_at | [google.protobuf.Timestamp](#google.protobuf.Timestamp) |  | Modification date and time. Read-only field. |
| created_by | [string](#string) |  | User id in form of a valid UUID. |
| modified_by | [string](#string) |  | User id in form of a valid UUID. |






<a name="ondewo.nlu.SetUserPreferencesRequest"></a>

### SetUserPreferencesRequest
Request to set or update user preferences.


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| user_name | [string](#string) |  | The name of the user. Format: <pre><code>projects/&lt;project_uuid&gt;/agent/users/&lt;user_uuid&gt;</code></pre> |
| key_value_pairs | [KeyValuePair](#ondewo.nlu.KeyValuePair) | repeated | List of key-value pairs to set or update. |






<a name="ondewo.nlu.SetUserPreferencesResponse"></a>

### SetUserPreferencesResponse
Response to set or update user preferences.


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| user_name | [string](#string) |  | The name of the user. Format: <pre><code>projects/&lt;project_uuid&gt;/agent/users/&lt;user_uuid&gt;</code></pre> |
| keys | [string](#string) | repeated | List of keys to delete from user preferences. |
| error_message | [string](#string) |  | error message if there are any. |






<a name="ondewo.nlu.UpdateServerRoleRequest"></a>

### UpdateServerRoleRequest
Request to update server role


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| role | [ServerRole](#ondewo.nlu.ServerRole) |  | role_id in the Role message should be given, if empty will throw an error in the backend other fields in the Role are optional. Only the fields to be updated should be provided |
| update_mask | [google.protobuf.FieldMask](#google.protobuf.FieldMask) |  | Optional. The mask to control which fields get updated. |






<a name="ondewo.nlu.UpdateUserRequest"></a>

### UpdateUserRequest
Request to update user


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| user | [User](#ondewo.nlu.User) |  | user_id in the User message should be given, if empty will throw an error in the backend password and other fields in the User are optional. Only the fields to be updated should be provided |
| password | [string](#string) |  | Password of the user |
| update_mask | [google.protobuf.FieldMask](#google.protobuf.FieldMask) |  | Optional. The mask to control which fields get updated. |






<a name="ondewo.nlu.User"></a>

### User
this message contains all the fields that required for user db


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| user_id | [string](#string) |  | when creating user user_id is empty, then it will be generated on creation time on backend |
| display_name | [string](#string) |  | Optional field display_name is the name that will be used on the frontend to interact with the user it shouldn&apos;t be unique. If not provided user_name will also be used as display name |
| server_role_id | [uint32](#uint32) |  | server role type of the given user. If nothing is provided, the user is set to USER (minimum access) |
| user_email | [string](#string) |  | user e-mail should be a valid e-mail and unique |
| user_profile_picture | [bytes](#bytes) |  | user profile picture |
| created_at | [google.protobuf.Timestamp](#google.protobuf.Timestamp) |  | Creation date and time. Read-only field. |
| modified_at | [google.protobuf.Timestamp](#google.protobuf.Timestamp) |  | Modification date and time. Read-only field. |
| created_by | [string](#string) |  | User id in form of a valid UUID. |
| modified_by | [string](#string) |  | User id in form of a valid UUID. |






<a name="ondewo.nlu.UserInfo"></a>

### UserInfo
This message contains information about user


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| user | [User](#ondewo.nlu.User) |  | user object |
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
Structure of server role

| Name | Number | Description |
| ---- | ------ | ----------- |
| SERVER_UNSPECIFIED | 0 | unspecified server role |
| SERVER_USER | 1 | read-only access |
| SERVER_MANAGER | 2 | SERVER_USER&apos;s permissions + CRUD of projects and Users |
| SERVER_ADMIN | 3 | this role can do everything |
| SERVER_INACTIVE | 4 | this role can do nothing. Used to set a user as inactive in the server. |


 <!-- end enums -->

 <!-- end HasExtensions -->


<a name="ondewo.nlu.Users"></a>

### Users
gRPC service for managing users and server roles.

| Method Name | Request Type | Response Type | Description |
| ----------- | ------------ | ------------- | ------------|
| CreateUser | [CreateUserRequest](#ondewo.nlu.CreateUserRequest) | [User](#ondewo.nlu.User) | Creates a user. |
| GetUser | [GetUserRequest](#ondewo.nlu.GetUserRequest) | [User](#ondewo.nlu.User) | Retrieves a user by identifier. |
| GetUserInfo | [GetUserRequest](#ondewo.nlu.GetUserRequest) | [UserInfo](#ondewo.nlu.UserInfo) | Retrieves user information by identifier. |
| DeleteUser | [GetUserRequest](#ondewo.nlu.GetUserRequest) | [.google.protobuf.Empty](#google.protobuf.Empty) | Deletes a user by identifier. |
| UpdateUser | [UpdateUserRequest](#ondewo.nlu.UpdateUserRequest) | [User](#ondewo.nlu.User) | Updates a user. |
| ListUsers | [ListUsersRequest](#ondewo.nlu.ListUsersRequest) | [ListUsersResponse](#ondewo.nlu.ListUsersResponse) | Lists users. |
| ListUserInfos | [ListUsersRequest](#ondewo.nlu.ListUsersRequest) | [ListUserInfosResponse](#ondewo.nlu.ListUserInfosResponse) | Lists user information. |
| CreateServerRole | [CreateServerRoleRequest](#ondewo.nlu.CreateServerRoleRequest) | [ServerRole](#ondewo.nlu.ServerRole) | Creates a server role. |
| GetServerRole | [GetServerRoleRequest](#ondewo.nlu.GetServerRoleRequest) | [ServerRole](#ondewo.nlu.ServerRole) | Retrieves a server role by ID. |
| DeleteServerRole | [DeleteServerRoleRequest](#ondewo.nlu.DeleteServerRoleRequest) | [.google.protobuf.Empty](#google.protobuf.Empty) | Deletes a server role by ID. |
| UpdateServerRole | [UpdateServerRoleRequest](#ondewo.nlu.UpdateServerRoleRequest) | [ServerRole](#ondewo.nlu.ServerRole) | Updates a server role. |
| ListServerRoles | [ListServerRolesRequest](#ondewo.nlu.ListServerRolesRequest) | [ListServerRolesResponse](#ondewo.nlu.ListServerRolesResponse) | Lists server roles. |
| ListServerPermissions | [ListServerPermissionsRequest](#ondewo.nlu.ListServerPermissionsRequest) | [ListServerPermissionsResponse](#ondewo.nlu.ListServerPermissionsResponse) | Lists server permissions. |
| Login | [LoginRequest](#ondewo.nlu.LoginRequest) | [LoginResponse](#ondewo.nlu.LoginResponse) | Requests login. |
| CheckLogin | [.google.protobuf.Empty](#google.protobuf.Empty) | [.google.protobuf.Empty](#google.protobuf.Empty) | Checks login. |
| ListNotifications | [ListNotificationsRequest](#ondewo.nlu.ListNotificationsRequest) | [ListNotificationsResponse](#ondewo.nlu.ListNotificationsResponse) | Lists notifications based on specified filters. |
| SetNotificationsFlaggedStatus | [SetNotificationsFlaggedStatusRequest](#ondewo.nlu.SetNotificationsFlaggedStatusRequest) | [ListNotificationsResponse](#ondewo.nlu.ListNotificationsResponse) | Sets the flagged status for multiple notifications. |
| SetNotificationsReadStatus | [SetNotificationsReadStatusRequest](#ondewo.nlu.SetNotificationsReadStatusRequest) | [ListNotificationsResponse](#ondewo.nlu.ListNotificationsResponse) | Sets the read status for multiple notifications. |
| GetUserPreferences | [GetUserPreferencesRequest](#ondewo.nlu.GetUserPreferencesRequest) | [GetUserPreferencesResponse](#ondewo.nlu.GetUserPreferencesResponse) | Retrieves user preferences based on the provided request. |
| SetUserPreferences | [SetUserPreferencesRequest](#ondewo.nlu.SetUserPreferencesRequest) | [SetUserPreferencesResponse](#ondewo.nlu.SetUserPreferencesResponse) | Sets or updates user preferences based on the provided request. |
| DeleteUserPreferences | [DeleteUserPreferencesRequest](#ondewo.nlu.DeleteUserPreferencesRequest) | [DeleteUserPreferencesResponse](#ondewo.nlu.DeleteUserPreferencesResponse) | Deletes specific user preferences based on the provided request. |
| DeleteAllUserPreferences | [DeleteAllUserPreferencesRequest](#ondewo.nlu.DeleteAllUserPreferencesRequest) | [DeleteUserPreferencesResponse](#ondewo.nlu.DeleteUserPreferencesResponse) | Deletes all user preferences for a specific user, optionally filtered by a substring. |

 <!-- end services -->



<a name="ondewo/nlu/utility.proto"></a>
<p align="right"><a href="#top">Top</a></p>

## ondewo/nlu/utility.proto



<a name="ondewo.nlu.AddTrainingPhrasesFromCSVRequest"></a>

### AddTrainingPhrasesFromCSVRequest
Request message to AddTrainingPhraseFromCSV rpc


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| parent | [string](#string) |  | Required. The agent to list all intents from. Format: <pre><code>projects/&lt;project_uuid&gt;/agent</code></pre> |
| language_code | [string](#string) |  | Required. The language to list training phrases, parameters and rich messages for. If not specified, the agent&apos;s default language is used. Note: languages must be enabled in the agent before they can be used. |
| csv_contents | [bytes](#bytes) |  | Required. Contents of the .csv file containing training phrases to be added to the intents |
| extract_entities | [bool](#bool) |  | Optional. Whether or not to extract entities for the new training phrases |
| special_characters | [string](#string) |  | Optional. Before new training phrases are added to their corresponding intent, they are cleaned with cleaning scripts. These cleaning scripts remove certain special characters, if they are found at the beginning of the text or if they appear in annotations. Overrides the default: <code>&apos;.,;!?:&apos;</code> |
| training_phrase_cleaner_options | [TrainingPhraseCleanerOptions](#ondewo.nlu.TrainingPhraseCleanerOptions) |  | Optional. Options for the training phrase cleaner to override the default settings |
| number_of_workers | [int32](#int32) |  | Optional. Number of threads used to accomplish the task |






<a name="ondewo.nlu.AddTrainingPhrasesRequest"></a>

### AddTrainingPhrasesRequest
Request message to AddTrainingPhrase rpc


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| parent | [string](#string) |  | Required. The agent to list all intents from. Format: <pre><code>projects/&lt;project_uuid&gt;/agent</code></pre> |
| language_code | [string](#string) |  | Required. The language to list training phrases, parameters and rich messages for. If not specified, the agent&apos;s default language is used. Note: languages must be enabled in the agent before they can be used. |
| training_phrase_list | [AddTrainingPhrasesRequest.TrainingPhraseForIntent](#ondewo.nlu.AddTrainingPhrasesRequest.TrainingPhraseForIntent) | repeated | Required. List of training phrases to be added to the intent |
| extract_entities | [bool](#bool) |  | Optional. Whether or not to extract entities for the new training phrases |
| special_characters | [string](#string) |  | Optional. Characters to be recognized as special characters for cleaning the training phrases. Overrides the default: <code>&apos;.,;!?:&apos;</code> |
| training_phrase_cleaner_options | [TrainingPhraseCleanerOptions](#ondewo.nlu.TrainingPhraseCleanerOptions) |  | Optional. Options for the training phrase cleaner to override the default settings |
| number_of_workers | [int32](#int32) |  | Optional. Number of threads used to accomplish the task |






<a name="ondewo.nlu.AddTrainingPhrasesRequest.TrainingPhraseForIntent"></a>

### AddTrainingPhrasesRequest.TrainingPhraseForIntent
Message that contains the new training phrase, together with the intent display name and, optionally the entity annotations


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
| parent | [string](#string) |  | Required. The agent to list all intents from. Format: <pre><code>projects/&lt;project_uuid&gt;/agent</code></pre> |
| language_code | [string](#string) |  | Optional. The language to list training phrases, parameters and rich messages for. If not specified, the agent&apos;s default language is used. Note: languages must be enabled in the agent before they can be used. |
| special_characters | [string](#string) |  | Optional. Characters to be recognized as special characters for cleaning. Overrides the default: <code>&apos;.,;!?:&apos;</code> |
| substring_white_list | [string](#string) | repeated | Optional. List of substring that shall not be cleaned/deleted. Example: <code>[&apos;St.&apos;, &apos;U.S.&apos;, &apos;sys.&apos;, &apos;24.12.&apos;, &apos;Nr.&apos;, &apos;TelNr.&apos;]</code> |
| max_entity_count_update | [int32](#int32) |  | Optional. Entity type that contain more than max_entity_count_update entities will not be cleaned. Relevant for auto-generated entity values (e.g. City Names) Default = 10000 |
| forbidden_entity_type_patterns | [string](#string) | repeated | Optional. List of strings or regexes. Entity types will be deleted if their display name matches an element of this list Example: <code>[&apos;sys.ignore.&apos;]</code> -&gt; would delete entity types with display names sys.ignore.* |
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
| parent | [string](#string) |  | Required. The agent to list all intents from. Format: <pre><code>projects/&lt;project_uuid&gt;/agent</code></pre> |
| language_code | [string](#string) |  | Optional. The language to list training phrases, parameters and rich messages for. If not specified, the agent&apos;s default language is used. Note: languages must be enabled in the agent before they can be used. |
| special_characters | [string](#string) |  | Optional. Characters to be recognized as special characters for cleaning. Overrides the default: <code>&apos;.,;!?:&apos;</code> |
| substring_white_list | [string](#string) | repeated | Optional. List of substring that shall not be cleaned/deleted. Example: <code>[&apos;St.&apos;, &apos;U.S.&apos;, &apos;sys.&apos;, &apos;24.12.&apos;, &apos;Nr.&apos;, &apos;TelNr.&apos;]</code> Default = None |
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
| parent | [string](#string) |  | Required. The agent to list all intents from. Format: <pre><code>projects/&lt;project_uuid&gt;/agent</code></pre> |
| entity_type_name | [string](#string) |  | Required. The name of the entity_type |
| language_code | [string](#string) |  | Optional. The language to list training phrases, parameters and rich messages for. If not specified, the agent&apos;s default language is used. Note: languages must be enabled in the agent before they can be used. |
| special_characters | [string](#string) |  | Optional. Characters to be recognized as special characters for cleaning. Overrides the default: <code>&apos;.,;!?:&apos;</code> |
| substring_white_list | [string](#string) | repeated | Optional. List of substring that shall not be cleaned/deleted. Example: <code>[&apos;St.&apos;, &apos;U.S.&apos;, &apos;sys.&apos;, &apos;24.12.&apos;, &apos;Nr.&apos;, &apos;TelNr.&apos;]</code> |
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
| parent | [string](#string) |  | Required. The agent to list all intents from. Format: <pre><code>projects/&lt;project_uuid&gt;/agent</code></pre> |
| intent_name | [string](#string) |  | Required. The name of the intent. Format: <pre><code>projects/&lt;project_uuid&gt;/agent/intents/&lt;intent_uuid&gt;</code></pre> |
| language_code | [string](#string) |  | Optional. The language to list training phrases, parameters and rich messages for. If not specified, the agent&apos;s default language is used. Note: languages must be enabled in the agent before they can be used. |
| special_characters | [string](#string) |  | Optional. Characters to be recognized as special characters for cleaning. Overrides the default: <code>&apos;.,;!?:&apos;</code> |
| substring_white_list | [string](#string) | repeated | Optional. List of substring that shall not be cleaned/deleted. Example: <code>[&apos;St.&apos;, &apos;U.S.&apos;, &apos;sys.&apos;, &apos;24.12.&apos;, &apos;Nr.&apos;, &apos;TelNr.&apos;]</code> Default = None |
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
This is collection of utility endpoints, intended to language-independent operations, such as code checks, regex checks, etc. Holds a collection of utility functions

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



<a name="ondewo.nlu.CreateSessionEntityTypeRequest"></a>

### CreateSessionEntityTypeRequest
The request message for <a href="index.html#ondewo.nlu.Webhook.CreateSessionEntityType">Webhook.CreateSessionEntityType</a>


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| parent | [string](#string) |  | Required. The agent to list all intents from. Format: <pre><code>projects/&lt;project_uuid&gt;/agent</code></pre> |
| session_entity_type | [SessionEntityType](#ondewo.nlu.SessionEntityType) |  | Required. The session entity type to create. |
| session_id | [string](#string) |  | Required. The session to create a session entity type for. Format: <pre><code>projects/&lt;project_uuid&gt;/agents/sessions/&lt;session_uuid&gt;</code></pre> or <pre><code>projects/&lt;project_uuid&gt;/agents/sessions/&lt;session_uuid&gt;</code></pre> <code>projects/&lt;project_uuid&gt;/agent/environments/&lt;environment_uuid&gt;/users/&lt;user_uuid&gt;/ sessions/&lt;session_uuid&gt;</code>. If <code>Environment ID</code> is not specified, we assume default <code>&apos;draft&apos;</code> environment. If <code>User ID</code> is not specified, we assume default <code>&apos;-&apos;</code> user. Required. The project that the agent to fetch is associated with. The session to create a session entity type for. Format: <pre><code>projects/&lt;project_uuid&gt;/agents/sessions/&lt;session_uuid&gt;</code></pre> |






<a name="ondewo.nlu.DeleteSessionEntityTypeRequest"></a>

### DeleteSessionEntityTypeRequest
The request message for <a href="index.html#ondewo.nlu.Webhook.DeleteSessionEntityType">Webhook.DeleteSessionEntityType</a>.


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| name | [string](#string) |  | Required. The name of the entity type to delete. Format: <code>projects/&lt;project_uuid&gt;/agent/sessions/&lt;session_uuid&gt;/entityTypes/&lt;Entity Type Display Name&gt;</code> or <code>projects/&lt;project_uuid&gt;/agent/environments/ &lt;&lt;environment_uuid&gt;/users/&lt;user_uuid&gt;/sessions/&lt;session_uuid&gt;/entityTypes/&lt;Entity Type Display Name&gt;</code>. If <code>Environment ID</code> is not specified, we assume default <code>&apos;draft&apos;</code> environment. If <code>User ID</code> is not specified, we assume default <code>&apos;-&apos;</code> user. |






<a name="ondewo.nlu.GetSessionEntityTypeRequest"></a>

### GetSessionEntityTypeRequest
The request message for <a href="index.html#ondewo.nlu.Webhook.GetSessionEntityType">Webhook.GetSessionEntityType</a>.


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| name | [string](#string) |  | Required. The name of the session entity type. Format: <code>projects/&lt;project_uuid&gt;/agent/sessions/&lt;session_uuid&gt;/entityTypes/&lt;Entity Type Display Name&gt;</code> or <code>projects/&lt;project_uuid&gt;/agent/environments/ &lt;&lt;environment_uuid&gt;/users/&lt;user_uuid&gt;/sessions/&lt;session_uuid&gt;/entityTypes/&lt;Entity Type Display Name&gt;</code>. If <code>Environment ID</code> is not specified, we assume default <code>&apos;draft&apos;</code> environment. If <code>User ID</code> is not specified, we assume default <code>&apos;-&apos;</code> user. |






<a name="ondewo.nlu.ListSessionEntityTypesRequest"></a>

### ListSessionEntityTypesRequest
The request message for <a href="index.html#ondewo.nlu.Webhook.ListSessionEntityTypes">Webhook.ListSessionEntityTypes</a>.


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| parent | [string](#string) |  | Required. The session to list all session entity types from. Format: <code>projects/&lt;project_uuid&gt;/agent/sessions/&lt;session_uuid&gt;</code> or <code>projects/&lt;project_uuid&gt;/agent/environments/&lt;environment_uuid&gt;/users/&lt;user_uuid&gt;/ sessions/&lt;session_uuid&gt;</code>. If <code>Environment ID</code> is not specified, we assume default <code>&apos;draft&apos;</code> environment. If <code>User ID</code> is not specified, we assume default <code>&apos;-&apos;</code> user. |
| page_size | [int32](#int32) |  | Optional. The maximum number of items to return in a single page. By default 100 and at most 1000. |
| page_token | [string](#string) |  | Optional: The page token to support pagination. Pagination allows you to retrieve a large result set in smaller, more manageable portions. The page token is a string representing the current index and page size.

Valid page token strings: <ul> <li><code>&quot;&quot;</code> (empty string) - Retrieves the first page.</li> <li><code>&quot;current_index-0--page_size-20&quot;</code> - Retrieves the first page with a page size of 20.</li> <li><code>&quot;current_index-1--page_size-20&quot;</code> - Retrieves the second page with a page size of 20.</li> </ul>

Index starts at 0.

Examples of valid page token strings: <ul> <li><code>&quot;&quot;</code></li> <li><code>&quot;current_index-0--page_size-20&quot;</code></li> <li><code>&quot;current_index-1--page_size-20&quot;</code></li> <li><code>&quot;current_index-10--page_size-20&quot;</code></li> </ul>

Examples of invalid page token strings: <ul> <li><code>&quot;1&quot;</code></li> <li><code>&quot;current_index-0--page_size-20&quot;</code></li> <li><code>&quot;current_index--1--page_size-20&quot;</code></li> <li><code>&quot;current_index1--page_size-20&quot;</code></li> <li><code>&quot;current_index-1--page_size--20&quot;</code></li> </ul> |






<a name="ondewo.nlu.ListSessionEntityTypesResponse"></a>

### ListSessionEntityTypesResponse
The response message for <a href="index.html#ondewo.nlu.Webhook.ListSessionEntityTypes">Webhook.ListSessionEntityTypes</a>.


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| session_entity_types | [SessionEntityType](#ondewo.nlu.SessionEntityType) | repeated | The list of session entity types. There will be a maximum number of items returned based on the page_size field in the request. |
| next_page_token | [string](#string) |  | The next_page_token is used to retrieve the next page of a returned result, e.g. next_page_token is current_index-2 |






<a name="ondewo.nlu.OriginalDetectIntentRequest"></a>

### OriginalDetectIntentRequest
Represents the contents of the original request that was passed to the <code>[Streaming]DetectIntent</code> call.


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| source | [string](#string) |  | The source of this request, e.g., <code>google</code>, <code>facebook</code>, <code>slack</code> or other &quot;platforms&quot;. . Used to identify the &quot;platform&quot; |
| payload | [google.protobuf.Struct](#google.protobuf.Struct) |  | Optional. This field is set to the value of the <code>QueryParameters.payload</code> field passed in the request. Some integrations that query an agent may provide additional data in the payload.

In particular this can be of the form: <pre>{ &quot;a&quot;: { &quot;b&quot;: &quot;c&quot; } }</pre> |






<a name="ondewo.nlu.PingRequest"></a>

### PingRequest
request sent for webhook ping


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| session | [string](#string) |  | session ID for webhook ping |






<a name="ondewo.nlu.PingResponse"></a>

### PingResponse
This message is a response of pinging


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| is_reachable | [bool](#bool) |  | This is the response message of a Ping request. It&apos;s purpose is to report the reachability of a Webhook server. |






<a name="ondewo.nlu.SessionEntityType"></a>

### SessionEntityType
A session represents a conversation between a Dialogflow agent and an end-user. You can create special entities, called session entities, during a session. Session entities can extend or replace custom entity types and only exist during the session that they were created for. All session data, including session entities, is stored by Dialogflow for 20 minutes.

For more information, see the <a href="https://cloud.google.com/dialogflow/docs/entities-session">session entity guide</a>.


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| name | [string](#string) |  | Required. The unique identifier of this session entity type. Format: <code>projects/&lt;project_uuid&gt;/agent/sessions/&lt;session_uuid&gt;/entityTypes/&lt;Entity Type Display Name&gt;</code>, or <code>projects/&lt;project_uuid&gt;/agent/environments/ &lt;&lt;environment_uuid&gt;/users/&lt;user_uuid&gt;/sessions/&lt;session_uuid&gt;/entityTypes/&lt;Entity Type Display Name&gt;</code>. If <code>Environment ID</code> is not specified, we assume default <code>&apos;draft&apos;</code> environment. If <code>User ID</code> is not specified, we assume default <code>&apos;-&apos;</code> user.

<code>&lt;Entity Type Display Name&gt;</code> must be the display name of an existing entity type in the same agent that will be overridden or supplemented. |
| entity_override_mode | [SessionEntityType.EntityOverrideMode](#ondewo.nlu.SessionEntityType.EntityOverrideMode) |  | Required. Indicates whether the additional data should override or supplement the custom entity type definition. |
| entities | [EntityType.Entity](#ondewo.nlu.EntityType.Entity) | repeated | Required. The collection of entities associated with this session entity type. |






<a name="ondewo.nlu.UpdateSessionEntityTypeRequest"></a>

### UpdateSessionEntityTypeRequest
The request message for <a href="index.html#ondewo.nlu.Webhook.UpdateSessionEntityType">Webhook.UpdateSessionEntityType</a>.


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| session_entity_type | [SessionEntityType](#ondewo.nlu.SessionEntityType) |  | Required. The session entity type to update. |
| update_mask | [google.protobuf.FieldMask](#google.protobuf.FieldMask) |  | Optional. The mask to control which fields get updated. |






<a name="ondewo.nlu.WebhookRequest"></a>

### WebhookRequest
The request message for a webhook call.


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| response_id | [string](#string) |  | The unique identifier of the response. Contains the same value as <code>[Streaming]DetectIntentResponse.response_id</code>. |
| query_result | [QueryResult](#ondewo.nlu.QueryResult) |  | The result of the conversational query or event processing. Contains the same value as <code>[Streaming]DetectIntentResponse.query_result</code>. |
| original_detect_intent_request | [OriginalDetectIntentRequest](#ondewo.nlu.OriginalDetectIntentRequest) |  | Optional. The contents of the original request that was passed to <code>[Streaming]DetectIntent</code> call. |
| session | [string](#string) |  | The unique identifier of detectIntent request session. Can be used to identify end-user inside webhook implementation. Format: <pre><code>projects/&lt;project_uuid&gt;/agent/sessions/&lt;session_uuid&gt;</code></pre> |
| headers | [google.protobuf.Struct](#google.protobuf.Struct) |  | Optional. The headers of the request message |






<a name="ondewo.nlu.WebhookResponse"></a>

### WebhookResponse
The response message for a webhook call.


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| fulfillment_text | [string](#string) |  | Optional. The text to be shown on the screen. This value is passed directly to <code>QueryResult.fulfillment_text</code>. |
| fulfillment_messages | [Intent.Message](#ondewo.nlu.Intent.Message) | repeated | Optional. The collection of rich messages to present to the user. This value is passed directly to <code>QueryResult.fulfillment_messages</code>. |
| source | [string](#string) |  | Optional. This value is passed directly to <code>QueryResult.webhook_source</code>. |
| payload | [google.protobuf.Struct](#google.protobuf.Struct) |  | Optional. This value is passed directly to <code>QueryResult.webhook_payload</code>. See the related <code>fulfillment_messages[i].payload field</code>, which may be used as an alternative to this field.

This field can be used for Actions on Google responses. It should have a structure similar to the JSON message shown here. For more information, see <a href="https://developers.google.com/actions/dialogflow/webhook">Actions on Google Webhook Format</a> <pre>{ &quot;google&quot;: { &quot;expectUserResponse&quot;: true, &quot;richResponse&quot;: { &quot;items&quot;: [ { &quot;simpleResponse&quot;: { &quot;textToSpeech&quot;: &quot;this is a simple response&quot; } } ] } } }</pre> |
| output_contexts | [Context](#ondewo.nlu.Context) | repeated | Optional. The collection of output contexts. This value is passed directly to <code>QueryResult.output_contexts</code>. |
| followup_event_input | [EventInput](#ondewo.nlu.EventInput) |  | Optional. Makes the platform immediately invoke another <code>DetectIntent</code> call internally with the specified event as input. |
| session_entity_types | [SessionEntityType](#ondewo.nlu.SessionEntityType) | repeated | Optional. Additional session entity types to replace or extend developer entity types with. The entity synonyms apply to all languages and persist for the session. Setting this data from a webhook overwrites the session entity types that have been set using <code>detectIntent</code> method. |





 <!-- end messages -->


<a name="ondewo.nlu.SessionEntityType.EntityOverrideMode"></a>

### SessionEntityType.EntityOverrideMode
The types of modifications for a session entity type.

| Name | Number | Description |
| ---- | ------ | ----------- |
| ENTITY_OVERRIDE_MODE_UNSPECIFIED | 0 | Not specified. This value should be never used. |
| ENTITY_OVERRIDE_MODE_OVERRIDE | 1 | The collection of session entities overrides the collection of entities in the corresponding custom entity type. |
| ENTITY_OVERRIDE_MODE_SUPPLEMENT | 2 | The collection of session entities extends the collection of entities in the corresponding custom entity type.

Note: Even in this override mode calls to <code>ListSessionEntityTypes</code>, <code>GetSessionEntityType</code>, <code>CreateSessionEntityType</code> and <code>UpdateSessionEntityType</code> only return the additional entities added in this session entity type. If you want to get the supplemented list, please call <a href="index.html#ondewo.nlu.EntityTypes.GetEntityType">EntityTypes.GetEntityType</a> on the custom entity type and merge. |


 <!-- end enums -->

 <!-- end HasExtensions -->


<a name="ondewo.nlu.Webhook"></a>

### Webhook
service to send requests to a webhook server

| Method Name | Request Type | Response Type | Description |
| ----------- | ------------ | ------------- | ------------|
| ResponseRefinement | [WebhookRequest](#ondewo.nlu.WebhookRequest) | [WebhookResponse](#ondewo.nlu.WebhookResponse) | send a request for /response_refinement/ to the webhook server fulfillment messages can be overwritten by the webhook server |
| SlotFilling | [WebhookRequest](#ondewo.nlu.WebhookRequest) | [WebhookResponse](#ondewo.nlu.WebhookResponse) | send a request for /slot_filling/ to the webhook server parameter values can be provided &amp; context information can be changed by the webhook server |
| Ping | [PingRequest](#ondewo.nlu.PingRequest) | [PingResponse](#ondewo.nlu.PingResponse) | send a Ping to the webhook server to verify server health will return True if http status_code==200 is detected in the response |
| CreateSessionEntityType | [CreateSessionEntityTypeRequest](#ondewo.nlu.CreateSessionEntityTypeRequest) | [SessionEntityType](#ondewo.nlu.SessionEntityType) | Creates a session entity type.

If the specified session entity type already exists, overrides the session entity type.

This method doesn&apos;t work with Google Assistant integration. Contact Dialogflow support if you need to use session entities with Google Assistant integration. |
| UpdateSessionEntityType | [UpdateSessionEntityTypeRequest](#ondewo.nlu.UpdateSessionEntityTypeRequest) | [SessionEntityType](#ondewo.nlu.SessionEntityType) | Updates the specified session entity type.

This method doesn&apos;t work with Google Assistant integration. Contact Dialogflow support if you need to use session entities with Google Assistant integration. |
| DeleteSessionEntityType | [DeleteSessionEntityTypeRequest](#ondewo.nlu.DeleteSessionEntityTypeRequest) | [.google.protobuf.Empty](#google.protobuf.Empty) | Deletes the specified session entity type.

This method doesn&apos;t work with Google Assistant integration. Contact Dialogflow support if you need to use session entities with Google Assistant integration. |

 <!-- end services -->



<a name="ondewo/qa/qa.proto"></a>
<p align="right"><a href="#top">Top</a></p>

## ondewo/qa/qa.proto



<a name="ondewo.qa.GetAnswerRequest"></a>

### GetAnswerRequest
The request message


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| session_id | [string](#string) |  | Required. The name of the session this query is sent to. Format: <code>projects/&lt;Project ID&gt;/agent/sessions/&lt;Session ID&gt;</code>. It&apos;s up to the API caller to choose an appropriate session ID. It can be a random number or some type of user identifier (preferably hashed). The length of the session ID must not exceed 36 bytes. |
| text | [ondewo.nlu.TextInput](#ondewo.nlu.TextInput) |  | Required. The context of the request. A message containing a string (in the form of a sentence) and a language code. |
| max_num_answers | [int32](#int32) |  | Maximal number of answers returned |
| threshold_reader | [float](#float) |  | Threshold (minimal score) to give back reader result |
| threshold_retriever | [float](#float) |  | Threshold (minimal score) to give back retriever result |
| threshold_overall | [float](#float) |  | Threshold (minimal score) overall probability |
| reader_model_name | [string](#string) |  | Reader model name |
| url_filter | [UrlFilter](#ondewo.qa.UrlFilter) |  | Optional. Filters applied to the urls, to restrict the retrieved documents. |






<a name="ondewo.qa.GetAnswerResponse"></a>

### GetAnswerResponse
Message containing the response for retrieving answers.


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| query_result | [ondewo.nlu.DetectIntentResponse](#ondewo.nlu.DetectIntentResponse) |  | The results of the conversational query or event processing. |






<a name="ondewo.qa.GetProjectConfigRequest"></a>

### GetProjectConfigRequest
Message for requesting the configuration of a specific project.


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| project_id | [string](#string) |  | The ID of the project for which to retrieve the configuration. |






<a name="ondewo.qa.GetProjectConfigResponse"></a>

### GetProjectConfigResponse
Message containing the response for getting the configuration of a project.


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| config_serialized | [string](#string) |  | Serialized configuration of the project. |






<a name="ondewo.qa.GetServerStateResponse"></a>

### GetServerStateResponse
Message containing the response for checking the server state.


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| server_is_ready | [bool](#bool) |  | Indicates whether the server is ready to accept requests. |






<a name="ondewo.qa.ListProjectIdsResponse"></a>

### ListProjectIdsResponse
Message for listing project IDs in the response.


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| project_ids | [string](#string) | repeated | List of project IDs. |






<a name="ondewo.qa.RunScraperRequest"></a>

### RunScraperRequest
Message for running a web scraper job.


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| project_ids | [string](#string) | repeated | List of project IDs to run the scraper on. |






<a name="ondewo.qa.RunScraperResponse"></a>

### RunScraperResponse
Message containing the response for running a web scraper job.


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| scraper_containers | [RunScraperResponse.ScraperContainer](#ondewo.qa.RunScraperResponse.ScraperContainer) | repeated | List of scraper containers running the jobs. |






<a name="ondewo.qa.RunScraperResponse.ScraperContainer"></a>

### RunScraperResponse.ScraperContainer
Message representing a scraper container.


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| container_name | [string](#string) |  | Name of the Docker container running the job. |
| container_id | [string](#string) |  | ID of the Docker container running the scraping job. |






<a name="ondewo.qa.RunTrainingResponse"></a>

### RunTrainingResponse
Message containing the response for running a training job.


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| f1 | [float](#float) |  | F1 score as a response of the training. |
| accuracy | [float](#float) |  | Accuracy as a response of the training. |






<a name="ondewo.qa.UpdateDatabaseRequest"></a>

### UpdateDatabaseRequest
Message for requesting a database update for specific projects.


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| project_ids | [string](#string) | repeated | List of project IDs for which to update the database. |






<a name="ondewo.qa.UpdateDatabaseResponse"></a>

### UpdateDatabaseResponse
Message containing the response for updating the database of specific projects.


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| error_messages | [string](#string) | repeated | List of error messages encountered during the database update. |






<a name="ondewo.qa.UrlFilter"></a>

### UrlFilter
Message for defining URL filters to include and exclude from the scraping process.


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| allowed_values | [string](#string) | repeated | Optional. List of allowed values for the metadata field <code>&apos;url&apos;</code>. |
| regex_filter_include | [string](#string) |  | Optional. Regular expression that must be matched by the metadata. |
| regex_filter_exclude | [string](#string) |  | Optional. Regular expression that must not be matched by the metadata. |





 <!-- end messages -->

 <!-- end enums -->

 <!-- end HasExtensions -->


<a name="ondewo.qa.QA"></a>

### QA
gRPC service for QA functionalities.

| Method Name | Request Type | Response Type | Description |
| ----------- | ------------ | ------------- | ------------|
| GetAnswer | [GetAnswerRequest](#ondewo.qa.GetAnswerRequest) | [GetAnswerResponse](#ondewo.qa.GetAnswerResponse) | Retrieves an answer based on the provided request. |
| RunScraper | [RunScraperRequest](#ondewo.qa.RunScraperRequest) | [RunScraperResponse](#ondewo.qa.RunScraperResponse) | Runs a web scraper job for specified project IDs. |
| UpdateDatabase | [UpdateDatabaseRequest](#ondewo.qa.UpdateDatabaseRequest) | [UpdateDatabaseResponse](#ondewo.qa.UpdateDatabaseResponse) | Updates the database for specified project IDs. |
| RunTraining | [.google.protobuf.Empty](#google.protobuf.Empty) | [RunTrainingResponse](#ondewo.qa.RunTrainingResponse) | Runs a training job for the QA system. |
| GetServerState | [.google.protobuf.Empty](#google.protobuf.Empty) | [GetServerStateResponse](#ondewo.qa.GetServerStateResponse) | Retrieves the server state for QA. |
| ListProjectIds | [.google.protobuf.Empty](#google.protobuf.Empty) | [ListProjectIdsResponse](#ondewo.qa.ListProjectIdsResponse) | Lists project IDs associated with QA. |
| GetProjectConfig | [GetProjectConfigRequest](#ondewo.qa.GetProjectConfigRequest) | [GetProjectConfigResponse](#ondewo.qa.GetProjectConfigResponse) | Retrieves the configuration of a specific project. |

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
