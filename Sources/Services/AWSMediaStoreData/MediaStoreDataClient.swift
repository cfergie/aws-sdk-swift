// Code generated by smithy-swift-codegen. DO NOT EDIT!

import AWSClientRuntime
import ClientRuntime
import Foundation
import Logging

public class MediaStoreDataClient {
    public static let clientName = "MediaStoreDataClient"
    let client: ClientRuntime.SdkHttpClient
    let config: MediaStoreDataClientConfigurationProtocol
    let serviceName = "MediaStore Data"
    let encoder: ClientRuntime.RequestEncoder
    let decoder: ClientRuntime.ResponseDecoder

    public init(config: MediaStoreDataClientConfigurationProtocol) {
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
        let config = try MediaStoreDataClientConfiguration(region: region)
        self.init(config: config)
    }

    public convenience init() async throws {
        let config = try await MediaStoreDataClientConfiguration()
        self.init(config: config)
    }

    public class MediaStoreDataClientConfiguration: MediaStoreDataClientConfigurationProtocol {
        public var clientLogMode: ClientRuntime.ClientLogMode
        public var decoder: ClientRuntime.ResponseDecoder?
        public var encoder: ClientRuntime.RequestEncoder?
        public var httpClientConfiguration: ClientRuntime.HttpClientConfiguration
        public var httpClientEngine: ClientRuntime.HttpClientEngine
        public var idempotencyTokenGenerator: ClientRuntime.IdempotencyTokenGenerator
        public var logger: ClientRuntime.LogAgent
        public var retryer: ClientRuntime.SDKRetryer

        public var credentialsProvider: AWSClientRuntime.CredentialsProvider
        public var endpoint: Swift.String?
        public var frameworkMetadata: AWSClientRuntime.FrameworkMetadata?
        public var region: Swift.String?
        public var regionResolver: AWSClientRuntime.RegionResolver?
        public var signingRegion: Swift.String?
        public var useDualStack: Swift.Bool?
        public var useFIPS: Swift.Bool?

        public var endpointResolver: EndpointResolver

        public init(
            credentialsProvider: AWSClientRuntime.CredentialsProvider? = nil,
            endpoint: Swift.String? = nil,
            endpointResolver: EndpointResolver? = nil,
            frameworkMetadata: AWSClientRuntime.FrameworkMetadata? = nil,
            region: Swift.String,
            regionResolver: AWSClientRuntime.RegionResolver? = nil,
            runtimeConfig: ClientRuntime.SDKRuntimeConfiguration,
            signingRegion: Swift.String? = nil,
            useDualStack: Swift.Bool? = nil,
            useFIPS: Swift.Bool? = nil
        ) throws {
            if let credProvider = credentialsProvider {
                self.credentialsProvider = try AWSClientRuntime.AWSCredentialsProvider.fromCustom(credProvider)
            } else {
                self.credentialsProvider = try AWSClientRuntime.AWSCredentialsProvider.fromChain()
            }
            self.endpoint = endpoint
            if let endpointResolver = endpointResolver {
                self.endpointResolver = endpointResolver
            } else {
                self.endpointResolver = try DefaultEndpointResolver()
            }
            self.frameworkMetadata = frameworkMetadata
            self.region = region
            self.regionResolver = try regionResolver ?? DefaultRegionResolver()
            self.signingRegion = signingRegion ?? region
            self.useDualStack = useDualStack
            self.useFIPS = useFIPS
            self.clientLogMode = runtimeConfig.clientLogMode
            self.decoder = runtimeConfig.decoder
            self.encoder = runtimeConfig.encoder
            self.httpClientConfiguration = runtimeConfig.httpClientConfiguration
            self.httpClientEngine = runtimeConfig.httpClientEngine
            self.idempotencyTokenGenerator = runtimeConfig.idempotencyTokenGenerator
            self.logger = runtimeConfig.logger
            self.retryer = runtimeConfig.retryer
        }

