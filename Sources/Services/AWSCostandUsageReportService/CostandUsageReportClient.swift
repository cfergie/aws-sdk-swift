// Code generated by smithy-swift-codegen. DO NOT EDIT!

@_spi(FileBasedConfig) import AWSClientRuntime
import ClientRuntime
import Foundation
import Logging

public class CostandUsageReportClient {
    public static let clientName = "CostandUsageReportClient"
    let client: ClientRuntime.SdkHttpClient
    let config: CostandUsageReportClient.CostandUsageReportClientConfiguration
    let serviceName = "Cost and Usage Report"
    let encoder: ClientRuntime.RequestEncoder
    let decoder: ClientRuntime.ResponseDecoder

    public init(config: CostandUsageReportClient.CostandUsageReportClientConfiguration) {
        client = ClientRuntime.SdkHttpClient(engine: config.httpClientEngine, config: config.httpClientConfiguration)
        let encoder = ClientRuntime.JSONEncoder()
        encoder.dateEncodingStrategy = .secondsSince1970
        encoder.nonConformingFloatEncodingStrategy = .convertToString(positiveInfinity: "Infinity", negativeInfinity: "-Infinity", nan: "NaN")
        self.encoder = config.encoder ?? encoder
        let decoder = ClientRuntime.JSONDecoder()
        decoder.dateDecodingStrategy = .secondsSince1970
        decoder.nonConformingFloatDecodingStrategy = .convertFromString(positiveInfinity: "Infinity", negativeInfinity: "-Infinity", nan: "NaN")
        self.decoder = config.decoder ?? decoder
        self.config = config
    }

    public convenience init(region: Swift.String) throws {
        let config = try CostandUsageReportClient.CostandUsageReportClientConfiguration(region: region)
        self.init(config: config)
    }

    public convenience init() async throws {
        let config = try await CostandUsageReportClient.CostandUsageReportClientConfiguration()
        self.init(config: config)
    }
}

extension CostandUsageReportClient {
    public typealias CostandUsageReportClientConfiguration = AWSClientConfiguration<ServiceSpecificConfiguration>

    public struct ServiceSpecificConfiguration: AWSServiceSpecificConfiguration {
        public typealias AWSServiceEndpointResolver = EndpointResolver

        public var serviceName: String { "Cost and Usage Report Service" }
        public var clientName: String { "CostandUsageReportClient" }
        public var endpointResolver: EndpointResolver

        public init(endpointResolver: EndpointResolver? = nil) throws {
            self.endpointResolver = try endpointResolver ?? DefaultEndpointResolver()
        }
    }
}

public struct CostandUsageReportClientLogHandlerFactory: ClientRuntime.SDKLogHandlerFactory {
    public var label = "CostandUsageReportClient"
    let logLevel: ClientRuntime.SDKLogLevel
    public func construct(label: String) -> LogHandler {
        var handler = StreamLogHandler.standardOutput(label: label)
        handler.logLevel = logLevel.toLoggerType()
        return handler
    }
    public init(logLevel: ClientRuntime.SDKLogLevel) {
        self.logLevel = logLevel
    }
}

