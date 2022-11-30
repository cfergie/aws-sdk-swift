// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime


/// Paginate over `[ListClientDevicesAssociatedWithCoreDeviceOutputResponse]` results.
///
/// When this operation is called, an `AsyncSequence` is created. AsyncSequences are lazy so no service
/// calls are made until the sequence is iterated over. This also means there is no guarantee that the request is valid
/// until then. If there are errors in your request, you will see the failures only after you start iterating.
/// - Parameters:
///     - input: A `[ListClientDevicesAssociatedWithCoreDeviceInput]` to start pagination
/// - Returns: An `AsyncSequence` that can iterate over `ListClientDevicesAssociatedWithCoreDeviceOutputResponse`
extension GreengrassV2Client {
    public func listClientDevicesAssociatedWithCoreDevicePaginated(input: ListClientDevicesAssociatedWithCoreDeviceInput) -> ClientRuntime.PaginatorSequence<ListClientDevicesAssociatedWithCoreDeviceInput, ListClientDevicesAssociatedWithCoreDeviceOutputResponse> {
        return ClientRuntime.PaginatorSequence<ListClientDevicesAssociatedWithCoreDeviceInput, ListClientDevicesAssociatedWithCoreDeviceOutputResponse>(input: input, inputKey: \ListClientDevicesAssociatedWithCoreDeviceInput.nextToken, outputKey: \ListClientDevicesAssociatedWithCoreDeviceOutputResponse.nextToken, paginationFunction: self.listClientDevicesAssociatedWithCoreDevice(input:))
    }
}

extension ListClientDevicesAssociatedWithCoreDeviceInput: ClientRuntime.PaginateToken {
    public func usingPaginationToken(_ token: Swift.String) -> ListClientDevicesAssociatedWithCoreDeviceInput {
        return ListClientDevicesAssociatedWithCoreDeviceInput(
            coreDeviceThingName: self.coreDeviceThingName,
            maxResults: self.maxResults,
            nextToken: token
        )}
}

/// This paginator transforms the `AsyncSequence` returned by `listClientDevicesAssociatedWithCoreDevicePaginated`
/// to access the nested member `[GreengrassV2ClientTypes.AssociatedClientDevice]`
/// - Returns: `[GreengrassV2ClientTypes.AssociatedClientDevice]`
extension PaginatorSequence where Input == ListClientDevicesAssociatedWithCoreDeviceInput, Output == ListClientDevicesAssociatedWithCoreDeviceOutputResponse {
    public func associatedClientDevices() async throws -> [GreengrassV2ClientTypes.AssociatedClientDevice] {
        return try await self.asyncCompactMap { item in item.associatedClientDevices }
    }
}

/// Paginate over `[ListComponentsOutputResponse]` results.
///
/// When this operation is called, an `AsyncSequence` is created. AsyncSequences are lazy so no service
/// calls are made until the sequence is iterated over. This also means there is no guarantee that the request is valid
/// until then. If there are errors in your request, you will see the failures only after you start iterating.
/// - Parameters:
///     - input: A `[ListComponentsInput]` to start pagination
/// - Returns: An `AsyncSequence` that can iterate over `ListComponentsOutputResponse`
extension GreengrassV2Client {
    public func listComponentsPaginated(input: ListComponentsInput) -> ClientRuntime.PaginatorSequence<ListComponentsInput, ListComponentsOutputResponse> {
        return ClientRuntime.PaginatorSequence<ListComponentsInput, ListComponentsOutputResponse>(input: input, inputKey: \ListComponentsInput.nextToken, outputKey: \ListComponentsOutputResponse.nextToken, paginationFunction: self.listComponents(input:))
    }
}

extension ListComponentsInput: ClientRuntime.PaginateToken {
    public func usingPaginationToken(_ token: Swift.String) -> ListComponentsInput {
        return ListComponentsInput(
            maxResults: self.maxResults,
            nextToken: token,
            scope: self.scope
        )}
}

/// This paginator transforms the `AsyncSequence` returned by `listComponentsPaginated`
/// to access the nested member `[GreengrassV2ClientTypes.Component]`
/// - Returns: `[GreengrassV2ClientTypes.Component]`
extension PaginatorSequence where Input == ListComponentsInput, Output == ListComponentsOutputResponse {
    public func components() async throws -> [GreengrassV2ClientTypes.Component] {
        return try await self.asyncCompactMap { item in item.components }
    }
}

