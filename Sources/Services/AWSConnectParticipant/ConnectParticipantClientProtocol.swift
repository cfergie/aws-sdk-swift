// Code generated by smithy-swift-codegen. DO NOT EDIT!

import AWSClientRuntime
import ClientRuntime

/// Amazon Connect is a cloud-based contact center solution that makes it easy to set up and manage a customer contact center. Amazon Connect enables customer contacts through voice or chat. Use the Amazon Connect Participant Service to manage chat participants, such as agents and customers.
public protocol ConnectParticipantClientProtocol {
    /// Allows you to confirm that the attachment has been uploaded using the pre-signed URL provided in StartAttachmentUpload API. ConnectionToken is used for invoking this API instead of ParticipantToken. The Amazon Connect Participant Service APIs do not use [Signature Version 4 authentication](https://docs.aws.amazon.com/general/latest/gr/signature-version-4.html).
    func completeAttachmentUpload(input: CompleteAttachmentUploadInput) async throws -> CompleteAttachmentUploadOutputResponse
    /// Creates the participant's connection. ParticipantToken is used for invoking this API instead of ConnectionToken. The participant token is valid for the lifetime of the participant – until they are part of a contact. The response URL for WEBSOCKET Type has a connect expiry timeout of 100s. Clients must manually connect to the returned websocket URL and subscribe to the desired topic. For chat, you need to publish the following on the established websocket connection: {"topic":"aws/subscribe","content":{"topics":["aws/chat"]}} Upon websocket URL expiry, as specified in the response ConnectionExpiry parameter, clients need to call this API again to obtain a new websocket URL and perform the same steps as before. Message streaming support: This API can also be used together with the [StartContactStreaming](https://docs.aws.amazon.com/connect/latest/APIReference/API_StartContactStreaming.html) API to create a participant connection for chat contacts that are not using a websocket. For more information about message streaming, [Enable real-time chat message streaming](https://docs.aws.amazon.com/connect/latest/adminguide/chat-message-streaming.html) in the Amazon Connect Administrator Guide. Feature specifications: For information about feature specifications, such as the allowed number of open websocket connections per participant, see [Feature specifications](https://docs.aws.amazon.com/connect/latest/adminguide/amazon-connect-service-limits.html#feature-limits) in the Amazon Connect Administrator Guide. The Amazon Connect Participant Service APIs do not use [Signature Version 4 authentication](https://docs.aws.amazon.com/general/latest/gr/signature-version-4.html).
    func createParticipantConnection(input: CreateParticipantConnectionInput) async throws -> CreateParticipantConnectionOutputResponse
    /// Disconnects a participant. ConnectionToken is used for invoking this API instead of ParticipantToken. The Amazon Connect Participant Service APIs do not use [Signature Version 4 authentication](https://docs.aws.amazon.com/general/latest/gr/signature-version-4.html).
    func disconnectParticipant(input: DisconnectParticipantInput) async throws -> DisconnectParticipantOutputResponse
    /// Provides a pre-signed URL for download of a completed attachment. This is an asynchronous API for use with active contacts. ConnectionToken is used for invoking this API instead of ParticipantToken. The Amazon Connect Participant Service APIs do not use [Signature Version 4 authentication](https://docs.aws.amazon.com/general/latest/gr/signature-version-4.html).
    func getAttachment(input: GetAttachmentInput) async throws -> GetAttachmentOutputResponse
    /// Retrieves a transcript of the session, including details about any attachments. For information about accessing past chat contact transcripts for a persistent chat, see [Enable persistent chat](https://docs.aws.amazon.com/connect/latest/adminguide/chat-persistence.html). ConnectionToken is used for invoking this API instead of ParticipantToken. The Amazon Connect Participant Service APIs do not use [Signature Version 4 authentication](https://docs.aws.amazon.com/general/latest/gr/signature-version-4.html).
    func getTranscript(input: GetTranscriptInput) async throws -> GetTranscriptOutputResponse
    /// Sends an event. ConnectionToken is used for invoking this API instead of ParticipantToken. The Amazon Connect Participant Service APIs do not use [Signature Version 4 authentication](https://docs.aws.amazon.com/general/latest/gr/signature-version-4.html).
    func sendEvent(input: SendEventInput) async throws -> SendEventOutputResponse
    /// Sends a message. ConnectionToken is used for invoking this API instead of ParticipantToken. The Amazon Connect Participant Service APIs do not use [Signature Version 4 authentication](https://docs.aws.amazon.com/general/latest/gr/signature-version-4.html).
    func sendMessage(input: SendMessageInput) async throws -> SendMessageOutputResponse
    /// Provides a pre-signed Amazon S3 URL in response for uploading the file directly to S3. ConnectionToken is used for invoking this API instead of ParticipantToken. The Amazon Connect Participant Service APIs do not use [Signature Version 4 authentication](https://docs.aws.amazon.com/general/latest/gr/signature-version-4.html).
    func startAttachmentUpload(input: StartAttachmentUploadInput) async throws -> StartAttachmentUploadOutputResponse
}

public protocol ConnectParticipantClientConfigurationProtocol : AWSClientRuntime.AWSClientConfiguration {
    var endpointResolver: EndpointResolver { get }
}

public enum ConnectParticipantClientTypes {}