extension CostandUsageReportClient: CostandUsageReportClientProtocol {
    /// Performs the `DeleteReportDefinition` operation on the `AWSOrigamiServiceGatewayService` service.
    ///
    /// Deletes the specified report. Any tags associated with the report are also deleted.
    ///
    /// - Parameter DeleteReportDefinitionInput : Deletes the specified report.
    ///
    /// - Returns: `DeleteReportDefinitionOutput` : If the action is successful, the service sends back an HTTP 200 response.
    ///
    /// - Throws: One of the exceptions listed below __Possible Exceptions__.
    ///
    /// __Possible Exceptions:__
    /// - `InternalErrorException` : An error on the server occurred during the processing of your request. Try again later.
    /// - `ValidationException` : The input fails to satisfy the constraints specified by an Amazon Web Services service.
    public func deleteReportDefinition(input: DeleteReportDefinitionInput) async throws -> DeleteReportDefinitionOutput
    {
        let context = ClientRuntime.HttpContextBuilder()
                      .withEncoder(value: encoder)
                      .withDecoder(value: decoder)
                      .withMethod(value: .post)
                      .withServiceName(value: serviceName)
                      .withOperation(value: "deleteReportDefinition")
                      .withIdempotencyTokenGenerator(value: config.idempotencyTokenGenerator)
                      .withLogger(value: config.logger)
                      .withPartitionID(value: config.partitionID)
                      .withCredentialsProvider(value: config.credentialsProvider)
                      .withRegion(value: config.region)
                      .withSigningName(value: "cur")
                      .withSigningRegion(value: config.signingRegion)
                      .build()
        var operation = ClientRuntime.OperationStack<DeleteReportDefinitionInput, DeleteReportDefinitionOutput>(id: "deleteReportDefinition")
        operation.initializeStep.intercept(position: .after, middleware: ClientRuntime.URLPathMiddleware<DeleteReportDefinitionInput, DeleteReportDefinitionOutput>())
        operation.initializeStep.intercept(position: .after, middleware: ClientRuntime.URLHostMiddleware<DeleteReportDefinitionInput, DeleteReportDefinitionOutput>())
        let endpointParams = EndpointParams(endpoint: config.endpoint, region: config.region, useDualStack: config.useDualStack ?? false, useFIPS: config.useFIPS ?? false)
        operation.buildStep.intercept(position: .before, middleware: EndpointResolverMiddleware<DeleteReportDefinitionOutput>(endpointResolver: config.serviceSpecific.endpointResolver, endpointParams: endpointParams))
        operation.buildStep.intercept(position: .before, middleware: AWSClientRuntime.UserAgentMiddleware(metadata: AWSClientRuntime.AWSUserAgentMetadata.fromConfig(serviceID: serviceName, version: "1.0", config: config)))
        operation.serializeStep.intercept(position: .before, middleware: AWSClientRuntime.XAmzTargetMiddleware<DeleteReportDefinitionInput, DeleteReportDefinitionOutput>(xAmzTarget: "AWSOrigamiServiceGatewayService.DeleteReportDefinition"))
        operation.serializeStep.intercept(position: .after, middleware: ClientRuntime.BodyMiddleware<DeleteReportDefinitionInput, DeleteReportDefinitionOutput, ClientRuntime.JSONWriter>(documentWritingClosure: ClientRuntime.JSONReadWrite.documentWritingClosure(encoder: encoder), inputWritingClosure: JSONReadWrite.writingClosure()))
        operation.serializeStep.intercept(position: .after, middleware: ContentTypeMiddleware<DeleteReportDefinitionInput, DeleteReportDefinitionOutput>(contentType: "application/x-amz-json-1.1"))
        operation.finalizeStep.intercept(position: .before, middleware: ClientRuntime.ContentLengthMiddleware())
        operation.finalizeStep.intercept(position: .after, middleware: ClientRuntime.RetryMiddleware<ClientRuntime.DefaultRetryStrategy, AWSClientRuntime.AWSRetryErrorInfoProvider, DeleteReportDefinitionOutput>(options: config.retryStrategyOptions))
        let sigv4Config = AWSClientRuntime.SigV4Config(unsignedBody: false, signingAlgorithm: .sigv4)
        operation.finalizeStep.intercept(position: .before, middleware: AWSClientRuntime.SigV4Middleware<DeleteReportDefinitionOutput>(config: sigv4Config))
        operation.deserializeStep.intercept(position: .after, middleware: ClientRuntime.DeserializeMiddleware<DeleteReportDefinitionOutput>(responseClosure(decoder: decoder), responseErrorClosure(DeleteReportDefinitionOutputError.self, decoder: decoder)))
        operation.deserializeStep.intercept(position: .after, middleware: ClientRuntime.LoggerMiddleware<DeleteReportDefinitionOutput>(clientLogMode: config.clientLogMode))
        let result = try await operation.handleMiddleware(context: context, input: input, next: client.getHandler())
        return result
    }

