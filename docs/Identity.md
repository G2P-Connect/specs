## Overview
1. Standardising identity authenticate, kyc capabilities between G2P enabling DPGS/Products/Systems.

## Interface List

| Interface ID | End Point | Description | 
| ------------ | --------- | ----------- |
| CRED-001 | POST [/identity/auth](https://g2p-connect.github.io/specs/dist/g2p-identity.html#operation/post_g2p_id_auth) | Authenticate using otp, demo or bio factors | 
| CRED-002 | POST [/identity/on-auth](https://g2p-connect.github.io/specs/dist/g2p-identity.html#operation/post_g2p_id_on-auth) | Authentication response through callback | 
| CRED-003 | POST [/identity/kyc](https://g2p-connect.github.io/specs/dist/g2p-identity.html#operation/put_g2p_id_kyc) | Kyc using otp, demo or bio factors |
| CRED-004 | POST [/identity/on-kyc](https://g2p-connect.github.io/specs/dist/g2p-identity.html#operation/put_g2p_id_on-kyc) | Kyc repsonse through callback |

## Request For Comments
1. Authentication response status, reason code/message- [ID-002-Status-Codes-Draft-01](https://github.com/G2P-Connect/specs/blob/draft/docs/rfc/specs-draft/ID-002-Status-Codes-Draft-01.md)
2. Kyc response status, reason code/message- [ID-004-Status-Codes-Draft-01](https://github.com/G2P-Connect/specs/blob/draft/docs/rfc/specs-draft/ID-004-Status-Codes-Draft-01.md)

## Integration Schematics
![](./images/draw.io/interface-identity.drawio.png)


## References
1. API specification [link](https://g2p-connect.github.io/specs/dist/g2p-identity.html)
2. Discussion [thread](https://github.com/G2P-Connect/.github/discussions)