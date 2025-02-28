// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

/// The Amazon Chime SDK Identity APIs in this section allow software developers to create and manage unique instances of their messaging applications. These APIs provide the overarching framework for creating and sending messages. For more information about the identity APIs, refer to [Amazon Chime SDK identity](https://docs.aws.amazon.com/chime/latest/APIReference/API_Operations_Amazon_Chime_SDK_Identity.html).
public protocol ChimeSDKIdentityClientProtocol {
    /// Performs the `CreateAppInstance` operation on the `ChimeIdentityService` service.
    ///
    /// Creates an Amazon Chime SDK messaging AppInstance under an AWS account. Only SDK messaging customers use this API. CreateAppInstance supports idempotency behavior as described in the AWS API Standard. identity
    ///
    /// - Parameter CreateAppInstanceInput : [no documentation found]
    ///
    /// - Returns: `CreateAppInstanceOutput` : [no documentation found]
    ///
    /// - Throws: One of the exceptions listed below __Possible Exceptions__.
    ///
    /// __Possible Exceptions:__
    /// - `BadRequestException` : The input parameters don't match the service's restrictions.
    /// - `ConflictException` : The request could not be processed because of conflict in the current state of the resource.
    /// - `ForbiddenException` : The client is permanently forbidden from making the request.
    /// - `ResourceLimitExceededException` : The request exceeds the resource limit.
    /// - `ServiceFailureException` : The service encountered an unexpected error.
    /// - `ServiceUnavailableException` : The service is currently unavailable.
    /// - `ThrottledClientException` : The client exceeded its request rate limit.
    /// - `UnauthorizedClientException` : The client is not currently authorized to make the request.
    func createAppInstance(input: CreateAppInstanceInput) async throws -> CreateAppInstanceOutput
    /// Performs the `CreateAppInstanceAdmin` operation on the `ChimeIdentityService` service.
    ///
    /// Promotes an AppInstanceUser or AppInstanceBot to an AppInstanceAdmin. The promoted entity can perform the following actions.
    ///
    /// * ChannelModerator actions across all channels in the AppInstance.
    ///
    /// * DeleteChannelMessage actions.
    ///
    ///
    /// Only an AppInstanceUser and AppInstanceBot can be promoted to an AppInstanceAdmin role.
    ///
    /// - Parameter CreateAppInstanceAdminInput : [no documentation found]
    ///
    /// - Returns: `CreateAppInstanceAdminOutput` : [no documentation found]
    ///
    /// - Throws: One of the exceptions listed below __Possible Exceptions__.
    ///
    /// __Possible Exceptions:__
    /// - `BadRequestException` : The input parameters don't match the service's restrictions.
    /// - `ConflictException` : The request could not be processed because of conflict in the current state of the resource.
    /// - `ForbiddenException` : The client is permanently forbidden from making the request.
    /// - `ResourceLimitExceededException` : The request exceeds the resource limit.
    /// - `ServiceFailureException` : The service encountered an unexpected error.
    /// - `ServiceUnavailableException` : The service is currently unavailable.
    /// - `ThrottledClientException` : The client exceeded its request rate limit.
    /// - `UnauthorizedClientException` : The client is not currently authorized to make the request.
    func createAppInstanceAdmin(input: CreateAppInstanceAdminInput) async throws -> CreateAppInstanceAdminOutput
    /// Performs the `CreateAppInstanceBot` operation on the `ChimeIdentityService` service.
    ///
    /// Creates a bot under an Amazon Chime AppInstance. The request consists of a unique Configuration and Name for that bot.
    ///
    /// - Parameter CreateAppInstanceBotInput : [no documentation found]
    ///
    /// - Returns: `CreateAppInstanceBotOutput` : [no documentation found]
    ///
    /// - Throws: One of the exceptions listed below __Possible Exceptions__.
    ///
    /// __Possible Exceptions:__
    /// - `BadRequestException` : The input parameters don't match the service's restrictions.
    /// - `ConflictException` : The request could not be processed because of conflict in the current state of the resource.
    /// - `ForbiddenException` : The client is permanently forbidden from making the request.
    /// - `ResourceLimitExceededException` : The request exceeds the resource limit.
    /// - `ServiceFailureException` : The service encountered an unexpected error.
    /// - `ServiceUnavailableException` : The service is currently unavailable.
    /// - `ThrottledClientException` : The client exceeded its request rate limit.
    /// - `UnauthorizedClientException` : The client is not currently authorized to make the request.
    func createAppInstanceBot(input: CreateAppInstanceBotInput) async throws -> CreateAppInstanceBotOutput
    /// Performs the `CreateAppInstanceUser` operation on the `ChimeIdentityService` service.
    ///
    /// Creates a user under an Amazon Chime AppInstance. The request consists of a unique appInstanceUserId and Name for that user.
    ///
    /// - Parameter CreateAppInstanceUserInput : [no documentation found]
    ///
    /// - Returns: `CreateAppInstanceUserOutput` : [no documentation found]
    ///
    /// - Throws: One of the exceptions listed below __Possible Exceptions__.
    ///
    /// __Possible Exceptions:__
    /// - `BadRequestException` : The input parameters don't match the service's restrictions.
    /// - `ConflictException` : The request could not be processed because of conflict in the current state of the resource.
    /// - `ForbiddenException` : The client is permanently forbidden from making the request.
    /// - `ResourceLimitExceededException` : The request exceeds the resource limit.
    /// - `ServiceFailureException` : The service encountered an unexpected error.
    /// - `ServiceUnavailableException` : The service is currently unavailable.
    /// - `ThrottledClientException` : The client exceeded its request rate limit.
    /// - `UnauthorizedClientException` : The client is not currently authorized to make the request.
    func createAppInstanceUser(input: CreateAppInstanceUserInput) async throws -> CreateAppInstanceUserOutput
    /// Performs the `DeleteAppInstance` operation on the `ChimeIdentityService` service.
    ///
    /// Deletes an AppInstance and all associated data asynchronously.
    ///
    /// - Parameter DeleteAppInstanceInput : [no documentation found]
    ///
    /// - Returns: `DeleteAppInstanceOutput` : [no documentation found]
    ///
    /// - Throws: One of the exceptions listed below __Possible Exceptions__.
    ///
    /// __Possible Exceptions:__
    /// - `BadRequestException` : The input parameters don't match the service's restrictions.
    /// - `ForbiddenException` : The client is permanently forbidden from making the request.
    /// - `ResourceLimitExceededException` : The request exceeds the resource limit.
    /// - `ServiceFailureException` : The service encountered an unexpected error.
    /// - `ServiceUnavailableException` : The service is currently unavailable.
    /// - `ThrottledClientException` : The client exceeded its request rate limit.
    /// - `UnauthorizedClientException` : The client is not currently authorized to make the request.
    func deleteAppInstance(input: DeleteAppInstanceInput) async throws -> DeleteAppInstanceOutput
    /// Performs the `DeleteAppInstanceAdmin` operation on the `ChimeIdentityService` service.
    ///
    /// Demotes an AppInstanceAdmin to an AppInstanceUser or AppInstanceBot. This action does not delete the user.
    ///
    /// - Parameter DeleteAppInstanceAdminInput : [no documentation found]
    ///
    /// - Returns: `DeleteAppInstanceAdminOutput` : [no documentation found]
    ///
    /// - Throws: One of the exceptions listed below __Possible Exceptions__.
    ///
    /// __Possible Exceptions:__
    /// - `BadRequestException` : The input parameters don't match the service's restrictions.
    /// - `ConflictException` : The request could not be processed because of conflict in the current state of the resource.
    /// - `ForbiddenException` : The client is permanently forbidden from making the request.
    /// - `ResourceLimitExceededException` : The request exceeds the resource limit.
    /// - `ServiceFailureException` : The service encountered an unexpected error.
    /// - `ServiceUnavailableException` : The service is currently unavailable.
    /// - `ThrottledClientException` : The client exceeded its request rate limit.
    /// - `UnauthorizedClientException` : The client is not currently authorized to make the request.
    func deleteAppInstanceAdmin(input: DeleteAppInstanceAdminInput) async throws -> DeleteAppInstanceAdminOutput
    /// Performs the `DeleteAppInstanceBot` operation on the `ChimeIdentityService` service.
    ///
    /// Deletes an AppInstanceBot.
    ///
    /// - Parameter DeleteAppInstanceBotInput : [no documentation found]
    ///
    /// - Returns: `DeleteAppInstanceBotOutput` : [no documentation found]
    ///
    /// - Throws: One of the exceptions listed below __Possible Exceptions__.
    ///
    /// __Possible Exceptions:__
    /// - `BadRequestException` : The input parameters don't match the service's restrictions.
    /// - `ConflictException` : The request could not be processed because of conflict in the current state of the resource.
    /// - `ForbiddenException` : The client is permanently forbidden from making the request.
    /// - `ResourceLimitExceededException` : The request exceeds the resource limit.
    /// - `ServiceFailureException` : The service encountered an unexpected error.
    /// - `ServiceUnavailableException` : The service is currently unavailable.
    /// - `ThrottledClientException` : The client exceeded its request rate limit.
    /// - `UnauthorizedClientException` : The client is not currently authorized to make the request.
    func deleteAppInstanceBot(input: DeleteAppInstanceBotInput) async throws -> DeleteAppInstanceBotOutput
    /// Performs the `DeleteAppInstanceUser` operation on the `ChimeIdentityService` service.
    ///
    /// Deletes an AppInstanceUser.
    ///
    /// - Parameter DeleteAppInstanceUserInput : [no documentation found]
    ///
    /// - Returns: `DeleteAppInstanceUserOutput` : [no documentation found]
    ///
    /// - Throws: One of the exceptions listed below __Possible Exceptions__.
    ///
    /// __Possible Exceptions:__
    /// - `BadRequestException` : The input parameters don't match the service's restrictions.
    /// - `ConflictException` : The request could not be processed because of conflict in the current state of the resource.
    /// - `ForbiddenException` : The client is permanently forbidden from making the request.
    /// - `ResourceLimitExceededException` : The request exceeds the resource limit.
    /// - `ServiceFailureException` : The service encountered an unexpected error.
    /// - `ServiceUnavailableException` : The service is currently unavailable.
    /// - `ThrottledClientException` : The client exceeded its request rate limit.
    /// - `UnauthorizedClientException` : The client is not currently authorized to make the request.
    func deleteAppInstanceUser(input: DeleteAppInstanceUserInput) async throws -> DeleteAppInstanceUserOutput
    /// Performs the `DeregisterAppInstanceUserEndpoint` operation on the `ChimeIdentityService` service.
    ///
    /// Deregisters an AppInstanceUserEndpoint.
    ///
    /// - Parameter DeregisterAppInstanceUserEndpointInput : [no documentation found]
    ///
    /// - Returns: `DeregisterAppInstanceUserEndpointOutput` : [no documentation found]
    ///
    /// - Throws: One of the exceptions listed below __Possible Exceptions__.
    ///
    /// __Possible Exceptions:__
    /// - `BadRequestException` : The input parameters don't match the service's restrictions.
    /// - `ForbiddenException` : The client is permanently forbidden from making the request.
    /// - `ServiceFailureException` : The service encountered an unexpected error.
    /// - `ServiceUnavailableException` : The service is currently unavailable.
    /// - `ThrottledClientException` : The client exceeded its request rate limit.
    /// - `UnauthorizedClientException` : The client is not currently authorized to make the request.
    func deregisterAppInstanceUserEndpoint(input: DeregisterAppInstanceUserEndpointInput) async throws -> DeregisterAppInstanceUserEndpointOutput
    /// Performs the `DescribeAppInstance` operation on the `ChimeIdentityService` service.
    ///
    /// Returns the full details of an AppInstance.
    ///
    /// - Parameter DescribeAppInstanceInput : [no documentation found]
    ///
    /// - Returns: `DescribeAppInstanceOutput` : [no documentation found]
    ///
    /// - Throws: One of the exceptions listed below __Possible Exceptions__.
    ///
    /// __Possible Exceptions:__
    /// - `BadRequestException` : The input parameters don't match the service's restrictions.
    /// - `ForbiddenException` : The client is permanently forbidden from making the request.
    /// - `ServiceFailureException` : The service encountered an unexpected error.
    /// - `ServiceUnavailableException` : The service is currently unavailable.
    /// - `ThrottledClientException` : The client exceeded its request rate limit.
    /// - `UnauthorizedClientException` : The client is not currently authorized to make the request.
    func describeAppInstance(input: DescribeAppInstanceInput) async throws -> DescribeAppInstanceOutput
    /// Performs the `DescribeAppInstanceAdmin` operation on the `ChimeIdentityService` service.
    ///
    /// Returns the full details of an AppInstanceAdmin.
    ///
    /// - Parameter DescribeAppInstanceAdminInput : [no documentation found]
    ///
    /// - Returns: `DescribeAppInstanceAdminOutput` : [no documentation found]
    ///
    /// - Throws: One of the exceptions listed below __Possible Exceptions__.
    ///
    /// __Possible Exceptions:__
    /// - `BadRequestException` : The input parameters don't match the service's restrictions.
    /// - `ForbiddenException` : The client is permanently forbidden from making the request.
    /// - `ServiceFailureException` : The service encountered an unexpected error.
    /// - `ServiceUnavailableException` : The service is currently unavailable.
    /// - `ThrottledClientException` : The client exceeded its request rate limit.
    /// - `UnauthorizedClientException` : The client is not currently authorized to make the request.
    func describeAppInstanceAdmin(input: DescribeAppInstanceAdminInput) async throws -> DescribeAppInstanceAdminOutput
    /// Performs the `DescribeAppInstanceBot` operation on the `ChimeIdentityService` service.
    ///
    /// The AppInstanceBot's information.
    ///
    /// - Parameter DescribeAppInstanceBotInput : [no documentation found]
    ///
    /// - Returns: `DescribeAppInstanceBotOutput` : [no documentation found]
    ///
    /// - Throws: One of the exceptions listed below __Possible Exceptions__.
    ///
    /// __Possible Exceptions:__
    /// - `BadRequestException` : The input parameters don't match the service's restrictions.
    /// - `ForbiddenException` : The client is permanently forbidden from making the request.
    /// - `NotFoundException` : One or more of the resources in the request does not exist in the system.
    /// - `ServiceFailureException` : The service encountered an unexpected error.
    /// - `ServiceUnavailableException` : The service is currently unavailable.
    /// - `ThrottledClientException` : The client exceeded its request rate limit.
    /// - `UnauthorizedClientException` : The client is not currently authorized to make the request.
    func describeAppInstanceBot(input: DescribeAppInstanceBotInput) async throws -> DescribeAppInstanceBotOutput
    /// Performs the `DescribeAppInstanceUser` operation on the `ChimeIdentityService` service.
    ///
    /// Returns the full details of an AppInstanceUser.
    ///
    /// - Parameter DescribeAppInstanceUserInput : [no documentation found]
    ///
    /// - Returns: `DescribeAppInstanceUserOutput` : [no documentation found]
    ///
    /// - Throws: One of the exceptions listed below __Possible Exceptions__.
    ///
    /// __Possible Exceptions:__
    /// - `BadRequestException` : The input parameters don't match the service's restrictions.
    /// - `ForbiddenException` : The client is permanently forbidden from making the request.
    /// - `ServiceFailureException` : The service encountered an unexpected error.
    /// - `ServiceUnavailableException` : The service is currently unavailable.
    /// - `ThrottledClientException` : The client exceeded its request rate limit.
    /// - `UnauthorizedClientException` : The client is not currently authorized to make the request.
    func describeAppInstanceUser(input: DescribeAppInstanceUserInput) async throws -> DescribeAppInstanceUserOutput
    /// Performs the `DescribeAppInstanceUserEndpoint` operation on the `ChimeIdentityService` service.
    ///
    /// Returns the full details of an AppInstanceUserEndpoint.
    ///
    /// - Parameter DescribeAppInstanceUserEndpointInput : [no documentation found]
    ///
    /// - Returns: `DescribeAppInstanceUserEndpointOutput` : [no documentation found]
    ///
    /// - Throws: One of the exceptions listed below __Possible Exceptions__.
    ///
    /// __Possible Exceptions:__
    /// - `BadRequestException` : The input parameters don't match the service's restrictions.
    /// - `ForbiddenException` : The client is permanently forbidden from making the request.
    /// - `ServiceFailureException` : The service encountered an unexpected error.
    /// - `ServiceUnavailableException` : The service is currently unavailable.
    /// - `ThrottledClientException` : The client exceeded its request rate limit.
    /// - `UnauthorizedClientException` : The client is not currently authorized to make the request.
    func describeAppInstanceUserEndpoint(input: DescribeAppInstanceUserEndpointInput) async throws -> DescribeAppInstanceUserEndpointOutput
    /// Performs the `GetAppInstanceRetentionSettings` operation on the `ChimeIdentityService` service.
    ///
    /// Gets the retention settings for an AppInstance.
    ///
    /// - Parameter GetAppInstanceRetentionSettingsInput : [no documentation found]
    ///
    /// - Returns: `GetAppInstanceRetentionSettingsOutput` : [no documentation found]
    ///
    /// - Throws: One of the exceptions listed below __Possible Exceptions__.
    ///
    /// __Possible Exceptions:__
    /// - `BadRequestException` : The input parameters don't match the service's restrictions.
    /// - `ForbiddenException` : The client is permanently forbidden from making the request.
    /// - `ServiceFailureException` : The service encountered an unexpected error.
    /// - `ServiceUnavailableException` : The service is currently unavailable.
    /// - `ThrottledClientException` : The client exceeded its request rate limit.
    /// - `UnauthorizedClientException` : The client is not currently authorized to make the request.
    func getAppInstanceRetentionSettings(input: GetAppInstanceRetentionSettingsInput) async throws -> GetAppInstanceRetentionSettingsOutput
    /// Performs the `ListAppInstanceAdmins` operation on the `ChimeIdentityService` service.
    ///
    /// Returns a list of the administrators in the AppInstance.
    ///
    /// - Parameter ListAppInstanceAdminsInput : [no documentation found]
    ///
    /// - Returns: `ListAppInstanceAdminsOutput` : [no documentation found]
    ///
    /// - Throws: One of the exceptions listed below __Possible Exceptions__.
    ///
    /// __Possible Exceptions:__
    /// - `BadRequestException` : The input parameters don't match the service's restrictions.
    /// - `ForbiddenException` : The client is permanently forbidden from making the request.
    /// - `ResourceLimitExceededException` : The request exceeds the resource limit.
    /// - `ServiceFailureException` : The service encountered an unexpected error.
    /// - `ServiceUnavailableException` : The service is currently unavailable.
    /// - `ThrottledClientException` : The client exceeded its request rate limit.
    /// - `UnauthorizedClientException` : The client is not currently authorized to make the request.
    func listAppInstanceAdmins(input: ListAppInstanceAdminsInput) async throws -> ListAppInstanceAdminsOutput
    /// Performs the `ListAppInstanceBots` operation on the `ChimeIdentityService` service.
    ///
    /// Lists all AppInstanceBots created under a single AppInstance.
    ///
    /// - Parameter ListAppInstanceBotsInput : [no documentation found]
    ///
    /// - Returns: `ListAppInstanceBotsOutput` : [no documentation found]
    ///
    /// - Throws: One of the exceptions listed below __Possible Exceptions__.
    ///
    /// __Possible Exceptions:__
    /// - `BadRequestException` : The input parameters don't match the service's restrictions.
    /// - `ForbiddenException` : The client is permanently forbidden from making the request.
    /// - `ResourceLimitExceededException` : The request exceeds the resource limit.
    /// - `ServiceFailureException` : The service encountered an unexpected error.
    /// - `ServiceUnavailableException` : The service is currently unavailable.
    /// - `ThrottledClientException` : The client exceeded its request rate limit.
    /// - `UnauthorizedClientException` : The client is not currently authorized to make the request.
    func listAppInstanceBots(input: ListAppInstanceBotsInput) async throws -> ListAppInstanceBotsOutput
    /// Performs the `ListAppInstances` operation on the `ChimeIdentityService` service.
    ///
    /// Lists all Amazon Chime AppInstances created under a single AWS account.
    ///
    /// - Parameter ListAppInstancesInput : [no documentation found]
    ///
    /// - Returns: `ListAppInstancesOutput` : [no documentation found]
    ///
    /// - Throws: One of the exceptions listed below __Possible Exceptions__.
    ///
    /// __Possible Exceptions:__
    /// - `BadRequestException` : The input parameters don't match the service's restrictions.
    /// - `ForbiddenException` : The client is permanently forbidden from making the request.
    /// - `ServiceFailureException` : The service encountered an unexpected error.
    /// - `ServiceUnavailableException` : The service is currently unavailable.
    /// - `ThrottledClientException` : The client exceeded its request rate limit.
    /// - `UnauthorizedClientException` : The client is not currently authorized to make the request.
    func listAppInstances(input: ListAppInstancesInput) async throws -> ListAppInstancesOutput
    /// Performs the `ListAppInstanceUserEndpoints` operation on the `ChimeIdentityService` service.
    ///
    /// Lists all the AppInstanceUserEndpoints created under a single AppInstanceUser.
    ///
    /// - Parameter ListAppInstanceUserEndpointsInput : [no documentation found]
    ///
    /// - Returns: `ListAppInstanceUserEndpointsOutput` : [no documentation found]
    ///
    /// - Throws: One of the exceptions listed below __Possible Exceptions__.
    ///
    /// __Possible Exceptions:__
    /// - `BadRequestException` : The input parameters don't match the service's restrictions.
    /// - `ForbiddenException` : The client is permanently forbidden from making the request.
    /// - `ServiceFailureException` : The service encountered an unexpected error.
    /// - `ServiceUnavailableException` : The service is currently unavailable.
    /// - `ThrottledClientException` : The client exceeded its request rate limit.
    /// - `UnauthorizedClientException` : The client is not currently authorized to make the request.
    func listAppInstanceUserEndpoints(input: ListAppInstanceUserEndpointsInput) async throws -> ListAppInstanceUserEndpointsOutput
    /// Performs the `ListAppInstanceUsers` operation on the `ChimeIdentityService` service.
    ///
    /// List all AppInstanceUsers created under a single AppInstance.
    ///
    /// - Parameter ListAppInstanceUsersInput : [no documentation found]
    ///
    /// - Returns: `ListAppInstanceUsersOutput` : [no documentation found]
    ///
    /// - Throws: One of the exceptions listed below __Possible Exceptions__.
    ///
    /// __Possible Exceptions:__
    /// - `BadRequestException` : The input parameters don't match the service's restrictions.
    /// - `ForbiddenException` : The client is permanently forbidden from making the request.
    /// - `ServiceFailureException` : The service encountered an unexpected error.
    /// - `ServiceUnavailableException` : The service is currently unavailable.
    /// - `ThrottledClientException` : The client exceeded its request rate limit.
    /// - `UnauthorizedClientException` : The client is not currently authorized to make the request.
    func listAppInstanceUsers(input: ListAppInstanceUsersInput) async throws -> ListAppInstanceUsersOutput
    /// Performs the `ListTagsForResource` operation on the `ChimeIdentityService` service.
    ///
    /// Lists the tags applied to an Amazon Chime SDK identity resource.
    ///
    /// - Parameter ListTagsForResourceInput : [no documentation found]
    ///
    /// - Returns: `ListTagsForResourceOutput` : [no documentation found]
    ///
    /// - Throws: One of the exceptions listed below __Possible Exceptions__.
    ///
    /// __Possible Exceptions:__
    /// - `BadRequestException` : The input parameters don't match the service's restrictions.
    /// - `ForbiddenException` : The client is permanently forbidden from making the request.
    /// - `ServiceFailureException` : The service encountered an unexpected error.
    /// - `ServiceUnavailableException` : The service is currently unavailable.
    /// - `ThrottledClientException` : The client exceeded its request rate limit.
    /// - `UnauthorizedClientException` : The client is not currently authorized to make the request.
    func listTagsForResource(input: ListTagsForResourceInput) async throws -> ListTagsForResourceOutput
    /// Performs the `PutAppInstanceRetentionSettings` operation on the `ChimeIdentityService` service.
    ///
    /// Sets the amount of time in days that a given AppInstance retains data.
    ///
    /// - Parameter PutAppInstanceRetentionSettingsInput : [no documentation found]
    ///
    /// - Returns: `PutAppInstanceRetentionSettingsOutput` : [no documentation found]
    ///
    /// - Throws: One of the exceptions listed below __Possible Exceptions__.
    ///
    /// __Possible Exceptions:__
    /// - `BadRequestException` : The input parameters don't match the service's restrictions.
    /// - `ForbiddenException` : The client is permanently forbidden from making the request.
    /// - `ServiceFailureException` : The service encountered an unexpected error.
    /// - `ServiceUnavailableException` : The service is currently unavailable.
    /// - `ThrottledClientException` : The client exceeded its request rate limit.
    /// - `UnauthorizedClientException` : The client is not currently authorized to make the request.
    func putAppInstanceRetentionSettings(input: PutAppInstanceRetentionSettingsInput) async throws -> PutAppInstanceRetentionSettingsOutput
    /// Performs the `PutAppInstanceUserExpirationSettings` operation on the `ChimeIdentityService` service.
    ///
    /// Sets the number of days before the AppInstanceUser is automatically deleted. A background process deletes expired AppInstanceUsers within 6 hours of expiration. Actual deletion times may vary. Expired AppInstanceUsers that have not yet been deleted appear as active, and you can update their expiration settings. The system honors the new settings.
    ///
    /// - Parameter PutAppInstanceUserExpirationSettingsInput : [no documentation found]
    ///
    /// - Returns: `PutAppInstanceUserExpirationSettingsOutput` : [no documentation found]
    ///
    /// - Throws: One of the exceptions listed below __Possible Exceptions__.
    ///
    /// __Possible Exceptions:__
    /// - `BadRequestException` : The input parameters don't match the service's restrictions.
    /// - `ConflictException` : The request could not be processed because of conflict in the current state of the resource.
    /// - `ForbiddenException` : The client is permanently forbidden from making the request.
    /// - `ServiceFailureException` : The service encountered an unexpected error.
    /// - `ServiceUnavailableException` : The service is currently unavailable.
    /// - `ThrottledClientException` : The client exceeded its request rate limit.
    /// - `UnauthorizedClientException` : The client is not currently authorized to make the request.
    func putAppInstanceUserExpirationSettings(input: PutAppInstanceUserExpirationSettingsInput) async throws -> PutAppInstanceUserExpirationSettingsOutput
    /// Performs the `RegisterAppInstanceUserEndpoint` operation on the `ChimeIdentityService` service.
    ///
    /// Registers an endpoint under an Amazon Chime AppInstanceUser. The endpoint receives messages for a user. For push notifications, the endpoint is a mobile device used to receive mobile push notifications for a user.
    ///
    /// - Parameter RegisterAppInstanceUserEndpointInput : [no documentation found]
    ///
    /// - Returns: `RegisterAppInstanceUserEndpointOutput` : [no documentation found]
    ///
    /// - Throws: One of the exceptions listed below __Possible Exceptions__.
    ///
    /// __Possible Exceptions:__
    /// - `BadRequestException` : The input parameters don't match the service's restrictions.
    /// - `ConflictException` : The request could not be processed because of conflict in the current state of the resource.
    /// - `ForbiddenException` : The client is permanently forbidden from making the request.
    /// - `ResourceLimitExceededException` : The request exceeds the resource limit.
    /// - `ServiceFailureException` : The service encountered an unexpected error.
    /// - `ServiceUnavailableException` : The service is currently unavailable.
    /// - `ThrottledClientException` : The client exceeded its request rate limit.
    /// - `UnauthorizedClientException` : The client is not currently authorized to make the request.
    func registerAppInstanceUserEndpoint(input: RegisterAppInstanceUserEndpointInput) async throws -> RegisterAppInstanceUserEndpointOutput
    /// Performs the `TagResource` operation on the `ChimeIdentityService` service.
    ///
    /// Applies the specified tags to the specified Amazon Chime SDK identity resource.
    ///
    /// - Parameter TagResourceInput : [no documentation found]
    ///
    /// - Returns: `TagResourceOutput` : [no documentation found]
    ///
    /// - Throws: One of the exceptions listed below __Possible Exceptions__.
    ///
    /// __Possible Exceptions:__
    /// - `BadRequestException` : The input parameters don't match the service's restrictions.
    /// - `ForbiddenException` : The client is permanently forbidden from making the request.
    /// - `ResourceLimitExceededException` : The request exceeds the resource limit.
    /// - `ServiceFailureException` : The service encountered an unexpected error.
    /// - `ServiceUnavailableException` : The service is currently unavailable.
    /// - `ThrottledClientException` : The client exceeded its request rate limit.
    /// - `UnauthorizedClientException` : The client is not currently authorized to make the request.
    func tagResource(input: TagResourceInput) async throws -> TagResourceOutput
    /// Performs the `UntagResource` operation on the `ChimeIdentityService` service.
    ///
    /// Removes the specified tags from the specified Amazon Chime SDK identity resource.
    ///
    /// - Parameter UntagResourceInput : [no documentation found]
    ///
    /// - Returns: `UntagResourceOutput` : [no documentation found]
    ///
    /// - Throws: One of the exceptions listed below __Possible Exceptions__.
    ///
    /// __Possible Exceptions:__
    /// - `BadRequestException` : The input parameters don't match the service's restrictions.
    /// - `ForbiddenException` : The client is permanently forbidden from making the request.
    /// - `ServiceFailureException` : The service encountered an unexpected error.
    /// - `ServiceUnavailableException` : The service is currently unavailable.
    /// - `ThrottledClientException` : The client exceeded its request rate limit.
    /// - `UnauthorizedClientException` : The client is not currently authorized to make the request.
    func untagResource(input: UntagResourceInput) async throws -> UntagResourceOutput
    /// Performs the `UpdateAppInstance` operation on the `ChimeIdentityService` service.
    ///
    /// Updates AppInstance metadata.
    ///
    /// - Parameter UpdateAppInstanceInput : [no documentation found]
    ///
    /// - Returns: `UpdateAppInstanceOutput` : [no documentation found]
    ///
    /// - Throws: One of the exceptions listed below __Possible Exceptions__.
    ///
    /// __Possible Exceptions:__
    /// - `BadRequestException` : The input parameters don't match the service's restrictions.
    /// - `ConflictException` : The request could not be processed because of conflict in the current state of the resource.
    /// - `ForbiddenException` : The client is permanently forbidden from making the request.
    /// - `ServiceFailureException` : The service encountered an unexpected error.
    /// - `ServiceUnavailableException` : The service is currently unavailable.
    /// - `ThrottledClientException` : The client exceeded its request rate limit.
    /// - `UnauthorizedClientException` : The client is not currently authorized to make the request.
    func updateAppInstance(input: UpdateAppInstanceInput) async throws -> UpdateAppInstanceOutput
    /// Performs the `UpdateAppInstanceBot` operation on the `ChimeIdentityService` service.
    ///
    /// Updates the name and metadata of an AppInstanceBot.
    ///
    /// - Parameter UpdateAppInstanceBotInput : [no documentation found]
    ///
    /// - Returns: `UpdateAppInstanceBotOutput` : [no documentation found]
    ///
    /// - Throws: One of the exceptions listed below __Possible Exceptions__.
    ///
    /// __Possible Exceptions:__
    /// - `BadRequestException` : The input parameters don't match the service's restrictions.
    /// - `ConflictException` : The request could not be processed because of conflict in the current state of the resource.
    /// - `ForbiddenException` : The client is permanently forbidden from making the request.
    /// - `ResourceLimitExceededException` : The request exceeds the resource limit.
    /// - `ServiceFailureException` : The service encountered an unexpected error.
    /// - `ServiceUnavailableException` : The service is currently unavailable.
    /// - `ThrottledClientException` : The client exceeded its request rate limit.
    /// - `UnauthorizedClientException` : The client is not currently authorized to make the request.
    func updateAppInstanceBot(input: UpdateAppInstanceBotInput) async throws -> UpdateAppInstanceBotOutput
    /// Performs the `UpdateAppInstanceUser` operation on the `ChimeIdentityService` service.
    ///
    /// Updates the details of an AppInstanceUser. You can update names and metadata.
    ///
    /// - Parameter UpdateAppInstanceUserInput : [no documentation found]
    ///
    /// - Returns: `UpdateAppInstanceUserOutput` : [no documentation found]
    ///
    /// - Throws: One of the exceptions listed below __Possible Exceptions__.
    ///
    /// __Possible Exceptions:__
    /// - `BadRequestException` : The input parameters don't match the service's restrictions.
    /// - `ConflictException` : The request could not be processed because of conflict in the current state of the resource.
    /// - `ForbiddenException` : The client is permanently forbidden from making the request.
    /// - `ResourceLimitExceededException` : The request exceeds the resource limit.
    /// - `ServiceFailureException` : The service encountered an unexpected error.
    /// - `ServiceUnavailableException` : The service is currently unavailable.
    /// - `ThrottledClientException` : The client exceeded its request rate limit.
    /// - `UnauthorizedClientException` : The client is not currently authorized to make the request.
    func updateAppInstanceUser(input: UpdateAppInstanceUserInput) async throws -> UpdateAppInstanceUserOutput
    /// Performs the `UpdateAppInstanceUserEndpoint` operation on the `ChimeIdentityService` service.
    ///
    /// Updates the details of an AppInstanceUserEndpoint. You can update the name and AllowMessage values.
    ///
    /// - Parameter UpdateAppInstanceUserEndpointInput : [no documentation found]
    ///
    /// - Returns: `UpdateAppInstanceUserEndpointOutput` : [no documentation found]
    ///
    /// - Throws: One of the exceptions listed below __Possible Exceptions__.
    ///
    /// __Possible Exceptions:__
    /// - `BadRequestException` : The input parameters don't match the service's restrictions.
    /// - `ConflictException` : The request could not be processed because of conflict in the current state of the resource.
    /// - `ForbiddenException` : The client is permanently forbidden from making the request.
    /// - `ServiceFailureException` : The service encountered an unexpected error.
    /// - `ServiceUnavailableException` : The service is currently unavailable.
    /// - `ThrottledClientException` : The client exceeded its request rate limit.
    /// - `UnauthorizedClientException` : The client is not currently authorized to make the request.
    func updateAppInstanceUserEndpoint(input: UpdateAppInstanceUserEndpointInput) async throws -> UpdateAppInstanceUserEndpointOutput
}

public enum ChimeSDKIdentityClientTypes {}