    /// Performs the `DescribeReportDefinitions` operation on the `AWSOrigamiServiceGatewayService` service.
    ///
    /// Lists the Amazon Web Services Cost and Usage Report available to this account.
    ///
    /// - Parameter DescribeReportDefinitionsInput : Requests a Amazon Web Services Cost and Usage Report list owned by the account.
    ///
    /// - Returns: `DescribeReportDefinitionsOutput` : If the action is successful, the service sends back an HTTP 200 response.
    ///
    /// - Throws: One of the exceptions listed below __Possible Exceptions__.
    ///
    /// __Possible Exceptions:__
    /// - `InternalErrorException` : An error on the server occurred during the processing of your request. Try again later.
    public func describeReportDefinitions(input: DescribeReportDefinitionsInput) async throws -> DescribeReportDefinitionsOutput
    {
        let context = ClientRuntime.HttpContextBuilder()
                      .withEncoder(value: encoder)
                      .withDecoder(value: decoder)
                      .withMethod(value: .post)
                      .withServiceName(value: serviceName)
                      .withOperation(value: "describeReportDefinitions")
                      .withIdempotencyTokenGenerator(value: config.idempotencyTokenGenerator)
                      .withLogger(value: config.logger)
                      .withPartitionID(value: config.partitionID)
                      .withCredentialsProvider(value: config.credentialsProvider)
                      .withRegion(value: config.region)
                      .withSigningName(value: "cur")
                      .withSigningRegion(value: config.signingRegion)
                      .build()
        var operation = ClientRuntime.OperationStack<DescribeReportDefinitionsInput, DescribeReportDefinitionsOutput>(id: "describeReportDefinitions")
        operation.initializeStep.intercept(position: .after, middleware: ClientRuntime.URLPathMiddleware<DescribeReportDefinitionsInput, DescribeReportDefinitionsOutput>())
        operation.initializeStep.intercept(position: .after, middleware: ClientRuntime.URLHostMiddleware<DescribeReportDefinitionsInput, DescribeReportDefinitionsOutput>())
        let endpointParams = EndpointParams(endpoint: config.endpoint, region: config.region, useDualStack: config.useDualStack ?? false, useFIPS: config.useFIPS ?? false)
        operation.buildStep.intercept(position: .before, middleware: EndpointResolverMiddleware<DescribeReportDefinitionsOutput>(endpointResolver: config.serviceSpecific.endpointResolver, endpointParams: endpointParams))
        operation.buildStep.intercept(position: .before, middleware: AWSClientRuntime.UserAgentMiddleware(metadata: AWSClientRuntime.AWSUserAgentMetadata.fromConfig(serviceID: serviceName, version: "1.0", config: config)))
        operation.serializeStep.intercept(position: .before, middleware: AWSClientRuntime.XAmzTargetMiddleware<DescribeReportDefinitionsInput, DescribeReportDefinitionsOutput>(xAmzTarget: "AWSOrigamiServiceGatewayService.DescribeReportDefinitions"))
        operation.serializeStep.intercept(position: .after, middleware: ClientRuntime.BodyMiddleware<DescribeReportDefinitionsInput, DescribeReportDefinitionsOutput, ClientRuntime.JSONWriter>(documentWritingClosure: ClientRuntime.JSONReadWrite.documentWritingClosure(encoder: encoder), inputWritingClosure: JSONReadWrite.writingClosure()))
        operation.serializeStep.intercept(position: .after, middleware: ContentTypeMiddleware<DescribeReportDefinitionsInput, DescribeReportDefinitionsOutput>(contentType: "application/x-amz-json-1.1"))
        operation.finalizeStep.intercept(position: .before, middleware: ClientRuntime.ContentLengthMiddleware())
        operation.finalizeStep.intercept(position: .after, middleware: ClientRuntime.RetryMiddleware<ClientRuntime.DefaultRetryStrategy, AWSClientRuntime.AWSRetryErrorInfoProvider, DescribeReportDefinitionsOutput>(options: config.retryStrategyOptions))
        let sigv4Config = AWSClientRuntime.SigV4Config(unsignedBody: false, signingAlgorithm: .sigv4)
        operation.finalizeStep.intercept(position: .before, middleware: AWSClientRuntime.SigV4Middleware<DescribeReportDefinitionsOutput>(config: sigv4Config))
        operation.deserializeStep.intercept(position: .after, middleware: ClientRuntime.DeserializeMiddleware<DescribeReportDefinitionsOutput>(responseClosure(decoder: decoder), responseErrorClosure(DescribeReportDefinitionsOutputError.self, decoder: decoder)))
        operation.deserializeStep.intercept(position: .after, middleware: ClientRuntime.LoggerMiddleware<DescribeReportDefinitionsOutput>(clientLogMode: config.clientLogMode))
        let result = try await operation.handleMiddleware(context: context, input: input, next: client.getHandler())
        return result
    }

