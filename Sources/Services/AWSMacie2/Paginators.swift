// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

extension Macie2Client {
    /// Paginate over `[DescribeBucketsOutput]` results.
    ///
    /// When this operation is called, an `AsyncSequence` is created. AsyncSequences are lazy so no service
    /// calls are made until the sequence is iterated over. This also means there is no guarantee that the request is valid
    /// until then. If there are errors in your request, you will see the failures only after you start iterating.
    /// - Parameters:
    ///     - input: A `[DescribeBucketsInput]` to start pagination
    /// - Returns: An `AsyncSequence` that can iterate over `DescribeBucketsOutput`
    public func describeBucketsPaginated(input: DescribeBucketsInput) -> ClientRuntime.PaginatorSequence<DescribeBucketsInput, DescribeBucketsOutput> {
        return ClientRuntime.PaginatorSequence<DescribeBucketsInput, DescribeBucketsOutput>(input: input, inputKey: \.nextToken, outputKey: \.nextToken, paginationFunction: self.describeBuckets(input:))
    }
}

extension DescribeBucketsInput: ClientRuntime.PaginateToken {
    public func usingPaginationToken(_ token: Swift.String) -> DescribeBucketsInput {
        return DescribeBucketsInput(
            criteria: self.criteria,
            maxResults: self.maxResults,
            nextToken: token,
            sortCriteria: self.sortCriteria
        )}
}

extension PaginatorSequence where OperationStackInput == DescribeBucketsInput, OperationStackOutput == DescribeBucketsOutput {
    /// This paginator transforms the `AsyncSequence` returned by `describeBucketsPaginated`
    /// to access the nested member `[Macie2ClientTypes.BucketMetadata]`
    /// - Returns: `[Macie2ClientTypes.BucketMetadata]`
    public func buckets() async throws -> [Macie2ClientTypes.BucketMetadata] {
        return try await self.asyncCompactMap { item in item.buckets }
    }
}
extension Macie2Client {
    /// Paginate over `[GetUsageStatisticsOutput]` results.
    ///
    /// When this operation is called, an `AsyncSequence` is created. AsyncSequences are lazy so no service
    /// calls are made until the sequence is iterated over. This also means there is no guarantee that the request is valid
    /// until then. If there are errors in your request, you will see the failures only after you start iterating.
    /// - Parameters:
    ///     - input: A `[GetUsageStatisticsInput]` to start pagination
    /// - Returns: An `AsyncSequence` that can iterate over `GetUsageStatisticsOutput`
    public func getUsageStatisticsPaginated(input: GetUsageStatisticsInput) -> ClientRuntime.PaginatorSequence<GetUsageStatisticsInput, GetUsageStatisticsOutput> {
        return ClientRuntime.PaginatorSequence<GetUsageStatisticsInput, GetUsageStatisticsOutput>(input: input, inputKey: \.nextToken, outputKey: \.nextToken, paginationFunction: self.getUsageStatistics(input:))
    }
}

extension GetUsageStatisticsInput: ClientRuntime.PaginateToken {
    public func usingPaginationToken(_ token: Swift.String) -> GetUsageStatisticsInput {
        return GetUsageStatisticsInput(
            filterBy: self.filterBy,
            maxResults: self.maxResults,
            nextToken: token,
            sortBy: self.sortBy,
            timeRange: self.timeRange
        )}
}

extension PaginatorSequence where OperationStackInput == GetUsageStatisticsInput, OperationStackOutput == GetUsageStatisticsOutput {
    /// This paginator transforms the `AsyncSequence` returned by `getUsageStatisticsPaginated`
    /// to access the nested member `[Macie2ClientTypes.UsageRecord]`
    /// - Returns: `[Macie2ClientTypes.UsageRecord]`
    public func records() async throws -> [Macie2ClientTypes.UsageRecord] {
        return try await self.asyncCompactMap { item in item.records }
    }
}
extension Macie2Client {
    /// Paginate over `[ListAllowListsOutput]` results.
    ///
    /// When this operation is called, an `AsyncSequence` is created. AsyncSequences are lazy so no service
    /// calls are made until the sequence is iterated over. This also means there is no guarantee that the request is valid
    /// until then. If there are errors in your request, you will see the failures only after you start iterating.
    /// - Parameters:
    ///     - input: A `[ListAllowListsInput]` to start pagination
    /// - Returns: An `AsyncSequence` that can iterate over `ListAllowListsOutput`
    public func listAllowListsPaginated(input: ListAllowListsInput) -> ClientRuntime.PaginatorSequence<ListAllowListsInput, ListAllowListsOutput> {
        return ClientRuntime.PaginatorSequence<ListAllowListsInput, ListAllowListsOutput>(input: input, inputKey: \.nextToken, outputKey: \.nextToken, paginationFunction: self.listAllowLists(input:))
    }
}