        public convenience init(
            credentialsProvider: AWSClientRuntime.CredentialsProvider? = nil,
            endpoint: Swift.String? = nil,
            endpointResolver: EndpointResolver? = nil,
            frameworkMetadata: AWSClientRuntime.FrameworkMetadata? = nil,
            region: Swift.String,
            regionResolver: AWSClientRuntime.RegionResolver? = nil,
            signingRegion: Swift.String? = nil,
            useDualStack: Swift.Bool? = nil,
            useFIPS: Swift.Bool? = nil
        ) throws {
            let runtimeConfig = try ClientRuntime.DefaultSDKRuntimeConfiguration("MediaStoreDataClient")
            try self.init(
                credentialsProvider: credentialsProvider,
                endpoint: endpoint,
                endpointResolver: endpointResolver,
                frameworkMetadata: frameworkMetadata,
                region: region,
                regionResolver: regionResolver,
                runtimeConfig: runtimeConfig,
                signingRegion: signingRegion,
                useDualStack: useDualStack,
                useFIPS: useFIPS
            )
        }

        public init(
            credentialsProvider: AWSClientRuntime.CredentialsProvider? = nil,
            endpoint: Swift.String? = nil,
            endpointResolver: EndpointResolver? = nil,
            frameworkMetadata: AWSClientRuntime.FrameworkMetadata? = nil,
            regionResolver: AWSClientRuntime.RegionResolver? = nil,
            runtimeConfig: ClientRuntime.SDKRuntimeConfiguration,
            signingRegion: Swift.String? = nil,
            useDualStack: Swift.Bool? = nil,
            useFIPS: Swift.Bool? = nil
        ) async throws {
            if let credProvider = credentialsProvider {
                self.credentialsProvider = try AWSClientRuntime.AWSCredentialsProvider.fromCustom(credProvider)
            } else {
                self.credentialsProvider = try AWSClientRuntime.AWSCredentialsProvider.fromChain()
            }
            self.endpoint = endpoint
            if let endpointResolver = endpointResolver {
                self.endpointResolver = endpointResolver
            } else {
                self.endpointResolver = try DefaultEndpointResolver()
            }
            self.frameworkMetadata = frameworkMetadata
            let resolvedRegionResolver = try regionResolver ?? DefaultRegionResolver()
            self.region = await resolvedRegionResolver.resolveRegion()
            self.regionResolver = try regionResolver ?? DefaultRegionResolver()
            self.signingRegion = signingRegion ?? region
            self.useDualStack = useDualStack
            self.useFIPS = useFIPS
            self.clientLogMode = runtimeConfig.clientLogMode
            self.decoder = runtimeConfig.decoder
            self.encoder = runtimeConfig.encoder
            self.httpClientConfiguration = runtimeConfig.httpClientConfiguration
            self.httpClientEngine = runtimeConfig.httpClientEngine
            self.idempotencyTokenGenerator = runtimeConfig.idempotencyTokenGenerator
            self.logger = runtimeConfig.logger
            self.retryer = runtimeConfig.retryer
        }

        public convenience init(
            credentialsProvider: AWSClientRuntime.CredentialsProvider? = nil,
            endpoint: Swift.String? = nil,
            endpointResolver: EndpointResolver? = nil,
            frameworkMetadata: AWSClientRuntime.FrameworkMetadata? = nil,
            regionResolver: AWSClientRuntime.RegionResolver? = nil,
            signingRegion: Swift.String? = nil,
            useDualStack: Swift.Bool? = nil,
            useFIPS: Swift.Bool? = nil
        ) async throws {
            let runtimeConfig = try ClientRuntime.DefaultSDKRuntimeConfiguration("MediaStoreDataClient")
            try await self.init(
                credentialsProvider: credentialsProvider,
                endpoint: endpoint,
                endpointResolver: endpointResolver,
                frameworkMetadata: frameworkMetadata,
                regionResolver: regionResolver,
                runtimeConfig: runtimeConfig,
                signingRegion: signingRegion,
                useDualStack: useDualStack,
                useFIPS: useFIPS
            )
        }

        public var partitionID: String? {
            return "MediaStoreDataClient - \(region ?? "")"
        }
    }
}