    /// Performs the `ListTagsForResource` operation on the `AWSOrigamiServiceGatewayService` service.
    ///
    /// Lists the tags associated with the specified report definition.
    ///
    /// - Parameter ListTagsForResourceInput : [no documentation found]
    ///
    /// - Returns: `ListTagsForResourceOutput` : [no documentation found]
    ///
    /// - Throws: One of the exceptions listed below __Possible Exceptions__.
    ///
    /// __Possible Exceptions:__
    /// - `InternalErrorException` : An error on the server occurred during the processing of your request. Try again later.
    /// - `ResourceNotFoundException` : The specified report (ReportName) in the request doesn't exist.
    /// - `ValidationException` : The input fails to satisfy the constraints specified by an Amazon Web Services service.
    public func listTagsForResource(input: ListTagsForResourceInput) async throws -> ListTagsForResourceOutput
    {
        let context = ClientRuntime.HttpContextBuilder()
                      .withEncoder(value: encoder)
                      .withDecoder(value: decoder)
                      .withMethod(value: .post)
                      .withServiceName(value: serviceName)
                      .withOperation(value: "listTagsForResource")
                      .withIdempotencyTokenGenerator(value: config.idempotencyTokenGenerator)
                      .withLogger(value: config.logger)
                      .withPartitionID(value: config.partitionID)
                      .withCredentialsProvider(value: config.credentialsProvider)
                      .withRegion(value: config.region)
                      .withSigningName(value: "cur")
                      .withSigningRegion(value: config.signingRegion)
                      .build()
        var operation = ClientRuntime.OperationStack<ListTagsForResourceInput, ListTagsForResourceOutput>(id: "listTagsForResource")
        operation.initializeStep.intercept(position: .after, middleware: ClientRuntime.URLPathMiddleware<ListTagsForResourceInput, ListTagsForResourceOutput>())
        operation.initializeStep.intercept(position: .after, middleware: ClientRuntime.URLHostMiddleware<ListTagsForResourceInput, ListTagsForResourceOutput>())
        let endpointParams = EndpointParams(endpoint: config.endpoint, region: config.region, useDualStack: config.useDualStack ?? false, useFIPS: config.useFIPS ?? false)
        operation.buildStep.intercept(position: .before, middleware: EndpointResolverMiddleware<ListTagsForResourceOutput>(endpointResolver: config.serviceSpecific.endpointResolver, endpointParams: endpointParams))
        operation.buildStep.intercept(position: .before, middleware: AWSClientRuntime.UserAgentMiddleware(metadata: AWSClientRuntime.AWSUserAgentMetadata.fromConfig(serviceID: serviceName, version: "1.0", config: config)))
        operation.serializeStep.intercept(position: .before, middleware: AWSClientRuntime.XAmzTargetMiddleware<ListTagsForResourceInput, ListTagsForResourceOutput>(xAmzTarget: "AWSOrigamiServiceGatewayService.ListTagsForResource"))
        operation.serializeStep.intercept(position: .after, middleware: ClientRuntime.BodyMiddleware<ListTagsForResourceInput, ListTagsForResourceOutput, ClientRuntime.JSONWriter>(documentWritingClosure: ClientRuntime.JSONReadWrite.documentWritingClosure(encoder: encoder), inputWritingClosure: JSONReadWrite.writingClosure()))
        operation.serializeStep.intercept(position: .after, middleware: ContentTypeMiddleware<ListTagsForResourceInput, ListTagsForResourceOutput>(contentType: "application/x-amz-json-1.1"))
        operation.finalizeStep.intercept(position: .before, middleware: ClientRuntime.ContentLengthMiddleware())
        operation.finalizeStep.intercept(position: .after, middleware: ClientRuntime.RetryMiddleware<ClientRuntime.DefaultRetryStrategy, AWSClientRuntime.AWSRetryErrorInfoProvider, ListTagsForResourceOutput>(options: config.retryStrategyOptions))
        let sigv4Config = AWSClientRuntime.SigV4Config(unsignedBody: false, signingAlgorithm: .sigv4)
        operation.finalizeStep.intercept(position: .before, middleware: AWSClientRuntime.SigV4Middleware<ListTagsForResourceOutput>(config: sigv4Config))
        operation.deserializeStep.intercept(position: .after, middleware: ClientRuntime.DeserializeMiddleware<ListTagsForResourceOutput>(responseClosure(decoder: decoder), responseErrorClosure(ListTagsForResourceOutputError.self, decoder: decoder)))
        operation.deserializeStep.intercept(position: .after, middleware: ClientRuntime.LoggerMiddleware<ListTagsForResourceOutput>(clientLogMode: config.clientLogMode))
        let result = try await operation.handleMiddleware(context: context, input: input, next: client.getHandler())
        return result
    }

