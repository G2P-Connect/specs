# G2P Connect - Protocol Standards

G2P Connect Integration Specifications open source effort to standardise the key integrations across functional categories defined in G2P Connect Technology Architecture Blueprint. 

G2P Connect Integration Specification assumes interaction between DPG projects, Proprietary/Existing systems may vary due to underlying landscape across countries. For e.g., <br>

> a. Few countries may have centralised payment switch operated by central bank while others may operate directly with financial institutions. <br>
> b. Countries may decide to manage ID to Financial Address mapping either at Payment Switch layer or Financial Institution(s) or Beneficiary Management Platforms or an independent entity, etc.,

For these reasons G2P Connect is **flexible** to enable DPG projects, Proprietary/Existing systems to **orchestrate** the flows based on various use case scenarios that are specific to country's operating requirements.

## Message Structure
All communication using G2P Connect specifications have following structure

| Field | Description | 
| ----- | ----------- | 
| signature | element holding signature to prove non-repudiability of payload (header & message) between sender & receiver | 
| header | common header to track messages between sender & receiver for traceability and to track message delivery at transport layer | 
| message | message to hold transaction request/response entities | 

## Transport Protocol
1. G2P Connect Integration Specification is designed to be transport layer agnostic viz. JSON entities over HTTPS, event based messaging or file exchanges.
2. header field helps in reliable exchange at transport layer between sender and receiver. 

## Communication Protocol
1. Most of the interactions are asynchronous calls between sender/receiver platforms. Sender initiates with message_id and receiver acknowledges with receipt of the message with ACK/NACK.
2. Senders are required to implement callback end points for receiver to POST transaction status/detailed information.
3. Additionally, receiver systems are required to implement GET status api's. Sender systems may poll to GET transaction status/detailed information. 

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
