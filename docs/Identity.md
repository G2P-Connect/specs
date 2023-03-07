## Overview
1. Standardising identity authenticate, kyc capabilities between G2P enabling DPGS/Products/Systems.

## References
1. API specification [link](https://g2p-connect.github.io/specs/dist/g2p-identity.html)
2. Discussion [thread](https://github.com/G2P-Connect/.github/discussions)

## Interface List

| Interface ID | End Point | Description | 
| ------------ | --------- | ----------- |
| ID-VRFY | POST /identity/verify | Authenticate using otp, demo or bio factors | 
| ID-ON-VRFY | POST /identity/on-verify | Authentication response through callback | 
| ID-TXNSTS | POST /identity/txn/on-status | Perform async status check of previous identity transanctions using transaction_id and/or reference_id(s) | 
| ID-ON-TXNSTS | POST /identity/txn/on-status | Response to async status check of previous identity transanctions using callback | 

## Utilities 
Below are few utilities that community can open soruce:
1. Mobile / web app Toolkits to easily read a person's Verifibale Credentials to auto populate for social programs registration processes.
2. Toolkits to enable "offline" verification of beneficiary using VC data + local face match for proof of presence.
3. Online Auth/Kyc APIs using biometric based auth modalities using country specific Foundation ID implemenations.
4. Demographic deduplication utilities for scoial protection platforms where de-duplicated foundational ID is not be available/accessible.

## Request For Comments
1. Identity [verification](https://github.com/G2P-Connect/specs/blob/draft/docs/rfc/specs-draft/g2p_id_vrfy_status_codes.md) status [reason codes and messages

## Integration Schematics
![](./images/draw.io/interface-identity.drawio.png)