extension ListAllowListsInput: ClientRuntime.PaginateToken {
    public func usingPaginationToken(_ token: Swift.String) -> ListAllowListsInput {
        return ListAllowListsInput(
            maxResults: self.maxResults,
            nextToken: token
        )}
}

extension PaginatorSequence where OperationStackInput == ListAllowListsInput, OperationStackOutput == ListAllowListsOutput {
    /// This paginator transforms the `AsyncSequence` returned by `listAllowListsPaginated`
    /// to access the nested member `[Macie2ClientTypes.AllowListSummary]`
    /// - Returns: `[Macie2ClientTypes.AllowListSummary]`
    public func allowLists() async throws -> [Macie2ClientTypes.AllowListSummary] {
        return try await self.asyncCompactMap { item in item.allowLists }
    }
}
extension Macie2Client {
    /// Paginate over `[ListClassificationJobsOutput]` results.
    ///
    /// When this operation is called, an `AsyncSequence` is created. AsyncSequences are lazy so no service
    /// calls are made until the sequence is iterated over. This also means there is no guarantee that the request is valid
    /// until then. If there are errors in your request, you will see the failures only after you start iterating.
    /// - Parameters:
    ///     - input: A `[ListClassificationJobsInput]` to start pagination
    /// - Returns: An `AsyncSequence` that can iterate over `ListClassificationJobsOutput`
    public func listClassificationJobsPaginated(input: ListClassificationJobsInput) -> ClientRuntime.PaginatorSequence<ListClassificationJobsInput, ListClassificationJobsOutput> {
        return ClientRuntime.PaginatorSequence<ListClassificationJobsInput, ListClassificationJobsOutput>(input: input, inputKey: \.nextToken, outputKey: \.nextToken, paginationFunction: self.listClassificationJobs(input:))
    }
}

extension ListClassificationJobsInput: ClientRuntime.PaginateToken {
    public func usingPaginationToken(_ token: Swift.String) -> ListClassificationJobsInput {
        return ListClassificationJobsInput(
            filterCriteria: self.filterCriteria,
            maxResults: self.maxResults,
            nextToken: token,
            sortCriteria: self.sortCriteria
        )}
}

extension PaginatorSequence where OperationStackInput == ListClassificationJobsInput, OperationStackOutput == ListClassificationJobsOutput {
    /// This paginator transforms the `AsyncSequence` returned by `listClassificationJobsPaginated`
    /// to access the nested member `[Macie2ClientTypes.JobSummary]`
    /// - Returns: `[Macie2ClientTypes.JobSummary]`
    public func items() async throws -> [Macie2ClientTypes.JobSummary] {
        return try await self.asyncCompactMap { item in item.items }
    }
}
extension Macie2Client {
    /// Paginate over `[ListClassificationScopesOutput]` results.
    ///
    /// When this operation is called, an `AsyncSequence` is created. AsyncSequences are lazy so no service
    /// calls are made until the sequence is iterated over. This also means there is no guarantee that the request is valid
    /// until then. If there are errors in your request, you will see the failures only after you start iterating.
    /// - Parameters:
    ///     - input: A `[ListClassificationScopesInput]` to start pagination
    /// - Returns: An `AsyncSequence` that can iterate over `ListClassificationScopesOutput`
    public func listClassificationScopesPaginated(input: ListClassificationScopesInput) -> ClientRuntime.PaginatorSequence<ListClassificationScopesInput, ListClassificationScopesOutput> {
        return ClientRuntime.PaginatorSequence<ListClassificationScopesInput, ListClassificationScopesOutput>(input: input, inputKey: \.nextToken, outputKey: \.nextToken, paginationFunction: self.listClassificationScopes(input:))
    }
}

extension ListClassificationScopesInput: ClientRuntime.PaginateToken {
    public func usingPaginationToken(_ token: Swift.String) -> ListClassificationScopesInput {
        return ListClassificationScopesInput(
            name: self.name,
            nextToken: token
        )}
}

