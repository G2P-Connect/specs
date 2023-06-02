# Overview

G2P Connect API Specifications is an open source effort to standardise the key integrations across functional categories defined in G2P Connect Technology Architecture [Blueprint](<../README (1).md>).

G2P Connect Integration Specification assumes interactions between vaious DPI soultion providers (i.e DPGs, Proprietary/Existing systems) may vary due to country specific policies and availability of digital/banking/last mile connectivity infrastructure. For e.g.,\


> a. Few countries may have centralised payment switch operated by central bank while others may operate directly with financial institutions.\
> b. Countries may decide to manage ID to Financial Address mapping either at Payment Switch layer or Financial Institution(s) or Beneficiary Management Platforms or an independent entity.\
> c. Countries may not have a foundational de-duplicated digital id.

G2P Connect is flexible to enable DPI solution providers (i.e DPGs, Proprietary/Existing systems) to **orchestrate** flows based on various use case scenarios that are specific to country's operating requirements.

## Objectives

The following are key objectives of G2P Connect Specifications:

1. Focus on G2P Connect solution blueprint - enable seamless integration between solutions relevant to end to end G2P payment scope keeping policy maker and beneficairy at the center.
2. Flexible to accomodate existing standards where applicable, e.g., OAuth2, OpenID Connect, W3C Verifiable Crendentialing.
3. Standardise message envelope to support **harmonised** integrations across various solutions with key features:
   * Transport layer agnositc communication
   * Async based processing with retry/polling support
   * Offline processing capability enabling store & forward
   * Batch processing
   * Support plug n play for other payloads e.g. OpenID / country specific custom data or verifiable credentials
   * Support for digitally signed and encrypted payloads
4. Enable integration between existing proprietary, DPI/DPGs or country specific custom in-house solutions.
5. Focus is on standradising core interfaces and NOT on implementation.
6. Each interface act as a connector between solutions and allow country implementations to realize various use cases.

## Message Structure

All communications using G2P Connect specifications have following structure:

| Field     | Description                                                                                                                 |
| --------- | --------------------------------------------------------------------------------------------------------------------------- |
| signature | element holding signature to prove non-repudiability of payload (header & message) between sender & receiver                |
| header    | common header to track messages between sender & receiver for traceability and to track message delivery at transport layer |
| message   | message to hold transaction request/response entities                                                                       |

```json
"signature": "Signature:  namespace=\"g2p\", kidId=\"{sender_id}|{unique_key_id}|{algorithm}\", algorithm=\"ed25519\", created=\"1606970629\", expires=\"1607030629\", headers=\"(created) (expires) digest\", signature=\"Base64(signing content)"
```

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
    "total_count": 21800,
    "encryption_algo": "aes+rsa"
}
```

## Identifiers

1. message\_id: scope of message\_id in header is to track paylaod delivery between sender and receiver.
2. transaction\_id: scope of transaction\_id in message is to uniquely corelate business request(s).
3. reference\_id: scope of the reference\_id in message domain entity is to corelate individual business request.

## Normative Addressing

1. To enable payment processing using various store of value accounts, G2P Connect uses normative addressing format and refer these as financial addresses (fa). e.g. payer fa, payee fa etc.,
2. To enable integration with various identity systems/registries all beneficiary id's are also represented in normative formats.

```yaml
type: string
description: "<br>
  1. Financial address is case insensitive normative represenation of a store of value account represented as id-type:id@provider <br>
  2. Every payer/payee financial address must resolve to an actual store of value account number for processing the payment instruction <br>
  3. It is recommended the mapping between id and store of value account details to be held only at final store of value entity and intermediaries can hold 
  3. Few examples: <br>
      - token@id-provider e.g token:12345@mosip <br>
      - uid@pymt-rail e.g uid:12345@mosip <br>
      - vid@id-provider e.g vid:12345@PhilID <br>
      - mobile@mobile-provider e.g mobile:12345@m-pesa <br>
      - account-id@bank-psp-code e.g account:12345@gtbank <br>
      - account-no@ifsc-code.ifsc.npci e.g account:12345@HDFC0000001.ifsc.npci <br>
      - user-id@psp-code e.g. joeuser@gtbank <br>
      - token@psp-code e.g token:123456@sbi <br>
      - code@purpose-code.voucher-provider e.g voucher:12345@food.sodexo <br>
      - cdbc-id@cdbc e.g. 12345@DCash"
format: "^[a-zA-Z0-9.-]+@[a-zA-Z0-9.-]+$"
example: "token:12345@gtbank"
```

```yaml
type: string
description: "<br>
  1. Beneficiary id is case insensitve normative represenation as id-type:id@provider <br>
  2. This will enumerate foundational and functioanl id's to easily resolvable addressess <br>
  3. This property is intended to unambiguously refer to an object, such as a person, organization, etc., <br>
  4. Few examples: <br>
      - id@identifier-type.id-provider e.g token:12345@mosip, vid:12345@philid <br>
      - id@civil-registry.issuing-agency e.g id:12345@rwanda, id:12345@ejanma.karnataka <br>
      - id@functional-identifier.issuing-agency e.g id:12345@voter.Rwanda, id:12345@DL.karnataka, mobile:12345@fruits.karnataka <br>
  Note: id provider should be made configurable and solutions should adapt to the local jurisdiction and policies.<br>
        e.g fruits.karnataka represents farmer registry in karnataka state govt.<br>"
format: "^[a-zA-Z0-9.-]+@[a-zA-Z0-9.-]+$"
example: "vid:12345@mosip"
```

## Transport Protocol

1. G2P Connect Integration Specification is designed to be transport layer agnostic viz. JSON entities over HTTPS, pub/sub event based messaging or file exchanges.
2. header field helps in reliable exchange at transport layer between sender and receiver.

## Communication Protocol

1. Most of the interactions are asynchronous in nature between sender/receiver.
2. Sender initiates with message\_id and receiver synchronously acknowledge with receipt of the message with ACK/NACK/ERR status codes.
3. ACK represent async callback, NACK represent end of exchange and ERR represent message couldn't be successfully parsed for processing.
4. For all async /xxxx service end points, Senders are required to implement /on\_xxxx end points to receive callback responses.
5. All services implement /{service}/txn/status and /{service}/txn/on\_status end points to poll and fetch repsones of previously attempted requests using transaction\_id or reeference\_id
6. For service end points that are exposed to end user interfacing UX channels where call back processing becomes challenging or technical not-feasibile, receiver systems are required to implement GET status api's. Sender systems may poll to GET transaction status/detailed information and limit count of individual business requests (i.e reference\_id's).

## File based processing

1. For file based exchange it is recommended to use the JSON payloads. JSON format is hierarchal, self describing for easy integrations.
2. If a country has use case to use other formats (e.g. CSV) then it is recommended to use the same JSON definitions by flattening each entity as a file row. In this scenario, signature element shall be part of the first row, header elements in second row followed by one or more message array listed in each row. nested objects are to be flatted in the same row.
3. Above logic shall work for encrypted request element as well.
4. File exchange may happen using HTTPS, sFTP or any other file exchange mechanisms.

## Event based processing

1. G2P Connect JSON based request/response entities shall work as events over messaging infrastructure.
2. Trusted sender and receiver systems on a network should create pub/sub end points.

## Data Formats

1. All dates and timestamps are represented in RFC3339 format including timezone e.g., 2022-12-04T18:01:07+05:30
2. All currency codes represented in ISO 4217 format

