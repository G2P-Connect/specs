## Overview
1. Standardising search, subscription, notification capabilities between G2P enabling DPGS/Products/Systems.

## Interface List

| Interface ID | End Point | Description | 
| ------------ | --------- | ----------- |
post_g2p_cred_on-revike) | Revokation info through callback |
| CRVS-001 | POST [/crvs/serach](https://g2p-connect.github.io/specs/dist/g2p-crvs.html#operation/post_g2p_crvs_search) | Issue credential | 
| CRVS-002 | POST [/crvs/on-search](https://g2p-connect.github.io/specs/dist/g2p-crvs.html#operation/post_g2p_crvs_on-search) | Issuance info through callback | 
| CRVS-007 | POST [/crvs/verify](https://g2p-connect.github.io/specs/dist/g2p-crvs.html#operation/post_g2p_crvs_verify) | Revoke crendential by crendential id | 
| CRVS-008 | POST [/crvs/on-verify](https://g2p-connect.github.io/specs/dist/g2p-crvs.html#operation/put_g2p_crvs_on-verify) |
| CRVS-003 | POST [/crvs/subscribe](https://g2p-connect.github.io/specs/dist/g2p-crvs.html#operation/put_g2p_crvs_subscribe) | Search credential by credential id, issuer, beneficary id, etc., |
| CRVS-004 | POST [/crvs/on-subscribe](https://g2p-connect.github.io/specs/dist/g2p-crvs.html#operation/put_g2p_crvs_on-subscribe) | Search info through callback |
| CRVS-005 | POST [/crvs/notify](https://g2p-connect.github.io/specs/dist/g2p-crvs.html#operation/post_g2p_crvs_notify) | Verify crendential by crendential id | 
| CRVS-006 | POST [/crvs/on-notify](https://g2p-connect.github.io/specs/dist/g2p-crvs.html#operation/post_g2p_crvs_on-notify) | Verification info through callback | 
| CRVS-009 | POST [/crvs/status](https://g2p-connect.github.io/specs/dist/g2p-crvs.html#operation/post_g2p_crvs_status) | Status check on any of the crendentialing actions using transaction_id or reference_id(s) | 
| CRVS-010 | POST [/crvs/on-status](https://g2p-connect.github.io/specs/dist/g2p-crvs.html#operation/post_g2p_crvs_on-status)| Status check response through callback | 

## Request For Comments
1. Civil registry search status, reason code/message- [CRVS-002-Status-Codes-Draft-01](https://github.com/G2P-Connect/specs/blob/draft/docs/rfc/specs-draft/CRVS-002-Status-Codes-Draft-01.md)
2. Civil registry verify status, reason code/message- [CRVS-004-Status-Codes-Draft-01](https://github.com/G2P-Connect/specs/blob/draft/docs/rfc/specs-draft/CRVS-004-Status-Codes-Draft-01.md)
3. Civil registry subscription status, reason code/message- [CRVS-006-Status-Codes-Draft-01](https://github.com/G2P-Connect/specs/blob/draft/docs/rfc/specs-draft/CRVS-006-Status-Codes-Draft-01.md)
4. Civil registry notification status, reason code/message- [CRVS-008-Status-Codes-Draft-01](https://github.com/G2P-Connect/specs/blob/draft/docs/rfc/specs-draft/CRVS-008-Status-Codes-Draft-01.md)

## Integration Schematics
![](./images/draw.io/interface-crvs.drawio.png)


## References
1. API specification [link](https://g2p-connect.github.io/specs/dist/g2p-crvs.html)
2. Discussion [thread](https://github.com/G2P-Connect/.github/discussions)