extension PaginatorSequence where OperationStackInput == ListClassificationScopesInput, OperationStackOutput == ListClassificationScopesOutput {
    /// This paginator transforms the `AsyncSequence` returned by `listClassificationScopesPaginated`
    /// to access the nested member `[Macie2ClientTypes.ClassificationScopeSummary]`
    /// - Returns: `[Macie2ClientTypes.ClassificationScopeSummary]`
    public func classificationScopes() async throws -> [Macie2ClientTypes.ClassificationScopeSummary] {
        return try await self.asyncCompactMap { item in item.classificationScopes }
    }
}
extension Macie2Client {
    /// Paginate over `[ListCustomDataIdentifiersOutput]` results.
    ///
    /// When this operation is called, an `AsyncSequence` is created. AsyncSequences are lazy so no service
    /// calls are made until the sequence is iterated over. This also means there is no guarantee that the request is valid
    /// until then. If there are errors in your request, you will see the failures only after you start iterating.
    /// - Parameters:
    ///     - input: A `[ListCustomDataIdentifiersInput]` to start pagination
    /// - Returns: An `AsyncSequence` that can iterate over `ListCustomDataIdentifiersOutput`
    public func listCustomDataIdentifiersPaginated(input: ListCustomDataIdentifiersInput) -> ClientRuntime.PaginatorSequence<ListCustomDataIdentifiersInput, ListCustomDataIdentifiersOutput> {
        return ClientRuntime.PaginatorSequence<ListCustomDataIdentifiersInput, ListCustomDataIdentifiersOutput>(input: input, inputKey: \.nextToken, outputKey: \.nextToken, paginationFunction: self.listCustomDataIdentifiers(input:))
    }
}

extension ListCustomDataIdentifiersInput: ClientRuntime.PaginateToken {
    public func usingPaginationToken(_ token: Swift.String) -> ListCustomDataIdentifiersInput {
        return ListCustomDataIdentifiersInput(
            maxResults: self.maxResults,
            nextToken: token
        )}
}

extension PaginatorSequence where OperationStackInput == ListCustomDataIdentifiersInput, OperationStackOutput == ListCustomDataIdentifiersOutput {
    /// This paginator transforms the `AsyncSequence` returned by `listCustomDataIdentifiersPaginated`
    /// to access the nested member `[Macie2ClientTypes.CustomDataIdentifierSummary]`
    /// - Returns: `[Macie2ClientTypes.CustomDataIdentifierSummary]`
    public func items() async throws -> [Macie2ClientTypes.CustomDataIdentifierSummary] {
        return try await self.asyncCompactMap { item in item.items }
    }
}
extension Macie2Client {
    /// Paginate over `[ListFindingsOutput]` results.
    ///
    /// When this operation is called, an `AsyncSequence` is created. AsyncSequences are lazy so no service
    /// calls are made until the sequence is iterated over. This also means there is no guarantee that the request is valid
    /// until then. If there are errors in your request, you will see the failures only after you start iterating.
    /// - Parameters:
    ///     - input: A `[ListFindingsInput]` to start pagination
    /// - Returns: An `AsyncSequence` that can iterate over `ListFindingsOutput`
    public func listFindingsPaginated(input: ListFindingsInput) -> ClientRuntime.PaginatorSequence<ListFindingsInput, ListFindingsOutput> {
        return ClientRuntime.PaginatorSequence<ListFindingsInput, ListFindingsOutput>(input: input, inputKey: \.nextToken, outputKey: \.nextToken, paginationFunction: self.listFindings(input:))
    }
}

extension ListFindingsInput: ClientRuntime.PaginateToken {
    public func usingPaginationToken(_ token: Swift.String) -> ListFindingsInput {
        return ListFindingsInput(
            findingCriteria: self.findingCriteria,
            maxResults: self.maxResults,
            nextToken: token,
            sortCriteria: self.sortCriteria
        )}
}

