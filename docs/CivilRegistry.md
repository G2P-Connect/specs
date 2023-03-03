## Overview
1. Standardising search, subscription, notification capabilities between G2P enabling DPGS/Products/Systems.

## Interface List

| Interface ID | End Point | Description | 
| ------------ | --------- | ----------- |
post_g2p_cred_on-revike) | Revokation info through callback |
| CRVS-SRCH | POST [/crvs/serach](https://g2p-connect.github.io/specs/dist/g2p-crvs.html#operation/post_g2p_crvs_search) | Issue credential | 
| CRVS-ON-SRCH | POST [/crvs/on-search](https://g2p-connect.github.io/specs/dist/g2p-crvs.html#operation/post_g2p_crvs_on-search) | Issuance info through callback | 
| CRVS-VRFY | POST [/crvs/verify](https://g2p-connect.github.io/specs/dist/g2p-crvs.html#operation/post_g2p_crvs_verify) | Revoke crendential by crendential id | 
| CRVS-ON-VRFY | POST [/crvs/on-verify](https://g2p-connect.github.io/specs/dist/g2p-crvs.html#operation/put_g2p_crvs_on-verify) |
| CRVS-SUB | POST [/crvs/subscribe](https://g2p-connect.github.io/specs/dist/g2p-crvs.html#operation/put_g2p_crvs_subscribe) | Search credential by credential id, issuer, beneficary id, etc., |
| CRVS-ON-SUB | POST [/crvs/on-subscribe](https://g2p-connect.github.io/specs/dist/g2p-crvs.html#operation/put_g2p_crvs_on-subscribe) | Search info through callback |
| CRVS-NTFY | POST [/crvs/notify](https://g2p-connect.github.io/specs/dist/g2p-crvs.html#operation/post_g2p_crvs_notify) | Verify crendential by crendential id | 
| CRVS-ON-NTFY | POST [/crvs/on-notify](https://g2p-connect.github.io/specs/dist/g2p-crvs.html#operation/post_g2p_crvs_on-notify) | Verification info through callback | 
| CRVS-STS | POST [/crvs/status](https://g2p-connect.github.io/specs/dist/g2p-crvs.html#operation/post_g2p_crvs_status) | Status check on any of the crendentialing actions using transaction_id or reference_id(s) | 
| CRVS-ON-STS | POST [/crvs/on-status](https://g2p-connect.github.io/specs/dist/g2p-crvs.html#operation/post_g2p_crvs_on-status)| Status check response through callback | 

## Request For Comments
1. Civil registry search status, reason code/message- [CRVS-ON-SRCH-Status-Codes-Draft-01](https://github.com/G2P-Connect/specs/blob/draft/docs/rfc/specs-draft/CRVS-ON-SRCH-Status-Codes-Draft-01.md)
2. Civil registry verify status, reason code/message- [CRVS-ON-VRFY-Status-Codes-Draft-01](https://github.com/G2P-Connect/specs/blob/draft/docs/rfc/specs-draft/CRVS-ON-VRFY-Status-Codes-Draft-01.md)
3. Civil registry subscription status, reason code/message- [CRVS-ON-SUB-Status-Codes-Draft-01](https://github.com/G2P-Connect/specs/blob/draft/docs/rfc/specs-draft/CRVS-ON_SUB-Status-Codes-Draft-01.md)
4. Civil registry notification status, reason code/message- [CRVS-ON-NTFY-Status-Codes-Draft-01](https://github.com/G2P-Connect/specs/blob/draft/docs/rfc/specs-draft/CRVS-ON-NTFY-Status-Codes-Draft-01.md)

## Integration Schematics
![](./images/draw.io/interface-crvs.drawio.png)


## References
1. API specification [link](https://g2p-connect.github.io/specs/dist/g2p-crvs.html)
2. Discussion [thread](https://github.com/G2P-Connect/.github/discussions)