# 🆔 Identity

### Overview

1. G2P Connect recommends Gov Stack published Identity Building Block [specifications](https://govstack.gitbook.io/bb-identity/8-apis-and-services)&#x20;
2. Below G2P Connect API's with batch / async support is an additional option for implementing systems to consider to integrate with digital ID systems.

### References

1. API specification [link](https://g2p-connect.github.io/specs/dist/g2p-identity.html)
2. Discussion [thread](https://github.com/G2P-Connect/.github/discussions)

### Interface List

| Interface ID | End Point                    | Description                                                                                                 |
| ------------ | ---------------------------- | ----------------------------------------------------------------------------------------------------------- |
| ID-VRFY      | POST /identity/verify        | Authenticate using otp, demo or bio factors                                                                 |
| ID-ON-VRFY   | POST /identity/on-verify     | Authentication response through callback                                                                    |
| ID-TXNSTS    | POST /identity/txn/on-status | Perform async status check of previous identity transanctions using transaction\_id and/or reference\_id(s) |
| ID-ON-TXNSTS | POST /identity/txn/on-status | Response to async status check of previous identity transanctions using callback                            |

### Utilities

Below are few utilities that community can open source:

1. Mobile / web app Toolkits to easily read a person's Verifibale Credentials to auto populate for social programs registration processes.
2. Toolkits to enable "offline" verification of beneficiary using VC data + local face match for proof of presence.
3. Online Auth/Kyc APIs using biometric based auth modalities using country specific Foundation ID implemenations.
4. Demographic deduplication utilities for scoial protection platforms where de-duplicated foundational ID is not be available/accessible.

### Integration Schematics