extension PaginatorSequence where OperationStackInput == ListFindingsInput, OperationStackOutput == ListFindingsOutput {
    /// This paginator transforms the `AsyncSequence` returned by `listFindingsPaginated`
    /// to access the nested member `[Swift.String]`
    /// - Returns: `[Swift.String]`
    public func findingIds() async throws -> [Swift.String] {
        return try await self.asyncCompactMap { item in item.findingIds }
    }
}
extension Macie2Client {
    /// Paginate over `[ListFindingsFiltersOutput]` results.
    ///
    /// When this operation is called, an `AsyncSequence` is created. AsyncSequences are lazy so no service
    /// calls are made until the sequence is iterated over. This also means there is no guarantee that the request is valid
    /// until then. If there are errors in your request, you will see the failures only after you start iterating.
    /// - Parameters:
    ///     - input: A `[ListFindingsFiltersInput]` to start pagination
    /// - Returns: An `AsyncSequence` that can iterate over `ListFindingsFiltersOutput`
    public func listFindingsFiltersPaginated(input: ListFindingsFiltersInput) -> ClientRuntime.PaginatorSequence<ListFindingsFiltersInput, ListFindingsFiltersOutput> {
        return ClientRuntime.PaginatorSequence<ListFindingsFiltersInput, ListFindingsFiltersOutput>(input: input, inputKey: \.nextToken, outputKey: \.nextToken, paginationFunction: self.listFindingsFilters(input:))
    }
}

extension ListFindingsFiltersInput: ClientRuntime.PaginateToken {
    public func usingPaginationToken(_ token: Swift.String) -> ListFindingsFiltersInput {
        return ListFindingsFiltersInput(
            maxResults: self.maxResults,
            nextToken: token
        )}
}

extension PaginatorSequence where OperationStackInput == ListFindingsFiltersInput, OperationStackOutput == ListFindingsFiltersOutput {
    /// This paginator transforms the `AsyncSequence` returned by `listFindingsFiltersPaginated`
    /// to access the nested member `[Macie2ClientTypes.FindingsFilterListItem]`
    /// - Returns: `[Macie2ClientTypes.FindingsFilterListItem]`
    public func findingsFilterListItems() async throws -> [Macie2ClientTypes.FindingsFilterListItem] {
        return try await self.asyncCompactMap { item in item.findingsFilterListItems }
    }
}
extension Macie2Client {
    /// Paginate over `[ListInvitationsOutput]` results.
    ///
    /// When this operation is called, an `AsyncSequence` is created. AsyncSequences are lazy so no service
    /// calls are made until the sequence is iterated over. This also means there is no guarantee that the request is valid
    /// until then. If there are errors in your request, you will see the failures only after you start iterating.
    /// - Parameters:
    ///     - input: A `[ListInvitationsInput]` to start pagination
    /// - Returns: An `AsyncSequence` that can iterate over `ListInvitationsOutput`
    public func listInvitationsPaginated(input: ListInvitationsInput) -> ClientRuntime.PaginatorSequence<ListInvitationsInput, ListInvitationsOutput> {
        return ClientRuntime.PaginatorSequence<ListInvitationsInput, ListInvitationsOutput>(input: input, inputKey: \.nextToken, outputKey: \.nextToken, paginationFunction: self.listInvitations(input:))
    }
}

extension ListInvitationsInput: ClientRuntime.PaginateToken {
    public func usingPaginationToken(_ token: Swift.String) -> ListInvitationsInput {
        return ListInvitationsInput(
            maxResults: self.maxResults,
            nextToken: token
        )}
}

extension PaginatorSequence where OperationStackInput == ListInvitationsInput, OperationStackOutput == ListInvitationsOutput {
    /// This paginator transforms the `AsyncSequence` returned by `listInvitationsPaginated`
    /// to access the nested member `[Macie2ClientTypes.Invitation]`
    /// - Returns: `[Macie2ClientTypes.Invitation]`
    public func invitations() async throws -> [Macie2ClientTypes.Invitation] {
        return try await self.asyncCompactMap { item in item.invitations }
    }
}
extension Macie2Client {
    /// Paginate over `[ListManagedDataIdentifiersOutput]` results.
    ///
    /// When this operation is called, an `AsyncSequence` is created. AsyncSequences are lazy so no service
    /// calls are made until the sequence is iterated over. This also means there is no guarantee that the request is valid
    /// until then. If there are errors in your request, you will see the failures only after you start iterating.
    /// - Parameters:
    ///     - input: A `[ListManagedDataIdentifiersInput]` to start pagination
    /// - Returns: An `AsyncSequence` that can iterate over `ListManagedDataIdentifiersOutput`
    public func listManagedDataIdentifiersPaginated(input: ListManagedDataIdentifiersInput) -> ClientRuntime.PaginatorSequence<ListManagedDataIdentifiersInput, ListManagedDataIdentifiersOutput> {
        return ClientRuntime.PaginatorSequence<ListManagedDataIdentifiersInput, ListManagedDataIdentifiersOutput>(input: input, inputKey: \.nextToken, outputKey: \.nextToken, paginationFunction: self.listManagedDataIdentifiers(input:))
    }
}

