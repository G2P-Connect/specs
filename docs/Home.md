# G2P Connect - Protocol Standards

G2P Connect API Specifications is an open source effort to standardise the key integrations across functional categories defined in G2P Connect Technology Architecture Blueprint. 

G2P Connect Integration Specification assumes interactions between vaious DPI soultion providers (i.e DPGs, Proprietary/Existing systems) may vary due to country specific policies and availability of digital/banking/last mile connectivity infrastructure. For e.g., <br>

> a. Few countries may have centralised payment switch operated by central bank while others may operate directly with financial institutions. <br>
> b. Countries may decide to manage ID to Financial Address mapping either at Payment Switch layer or Financial Institution(s) or Beneficiary Management Platforms or an independent entity, etc., <br>
> c. Countries may not a foundational de-duplicated digital id

For these reasons G2P Connect is **flexible** to enable DPI solution providers (i.e DPGs, Proprietary/Existing systems) to **orchestrate** the flows based on various use case scenarios that are specific to country's operating requirements.

## Objectives
The following are key objectives of G2P Connect Specifications:

1. Focus on G2P Connect solution blueprint - enable seamless integration between solutions relevant to G2P payment scope.
2. Refer to popular existing standards where applicable, e.g., OAuth2, OpenID Connect, W3C Verifiable Crendentialing.
3. Standardise message envelope to support **harmonised** integrationa across various solutions with key features:
    - Transport layer agnositc communication
    - Offline processing capability
    - Batch processing
    - Capability to carry various payloads e.g. OpenID / country specific custom data or verifiable credentials
    - Support for digitally signed and encrypted payloads
4. Enable integration between existing proprietary, DPI/DPGs or country specific custom in-house solutions.
5. Focus is on standradising core interfaces and NOT on implementation.
6. Each interface act as a connector between solutions and allow country implementations to realize various use cases.

## Message Structure
All communications using G2P Connect specifications have following structure:

| Field | Description | 
| ----- | ----------- | 
| signature | element holding signature to prove non-repudiability of payload (header & message) between sender & receiver | 
| header | common header to track messages between sender & receiver for traceability and to track message delivery at transport layer | 
| message | message to hold transaction request/response entities | 


```json
"header": {
    "version": "0.1.0",
    "message_id": "123456789020211216223812",
    "message_ts": "2022-12-04T18:01:07+00:00",
    "action": "disburse",
    "sender_id": "10089",
    "sender_uri": "https://pymts.sender.org/g2p/callback/on-disburse",
    "receiver_id": "52077",
    "receiver_uri": "",
    "total_count": 21800
},
```

## Identifiers
1. message_id: scope of message_id in header is to track paylaod delivery between sender and receiver. 
2. transaction_id: scope of transaction_id in message is to uniquely corelate business request(s).
3. reference_id: scope of the reference_id in message domain entity is to corelate individual business request. 

## Transport Protocol
1. G2P Connect Integration Specification is designed to be transport layer agnostic viz. JSON entities over HTTPS, pub/sub event based messaging or file exchanges.
2. header field helps in reliable exchange at transport layer between sender and receiver. 

## Communication Protocol
1. Most of the interactions are asynchronous in nature between sender/receiver. 
2. Sender initiates with message_id and receiver synchronously acknowledge with receipt of the message with ACK/NACK/ERR status codes. 
3. ACK represent async callback, NACK represent end of exchange and ERR represent message couldn't be successfully parsed for processing.
4. For all async /xxxx service end points, Senders are required to implement /on_xxxx end points to receive callback responses. 
4. All services implement /{service}/txn/status and /{service}/txn/on_status end points to poll and fetch repsones of previously attempted requests using transaction_id or reeference_id
5. For service end points that are exposed to end user interfacing UX channels where call back processing becomes challenging or technical not-feasibile, receiver systems are required to implement GET status api's. Sender systems may poll to GET transaction status/detailed information and limit count of individual business requests (i.e reference_id's). 

## File based processing 
1. For file based exchange it is recommended to use the JSON payloads. JSON format is hierarchal, self describing to help in integrations. 
2. If a country has use cases to use other formats (e.g. CSV) then it is recommended to use the same JSON definitions by flattening each root entity as a file row. In this scenario, signature element shall be part of the first row, header elements in second row followed by one or more message array list in each row.
3. File exchange may happen using HTTPS, sFTP or any other file exchange mechanisms.

## Event based processing 
1. G2P Connect JSON based request/response entities shall work as events over messaging infrastructure.
2. Trusted sender and receiver systems on a network should create pub/sub end points.

## Data Formats
1. All dates and timestamps are represented in RFC3339 format including timezone e.g., 2022-12-04T18:01:07+05:30
2. All currency codes represented in ISO 4217 format

## Acknowledgments
Greatful for below organization, individuals for their contributions and/or influencing the G2P Connect standards:
1. 