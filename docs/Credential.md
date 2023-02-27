## Overview
1. Standardising credential issuance, search, verification, revokation and status check capabilities between G2P enabling DPGS/Products/Systems.
2. Country operational model shall decide the entity that manages one or more crendentialling systems

## Interface List

| Interface ID | End Point | Description | 
| ------------ | --------- | ----------- |
| CRED-001 | POST [/credential/issue](https://g2p-connect.github.io/specs/dist/g2p-mapper.html#operation/post_g2p_mapper_link) | Issue credential | 
| CRED-002 | POST [/credential/on-issue](https://g2p-connect.github.io/specs/dist/g2p-mapper.html#operation/post_g2p_mapper_on-link) | Issuance info through callback | 
| CRED-003 | POST [/credential/search](https://g2p-connect.github.io/specs/dist/g2p-mapper.html#operation/put_g2p_mapper_update) | Search credential by credential id, issuer, beneficary id, etc., |
| CRED-004 | POST [/credential/on-search](https://g2p-connect.github.io/specs/dist/g2p-mapper.html#operation/put_g2p_mapper_on-update) | Search info through callback e |
| CRED-005 | POST [/credential/verify](https://g2p-connect.github.io/specs/dist/g2p-mapper.html#operation/post_g2p_mapper_unlink) | Verify crendential by crendential id | 
| CRED-006 | POST [/credential/on-verify](https://g2p-connect.github.io/specs/dist/g2p-mapper.html#operation/post_g2p_mapper_on-unlink) | Verification info through callback | 
| CRED-007 | POST [/credential/revoke](https://g2p-connect.github.io/specs/dist/g2p-mapper.html#operation/post_g2p_mapper_unlink) | Revoke crendential by crendential id | 
| CRED-008 | POST [/credential/on-revoke](https://g2p-connect.github.io/specs/dist/g2p-mapper.html#operation/post_g2p_mapper_on-unlink) | Revokation info through callback | 
| CRED-009 | POST [/credential/status](https://g2p-connect.github.io/specs/dist/g2p-mapper.html#operation/post_g2p_mapper_status) | Status check on any of the crendentialing actions using transaction_id or reference_id(s) | 
| CRED-010 | POST [/credential/on-status](https://g2p-connect.github.io/specs/dist/g2p-mapper.html#operation/post_g2p_mapper_on-status)| Status check response through callback | 

## Request For Comments
1. Credential issuance status, reason code/message- [CRED-002-Status-Codes-Draft-01](https://github.com/G2P-Connect/specs/blob/draft/docs/rfc/specs-draft/CRED-002-Status-Codes-Draft-01.md)
2. Credential search status, reason code/message- [CRED-004-Status-Codes-Draft-01](https://github.com/G2P-Connect/specs/blob/draft/docs/rfc/specs-draft/CRED-004-Status-Codes-Draft-01.md)
3. Credential verification status, reason code/message- [CRED-006-Status-Codes-Draft-01](https://github.com/G2P-Connect/specs/blob/draft/docs/rfc/specs-draft/CRED-006-Status-Codes-Draft-01.md)
4. Credential revocation status, reason code/message- [CRED-008-Status-Codes-Draft-01](https://github.com/G2P-Connect/specs/blob/draft/docs/rfc/specs-draft/CRED-008-Status-Codes-Draft-01.md)

## Integration Schematics
![](./images/draw.io/interface-credential.drawio.png)


## References
1. API specification [link](https://g2p-connect.github.io/specs/dist/g2p-credential.html)
2. Discussion [thread](https://github.com/G2P-Connect/.github/discussions)