extension ListManagedDataIdentifiersInput: ClientRuntime.PaginateToken {
    public func usingPaginationToken(_ token: Swift.String) -> ListManagedDataIdentifiersInput {
        return ListManagedDataIdentifiersInput(
            nextToken: token
        )}
}

extension PaginatorSequence where OperationStackInput == ListManagedDataIdentifiersInput, OperationStackOutput == ListManagedDataIdentifiersOutput {
    /// This paginator transforms the `AsyncSequence` returned by `listManagedDataIdentifiersPaginated`
    /// to access the nested member `[Macie2ClientTypes.ManagedDataIdentifierSummary]`
    /// - Returns: `[Macie2ClientTypes.ManagedDataIdentifierSummary]`
    public func items() async throws -> [Macie2ClientTypes.ManagedDataIdentifierSummary] {
        return try await self.asyncCompactMap { item in item.items }
    }
}
extension Macie2Client {
    /// Paginate over `[ListMembersOutput]` results.
    ///
    /// When this operation is called, an `AsyncSequence` is created. AsyncSequences are lazy so no service
    /// calls are made until the sequence is iterated over. This also means there is no guarantee that the request is valid
    /// until then. If there are errors in your request, you will see the failures only after you start iterating.
    /// - Parameters:
    ///     - input: A `[ListMembersInput]` to start pagination
    /// - Returns: An `AsyncSequence` that can iterate over `ListMembersOutput`
    public func listMembersPaginated(input: ListMembersInput) -> ClientRuntime.PaginatorSequence<ListMembersInput, ListMembersOutput> {
        return ClientRuntime.PaginatorSequence<ListMembersInput, ListMembersOutput>(input: input, inputKey: \.nextToken, outputKey: \.nextToken, paginationFunction: self.listMembers(input:))
    }
}

extension ListMembersInput: ClientRuntime.PaginateToken {
    public func usingPaginationToken(_ token: Swift.String) -> ListMembersInput {
        return ListMembersInput(
            maxResults: self.maxResults,
            nextToken: token,
            onlyAssociated: self.onlyAssociated
        )}
}

extension PaginatorSequence where OperationStackInput == ListMembersInput, OperationStackOutput == ListMembersOutput {
    /// This paginator transforms the `AsyncSequence` returned by `listMembersPaginated`
    /// to access the nested member `[Macie2ClientTypes.Member]`
    /// - Returns: `[Macie2ClientTypes.Member]`
    public func members() async throws -> [Macie2ClientTypes.Member] {
        return try await self.asyncCompactMap { item in item.members }
    }
}
extension Macie2Client {
    /// Paginate over `[ListOrganizationAdminAccountsOutput]` results.
    ///
    /// When this operation is called, an `AsyncSequence` is created. AsyncSequences are lazy so no service
    /// calls are made until the sequence is iterated over. This also means there is no guarantee that the request is valid
    /// until then. If there are errors in your request, you will see the failures only after you start iterating.
    /// - Parameters:
    ///     - input: A `[ListOrganizationAdminAccountsInput]` to start pagination
    /// - Returns: An `AsyncSequence` that can iterate over `ListOrganizationAdminAccountsOutput`
    public func listOrganizationAdminAccountsPaginated(input: ListOrganizationAdminAccountsInput) -> ClientRuntime.PaginatorSequence<ListOrganizationAdminAccountsInput, ListOrganizationAdminAccountsOutput> {
        return ClientRuntime.PaginatorSequence<ListOrganizationAdminAccountsInput, ListOrganizationAdminAccountsOutput>(input: input, inputKey: \.nextToken, outputKey: \.nextToken, paginationFunction: self.listOrganizationAdminAccounts(input:))
    }
}

extension ListOrganizationAdminAccountsInput: ClientRuntime.PaginateToken {
    public func usingPaginationToken(_ token: Swift.String) -> ListOrganizationAdminAccountsInput {
        return ListOrganizationAdminAccountsInput(
            maxResults: self.maxResults,
            nextToken: token
        )}
}

