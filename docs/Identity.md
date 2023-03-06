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

## Possible Utilities
1. Toolkits to easily read Person's Verifibale Credentials to auto populate for social programs registration process
2. Toolkits to offline verification of beneficiary using VCs with local face match
3. Online Auth/Kyc APIs using biometric based auth modality against country specific Foundation ID implemenations

## Request For Comments
1. Identity verification status [reason codes and messages](https://github.com/G2P-Connect/specs/blob/draft/docs/rfc/specs-draft/g2p_id_vrfy_status_codes.md)

## Integration Schematics
![](./images/draw.io/interface-identity.drawio.png)