/// Paginate over `[ListComponentVersionsOutputResponse]` results.
///
/// When this operation is called, an `AsyncSequence` is created. AsyncSequences are lazy so no service
/// calls are made until the sequence is iterated over. This also means there is no guarantee that the request is valid
/// until then. If there are errors in your request, you will see the failures only after you start iterating.
/// - Parameters:
///     - input: A `[ListComponentVersionsInput]` to start pagination
/// - Returns: An `AsyncSequence` that can iterate over `ListComponentVersionsOutputResponse`
extension GreengrassV2Client {
    public func listComponentVersionsPaginated(input: ListComponentVersionsInput) -> ClientRuntime.PaginatorSequence<ListComponentVersionsInput, ListComponentVersionsOutputResponse> {
        return ClientRuntime.PaginatorSequence<ListComponentVersionsInput, ListComponentVersionsOutputResponse>(input: input, inputKey: \ListComponentVersionsInput.nextToken, outputKey: \ListComponentVersionsOutputResponse.nextToken, paginationFunction: self.listComponentVersions(input:))
    }
}

extension ListComponentVersionsInput: ClientRuntime.PaginateToken {
    public func usingPaginationToken(_ token: Swift.String) -> ListComponentVersionsInput {
        return ListComponentVersionsInput(
            arn: self.arn,
            maxResults: self.maxResults,
            nextToken: token
        )}
}

/// This paginator transforms the `AsyncSequence` returned by `listComponentVersionsPaginated`
/// to access the nested member `[GreengrassV2ClientTypes.ComponentVersionListItem]`
/// - Returns: `[GreengrassV2ClientTypes.ComponentVersionListItem]`
extension PaginatorSequence where Input == ListComponentVersionsInput, Output == ListComponentVersionsOutputResponse {
    public func componentVersions() async throws -> [GreengrassV2ClientTypes.ComponentVersionListItem] {
        return try await self.asyncCompactMap { item in item.componentVersions }
    }
}

/// Paginate over `[ListCoreDevicesOutputResponse]` results.
///
/// When this operation is called, an `AsyncSequence` is created. AsyncSequences are lazy so no service
/// calls are made until the sequence is iterated over. This also means there is no guarantee that the request is valid
/// until then. If there are errors in your request, you will see the failures only after you start iterating.
/// - Parameters:
///     - input: A `[ListCoreDevicesInput]` to start pagination
/// - Returns: An `AsyncSequence` that can iterate over `ListCoreDevicesOutputResponse`
extension GreengrassV2Client {
    public func listCoreDevicesPaginated(input: ListCoreDevicesInput) -> ClientRuntime.PaginatorSequence<ListCoreDevicesInput, ListCoreDevicesOutputResponse> {
        return ClientRuntime.PaginatorSequence<ListCoreDevicesInput, ListCoreDevicesOutputResponse>(input: input, inputKey: \ListCoreDevicesInput.nextToken, outputKey: \ListCoreDevicesOutputResponse.nextToken, paginationFunction: self.listCoreDevices(input:))
    }
}

extension ListCoreDevicesInput: ClientRuntime.PaginateToken {
    public func usingPaginationToken(_ token: Swift.String) -> ListCoreDevicesInput {
        return ListCoreDevicesInput(
            maxResults: self.maxResults,
            nextToken: token,
            status: self.status,
            thingGroupArn: self.thingGroupArn
        )}
}

/// This paginator transforms the `AsyncSequence` returned by `listCoreDevicesPaginated`
/// to access the nested member `[GreengrassV2ClientTypes.CoreDevice]`
/// - Returns: `[GreengrassV2ClientTypes.CoreDevice]`
extension PaginatorSequence where Input == ListCoreDevicesInput, Output == ListCoreDevicesOutputResponse {
    public func coreDevices() async throws -> [GreengrassV2ClientTypes.CoreDevice] {
        return try await self.asyncCompactMap { item in item.coreDevices }
    }
}

/// Paginate over `[ListDeploymentsOutputResponse]` results.
///
/// When this operation is called, an `AsyncSequence` is created. AsyncSequences are lazy so no service
/// calls are made until the sequence is iterated over. This also means there is no guarantee that the request is valid
/// until then. If there are errors in your request, you will see the failures only after you start iterating.
/// - Parameters:
///     - input: A `[ListDeploymentsInput]` to start pagination
/// - Returns: An `AsyncSequence` that can iterate over `ListDeploymentsOutputResponse`
extension GreengrassV2Client {
    public func listDeploymentsPaginated(input: ListDeploymentsInput) -> ClientRuntime.PaginatorSequence<ListDeploymentsInput, ListDeploymentsOutputResponse> {
        return ClientRuntime.PaginatorSequence<ListDeploymentsInput, ListDeploymentsOutputResponse>(input: input, inputKey: \ListDeploymentsInput.nextToken, outputKey: \ListDeploymentsOutputResponse.nextToken, paginationFunction: self.listDeployments(input:))
    }
}

extension ListDeploymentsInput: ClientRuntime.PaginateToken {
    public func usingPaginationToken(_ token: Swift.String) -> ListDeploymentsInput {
        return ListDeploymentsInput(
            historyFilter: self.historyFilter,
            maxResults: self.maxResults,
            nextToken: token,
            targetArn: self.targetArn
        )}
}