    /// Performs the `ModifyReportDefinition` operation on the `AWSOrigamiServiceGatewayService` service.
    ///
    /// Allows you to programmatically update your report preferences.
    ///
    /// - Parameter ModifyReportDefinitionInput : [no documentation found]
    ///
    /// - Returns: `ModifyReportDefinitionOutput` : [no documentation found]
    ///
    /// - Throws: One of the exceptions listed below __Possible Exceptions__.
    ///
    /// __Possible Exceptions:__
    /// - `InternalErrorException` : An error on the server occurred during the processing of your request. Try again later.
    /// - `ValidationException` : The input fails to satisfy the constraints specified by an Amazon Web Services service.
    public func modifyReportDefinition(input: ModifyReportDefinitionInput) async throws -> ModifyReportDefinitionOutput
    {
        let context = ClientRuntime.HttpContextBuilder()
                      .withEncoder(value: encoder)
                      .withDecoder(value: decoder)
                      .withMethod(value: .post)
                      .withServiceName(value: serviceName)
                      .withOperation(value: "modifyReportDefinition")
                      .withIdempotencyTokenGenerator(value: config.idempotencyTokenGenerator)
                      .withLogger(value: config.logger)
                      .withPartitionID(value: config.partitionID)
                      .withCredentialsProvider(value: config.credentialsProvider)
                      .withRegion(value: config.region)
                      .withSigningName(value: "cur")
                      .withSigningRegion(value: config.signingRegion)
                      .build()
        var operation = ClientRuntime.OperationStack<ModifyReportDefinitionInput, ModifyReportDefinitionOutput>(id: "modifyReportDefinition")
        operation.initializeStep.intercept(position: .after, middleware: ClientRuntime.URLPathMiddleware<ModifyReportDefinitionInput, ModifyReportDefinitionOutput>())
        operation.initializeStep.intercept(position: .after, middleware: ClientRuntime.URLHostMiddleware<ModifyReportDefinitionInput, ModifyReportDefinitionOutput>())
        let endpointParams = EndpointParams(endpoint: config.endpoint, region: config.region, useDualStack: config.useDualStack ?? false, useFIPS: config.useFIPS ?? false)
        operation.buildStep.intercept(position: .before, middleware: EndpointResolverMiddleware<ModifyReportDefinitionOutput>(endpointResolver: config.serviceSpecific.endpointResolver, endpointParams: endpointParams))
        operation.buildStep.intercept(position: .before, middleware: AWSClientRuntime.UserAgentMiddleware(metadata: AWSClientRuntime.AWSUserAgentMetadata.fromConfig(serviceID: serviceName, version: "1.0", config: config)))
        operation.serializeStep.intercept(position: .before, middleware: AWSClientRuntime.XAmzTargetMiddleware<ModifyReportDefinitionInput, ModifyReportDefinitionOutput>(xAmzTarget: "AWSOrigamiServiceGatewayService.ModifyReportDefinition"))
        operation.serializeStep.intercept(position: .after, middleware: ClientRuntime.BodyMiddleware<ModifyReportDefinitionInput, ModifyReportDefinitionOutput, ClientRuntime.JSONWriter>(documentWritingClosure: ClientRuntime.JSONReadWrite.documentWritingClosure(encoder: encoder), inputWritingClosure: JSONReadWrite.writingClosure()))
        operation.serializeStep.intercept(position: .after, middleware: ContentTypeMiddleware<ModifyReportDefinitionInput, ModifyReportDefinitionOutput>(contentType: "application/x-amz-json-1.1"))
        operation.finalizeStep.intercept(position: .before, middleware: ClientRuntime.ContentLengthMiddleware())
        operation.finalizeStep.intercept(position: .after, middleware: ClientRuntime.RetryMiddleware<ClientRuntime.DefaultRetryStrategy, AWSClientRuntime.AWSRetryErrorInfoProvider, ModifyReportDefinitionOutput>(options: config.retryStrategyOptions))
        let sigv4Config = AWSClientRuntime.SigV4Config(unsignedBody: false, signingAlgorithm: .sigv4)
        operation.finalizeStep.intercept(position: .before, middleware: AWSClientRuntime.SigV4Middleware<ModifyReportDefinitionOutput>(config: sigv4Config))
        operation.deserializeStep.intercept(position: .after, middleware: ClientRuntime.DeserializeMiddleware<ModifyReportDefinitionOutput>(responseClosure(decoder: decoder), responseErrorClosure(ModifyReportDefinitionOutputError.self, decoder: decoder)))
        operation.deserializeStep.intercept(position: .after, middleware: ClientRuntime.LoggerMiddleware<ModifyReportDefinitionOutput>(clientLogMode: config.clientLogMode))
        let result = try await operation.handleMiddleware(context: context, input: input, next: client.getHandler())
        return result
    }