public struct MediaStoreDataClientLogHandlerFactory: ClientRuntime.SDKLogHandlerFactory {
    public var label = "MediaStoreDataClient"
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

extension MediaStoreDataClient: MediaStoreDataClientProtocol {
    /// Deletes an object at the specified path.
    public func deleteObject(input: DeleteObjectInput) async throws -> DeleteObjectOutputResponse
    {
        let context = ClientRuntime.HttpContextBuilder()
                      .withEncoder(value: encoder)
                      .withDecoder(value: decoder)
                      .withMethod(value: .delete)
                      .withServiceName(value: serviceName)
                      .withOperation(value: "deleteObject")
                      .withIdempotencyTokenGenerator(value: config.idempotencyTokenGenerator)
                      .withLogger(value: config.logger)
                      .withPartitionID(value: config.partitionID)
                      .withCredentialsProvider(value: config.credentialsProvider)
                      .withRegion(value: config.region)
                      .withSigningName(value: "mediastore")
                      .withSigningRegion(value: config.signingRegion)
        var operation = ClientRuntime.OperationStack<DeleteObjectInput, DeleteObjectOutputResponse, DeleteObjectOutputError>(id: "deleteObject")
        operation.initializeStep.intercept(position: .after, middleware: ClientRuntime.URLPathMiddleware<DeleteObjectInput, DeleteObjectOutputResponse, DeleteObjectOutputError>())
        operation.initializeStep.intercept(position: .after, middleware: ClientRuntime.URLHostMiddleware<DeleteObjectInput, DeleteObjectOutputResponse>())
        let endpointParams = EndpointParams(endpoint: config.endpoint, region: config.region, useDualStack: config.useDualStack ?? false, useFIPS: config.useFIPS ?? false)
        operation.buildStep.intercept(position: .before, middleware: EndpointResolverMiddleware<DeleteObjectOutputResponse, DeleteObjectOutputError>(endpointResolver: config.endpointResolver, endpointParams: endpointParams))
        let apiMetadata = AWSClientRuntime.APIMetadata(serviceId: serviceName, version: "1.0")
        operation.buildStep.intercept(position: .before, middleware: AWSClientRuntime.UserAgentMiddleware(metadata: AWSClientRuntime.AWSUserAgentMetadata.fromEnv(apiMetadata: apiMetadata, frameworkMetadata: config.frameworkMetadata)))
        operation.finalizeStep.intercept(position: .after, middleware: ClientRuntime.RetryerMiddleware<DeleteObjectOutputResponse, DeleteObjectOutputError>(retryer: config.retryer))
        let sigv4Config = AWSClientRuntime.SigV4Config(unsignedBody: false, signingAlgorithm: .sigv4)
        operation.finalizeStep.intercept(position: .before, middleware: AWSClientRuntime.SigV4Middleware<DeleteObjectOutputResponse, DeleteObjectOutputError>(config: sigv4Config))
        operation.deserializeStep.intercept(position: .before, middleware: ClientRuntime.LoggerMiddleware<DeleteObjectOutputResponse, DeleteObjectOutputError>(clientLogMode: config.clientLogMode))
        operation.deserializeStep.intercept(position: .after, middleware: ClientRuntime.DeserializeMiddleware<DeleteObjectOutputResponse, DeleteObjectOutputError>())
        let result = try await operation.handleMiddleware(context: context.build(), input: input, next: client.getHandler())
        return result
    }