extension PaginatorSequence where OperationStackInput == ListOrganizationAdminAccountsInput, OperationStackOutput == ListOrganizationAdminAccountsOutput {
    /// This paginator transforms the `AsyncSequence` returned by `listOrganizationAdminAccountsPaginated`
    /// to access the nested member `[Macie2ClientTypes.AdminAccount]`
    /// - Returns: `[Macie2ClientTypes.AdminAccount]`
    public func adminAccounts() async throws -> [Macie2ClientTypes.AdminAccount] {
        return try await self.asyncCompactMap { item in item.adminAccounts }
    }
}
extension Macie2Client {
    /// Paginate over `[ListResourceProfileArtifactsOutput]` results.
    ///
    /// When this operation is called, an `AsyncSequence` is created. AsyncSequences are lazy so no service
    /// calls are made until the sequence is iterated over. This also means there is no guarantee that the request is valid
    /// until then. If there are errors in your request, you will see the failures only after you start iterating.
    /// - Parameters:
    ///     - input: A `[ListResourceProfileArtifactsInput]` to start pagination
    /// - Returns: An `AsyncSequence` that can iterate over `ListResourceProfileArtifactsOutput`
    public func listResourceProfileArtifactsPaginated(input: ListResourceProfileArtifactsInput) -> ClientRuntime.PaginatorSequence<ListResourceProfileArtifactsInput, ListResourceProfileArtifactsOutput> {
        return ClientRuntime.PaginatorSequence<ListResourceProfileArtifactsInput, ListResourceProfileArtifactsOutput>(input: input, inputKey: \.nextToken, outputKey: \.nextToken, paginationFunction: self.listResourceProfileArtifacts(input:))
    }
}

extension ListResourceProfileArtifactsInput: ClientRuntime.PaginateToken {
    public func usingPaginationToken(_ token: Swift.String) -> ListResourceProfileArtifactsInput {
        return ListResourceProfileArtifactsInput(
            nextToken: token,
            resourceArn: self.resourceArn
        )}
}

extension PaginatorSequence where OperationStackInput == ListResourceProfileArtifactsInput, OperationStackOutput == ListResourceProfileArtifactsOutput {
    /// This paginator transforms the `AsyncSequence` returned by `listResourceProfileArtifactsPaginated`
    /// to access the nested member `[Macie2ClientTypes.ResourceProfileArtifact]`
    /// - Returns: `[Macie2ClientTypes.ResourceProfileArtifact]`
    public func artifacts() async throws -> [Macie2ClientTypes.ResourceProfileArtifact] {
        return try await self.asyncCompactMap { item in item.artifacts }
    }
}
extension Macie2Client {
    /// Paginate over `[ListResourceProfileDetectionsOutput]` results.
    ///
    /// When this operation is called, an `AsyncSequence` is created. AsyncSequences are lazy so no service
    /// calls are made until the sequence is iterated over. This also means there is no guarantee that the request is valid
    /// until then. If there are errors in your request, you will see the failures only after you start iterating.
    /// - Parameters:
    ///     - input: A `[ListResourceProfileDetectionsInput]` to start pagination
    /// - Returns: An `AsyncSequence` that can iterate over `ListResourceProfileDetectionsOutput`
    public func listResourceProfileDetectionsPaginated(input: ListResourceProfileDetectionsInput) -> ClientRuntime.PaginatorSequence<ListResourceProfileDetectionsInput, ListResourceProfileDetectionsOutput> {
        return ClientRuntime.PaginatorSequence<ListResourceProfileDetectionsInput, ListResourceProfileDetectionsOutput>(input: input, inputKey: \.nextToken, outputKey: \.nextToken, paginationFunction: self.listResourceProfileDetections(input:))
    }
}

extension ListResourceProfileDetectionsInput: ClientRuntime.PaginateToken {
    public func usingPaginationToken(_ token: Swift.String) -> ListResourceProfileDetectionsInput {
        return ListResourceProfileDetectionsInput(
            maxResults: self.maxResults,
            nextToken: token,
            resourceArn: self.resourceArn
        )}
}