    /// Performs the `PutReportDefinition` operation on the `AWSOrigamiServiceGatewayService` service.
    ///
    /// Creates a new report using the description that you provide.
    ///
    /// - Parameter PutReportDefinitionInput : Creates a Cost and Usage Report.
    ///
    /// - Returns: `PutReportDefinitionOutput` : If the action is successful, the service sends back an HTTP 200 response with an empty HTTP body.
    ///
    /// - Throws: One of the exceptions listed below __Possible Exceptions__.
    ///
    /// __Possible Exceptions:__
    /// - `DuplicateReportNameException` : A report with the specified name already exists in the account. Specify a different report name.
    /// - `InternalErrorException` : An error on the server occurred during the processing of your request. Try again later.
    /// - `ReportLimitReachedException` : This account already has five reports defined. To define a new report, you must delete an existing report.
    /// - `ResourceNotFoundException` : The specified report (ReportName) in the request doesn't exist.
    /// - `ValidationException` : The input fails to satisfy the constraints specified by an Amazon Web Services service.
    public func putReportDefinition(input: PutReportDefinitionInput) async throws -> PutReportDefinitionOutput
    {
        let context = ClientRuntime.HttpContextBuilder()
                      .withEncoder(value: encoder)
                      .withDecoder(value: decoder)
                      .withMethod(value: .post)
                      .withServiceName(value: serviceName)
                      .withOperation(value: "putReportDefinition")
                      .withIdempotencyTokenGenerator(value: config.idempotencyTokenGenerator)
                      .withLogger(value: config.logger)
                      .withPartitionID(value: config.partitionID)
                      .withCredentialsProvider(value: config.credentialsProvider)
                      .withRegion(value: config.region)
                      .withSigningName(value: "cur")
                      .withSigningRegion(value: config.signingRegion)
                      .build()
        var operation = ClientRuntime.OperationStack<PutReportDefinitionInput, PutReportDefinitionOutput>(id: "putReportDefinition")
        operation.initializeStep.intercept(position: .after, middleware: ClientRuntime.URLPathMiddleware<PutReportDefinitionInput, PutReportDefinitionOutput>())
        operation.initializeStep.intercept(position: .after, middleware: ClientRuntime.URLHostMiddleware<PutReportDefinitionInput, PutReportDefinitionOutput>())
        let endpointParams = EndpointParams(endpoint: config.endpoint, region: config.region, useDualStack: config.useDualStack ?? false, useFIPS: config.useFIPS ?? false)
        operation.buildStep.intercept(position: .before, middleware: EndpointResolverMiddleware<PutReportDefinitionOutput>(endpointResolver: config.serviceSpecific.endpointResolver, endpointParams: endpointParams))
        operation.buildStep.intercept(position: .before, middleware: AWSClientRuntime.UserAgentMiddleware(metadata: AWSClientRuntime.AWSUserAgentMetadata.fromConfig(serviceID: serviceName, version: "1.0", config: config)))
        operation.serializeStep.intercept(position: .before, middleware: AWSClientRuntime.XAmzTargetMiddleware<PutReportDefinitionInput, PutReportDefinitionOutput>(xAmzTarget: "AWSOrigamiServiceGatewayService.PutReportDefinition"))
        operation.serializeStep.intercept(position: .after, middleware: ClientRuntime.BodyMiddleware<PutReportDefinitionInput, PutReportDefinitionOutput, ClientRuntime.JSONWriter>(documentWritingClosure: ClientRuntime.JSONReadWrite.documentWritingClosure(encoder: encoder), inputWritingClosure: JSONReadWrite.writingClosure()))
        operation.serializeStep.intercept(position: .after, middleware: ContentTypeMiddleware<PutReportDefinitionInput, PutReportDefinitionOutput>(contentType: "application/x-amz-json-1.1"))
        operation.finalizeStep.intercept(position: .before, middleware: ClientRuntime.ContentLengthMiddleware())
        operation.finalizeStep.intercept(position: .after, middleware: ClientRuntime.RetryMiddleware<ClientRuntime.DefaultRetryStrategy, AWSClientRuntime.AWSRetryErrorInfoProvider, PutReportDefinitionOutput>(options: config.retryStrategyOptions))
        let sigv4Config = AWSClientRuntime.SigV4Config(unsignedBody: false, signingAlgorithm: .sigv4)
        operation.finalizeStep.intercept(position: .before, middleware: AWSClientRuntime.SigV4Middleware<PutReportDefinitionOutput>(config: sigv4Config))
        operation.deserializeStep.intercept(position: .after, middleware: ClientRuntime.DeserializeMiddleware<PutReportDefinitionOutput>(responseClosure(decoder: decoder), responseErrorClosure(PutReportDefinitionOutputError.self, decoder: decoder)))
        operation.deserializeStep.intercept(position: .after, middleware: ClientRuntime.LoggerMiddleware<PutReportDefinitionOutput>(clientLogMode: config.clientLogMode))
        let result = try await operation.handleMiddleware(context: context, input: input, next: client.getHandler())
        return result
    }