/// This paginator transforms the `AsyncSequence` returned by `listDeploymentsPaginated`
/// to access the nested member `[GreengrassV2ClientTypes.Deployment]`
/// - Returns: `[GreengrassV2ClientTypes.Deployment]`
extension PaginatorSequence where Input == ListDeploymentsInput, Output == ListDeploymentsOutputResponse {
    public func deployments() async throws -> [GreengrassV2ClientTypes.Deployment] {
        return try await self.asyncCompactMap { item in item.deployments }
    }
}

/// Paginate over `[ListEffectiveDeploymentsOutputResponse]` results.
///
/// When this operation is called, an `AsyncSequence` is created. AsyncSequences are lazy so no service
/// calls are made until the sequence is iterated over. This also means there is no guarantee that the request is valid
/// until then. If there are errors in your request, you will see the failures only after you start iterating.
/// - Parameters:
///     - input: A `[ListEffectiveDeploymentsInput]` to start pagination
/// - Returns: An `AsyncSequence` that can iterate over `ListEffectiveDeploymentsOutputResponse`
extension GreengrassV2Client {
    public func listEffectiveDeploymentsPaginated(input: ListEffectiveDeploymentsInput) -> ClientRuntime.PaginatorSequence<ListEffectiveDeploymentsInput, ListEffectiveDeploymentsOutputResponse> {
        return ClientRuntime.PaginatorSequence<ListEffectiveDeploymentsInput, ListEffectiveDeploymentsOutputResponse>(input: input, inputKey: \ListEffectiveDeploymentsInput.nextToken, outputKey: \ListEffectiveDeploymentsOutputResponse.nextToken, paginationFunction: self.listEffectiveDeployments(input:))
    }
}

extension ListEffectiveDeploymentsInput: ClientRuntime.PaginateToken {
    public func usingPaginationToken(_ token: Swift.String) -> ListEffectiveDeploymentsInput {
        return ListEffectiveDeploymentsInput(
            coreDeviceThingName: self.coreDeviceThingName,
            maxResults: self.maxResults,
            nextToken: token
        )}
}

/// This paginator transforms the `AsyncSequence` returned by `listEffectiveDeploymentsPaginated`
/// to access the nested member `[GreengrassV2ClientTypes.EffectiveDeployment]`
/// - Returns: `[GreengrassV2ClientTypes.EffectiveDeployment]`
extension PaginatorSequence where Input == ListEffectiveDeploymentsInput, Output == ListEffectiveDeploymentsOutputResponse {
    public func effectiveDeployments() async throws -> [GreengrassV2ClientTypes.EffectiveDeployment] {
        return try await self.asyncCompactMap { item in item.effectiveDeployments }
    }
}

/// Paginate over `[ListInstalledComponentsOutputResponse]` results.
///
/// When this operation is called, an `AsyncSequence` is created. AsyncSequences are lazy so no service
/// calls are made until the sequence is iterated over. This also means there is no guarantee that the request is valid
/// until then. If there are errors in your request, you will see the failures only after you start iterating.
/// - Parameters:
///     - input: A `[ListInstalledComponentsInput]` to start pagination
/// - Returns: An `AsyncSequence` that can iterate over `ListInstalledComponentsOutputResponse`
extension GreengrassV2Client {
    public func listInstalledComponentsPaginated(input: ListInstalledComponentsInput) -> ClientRuntime.PaginatorSequence<ListInstalledComponentsInput, ListInstalledComponentsOutputResponse> {
        return ClientRuntime.PaginatorSequence<ListInstalledComponentsInput, ListInstalledComponentsOutputResponse>(input: input, inputKey: \ListInstalledComponentsInput.nextToken, outputKey: \ListInstalledComponentsOutputResponse.nextToken, paginationFunction: self.listInstalledComponents(input:))
    }
}

extension ListInstalledComponentsInput: ClientRuntime.PaginateToken {
    public func usingPaginationToken(_ token: Swift.String) -> ListInstalledComponentsInput {
        return ListInstalledComponentsInput(
            coreDeviceThingName: self.coreDeviceThingName,
            maxResults: self.maxResults,
            nextToken: token,
            topologyFilter: self.topologyFilter
        )}
}

/// This paginator transforms the `AsyncSequence` returned by `listInstalledComponentsPaginated`
/// to access the nested member `[GreengrassV2ClientTypes.InstalledComponent]`
/// - Returns: `[GreengrassV2ClientTypes.InstalledComponent]`
extension PaginatorSequence where Input == ListInstalledComponentsInput, Output == ListInstalledComponentsOutputResponse {
    public func installedComponents() async throws -> [GreengrassV2ClientTypes.InstalledComponent] {
        return try await self.asyncCompactMap { item in item.installedComponents }
    }
}