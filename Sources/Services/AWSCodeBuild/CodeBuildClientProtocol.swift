// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

/// CodeBuild CodeBuild is a fully managed build service in the cloud. CodeBuild compiles your source code, runs unit tests, and produces artifacts that are ready to deploy. CodeBuild eliminates the need to provision, manage, and scale your own build servers. It provides prepackaged build environments for the most popular programming languages and build tools, such as Apache Maven, Gradle, and more. You can also fully customize build environments in CodeBuild to use your own build tools. CodeBuild scales automatically to meet peak build requests. You pay only for the build time you consume. For more information about CodeBuild, see the [CodeBuild User Guide](https://docs.aws.amazon.com/codebuild/latest/userguide/welcome.html).
public protocol CodeBuildClientProtocol {
    /// Performs the `BatchDeleteBuilds` operation on the `CodeBuild_20161006` service.
    ///
    /// Deletes one or more builds.
    ///
    /// - Parameter BatchDeleteBuildsInput : [no documentation found]
    ///
    /// - Returns: `BatchDeleteBuildsOutput` : [no documentation found]
    ///
    /// - Throws: One of the exceptions listed below __Possible Exceptions__.
    ///
    /// __Possible Exceptions:__
    /// - `InvalidInputException` : The input value that was provided is not valid.
    func batchDeleteBuilds(input: BatchDeleteBuildsInput) async throws -> BatchDeleteBuildsOutput
    /// Performs the `BatchGetBuildBatches` operation on the `CodeBuild_20161006` service.
    ///
    /// Retrieves information about one or more batch builds.
    ///
    /// - Parameter BatchGetBuildBatchesInput : [no documentation found]
    ///
    /// - Returns: `BatchGetBuildBatchesOutput` : [no documentation found]
    ///
    /// - Throws: One of the exceptions listed below __Possible Exceptions__.
    ///
    /// __Possible Exceptions:__
    /// - `InvalidInputException` : The input value that was provided is not valid.
    func batchGetBuildBatches(input: BatchGetBuildBatchesInput) async throws -> BatchGetBuildBatchesOutput
    /// Performs the `BatchGetBuilds` operation on the `CodeBuild_20161006` service.
    ///
    /// Gets information about one or more builds.
    ///
    /// - Parameter BatchGetBuildsInput : [no documentation found]
    ///
    /// - Returns: `BatchGetBuildsOutput` : [no documentation found]
    ///
    /// - Throws: One of the exceptions listed below __Possible Exceptions__.
    ///
    /// __Possible Exceptions:__
    /// - `InvalidInputException` : The input value that was provided is not valid.
    func batchGetBuilds(input: BatchGetBuildsInput) async throws -> BatchGetBuildsOutput
    /// Performs the `BatchGetProjects` operation on the `CodeBuild_20161006` service.
    ///
    /// Gets information about one or more build projects.
    ///
    /// - Parameter BatchGetProjectsInput : [no documentation found]
    ///
    /// - Returns: `BatchGetProjectsOutput` : [no documentation found]
    ///
    /// - Throws: One of the exceptions listed below __Possible Exceptions__.
    ///
    /// __Possible Exceptions:__
    /// - `InvalidInputException` : The input value that was provided is not valid.
    func batchGetProjects(input: BatchGetProjectsInput) async throws -> BatchGetProjectsOutput
    /// Performs the `BatchGetReportGroups` operation on the `CodeBuild_20161006` service.
    ///
    /// Returns an array of report groups.
    ///
    /// - Parameter BatchGetReportGroupsInput : [no documentation found]
    ///
    /// - Returns: `BatchGetReportGroupsOutput` : [no documentation found]
    ///
    /// - Throws: One of the exceptions listed below __Possible Exceptions__.
    ///
    /// __Possible Exceptions:__
    /// - `InvalidInputException` : The input value that was provided is not valid.
    func batchGetReportGroups(input: BatchGetReportGroupsInput) async throws -> BatchGetReportGroupsOutput
    /// Performs the `BatchGetReports` operation on the `CodeBuild_20161006` service.
    ///
    /// Returns an array of reports.
    ///
    /// - Parameter BatchGetReportsInput : [no documentation found]
    ///
    /// - Returns: `BatchGetReportsOutput` : [no documentation found]
    ///
    /// - Throws: One of the exceptions listed below __Possible Exceptions__.
    ///
    /// __Possible Exceptions:__
    /// - `InvalidInputException` : The input value that was provided is not valid.
    func batchGetReports(input: BatchGetReportsInput) async throws -> BatchGetReportsOutput
    /// Performs the `CreateProject` operation on the `CodeBuild_20161006` service.
    ///
    /// Creates a build project.
    ///
    /// - Parameter CreateProjectInput : [no documentation found]
    ///
    /// - Returns: `CreateProjectOutput` : [no documentation found]
    ///
    /// - Throws: One of the exceptions listed below __Possible Exceptions__.
    ///
    /// __Possible Exceptions:__
    /// - `AccountLimitExceededException` : An Amazon Web Services service limit was exceeded for the calling Amazon Web Services account.
    /// - `InvalidInputException` : The input value that was provided is not valid.
    /// - `ResourceAlreadyExistsException` : The specified Amazon Web Services resource cannot be created, because an Amazon Web Services resource with the same settings already exists.
    func createProject(input: CreateProjectInput) async throws -> CreateProjectOutput
    /// Performs the `CreateReportGroup` operation on the `CodeBuild_20161006` service.
    ///
    /// Creates a report group. A report group contains a collection of reports.
    ///
    /// - Parameter CreateReportGroupInput : [no documentation found]
    ///
    /// - Returns: `CreateReportGroupOutput` : [no documentation found]
    ///
    /// - Throws: One of the exceptions listed below __Possible Exceptions__.
    ///
    /// __Possible Exceptions:__
    /// - `AccountLimitExceededException` : An Amazon Web Services service limit was exceeded for the calling Amazon Web Services account.
    /// - `InvalidInputException` : The input value that was provided is not valid.
    /// - `ResourceAlreadyExistsException` : The specified Amazon Web Services resource cannot be created, because an Amazon Web Services resource with the same settings already exists.
    func createReportGroup(input: CreateReportGroupInput) async throws -> CreateReportGroupOutput
    /// Performs the `CreateWebhook` operation on the `CodeBuild_20161006` service.
    ///
    /// For an existing CodeBuild build project that has its source code stored in a GitHub or Bitbucket repository, enables CodeBuild to start rebuilding the source code every time a code change is pushed to the repository. If you enable webhooks for an CodeBuild project, and the project is used as a build step in CodePipeline, then two identical builds are created for each commit. One build is triggered through webhooks, and one through CodePipeline. Because billing is on a per-build basis, you are billed for both builds. Therefore, if you are using CodePipeline, we recommend that you disable webhooks in CodeBuild. In the CodeBuild console, clear the Webhook box. For more information, see step 5 in [Change a Build Project's Settings](https://docs.aws.amazon.com/codebuild/latest/userguide/change-project.html#change-project-console).
    ///
    /// - Parameter CreateWebhookInput : [no documentation found]
    ///
    /// - Returns: `CreateWebhookOutput` : [no documentation found]
    ///
    /// - Throws: One of the exceptions listed below __Possible Exceptions__.
    ///
    /// __Possible Exceptions:__
    /// - `InvalidInputException` : The input value that was provided is not valid.
    /// - `OAuthProviderException` : There was a problem with the underlying OAuth provider.
    /// - `ResourceAlreadyExistsException` : The specified Amazon Web Services resource cannot be created, because an Amazon Web Services resource with the same settings already exists.
    /// - `ResourceNotFoundException` : The specified Amazon Web Services resource cannot be found.
    func createWebhook(input: CreateWebhookInput) async throws -> CreateWebhookOutput
    /// Performs the `DeleteBuildBatch` operation on the `CodeBuild_20161006` service.
    ///
    /// Deletes a batch build.
    ///
    /// - Parameter DeleteBuildBatchInput : [no documentation found]
    ///
    /// - Returns: `DeleteBuildBatchOutput` : [no documentation found]
    ///
    /// - Throws: One of the exceptions listed below __Possible Exceptions__.
    ///
    /// __Possible Exceptions:__
    /// - `InvalidInputException` : The input value that was provided is not valid.
    func deleteBuildBatch(input: DeleteBuildBatchInput) async throws -> DeleteBuildBatchOutput
    /// Performs the `DeleteProject` operation on the `CodeBuild_20161006` service.
    ///
    /// Deletes a build project. When you delete a project, its builds are not deleted.
    ///
    /// - Parameter DeleteProjectInput : [no documentation found]
    ///
    /// - Returns: `DeleteProjectOutput` : [no documentation found]
    ///
    /// - Throws: One of the exceptions listed below __Possible Exceptions__.
    ///
    /// __Possible Exceptions:__
    /// - `InvalidInputException` : The input value that was provided is not valid.
    func deleteProject(input: DeleteProjectInput) async throws -> DeleteProjectOutput
    /// Performs the `DeleteReport` operation on the `CodeBuild_20161006` service.
    ///
    /// Deletes a report.
    ///
    /// - Parameter DeleteReportInput : [no documentation found]
    ///
    /// - Returns: `DeleteReportOutput` : [no documentation found]
    ///
    /// - Throws: One of the exceptions listed below __Possible Exceptions__.
    ///
    /// __Possible Exceptions:__
    /// - `InvalidInputException` : The input value that was provided is not valid.
    func deleteReport(input: DeleteReportInput) async throws -> DeleteReportOutput
    /// Performs the `DeleteReportGroup` operation on the `CodeBuild_20161006` service.
    ///
    /// Deletes a report group. Before you delete a report group, you must delete its reports.
    ///
    /// - Parameter DeleteReportGroupInput : [no documentation found]
    ///
    /// - Returns: `DeleteReportGroupOutput` : [no documentation found]
    ///
    /// - Throws: One of the exceptions listed below __Possible Exceptions__.
    ///
    /// __Possible Exceptions:__
    /// - `InvalidInputException` : The input value that was provided is not valid.
    func deleteReportGroup(input: DeleteReportGroupInput) async throws -> DeleteReportGroupOutput
    /// Performs the `DeleteResourcePolicy` operation on the `CodeBuild_20161006` service.
    ///
    /// Deletes a resource policy that is identified by its resource ARN.
    ///
    /// - Parameter DeleteResourcePolicyInput : [no documentation found]
    ///
    /// - Returns: `DeleteResourcePolicyOutput` : [no documentation found]
    ///
    /// - Throws: One of the exceptions listed below __Possible Exceptions__.
    ///
    /// __Possible Exceptions:__
    /// - `InvalidInputException` : The input value that was provided is not valid.
    func deleteResourcePolicy(input: DeleteResourcePolicyInput) async throws -> DeleteResourcePolicyOutput
    /// Performs the `DeleteSourceCredentials` operation on the `CodeBuild_20161006` service.
    ///
    /// Deletes a set of GitHub, GitHub Enterprise, or Bitbucket source credentials.
    ///
    /// - Parameter DeleteSourceCredentialsInput : [no documentation found]
    ///
    /// - Returns: `DeleteSourceCredentialsOutput` : [no documentation found]
    ///
    /// - Throws: One of the exceptions listed below __Possible Exceptions__.
    ///
    /// __Possible Exceptions:__
    /// - `InvalidInputException` : The input value that was provided is not valid.
    /// - `ResourceNotFoundException` : The specified Amazon Web Services resource cannot be found.
    func deleteSourceCredentials(input: DeleteSourceCredentialsInput) async throws -> DeleteSourceCredentialsOutput
    /// Performs the `DeleteWebhook` operation on the `CodeBuild_20161006` service.
    ///
    /// For an existing CodeBuild build project that has its source code stored in a GitHub or Bitbucket repository, stops CodeBuild from rebuilding the source code every time a code change is pushed to the repository.
    ///
    /// - Parameter DeleteWebhookInput : [no documentation found]
    ///
    /// - Returns: `DeleteWebhookOutput` : [no documentation found]
    ///
    /// - Throws: One of the exceptions listed below __Possible Exceptions__.
    ///
    /// __Possible Exceptions:__
    /// - `InvalidInputException` : The input value that was provided is not valid.
    /// - `OAuthProviderException` : There was a problem with the underlying OAuth provider.
    /// - `ResourceNotFoundException` : The specified Amazon Web Services resource cannot be found.
    func deleteWebhook(input: DeleteWebhookInput) async throws -> DeleteWebhookOutput
    /// Performs the `DescribeCodeCoverages` operation on the `CodeBuild_20161006` service.
    ///
    /// Retrieves one or more code coverage reports.
    ///
    /// - Parameter DescribeCodeCoveragesInput : [no documentation found]
    ///
    /// - Returns: `DescribeCodeCoveragesOutput` : [no documentation found]
    ///
    /// - Throws: One of the exceptions listed below __Possible Exceptions__.
    ///
    /// __Possible Exceptions:__
    /// - `InvalidInputException` : The input value that was provided is not valid.
    func describeCodeCoverages(input: DescribeCodeCoveragesInput) async throws -> DescribeCodeCoveragesOutput
    /// Performs the `DescribeTestCases` operation on the `CodeBuild_20161006` service.
    ///
    /// Returns a list of details about test cases for a report.
    ///
    /// - Parameter DescribeTestCasesInput : [no documentation found]
    ///
    /// - Returns: `DescribeTestCasesOutput` : [no documentation found]
    ///
    /// - Throws: One of the exceptions listed below __Possible Exceptions__.
    ///
    /// __Possible Exceptions:__
    /// - `InvalidInputException` : The input value that was provided is not valid.
    /// - `ResourceNotFoundException` : The specified Amazon Web Services resource cannot be found.
    func describeTestCases(input: DescribeTestCasesInput) async throws -> DescribeTestCasesOutput
    /// Performs the `GetReportGroupTrend` operation on the `CodeBuild_20161006` service.
    ///
    /// Analyzes and accumulates test report values for the specified test reports.
    ///
    /// - Parameter GetReportGroupTrendInput : [no documentation found]
    ///
    /// - Returns: `GetReportGroupTrendOutput` : [no documentation found]
    ///
    /// - Throws: One of the exceptions listed below __Possible Exceptions__.
    ///
    /// __Possible Exceptions:__
    /// - `InvalidInputException` : The input value that was provided is not valid.
    /// - `ResourceNotFoundException` : The specified Amazon Web Services resource cannot be found.
    func getReportGroupTrend(input: GetReportGroupTrendInput) async throws -> GetReportGroupTrendOutput
    /// Performs the `GetResourcePolicy` operation on the `CodeBuild_20161006` service.
    ///
    /// Gets a resource policy that is identified by its resource ARN.
    ///
    /// - Parameter GetResourcePolicyInput : [no documentation found]
    ///
    /// - Returns: `GetResourcePolicyOutput` : [no documentation found]
    ///
    /// - Throws: One of the exceptions listed below __Possible Exceptions__.
    ///
    /// __Possible Exceptions:__
    /// - `InvalidInputException` : The input value that was provided is not valid.
    /// - `ResourceNotFoundException` : The specified Amazon Web Services resource cannot be found.
    func getResourcePolicy(input: GetResourcePolicyInput) async throws -> GetResourcePolicyOutput
    /// Performs the `ImportSourceCredentials` operation on the `CodeBuild_20161006` service.
    ///
    /// Imports the source repository credentials for an CodeBuild project that has its source code stored in a GitHub, GitHub Enterprise, or Bitbucket repository.
    ///
    /// - Parameter ImportSourceCredentialsInput : [no documentation found]
    ///
    /// - Returns: `ImportSourceCredentialsOutput` : [no documentation found]
    ///
    /// - Throws: One of the exceptions listed below __Possible Exceptions__.
    ///
    /// __Possible Exceptions:__
    /// - `AccountLimitExceededException` : An Amazon Web Services service limit was exceeded for the calling Amazon Web Services account.
    /// - `InvalidInputException` : The input value that was provided is not valid.
    /// - `ResourceAlreadyExistsException` : The specified Amazon Web Services resource cannot be created, because an Amazon Web Services resource with the same settings already exists.
    func importSourceCredentials(input: ImportSourceCredentialsInput) async throws -> ImportSourceCredentialsOutput
    /// Performs the `InvalidateProjectCache` operation on the `CodeBuild_20161006` service.
    ///
    /// Resets the cache for a project.
    ///
    /// - Parameter InvalidateProjectCacheInput : [no documentation found]
    ///
    /// - Returns: `InvalidateProjectCacheOutput` : [no documentation found]
    ///
    /// - Throws: One of the exceptions listed below __Possible Exceptions__.
    ///
    /// __Possible Exceptions:__
    /// - `InvalidInputException` : The input value that was provided is not valid.
    /// - `ResourceNotFoundException` : The specified Amazon Web Services resource cannot be found.
    func invalidateProjectCache(input: InvalidateProjectCacheInput) async throws -> InvalidateProjectCacheOutput
    /// Performs the `ListBuildBatches` operation on the `CodeBuild_20161006` service.
    ///
    /// Retrieves the identifiers of your build batches in the current region.
    ///
    /// - Parameter ListBuildBatchesInput : [no documentation found]
    ///
    /// - Returns: `ListBuildBatchesOutput` : [no documentation found]
    ///
    /// - Throws: One of the exceptions listed below __Possible Exceptions__.
    ///
    /// __Possible Exceptions:__
    /// - `InvalidInputException` : The input value that was provided is not valid.
    func listBuildBatches(input: ListBuildBatchesInput) async throws -> ListBuildBatchesOutput
    /// Performs the `ListBuildBatchesForProject` operation on the `CodeBuild_20161006` service.
    ///
    /// Retrieves the identifiers of the build batches for a specific project.
    ///
    /// - Parameter ListBuildBatchesForProjectInput : [no documentation found]
    ///
    /// - Returns: `ListBuildBatchesForProjectOutput` : [no documentation found]
    ///
    /// - Throws: One of the exceptions listed below __Possible Exceptions__.
    ///
    /// __Possible Exceptions:__
    /// - `InvalidInputException` : The input value that was provided is not valid.
    /// - `ResourceNotFoundException` : The specified Amazon Web Services resource cannot be found.
    func listBuildBatchesForProject(input: ListBuildBatchesForProjectInput) async throws -> ListBuildBatchesForProjectOutput
    /// Performs the `ListBuilds` operation on the `CodeBuild_20161006` service.
    ///
    /// Gets a list of build IDs, with each build ID representing a single build.
    ///
    /// - Parameter ListBuildsInput : [no documentation found]
    ///
    /// - Returns: `ListBuildsOutput` : [no documentation found]
    ///
    /// - Throws: One of the exceptions listed below __Possible Exceptions__.
    ///
    /// __Possible Exceptions:__
    /// - `InvalidInputException` : The input value that was provided is not valid.
    func listBuilds(input: ListBuildsInput) async throws -> ListBuildsOutput
    /// Performs the `ListBuildsForProject` operation on the `CodeBuild_20161006` service.
    ///
    /// Gets a list of build identifiers for the specified build project, with each build identifier representing a single build.
    ///
    /// - Parameter ListBuildsForProjectInput : [no documentation found]
    ///
    /// - Returns: `ListBuildsForProjectOutput` : [no documentation found]
    ///
    /// - Throws: One of the exceptions listed below __Possible Exceptions__.
    ///
    /// __Possible Exceptions:__
    /// - `InvalidInputException` : The input value that was provided is not valid.
    /// - `ResourceNotFoundException` : The specified Amazon Web Services resource cannot be found.
    func listBuildsForProject(input: ListBuildsForProjectInput) async throws -> ListBuildsForProjectOutput
    /// Performs the `ListCuratedEnvironmentImages` operation on the `CodeBuild_20161006` service.
    ///
    /// Gets information about Docker images that are managed by CodeBuild.
    ///
    /// - Parameter ListCuratedEnvironmentImagesInput : [no documentation found]
    ///
    /// - Returns: `ListCuratedEnvironmentImagesOutput` : [no documentation found]
    func listCuratedEnvironmentImages(input: ListCuratedEnvironmentImagesInput) async throws -> ListCuratedEnvironmentImagesOutput
    /// Performs the `ListProjects` operation on the `CodeBuild_20161006` service.
    ///
    /// Gets a list of build project names, with each build project name representing a single build project.
    ///
    /// - Parameter ListProjectsInput : [no documentation found]
    ///
    /// - Returns: `ListProjectsOutput` : [no documentation found]
    ///
    /// - Throws: One of the exceptions listed below __Possible Exceptions__.
    ///
    /// __Possible Exceptions:__
    /// - `InvalidInputException` : The input value that was provided is not valid.
    func listProjects(input: ListProjectsInput) async throws -> ListProjectsOutput
    /// Performs the `ListReportGroups` operation on the `CodeBuild_20161006` service.
    ///
    /// Gets a list ARNs for the report groups in the current Amazon Web Services account.
    ///
    /// - Parameter ListReportGroupsInput : [no documentation found]
    ///
    /// - Returns: `ListReportGroupsOutput` : [no documentation found]
    ///
    /// - Throws: One of the exceptions listed below __Possible Exceptions__.
    ///
    /// __Possible Exceptions:__
    /// - `InvalidInputException` : The input value that was provided is not valid.
    func listReportGroups(input: ListReportGroupsInput) async throws -> ListReportGroupsOutput
    /// Performs the `ListReports` operation on the `CodeBuild_20161006` service.
    ///
    /// Returns a list of ARNs for the reports in the current Amazon Web Services account.
    ///
    /// - Parameter ListReportsInput : [no documentation found]
    ///
    /// - Returns: `ListReportsOutput` : [no documentation found]
    ///
    /// - Throws: One of the exceptions listed below __Possible Exceptions__.
    ///
    /// __Possible Exceptions:__
    /// - `InvalidInputException` : The input value that was provided is not valid.
    func listReports(input: ListReportsInput) async throws -> ListReportsOutput
    /// Performs the `ListReportsForReportGroup` operation on the `CodeBuild_20161006` service.
    ///
    /// Returns a list of ARNs for the reports that belong to a ReportGroup.
    ///
    /// - Parameter ListReportsForReportGroupInput : [no documentation found]
    ///
    /// - Returns: `ListReportsForReportGroupOutput` : [no documentation found]
    ///
    /// - Throws: One of the exceptions listed below __Possible Exceptions__.
    ///
    /// __Possible Exceptions:__
    /// - `InvalidInputException` : The input value that was provided is not valid.
    /// - `ResourceNotFoundException` : The specified Amazon Web Services resource cannot be found.
    func listReportsForReportGroup(input: ListReportsForReportGroupInput) async throws -> ListReportsForReportGroupOutput
    /// Performs the `ListSharedProjects` operation on the `CodeBuild_20161006` service.
    ///
    /// Gets a list of projects that are shared with other Amazon Web Services accounts or users.
    ///
    /// - Parameter ListSharedProjectsInput : [no documentation found]
    ///
    /// - Returns: `ListSharedProjectsOutput` : [no documentation found]
    ///
    /// - Throws: One of the exceptions listed below __Possible Exceptions__.
    ///
    /// __Possible Exceptions:__
    /// - `InvalidInputException` : The input value that was provided is not valid.
    func listSharedProjects(input: ListSharedProjectsInput) async throws -> ListSharedProjectsOutput
    /// Performs the `ListSharedReportGroups` operation on the `CodeBuild_20161006` service.
    ///
    /// Gets a list of report groups that are shared with other Amazon Web Services accounts or users.
    ///
    /// - Parameter ListSharedReportGroupsInput : [no documentation found]
    ///
    /// - Returns: `ListSharedReportGroupsOutput` : [no documentation found]
    ///
    /// - Throws: One of the exceptions listed below __Possible Exceptions__.
    ///
    /// __Possible Exceptions:__
    /// - `InvalidInputException` : The input value that was provided is not valid.
    func listSharedReportGroups(input: ListSharedReportGroupsInput) async throws -> ListSharedReportGroupsOutput
    /// Performs the `ListSourceCredentials` operation on the `CodeBuild_20161006` service.
    ///
    /// Returns a list of SourceCredentialsInfo objects.
    ///
    /// - Parameter ListSourceCredentialsInput : [no documentation found]
    ///
    /// - Returns: `ListSourceCredentialsOutput` : [no documentation found]
    ///
    /// - Throws: One of the exceptions listed below __Possible Exceptions__.
    ///
    /// __Possible Exceptions:__
    /// - `InvalidInputException` : The input value that was provided is not valid.
    func listSourceCredentials(input: ListSourceCredentialsInput) async throws -> ListSourceCredentialsOutput
    /// Performs the `PutResourcePolicy` operation on the `CodeBuild_20161006` service.
    ///
    /// Stores a resource policy for the ARN of a Project or ReportGroup object.
    ///
    /// - Parameter PutResourcePolicyInput : [no documentation found]
    ///
    /// - Returns: `PutResourcePolicyOutput` : [no documentation found]
    ///
    /// - Throws: One of the exceptions listed below __Possible Exceptions__.
    ///
    /// __Possible Exceptions:__
    /// - `InvalidInputException` : The input value that was provided is not valid.
    /// - `ResourceNotFoundException` : The specified Amazon Web Services resource cannot be found.
    func putResourcePolicy(input: PutResourcePolicyInput) async throws -> PutResourcePolicyOutput
    /// Performs the `RetryBuild` operation on the `CodeBuild_20161006` service.
    ///
    /// Restarts a build.
    ///
    /// - Parameter RetryBuildInput : [no documentation found]
    ///
    /// - Returns: `RetryBuildOutput` : [no documentation found]
    ///
    /// - Throws: One of the exceptions listed below __Possible Exceptions__.
    ///
    /// __Possible Exceptions:__
    /// - `AccountLimitExceededException` : An Amazon Web Services service limit was exceeded for the calling Amazon Web Services account.
    /// - `InvalidInputException` : The input value that was provided is not valid.
    /// - `ResourceNotFoundException` : The specified Amazon Web Services resource cannot be found.
    func retryBuild(input: RetryBuildInput) async throws -> RetryBuildOutput
    /// Performs the `RetryBuildBatch` operation on the `CodeBuild_20161006` service.
    ///
    /// Restarts a failed batch build. Only batch builds that have failed can be retried.
    ///
    /// - Parameter RetryBuildBatchInput : [no documentation found]
    ///
    /// - Returns: `RetryBuildBatchOutput` : [no documentation found]
    ///
    /// - Throws: One of the exceptions listed below __Possible Exceptions__.
    ///
    /// __Possible Exceptions:__
    /// - `InvalidInputException` : The input value that was provided is not valid.
    /// - `ResourceNotFoundException` : The specified Amazon Web Services resource cannot be found.
    func retryBuildBatch(input: RetryBuildBatchInput) async throws -> RetryBuildBatchOutput
    /// Performs the `StartBuild` operation on the `CodeBuild_20161006` service.
    ///
    /// Starts running a build.
    ///
    /// - Parameter StartBuildInput : [no documentation found]
    ///
    /// - Returns: `StartBuildOutput` : [no documentation found]
    ///
    /// - Throws: One of the exceptions listed below __Possible Exceptions__.
    ///
    /// __Possible Exceptions:__
    /// - `AccountLimitExceededException` : An Amazon Web Services service limit was exceeded for the calling Amazon Web Services account.
    /// - `InvalidInputException` : The input value that was provided is not valid.
    /// - `ResourceNotFoundException` : The specified Amazon Web Services resource cannot be found.
    func startBuild(input: StartBuildInput) async throws -> StartBuildOutput
    /// Performs the `StartBuildBatch` operation on the `CodeBuild_20161006` service.
    ///
    /// Starts a batch build for a project.
    ///
    /// - Parameter StartBuildBatchInput : [no documentation found]
    ///
    /// - Returns: `StartBuildBatchOutput` : [no documentation found]
    ///
    /// - Throws: One of the exceptions listed below __Possible Exceptions__.
    ///
    /// __Possible Exceptions:__
    /// - `InvalidInputException` : The input value that was provided is not valid.
    /// - `ResourceNotFoundException` : The specified Amazon Web Services resource cannot be found.
    func startBuildBatch(input: StartBuildBatchInput) async throws -> StartBuildBatchOutput
    /// Performs the `StopBuild` operation on the `CodeBuild_20161006` service.
    ///
    /// Attempts to stop running a build.
    ///
    /// - Parameter StopBuildInput : [no documentation found]
    ///
    /// - Returns: `StopBuildOutput` : [no documentation found]
    ///
    /// - Throws: One of the exceptions listed below __Possible Exceptions__.
    ///
    /// __Possible Exceptions:__
    /// - `InvalidInputException` : The input value that was provided is not valid.
    /// - `ResourceNotFoundException` : The specified Amazon Web Services resource cannot be found.
    func stopBuild(input: StopBuildInput) async throws -> StopBuildOutput
    /// Performs the `StopBuildBatch` operation on the `CodeBuild_20161006` service.
    ///
    /// Stops a running batch build.
    ///
    /// - Parameter StopBuildBatchInput : [no documentation found]
    ///
    /// - Returns: `StopBuildBatchOutput` : [no documentation found]
    ///
    /// - Throws: One of the exceptions listed below __Possible Exceptions__.
    ///
    /// __Possible Exceptions:__
    /// - `InvalidInputException` : The input value that was provided is not valid.
    /// - `ResourceNotFoundException` : The specified Amazon Web Services resource cannot be found.
    func stopBuildBatch(input: StopBuildBatchInput) async throws -> StopBuildBatchOutput
    /// Performs the `UpdateProject` operation on the `CodeBuild_20161006` service.
    ///
    /// Changes the settings of a build project.
    ///
    /// - Parameter UpdateProjectInput : [no documentation found]
    ///
    /// - Returns: `UpdateProjectOutput` : [no documentation found]
    ///
    /// - Throws: One of the exceptions listed below __Possible Exceptions__.
    ///
    /// __Possible Exceptions:__
    /// - `InvalidInputException` : The input value that was provided is not valid.
    /// - `ResourceNotFoundException` : The specified Amazon Web Services resource cannot be found.
    func updateProject(input: UpdateProjectInput) async throws -> UpdateProjectOutput
    /// Performs the `UpdateProjectVisibility` operation on the `CodeBuild_20161006` service.
    ///
    /// Changes the public visibility for a project. The project's build results, logs, and artifacts are available to the general public. For more information, see [Public build projects](https://docs.aws.amazon.com/codebuild/latest/userguide/public-builds.html) in the CodeBuild User Guide. The following should be kept in mind when making your projects public:
    ///
    /// * All of a project's build results, logs, and artifacts, including builds that were run when the project was private, are available to the general public.
    ///
    /// * All build logs and artifacts are available to the public. Environment variables, source code, and other sensitive information may have been output to the build logs and artifacts. You must be careful about what information is output to the build logs. Some best practice are:
    ///
    /// * Do not store sensitive values in environment variables. We recommend that you use an Amazon EC2 Systems Manager Parameter Store or Secrets Manager to store sensitive values.
    ///
    /// * Follow [Best practices for using webhooks](https://docs.aws.amazon.com/codebuild/latest/userguide/webhooks.html#webhook-best-practices) in the CodeBuild User Guide to limit which entities can trigger a build, and do not store the buildspec in the project itself, to ensure that your webhooks are as secure as possible.
    ///
    ///
    ///
    ///
    /// * A malicious user can use public builds to distribute malicious artifacts. We recommend that you review all pull requests to verify that the pull request is a legitimate change. We also recommend that you validate any artifacts with their checksums to make sure that the correct artifacts are being downloaded.
    ///
    /// - Parameter UpdateProjectVisibilityInput : [no documentation found]
    ///
    /// - Returns: `UpdateProjectVisibilityOutput` : [no documentation found]
    ///
    /// - Throws: One of the exceptions listed below __Possible Exceptions__.
    ///
    /// __Possible Exceptions:__
    /// - `InvalidInputException` : The input value that was provided is not valid.
    /// - `ResourceNotFoundException` : The specified Amazon Web Services resource cannot be found.
    func updateProjectVisibility(input: UpdateProjectVisibilityInput) async throws -> UpdateProjectVisibilityOutput
    /// Performs the `UpdateReportGroup` operation on the `CodeBuild_20161006` service.
    ///
    /// Updates a report group.
    ///
    /// - Parameter UpdateReportGroupInput : [no documentation found]
    ///
    /// - Returns: `UpdateReportGroupOutput` : [no documentation found]
    ///
    /// - Throws: One of the exceptions listed below __Possible Exceptions__.
    ///
    /// __Possible Exceptions:__
    /// - `InvalidInputException` : The input value that was provided is not valid.
    /// - `ResourceNotFoundException` : The specified Amazon Web Services resource cannot be found.
    func updateReportGroup(input: UpdateReportGroupInput) async throws -> UpdateReportGroupOutput
    /// Performs the `UpdateWebhook` operation on the `CodeBuild_20161006` service.
    ///
    /// Updates the webhook associated with an CodeBuild build project. If you use Bitbucket for your repository, rotateSecret is ignored.
    ///
    /// - Parameter UpdateWebhookInput : [no documentation found]
    ///
    /// - Returns: `UpdateWebhookOutput` : [no documentation found]
    ///
    /// - Throws: One of the exceptions listed below __Possible Exceptions__.
    ///
    /// __Possible Exceptions:__
    /// - `InvalidInputException` : The input value that was provided is not valid.
    /// - `OAuthProviderException` : There was a problem with the underlying OAuth provider.
    /// - `ResourceNotFoundException` : The specified Amazon Web Services resource cannot be found.
    func updateWebhook(input: UpdateWebhookInput) async throws -> UpdateWebhookOutput
}

public enum CodeBuildClientTypes {}