    /// Gets the headers for an object at the specified path.
    public func describeObject(input: DescribeObjectInput) async throws -> DescribeObjectOutputResponse
    {
        let context = ClientRuntime.HttpContextBuilder()
                      .withEncoder(value: encoder)
                      .withDecoder(value: decoder)
                      .withMethod(value: .head)
                      .withServiceName(value: serviceName)
                      .withOperation(value: "describeObject")
                      .withIdempotencyTokenGenerator(value: config.idempotencyTokenGenerator)
                      .withLogger(value: config.logger)
                      .withPartitionID(value: config.partitionID)
                      .withCredentialsProvider(value: config.credentialsProvider)
                      .withRegion(value: config.region)
                      .withSigningName(value: "mediastore")
                      .withSigningRegion(value: config.signingRegion)
        var operation = ClientRuntime.OperationStack<DescribeObjectInput, DescribeObjectOutputResponse, DescribeObjectOutputError>(id: "describeObject")
        operation.initializeStep.intercept(position: .after, middleware: ClientRuntime.URLPathMiddleware<DescribeObjectInput, DescribeObjectOutputResponse, DescribeObjectOutputError>())
        operation.initializeStep.intercept(position: .after, middleware: ClientRuntime.URLHostMiddleware<DescribeObjectInput, DescribeObjectOutputResponse>())
        let endpointParams = EndpointParams(endpoint: config.endpoint, region: config.region, useDualStack: config.useDualStack ?? false, useFIPS: config.useFIPS ?? false)
        operation.buildStep.intercept(position: .before, middleware: EndpointResolverMiddleware<DescribeObjectOutputResponse, DescribeObjectOutputError>(endpointResolver: config.endpointResolver, endpointParams: endpointParams))
        let apiMetadata = AWSClientRuntime.APIMetadata(serviceId: serviceName, version: "1.0")
        operation.buildStep.intercept(position: .before, middleware: AWSClientRuntime.UserAgentMiddleware(metadata: AWSClientRuntime.AWSUserAgentMetadata.fromEnv(apiMetadata: apiMetadata, frameworkMetadata: config.frameworkMetadata)))
        operation.finalizeStep.intercept(position: .after, middleware: ClientRuntime.RetryerMiddleware<DescribeObjectOutputResponse, DescribeObjectOutputError>(retryer: config.retryer))
        let sigv4Config = AWSClientRuntime.SigV4Config(unsignedBody: false, signingAlgorithm: .sigv4)
        operation.finalizeStep.intercept(position: .before, middleware: AWSClientRuntime.SigV4Middleware<DescribeObjectOutputResponse, DescribeObjectOutputError>(config: sigv4Config))
        operation.deserializeStep.intercept(position: .before, middleware: ClientRuntime.LoggerMiddleware<DescribeObjectOutputResponse, DescribeObjectOutputError>(clientLogMode: config.clientLogMode))
        operation.deserializeStep.intercept(position: .after, middleware: ClientRuntime.DeserializeMiddleware<DescribeObjectOutputResponse, DescribeObjectOutputError>())
        let result = try await operation.handleMiddleware(context: context.build(), input: input, next: client.getHandler())
        return result
    }

    /// Downloads the object at the specified path. If the object’s upload availability is set to streaming, AWS Elemental MediaStore downloads the object even if it’s still uploading the object.
    public func getObject(input: GetObjectInput) async throws -> GetObjectOutputResponse
    {
        let context = ClientRuntime.HttpContextBuilder()
                      .withEncoder(value: encoder)
                      .withDecoder(value: decoder)
                      .withMethod(value: .get)
                      .withServiceName(value: serviceName)
                      .withOperation(value: "getObject")
                      .withIdempotencyTokenGenerator(value: config.idempotencyTokenGenerator)
                      .withLogger(value: config.logger)
                      .withPartitionID(value: config.partitionID)
                      .withCredentialsProvider(value: config.credentialsProvider)
                      .withRegion(value: config.region)
                      .withSigningName(value: "mediastore")
                      .withSigningRegion(value: config.signingRegion)
        var operation = ClientRuntime.OperationStack<GetObjectInput, GetObjectOutputResponse, GetObjectOutputError>(id: "getObject")
        operation.initializeStep.intercept(position: .after, middleware: ClientRuntime.URLPathMiddleware<GetObjectInput, GetObjectOutputResponse, GetObjectOutputError>())
        operation.initializeStep.intercept(position: .after, middleware: ClientRuntime.URLHostMiddleware<GetObjectInput, GetObjectOutputResponse>())
        let endpointParams = EndpointParams(endpoint: config.endpoint, region: config.region, useDualStack: config.useDualStack ?? false, useFIPS: config.useFIPS ?? false)
        operation.buildStep.intercept(position: .before, middleware: EndpointResolverMiddleware<GetObjectOutputResponse, GetObjectOutputError>(endpointResolver: config.endpointResolver, endpointParams: endpointParams))
        let apiMetadata = AWSClientRuntime.APIMetadata(serviceId: serviceName, version: "1.0")
        operation.buildStep.intercept(position: .before, middleware: AWSClientRuntime.UserAgentMiddleware(metadata: AWSClientRuntime.AWSUserAgentMetadata.fromEnv(apiMetadata: apiMetadata, frameworkMetadata: config.frameworkMetadata)))
        operation.serializeStep.intercept(position: .after, middleware: ClientRuntime.HeaderMiddleware<GetObjectInput, GetObjectOutputResponse>())
        operation.finalizeStep.intercept(position: .after, middleware: ClientRuntime.RetryerMiddleware<GetObjectOutputResponse, GetObjectOutputError>(retryer: config.retryer))
        let sigv4Config = AWSClientRuntime.SigV4Config(unsignedBody: false, signingAlgorithm: .sigv4)
        operation.finalizeStep.intercept(position: .before, middleware: AWSClientRuntime.SigV4Middleware<GetObjectOutputResponse, GetObjectOutputError>(config: sigv4Config))
        operation.deserializeStep.intercept(position: .before, middleware: ClientRuntime.LoggerMiddleware<GetObjectOutputResponse, GetObjectOutputError>(clientLogMode: config.clientLogMode))
        operation.deserializeStep.intercept(position: .after, middleware: ClientRuntime.DeserializeMiddleware<GetObjectOutputResponse, GetObjectOutputError>())
        let result = try await operation.handleMiddleware(context: context.build(), input: input, next: client.getHandler())
        return result
    }