extension PaginatorSequence where OperationStackInput == ListResourceProfileDetectionsInput, OperationStackOutput == ListResourceProfileDetectionsOutput {
    /// This paginator transforms the `AsyncSequence` returned by `listResourceProfileDetectionsPaginated`
    /// to access the nested member `[Macie2ClientTypes.Detection]`
    /// - Returns: `[Macie2ClientTypes.Detection]`
    public func detections() async throws -> [Macie2ClientTypes.Detection] {
        return try await self.asyncCompactMap { item in item.detections }
    }
}
extension Macie2Client {
    /// Paginate over `[ListSensitivityInspectionTemplatesOutput]` results.
    ///
    /// When this operation is called, an `AsyncSequence` is created. AsyncSequences are lazy so no service
    /// calls are made until the sequence is iterated over. This also means there is no guarantee that the request is valid
    /// until then. If there are errors in your request, you will see the failures only after you start iterating.
    /// - Parameters:
    ///     - input: A `[ListSensitivityInspectionTemplatesInput]` to start pagination
    /// - Returns: An `AsyncSequence` that can iterate over `ListSensitivityInspectionTemplatesOutput`
    public func listSensitivityInspectionTemplatesPaginated(input: ListSensitivityInspectionTemplatesInput) -> ClientRuntime.PaginatorSequence<ListSensitivityInspectionTemplatesInput, ListSensitivityInspectionTemplatesOutput> {
        return ClientRuntime.PaginatorSequence<ListSensitivityInspectionTemplatesInput, ListSensitivityInspectionTemplatesOutput>(input: input, inputKey: \.nextToken, outputKey: \.nextToken, paginationFunction: self.listSensitivityInspectionTemplates(input:))
    }
}

extension ListSensitivityInspectionTemplatesInput: ClientRuntime.PaginateToken {
    public func usingPaginationToken(_ token: Swift.String) -> ListSensitivityInspectionTemplatesInput {
        return ListSensitivityInspectionTemplatesInput(
            maxResults: self.maxResults,
            nextToken: token
        )}
}

extension PaginatorSequence where OperationStackInput == ListSensitivityInspectionTemplatesInput, OperationStackOutput == ListSensitivityInspectionTemplatesOutput {
    /// This paginator transforms the `AsyncSequence` returned by `listSensitivityInspectionTemplatesPaginated`
    /// to access the nested member `[Macie2ClientTypes.SensitivityInspectionTemplatesEntry]`
    /// - Returns: `[Macie2ClientTypes.SensitivityInspectionTemplatesEntry]`
    public func sensitivityInspectionTemplates() async throws -> [Macie2ClientTypes.SensitivityInspectionTemplatesEntry] {
        return try await self.asyncCompactMap { item in item.sensitivityInspectionTemplates }
    }
}
extension Macie2Client {
    /// Paginate over `[SearchResourcesOutput]` results.
    ///
    /// When this operation is called, an `AsyncSequence` is created. AsyncSequences are lazy so no service
    /// calls are made until the sequence is iterated over. This also means there is no guarantee that the request is valid
    /// until then. If there are errors in your request, you will see the failures only after you start iterating.
    /// - Parameters:
    ///     - input: A `[SearchResourcesInput]` to start pagination
    /// - Returns: An `AsyncSequence` that can iterate over `SearchResourcesOutput`
    public func searchResourcesPaginated(input: SearchResourcesInput) -> ClientRuntime.PaginatorSequence<SearchResourcesInput, SearchResourcesOutput> {
        return ClientRuntime.PaginatorSequence<SearchResourcesInput, SearchResourcesOutput>(input: input, inputKey: \.nextToken, outputKey: \.nextToken, paginationFunction: self.searchResources(input:))
    }
}

extension SearchResourcesInput: ClientRuntime.PaginateToken {
    public func usingPaginationToken(_ token: Swift.String) -> SearchResourcesInput {
        return SearchResourcesInput(
            bucketCriteria: self.bucketCriteria,
            maxResults: self.maxResults,
            nextToken: token,
            sortCriteria: self.sortCriteria
        )}
}

extension PaginatorSequence where OperationStackInput == SearchResourcesInput, OperationStackOutput == SearchResourcesOutput {
    /// This paginator transforms the `AsyncSequence` returned by `searchResourcesPaginated`
    /// to access the nested member `[Macie2ClientTypes.MatchingResource]`
    /// - Returns: `[Macie2ClientTypes.MatchingResource]`
    public func matchingResources() async throws -> [Macie2ClientTypes.MatchingResource] {
        return try await self.asyncCompactMap { item in item.matchingResources }
    }
}