    /// Performs the `TagResource` operation on the `AWSOrigamiServiceGatewayService` service.
    ///
    /// Associates a set of tags with a report definition.
    ///
    /// - Parameter TagResourceInput : [no documentation found]
    ///
    /// - Returns: `TagResourceOutput` : [no documentation found]
    ///
    /// - Throws: One of the exceptions listed below __Possible Exceptions__.
    ///
    /// __Possible Exceptions:__
    /// - `InternalErrorException` : An error on the server occurred during the processing of your request. Try again later.
    /// - `ResourceNotFoundException` : The specified report (ReportName) in the request doesn't exist.
    /// - `ValidationException` : The input fails to satisfy the constraints specified by an Amazon Web Services service.
    public func tagResource(input: TagResourceInput) async throws -> TagResourceOutput
    {
        let context = ClientRuntime.HttpContextBuilder()
                      .withEncoder(value: encoder)
                      .withDecoder(value: decoder)
                      .withMethod(value: .post)
                      .withServiceName(value: serviceName)
                      .withOperation(value: "tagResource")
                      .withIdempotencyTokenGenerator(value: config.idempotencyTokenGenerator)
                      .withLogger(value: config.logger)
                      .withPartitionID(value: config.partitionID)
                      .withCredentialsProvider(value: config.credentialsProvider)
                      .withRegion(value: config.region)
                      .withSigningName(value: "cur")
                      .withSigningRegion(value: config.signingRegion)
                      .build()
        var operation = ClientRuntime.OperationStack<TagResourceInput, TagResourceOutput>(id: "tagResource")
        operation.initializeStep.intercept(position: .after, middleware: ClientRuntime.URLPathMiddleware<TagResourceInput, TagResourceOutput>())
        operation.initializeStep.intercept(position: .after, middleware: ClientRuntime.URLHostMiddleware<TagResourceInput, TagResourceOutput>())
        let endpointParams = EndpointParams(endpoint: config.endpoint, region: config.region, useDualStack: config.useDualStack ?? false, useFIPS: config.useFIPS ?? false)
        operation.buildStep.intercept(position: .before, middleware: EndpointResolverMiddleware<TagResourceOutput>(endpointResolver: config.serviceSpecific.endpointResolver, endpointParams: endpointParams))
        operation.buildStep.intercept(position: .before, middleware: AWSClientRuntime.UserAgentMiddleware(metadata: AWSClientRuntime.AWSUserAgentMetadata.fromConfig(serviceID: serviceName, version: "1.0", config: config)))
        operation.serializeStep.intercept(position: .before, middleware: AWSClientRuntime.XAmzTargetMiddleware<TagResourceInput, TagResourceOutput>(xAmzTarget: "AWSOrigamiServiceGatewayService.TagResource"))
        operation.serializeStep.intercept(position: .after, middleware: ClientRuntime.BodyMiddleware<TagResourceInput, TagResourceOutput, ClientRuntime.JSONWriter>(documentWritingClosure: ClientRuntime.JSONReadWrite.documentWritingClosure(encoder: encoder), inputWritingClosure: JSONReadWrite.writingClosure()))
        operation.serializeStep.intercept(position: .after, middleware: ContentTypeMiddleware<TagResourceInput, TagResourceOutput>(contentType: "application/x-amz-json-1.1"))
        operation.finalizeStep.intercept(position: .before, middleware: ClientRuntime.ContentLengthMiddleware())
        operation.finalizeStep.intercept(position: .after, middleware: ClientRuntime.RetryMiddleware<ClientRuntime.DefaultRetryStrategy, AWSClientRuntime.AWSRetryErrorInfoProvider, TagResourceOutput>(options: config.retryStrategyOptions))
        let sigv4Config = AWSClientRuntime.SigV4Config(unsignedBody: false, signingAlgorithm: .sigv4)
        operation.finalizeStep.intercept(position: .before, middleware: AWSClientRuntime.SigV4Middleware<TagResourceOutput>(config: sigv4Config))
        operation.deserializeStep.intercept(position: .after, middleware: ClientRuntime.DeserializeMiddleware<TagResourceOutput>(responseClosure(decoder: decoder), responseErrorClosure(TagResourceOutputError.self, decoder: decoder)))
        operation.deserializeStep.intercept(position: .after, middleware: ClientRuntime.LoggerMiddleware<TagResourceOutput>(clientLogMode: config.clientLogMode))
        let result = try await operation.handleMiddleware(context: context, input: input, next: client.getHandler())
        return result
    }