    /// Provides a list of metadata entries about folders and objects in the specified folder.
    public func listItems(input: ListItemsInput) async throws -> ListItemsOutputResponse
    {
        let context = ClientRuntime.HttpContextBuilder()
                      .withEncoder(value: encoder)
                      .withDecoder(value: decoder)
                      .withMethod(value: .get)
                      .withServiceName(value: serviceName)
                      .withOperation(value: "listItems")
                      .withIdempotencyTokenGenerator(value: config.idempotencyTokenGenerator)
                      .withLogger(value: config.logger)
                      .withPartitionID(value: config.partitionID)
                      .withCredentialsProvider(value: config.credentialsProvider)
                      .withRegion(value: config.region)
                      .withSigningName(value: "mediastore")
                      .withSigningRegion(value: config.signingRegion)
        var operation = ClientRuntime.OperationStack<ListItemsInput, ListItemsOutputResponse, ListItemsOutputError>(id: "listItems")
        operation.initializeStep.intercept(position: .after, middleware: ClientRuntime.URLPathMiddleware<ListItemsInput, ListItemsOutputResponse, ListItemsOutputError>())
        operation.initializeStep.intercept(position: .after, middleware: ClientRuntime.URLHostMiddleware<ListItemsInput, ListItemsOutputResponse>())
        let endpointParams = EndpointParams(endpoint: config.endpoint, region: config.region, useDualStack: config.useDualStack ?? false, useFIPS: config.useFIPS ?? false)
        operation.buildStep.intercept(position: .before, middleware: EndpointResolverMiddleware<ListItemsOutputResponse, ListItemsOutputError>(endpointResolver: config.endpointResolver, endpointParams: endpointParams))
        let apiMetadata = AWSClientRuntime.APIMetadata(serviceId: serviceName, version: "1.0")
        operation.buildStep.intercept(position: .before, middleware: AWSClientRuntime.UserAgentMiddleware(metadata: AWSClientRuntime.AWSUserAgentMetadata.fromEnv(apiMetadata: apiMetadata, frameworkMetadata: config.frameworkMetadata)))
        operation.serializeStep.intercept(position: .after, middleware: ClientRuntime.QueryItemMiddleware<ListItemsInput, ListItemsOutputResponse>())
        operation.finalizeStep.intercept(position: .after, middleware: ClientRuntime.RetryerMiddleware<ListItemsOutputResponse, ListItemsOutputError>(retryer: config.retryer))
        let sigv4Config = AWSClientRuntime.SigV4Config(unsignedBody: false, signingAlgorithm: .sigv4)
        operation.finalizeStep.intercept(position: .before, middleware: AWSClientRuntime.SigV4Middleware<ListItemsOutputResponse, ListItemsOutputError>(config: sigv4Config))
        operation.deserializeStep.intercept(position: .before, middleware: ClientRuntime.LoggerMiddleware<ListItemsOutputResponse, ListItemsOutputError>(clientLogMode: config.clientLogMode))
        operation.deserializeStep.intercept(position: .after, middleware: ClientRuntime.DeserializeMiddleware<ListItemsOutputResponse, ListItemsOutputError>())
        let result = try await operation.handleMiddleware(context: context.build(), input: input, next: client.getHandler())
        return result
    }

