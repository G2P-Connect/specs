## Overview
1. Standardising identity authenticate, kyc capabilities between G2P enabling DPGS/Products/Systems.

## Interface List

| Interface ID | End Point | Description | 
| ------------ | --------- | ----------- |
| ID-AUTH | POST [/identity/auth](https://g2p-connect.github.io/specs/dist/g2p-identity.html#operation/post_g2p_id_auth) | Authenticate using otp, demo or bio factors | 
| ID-ON-AUTH | POST [/identity/on-auth](https://g2p-connect.github.io/specs/dist/g2p-identity.html#operation/post_g2p_id_on-auth) | Authentication response through callback | 
| ID-KYC | POST [/identity/kyc](https://g2p-connect.github.io/specs/dist/g2p-identity.html#operation/put_g2p_id_kyc) | Kyc using otp, demo or bio factors |
| ID-ON-KYC | POST [/identity/on-kyc](https://g2p-connect.github.io/specs/dist/g2p-identity.html#operation/put_g2p_id_on-kyc) | Kyc repsonse through callback |

## Request For Comments
1. Authentication response status, reason code/message- [ID-ON-AUTH-Status-Codes-Draft-01](https://github.com/G2P-Connect/specs/blob/draft/docs/rfc/specs-draft/ID-ON-AUTH-Status-Codes-Draft-01.md)
2. Kyc response status, reason code/message- [ID-ON-KYC-Status-Codes-Draft-01](https://github.com/G2P-Connect/specs/blob/draft/docs/rfc/specs-draft/ID-ON-KYC-Status-Codes-Draft-01.md)

## Integration Schematics
![](./images/draw.io/interface-identity.drawio.png)


## References
1. API specification [link](https://g2p-connect.github.io/specs/dist/g2p-identity.html)
2. Discussion [thread](https://github.com/G2P-Connect/.github/discussions)