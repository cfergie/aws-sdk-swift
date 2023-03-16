// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

extension AppStreamClientProtocol {

    static func fleetStartedWaiterConfig() throws -> WaiterConfiguration<DescribeFleetsInput, DescribeFleetsOutputResponse> {
        let acceptors: [WaiterConfiguration<DescribeFleetsInput, DescribeFleetsOutputResponse>.Acceptor] = [
            .init(state: .success, matcher: { (input: DescribeFleetsInput, result: Result<DescribeFleetsOutputResponse, Error>) -> Bool in
                // JMESPath expression: "Fleets[].State"
                // JMESPath comparator: "allStringEquals"
                // JMESPath expected value: "RUNNING"
                guard case .success(let output) = result else { return false }
                let fleets = output.fleets
                let projection: [AppStreamClientTypes.FleetState]? = fleets?.compactMap { original in
                    let state = original.state
                    return state
                }
                return (projection?.count ?? 0) > 1 && (projection?.allSatisfy { JMESUtils.compare($0, ==, "RUNNING") } ?? false)
            }),
            .init(state: .failure, matcher: { (input: DescribeFleetsInput, result: Result<DescribeFleetsOutputResponse, Error>) -> Bool in
                // JMESPath expression: "Fleets[].State"
                // JMESPath comparator: "anyStringEquals"
                // JMESPath expected value: "STOPPING"
                guard case .success(let output) = result else { return false }
                let fleets = output.fleets
                let projection: [AppStreamClientTypes.FleetState]? = fleets?.compactMap { original in
                    let state = original.state
                    return state
                }
                return projection?.contains(where: { JMESUtils.compare($0, ==, "STOPPING") }) ?? false
            }),
            .init(state: .failure, matcher: { (input: DescribeFleetsInput, result: Result<DescribeFleetsOutputResponse, Error>) -> Bool in
                // JMESPath expression: "Fleets[].State"
                // JMESPath comparator: "anyStringEquals"
                // JMESPath expected value: "STOPPED"
                guard case .success(let output) = result else { return false }
                let fleets = output.fleets
                let projection: [AppStreamClientTypes.FleetState]? = fleets?.compactMap { original in
                    let state = original.state
                    return state
                }
                return projection?.contains(where: { JMESUtils.compare($0, ==, "STOPPED") }) ?? false
            }),
        ]
        return try WaiterConfiguration<DescribeFleetsInput, DescribeFleetsOutputResponse>(acceptors: acceptors, minDelay: 30.0, maxDelay: 120.0)
    }

    /// Initiates waiting for the FleetStarted event on the describeFleets operation.
    /// The operation will be tried and (if necessary) retried until the wait succeeds, fails, or times out.
    /// Returns a `WaiterOutcome` asynchronously on waiter success, throws an error asynchronously on
    /// waiter failure or timeout.
    /// - Parameters:
    ///   - options: `WaiterOptions` to be used to configure this wait.
    ///   - input: The `DescribeFleetsInput` object to be used as a parameter when performing the operation.
    /// - Returns: A `WaiterOutcome` with the result of the final, successful performance of the operation.
    /// - Throws: `WaiterFailureError` if the waiter fails due to matching an `Acceptor` with state `failure`
    /// or there is an error not handled by any `Acceptor.`
    /// `WaiterTimeoutError` if the waiter times out.
    public func waitUntilFleetStarted(options: WaiterOptions, input: DescribeFleetsInput) async throws -> WaiterOutcome<DescribeFleetsOutputResponse> {
        let waiter = Waiter(config: try Self.fleetStartedWaiterConfig(), operation: self.describeFleets(input:))
        return try await waiter.waitUntil(options: options, input: input)
    }

    static func fleetStoppedWaiterConfig() throws -> WaiterConfiguration<DescribeFleetsInput, DescribeFleetsOutputResponse> {
        let acceptors: [WaiterConfiguration<DescribeFleetsInput, DescribeFleetsOutputResponse>.Acceptor] = [
            .init(state: .success, matcher: { (input: DescribeFleetsInput, result: Result<DescribeFleetsOutputResponse, Error>) -> Bool in
                // JMESPath expression: "Fleets[].State"
                // JMESPath comparator: "allStringEquals"
                // JMESPath expected value: "STOPPED"
                guard case .success(let output) = result else { return false }
                let fleets = output.fleets
                let projection: [AppStreamClientTypes.FleetState]? = fleets?.compactMap { original in
                    let state = original.state
                    return state
                }
                return (projection?.count ?? 0) > 1 && (projection?.allSatisfy { JMESUtils.compare($0, ==, "STOPPED") } ?? false)
            }),
            .init(state: .failure, matcher: { (input: DescribeFleetsInput, result: Result<DescribeFleetsOutputResponse, Error>) -> Bool in
                // JMESPath expression: "Fleets[].State"
                // JMESPath comparator: "anyStringEquals"
                // JMESPath expected value: "STARTING"
                guard case .success(let output) = result else { return false }
                let fleets = output.fleets
                let projection: [AppStreamClientTypes.FleetState]? = fleets?.compactMap { original in
                    let state = original.state
                    return state
                }
                return projection?.contains(where: { JMESUtils.compare($0, ==, "STARTING") }) ?? false
            }),
            .init(state: .failure, matcher: { (input: DescribeFleetsInput, result: Result<DescribeFleetsOutputResponse, Error>) -> Bool in
                // JMESPath expression: "Fleets[].State"
                // JMESPath comparator: "anyStringEquals"
                // JMESPath expected value: "RUNNING"
                guard case .success(let output) = result else { return false }
                let fleets = output.fleets
                let projection: [AppStreamClientTypes.FleetState]? = fleets?.compactMap { original in
                    let state = original.state
                    return state
                }
                return projection?.contains(where: { JMESUtils.compare($0, ==, "RUNNING") }) ?? false
            }),
        ]
        return try WaiterConfiguration<DescribeFleetsInput, DescribeFleetsOutputResponse>(acceptors: acceptors, minDelay: 30.0, maxDelay: 120.0)
    }

    /// Initiates waiting for the FleetStopped event on the describeFleets operation.
    /// The operation will be tried and (if necessary) retried until the wait succeeds, fails, or times out.
    /// Returns a `WaiterOutcome` asynchronously on waiter success, throws an error asynchronously on
    /// waiter failure or timeout.
    /// - Parameters:
    ///   - options: `WaiterOptions` to be used to configure this wait.
    ///   - input: The `DescribeFleetsInput` object to be used as a parameter when performing the operation.
    /// - Returns: A `WaiterOutcome` with the result of the final, successful performance of the operation.
    /// - Throws: `WaiterFailureError` if the waiter fails due to matching an `Acceptor` with state `failure`
    /// or there is an error not handled by any `Acceptor.`
    /// `WaiterTimeoutError` if the waiter times out.
    public func waitUntilFleetStopped(options: WaiterOptions, input: DescribeFleetsInput) async throws -> WaiterOutcome<DescribeFleetsOutputResponse> {
        let waiter = Waiter(config: try Self.fleetStoppedWaiterConfig(), operation: self.describeFleets(input:))
        return try await waiter.waitUntil(options: options, input: input)
    }
}