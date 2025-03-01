// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

/// Amazon S3 on Outposts provides access to S3 on Outposts operations.
public protocol S3OutpostsClientProtocol {
    /// Performs the `CreateEndpoint` operation on the `S3Outposts` service.
    ///
    /// Creates an endpoint and associates it with the specified Outpost. It can take up to 5 minutes for this action to finish. Related actions include:
    ///
    /// * [DeleteEndpoint](https://docs.aws.amazon.com/AmazonS3/latest/API/API_s3outposts_DeleteEndpoint.html)
    ///
    /// * [ListEndpoints](https://docs.aws.amazon.com/AmazonS3/latest/API/API_s3outposts_ListEndpoints.html)
    ///
    /// - Parameter CreateEndpointInput : [no documentation found]
    ///
    /// - Returns: `CreateEndpointOutput` : [no documentation found]
    ///
    /// - Throws: One of the exceptions listed below __Possible Exceptions__.
    ///
    /// __Possible Exceptions:__
    /// - `AccessDeniedException` : Access was denied for this action.
    /// - `ConflictException` : There was a conflict with this action, and it could not be completed.
    /// - `InternalServerException` : There was an exception with the internal server.
    /// - `OutpostOfflineException` : The service link connection to your Outposts home Region is down. Check your connection and try again.
    /// - `ResourceNotFoundException` : The requested resource was not found.
    /// - `ThrottlingException` : The request was denied due to request throttling.
    /// - `ValidationException` : There was an exception validating this data.
    func createEndpoint(input: CreateEndpointInput) async throws -> CreateEndpointOutput
    /// Performs the `DeleteEndpoint` operation on the `S3Outposts` service.
    ///
    /// Deletes an endpoint. It can take up to 5 minutes for this action to finish. Related actions include:
    ///
    /// * [CreateEndpoint](https://docs.aws.amazon.com/AmazonS3/latest/API/API_s3outposts_CreateEndpoint.html)
    ///
    /// * [ListEndpoints](https://docs.aws.amazon.com/AmazonS3/latest/API/API_s3outposts_ListEndpoints.html)
    ///
    /// - Parameter DeleteEndpointInput : [no documentation found]
    ///
    /// - Returns: `DeleteEndpointOutput` : [no documentation found]
    ///
    /// - Throws: One of the exceptions listed below __Possible Exceptions__.
    ///
    /// __Possible Exceptions:__
    /// - `AccessDeniedException` : Access was denied for this action.
    /// - `InternalServerException` : There was an exception with the internal server.
    /// - `OutpostOfflineException` : The service link connection to your Outposts home Region is down. Check your connection and try again.
    /// - `ResourceNotFoundException` : The requested resource was not found.
    /// - `ThrottlingException` : The request was denied due to request throttling.
    /// - `ValidationException` : There was an exception validating this data.
    func deleteEndpoint(input: DeleteEndpointInput) async throws -> DeleteEndpointOutput
    /// Performs the `ListEndpoints` operation on the `S3Outposts` service.
    ///
    /// Lists endpoints associated with the specified Outpost. Related actions include:
    ///
    /// * [CreateEndpoint](https://docs.aws.amazon.com/AmazonS3/latest/API/API_s3outposts_CreateEndpoint.html)
    ///
    /// * [DeleteEndpoint](https://docs.aws.amazon.com/AmazonS3/latest/API/API_s3outposts_DeleteEndpoint.html)
    ///
    /// - Parameter ListEndpointsInput : [no documentation found]
    ///
    /// - Returns: `ListEndpointsOutput` : [no documentation found]
    ///
    /// - Throws: One of the exceptions listed below __Possible Exceptions__.
    ///
    /// __Possible Exceptions:__
    /// - `AccessDeniedException` : Access was denied for this action.
    /// - `InternalServerException` : There was an exception with the internal server.
    /// - `ResourceNotFoundException` : The requested resource was not found.
    /// - `ThrottlingException` : The request was denied due to request throttling.
    /// - `ValidationException` : There was an exception validating this data.
    func listEndpoints(input: ListEndpointsInput) async throws -> ListEndpointsOutput
    /// Performs the `ListOutpostsWithS3` operation on the `S3Outposts` service.
    ///
    /// Lists the Outposts with S3 on Outposts capacity for your Amazon Web Services account. Includes S3 on Outposts that you have access to as the Outposts owner, or as a shared user from Resource Access Manager (RAM).
    ///
    /// - Parameter ListOutpostsWithS3Input : [no documentation found]
    ///
    /// - Returns: `ListOutpostsWithS3Output` : [no documentation found]
    ///
    /// - Throws: One of the exceptions listed below __Possible Exceptions__.
    ///
    /// __Possible Exceptions:__
    /// - `AccessDeniedException` : Access was denied for this action.
    /// - `InternalServerException` : There was an exception with the internal server.
    /// - `ThrottlingException` : The request was denied due to request throttling.
    /// - `ValidationException` : There was an exception validating this data.
    func listOutpostsWithS3(input: ListOutpostsWithS3Input) async throws -> ListOutpostsWithS3Output
    /// Performs the `ListSharedEndpoints` operation on the `S3Outposts` service.
    ///
    /// Lists all endpoints associated with an Outpost that has been shared by Amazon Web Services Resource Access Manager (RAM). Related actions include:
    ///
    /// * [CreateEndpoint](https://docs.aws.amazon.com/AmazonS3/latest/API/API_s3outposts_CreateEndpoint.html)
    ///
    /// * [DeleteEndpoint](https://docs.aws.amazon.com/AmazonS3/latest/API/API_s3outposts_DeleteEndpoint.html)
    ///
    /// - Parameter ListSharedEndpointsInput : [no documentation found]
    ///
    /// - Returns: `ListSharedEndpointsOutput` : [no documentation found]
    ///
    /// - Throws: One of the exceptions listed below __Possible Exceptions__.
    ///
    /// __Possible Exceptions:__
    /// - `AccessDeniedException` : Access was denied for this action.
    /// - `InternalServerException` : There was an exception with the internal server.
    /// - `ResourceNotFoundException` : The requested resource was not found.
    /// - `ThrottlingException` : The request was denied due to request throttling.
    /// - `ValidationException` : There was an exception validating this data.
    func listSharedEndpoints(input: ListSharedEndpointsInput) async throws -> ListSharedEndpointsOutput
}

public enum S3OutpostsClientTypes {}
