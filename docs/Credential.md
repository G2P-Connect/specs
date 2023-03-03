## Overview
1. Standardising credential issuance, search, verification, revokation and status check capabilities between G2P enabling DPGS/Products/Systems.
2. Country operational model shall decide the entity that manages one or more crendentialling systems

## Interface List

| Interface ID | End Point | Description | 
| ------------ | --------- | ----------- |
| CRED-ISSU | POST [/credential/issue](https://g2p-connect.github.io/specs/dist/g2p-credential.html#operation/post_g2p_cred_issue) | Issue credential | 
| CRED-ON-ISSU | POST [/credential/on-issue](https://g2p-connect.github.io/specs/dist/g2p-credential.html#operation/post_g2p_cred_on-issue) | Issuance info through callback | 
| CRED-SRCH | POST [/credential/search](https://g2p-connect.github.io/specs/dist/g2p-credential.html#operation/put_g2p_cred_search) | Search credential by credential id, issuer, beneficary id, etc., |
| CRED-ON-SRCH | POST [/credential/on-search](https://g2p-connect.github.io/specs/dist/g2p-credential.html#operation/put_g2p_cred_on-search) | Search info through callback |
| CRED-STS | POST [/credential/revoke](https://g2p-connect.github.io/specs/dist/g2p-credential.html#operation/post_g2p_cred_revoke) | Revoke crendential by crendential id | 
| CRED-ON-STS | POST [/credential/on-revoke](https://g2p-connect.github.io/specs/dist/g2p-credential.html#operation/post_g2p_cred_on-revike) | Revokation info through callback | 
| CRED-TXN-STS | POST [/credential/status](https://g2p-connect.github.io/specs/dist/g2p-credential.html#operation/post_g2p_cred_status) | Status check on any of the crendentialing actions using transaction_id or reference_id(s) | 
| CRED-ON-TXN-STS | POST [/credential/on-status](https://g2p-connect.github.io/specs/dist/g2p-credential.html#operation/post_g2p_cred_on-status)| Status check response through callback | 

## Request For Comments
1. Credential issuance status, reason code/message- [CRED-ON-ISSU-Status-Codes-Draft-01](https://github.com/G2P-Connect/specs/blob/draft/docs/rfc/specs-draft/CRED-ON-ISSU-Status-Codes-Draft-01.md)
2. Credential search status, reason code/message- [CRED-ON-SRCH-Status-Codes-Draft-01](https://github.com/G2P-Connect/specs/blob/draft/docs/rfc/specs-draft/CRED-ON-SRCH-Status-Codes-Draft-01.md)
3. Credential verification status, reason code/message- [CRED-ON-STS-Status-Codes-Draft-01](https://github.com/G2P-Connect/specs/blob/draft/docs/rfc/specs-draft/CRED-ON-STS-Status-Codes-Draft-01.md)

## Integration Schematics
![](./images/draw.io/interface-credential.drawio.png)


## References
1. API specification [link](https://g2p-connect.github.io/specs/dist/g2p-credential.html)
2. Discussion [thread](https://github.com/G2P-Connect/.github/discussions)