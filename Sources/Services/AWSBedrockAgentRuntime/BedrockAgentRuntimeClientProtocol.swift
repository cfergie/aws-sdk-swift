// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

/// Amazon Bedrock Agent
public protocol BedrockAgentRuntimeClientProtocol {
    /// Performs the `InvokeAgent` operation on the `AmazonBedrockAgentRunTimeService` service.
    ///
    /// Invokes the specified Bedrock model to run inference using the input provided in the request body.
    ///
    /// - Parameter InvokeAgentInput : InvokeAgent Request
    ///
    /// - Returns: `InvokeAgentOutput` : InvokeAgent Response
    ///
    /// - Throws: One of the exceptions listed below __Possible Exceptions__.
    ///
    /// __Possible Exceptions:__
    /// - `AccessDeniedException` : This exception is thrown when a request is denied per access permissions
    /// - `BadGatewayException` : This exception is thrown when a request fails due to dependency like Lambda, Bedrock, STS resource
    /// - `ConflictException` : This exception is thrown when there is a conflict performing an operation
    /// - `DependencyFailedException` : This exception is thrown when a request fails due to dependency like Lambda, Bedrock, STS resource due to a customer fault (i.e. bad configuration)
    /// - `InternalServerException` : This exception is thrown if there was an unexpected error during processing of request
    /// - `ResourceNotFoundException` : This exception is thrown when a resource referenced by the operation does not exist
    /// - `ServiceQuotaExceededException` : This exception is thrown when a request is made beyond the service quota
    /// - `ThrottlingException` : This exception is thrown when the number of requests exceeds the limit
    /// - `ValidationException` : This exception is thrown when the request's input validation fails
    func invokeAgent(input: InvokeAgentInput) async throws -> InvokeAgentOutput
    /// Performs the `Retrieve` operation on the `AmazonBedrockAgentRunTimeService` service.
    ///
    /// Retrieve from knowledge base.
    ///
    /// - Parameter RetrieveInput : [no documentation found]
    ///
    /// - Returns: `RetrieveOutput` : [no documentation found]
    ///
    /// - Throws: One of the exceptions listed below __Possible Exceptions__.
    ///
    /// __Possible Exceptions:__
    /// - `AccessDeniedException` : This exception is thrown when a request is denied per access permissions
    /// - `BadGatewayException` : This exception is thrown when a request fails due to dependency like Lambda, Bedrock, STS resource
    /// - `ConflictException` : This exception is thrown when there is a conflict performing an operation
    /// - `DependencyFailedException` : This exception is thrown when a request fails due to dependency like Lambda, Bedrock, STS resource due to a customer fault (i.e. bad configuration)
    /// - `InternalServerException` : This exception is thrown if there was an unexpected error during processing of request
    /// - `ResourceNotFoundException` : This exception is thrown when a resource referenced by the operation does not exist
    /// - `ServiceQuotaExceededException` : This exception is thrown when a request is made beyond the service quota
    /// - `ThrottlingException` : This exception is thrown when the number of requests exceeds the limit
    /// - `ValidationException` : This exception is thrown when the request's input validation fails
    func retrieve(input: RetrieveInput) async throws -> RetrieveOutput
    /// Performs the `RetrieveAndGenerate` operation on the `AmazonBedrockAgentRunTimeService` service.
    ///
    /// RetrieveAndGenerate API
    ///
    /// - Parameter RetrieveAndGenerateInput : [no documentation found]
    ///
    /// - Returns: `RetrieveAndGenerateOutput` : [no documentation found]
    ///
    /// - Throws: One of the exceptions listed below __Possible Exceptions__.
    ///
    /// __Possible Exceptions:__
    /// - `AccessDeniedException` : This exception is thrown when a request is denied per access permissions
    /// - `BadGatewayException` : This exception is thrown when a request fails due to dependency like Lambda, Bedrock, STS resource
    /// - `ConflictException` : This exception is thrown when there is a conflict performing an operation
    /// - `DependencyFailedException` : This exception is thrown when a request fails due to dependency like Lambda, Bedrock, STS resource due to a customer fault (i.e. bad configuration)
    /// - `InternalServerException` : This exception is thrown if there was an unexpected error during processing of request
    /// - `ResourceNotFoundException` : This exception is thrown when a resource referenced by the operation does not exist
    /// - `ServiceQuotaExceededException` : This exception is thrown when a request is made beyond the service quota
    /// - `ThrottlingException` : This exception is thrown when the number of requests exceeds the limit
    /// - `ValidationException` : This exception is thrown when the request's input validation fails
    func retrieveAndGenerate(input: RetrieveAndGenerateInput) async throws -> RetrieveAndGenerateOutput
}

public enum BedrockAgentRuntimeClientTypes {}