    /// Performs the `UntagResource` operation on the `AWSOrigamiServiceGatewayService` service.
    ///
    /// Disassociates a set of tags from a report definition.
    ///
    /// - Parameter UntagResourceInput : [no documentation found]
    ///
    /// - Returns: `UntagResourceOutput` : [no documentation found]
    ///
    /// - Throws: One of the exceptions listed below __Possible Exceptions__.
    ///
    /// __Possible Exceptions:__
    /// - `InternalErrorException` : An error on the server occurred during the processing of your request. Try again later.
    /// - `ResourceNotFoundException` : The specified report (ReportName) in the request doesn't exist.
    /// - `ValidationException` : The input fails to satisfy the constraints specified by an Amazon Web Services service.
    public func untagResource(input: UntagResourceInput) async throws -> UntagResourceOutput
    {
        let context = ClientRuntime.HttpContextBuilder()
                      .withEncoder(value: encoder)
                      .withDecoder(value: decoder)
                      .withMethod(value: .post)
                      .withServiceName(value: serviceName)
                      .withOperation(value: "untagResource")
                      .withIdempotencyTokenGenerator(value: config.idempotencyTokenGenerator)
                      .withLogger(value: config.logger)
                      .withPartitionID(value: config.partitionID)
                      .withCredentialsProvider(value: config.credentialsProvider)
                      .withRegion(value: config.region)
                      .withSigningName(value: "cur")
                      .withSigningRegion(value: config.signingRegion)
                      .build()
        var operation = ClientRuntime.OperationStack<UntagResourceInput, UntagResourceOutput>(id: "untagResource")
        operation.initializeStep.intercept(position: .after, middleware: ClientRuntime.URLPathMiddleware<UntagResourceInput, UntagResourceOutput>())
        operation.initializeStep.intercept(position: .after, middleware: ClientRuntime.URLHostMiddleware<UntagResourceInput, UntagResourceOutput>())
        let endpointParams = EndpointParams(endpoint: config.endpoint, region: config.region, useDualStack: config.useDualStack ?? false, useFIPS: config.useFIPS ?? false)
        operation.buildStep.intercept(position: .before, middleware: EndpointResolverMiddleware<UntagResourceOutput>(endpointResolver: config.serviceSpecific.endpointResolver, endpointParams: endpointParams))
        operation.buildStep.intercept(position: .before, middleware: AWSClientRuntime.UserAgentMiddleware(metadata: AWSClientRuntime.AWSUserAgentMetadata.fromConfig(serviceID: serviceName, version: "1.0", config: config)))
        operation.serializeStep.intercept(position: .before, middleware: AWSClientRuntime.XAmzTargetMiddleware<UntagResourceInput, UntagResourceOutput>(xAmzTarget: "AWSOrigamiServiceGatewayService.UntagResource"))
        operation.serializeStep.intercept(position: .after, middleware: ClientRuntime.BodyMiddleware<UntagResourceInput, UntagResourceOutput, ClientRuntime.JSONWriter>(documentWritingClosure: ClientRuntime.JSONReadWrite.documentWritingClosure(encoder: encoder), inputWritingClosure: JSONReadWrite.writingClosure()))
        operation.serializeStep.intercept(position: .after, middleware: ContentTypeMiddleware<UntagResourceInput, UntagResourceOutput>(contentType: "application/x-amz-json-1.1"))
        operation.finalizeStep.intercept(position: .before, middleware: ClientRuntime.ContentLengthMiddleware())
        operation.finalizeStep.intercept(position: .after, middleware: ClientRuntime.RetryMiddleware<ClientRuntime.DefaultRetryStrategy, AWSClientRuntime.AWSRetryErrorInfoProvider, UntagResourceOutput>(options: config.retryStrategyOptions))
        let sigv4Config = AWSClientRuntime.SigV4Config(unsignedBody: false, signingAlgorithm: .sigv4)
        operation.finalizeStep.intercept(position: .before, middleware: AWSClientRuntime.SigV4Middleware<UntagResourceOutput>(config: sigv4Config))
        operation.deserializeStep.intercept(position: .after, middleware: ClientRuntime.DeserializeMiddleware<UntagResourceOutput>(responseClosure(decoder: decoder), responseErrorClosure(UntagResourceOutputError.self, decoder: decoder)))
        operation.deserializeStep.intercept(position: .after, middleware: ClientRuntime.LoggerMiddleware<UntagResourceOutput>(clientLogMode: config.clientLogMode))
        let result = try await operation.handleMiddleware(context: context, input: input, next: client.getHandler())
        return result
    }

}