    /// Uploads an object to the specified path. Object sizes are limited to 25 MB for standard upload availability and 10 MB for streaming upload availability.
    public func putObject(input: PutObjectInput) async throws -> PutObjectOutputResponse
    {
        let context = ClientRuntime.HttpContextBuilder()
                      .withEncoder(value: encoder)
                      .withDecoder(value: decoder)
                      .withMethod(value: .put)
                      .withServiceName(value: serviceName)
                      .withOperation(value: "putObject")
                      .withIdempotencyTokenGenerator(value: config.idempotencyTokenGenerator)
                      .withLogger(value: config.logger)
                      .withPartitionID(value: config.partitionID)
                      .withCredentialsProvider(value: config.credentialsProvider)
                      .withRegion(value: config.region)
                      .withSigningName(value: "mediastore")
                      .withSigningRegion(value: config.signingRegion)
        var operation = ClientRuntime.OperationStack<PutObjectInput, PutObjectOutputResponse, PutObjectOutputError>(id: "putObject")
        operation.initializeStep.intercept(position: .after, middleware: ClientRuntime.URLPathMiddleware<PutObjectInput, PutObjectOutputResponse, PutObjectOutputError>())
        operation.initializeStep.intercept(position: .after, middleware: ClientRuntime.URLHostMiddleware<PutObjectInput, PutObjectOutputResponse>())
        let endpointParams = EndpointParams(endpoint: config.endpoint, region: config.region, useDualStack: config.useDualStack ?? false, useFIPS: config.useFIPS ?? false)
        operation.buildStep.intercept(position: .before, middleware: EndpointResolverMiddleware<PutObjectOutputResponse, PutObjectOutputError>(endpointResolver: config.endpointResolver, endpointParams: endpointParams))
        let apiMetadata = AWSClientRuntime.APIMetadata(serviceId: serviceName, version: "1.0")
        operation.buildStep.intercept(position: .before, middleware: AWSClientRuntime.UserAgentMiddleware(metadata: AWSClientRuntime.AWSUserAgentMetadata.fromEnv(apiMetadata: apiMetadata, frameworkMetadata: config.frameworkMetadata)))
        operation.serializeStep.intercept(position: .after, middleware: ClientRuntime.HeaderMiddleware<PutObjectInput, PutObjectOutputResponse>())
        operation.serializeStep.intercept(position: .after, middleware: ContentTypeMiddleware<PutObjectInput, PutObjectOutputResponse>(contentType: "application/octet-stream"))
        operation.serializeStep.intercept(position: .after, middleware: PutObjectInputBodyMiddleware())
        operation.finalizeStep.intercept(position: .before, middleware: ClientRuntime.ContentLengthMiddleware())
        operation.finalizeStep.intercept(position: .after, middleware: ClientRuntime.RetryerMiddleware<PutObjectOutputResponse, PutObjectOutputError>(retryer: config.retryer))
        let sigv4Config = AWSClientRuntime.SigV4Config(unsignedBody: true, signingAlgorithm: .sigv4)
        operation.finalizeStep.intercept(position: .before, middleware: AWSClientRuntime.SigV4Middleware<PutObjectOutputResponse, PutObjectOutputError>(config: sigv4Config))
        operation.deserializeStep.intercept(position: .before, middleware: ClientRuntime.LoggerMiddleware<PutObjectOutputResponse, PutObjectOutputError>(clientLogMode: config.clientLogMode))
        operation.deserializeStep.intercept(position: .after, middleware: ClientRuntime.DeserializeMiddleware<PutObjectOutputResponse, PutObjectOutputError>())
        let result = try await operation.handleMiddleware(context: context.build(), input: input, next: client.getHandler())
        return result
    }

}