## Overview
1. Standardising linking, unlinking, update, resolve and status check capabilities between G2P enabling DPGS/Products/Systems.
2. Beneficiary identifier can be of national id, id tokens, mobile number, email id, virtual payment ids, user id's, etc that are supported by underlying payment processing/rails platforms.
3. Country operational model shall decide the entity that manages one or more ID to Financial address map registries.

## References
1. API specification [link](https://g2p-connect.github.io/specs/dist/g2p-mapper.html)
2. Discussion [thread](https://github.com/G2P-Connect/.github/discussions/16)

## Interface List

| Interface ID | End Point | Description | 
| ------------ | --------- | ----------- |
| FAMAP-LNK | POST /mapper/link | Linking id / fa to mapper registry | 
| FAMAP-ON-LNK | POST /mapper/on-link | Linking response through callback end point | 
| FAMAP-UPDT | POST /mapper/update | Updating fa details against an id in mapper registry |
| FAMAP-ON-UPDT | POST /mapper/on-update | Update response through callback end point |
| FAMAP-ULNK | POST /mapper/unlink | remove id/fa link from mapper registry | 
| FAMAP-ON-ULNK | POST /mapper/on-unlink | Unlinking response through callback end point | 
| FAMAP-RSLV | POST /mapper/resolve | Resolve fa / beneficiary id to a store of value | 
| FAMAP-ON-RSLV | POST /mapper/on-resolve | Resolve response through callback end point | 
| FAMAP-SRCH | POST /mapper/search | Resolve fa / beneficiary id to a store of value | 
| FAMAP-ON-SRCH| POST /mapper/on-search | Resolve response through callback end point | 
| FAMAP-TXNSTS | POST /mapper/txn/status | Status check on any of the mapper actions using transaction_id or reference_id(s) | 
| FAMAP-ON-TXNSTS | POST /mapper/txn/on-status | Status check response through callback end point | 


## Request For Comments
## Request For Comments
1. FA Mapper [Linking](https://github.com/G2P-Connect/specs/blob/draft/docs/rfc/specs-draft/g2p_famap_lnk_status_codes.md) status reason codes and messages
2. FA Mapper [Update](https://github.com/G2P-Connect/specs/blob/draft/docs/rfc/specs-draft/g2p_famap_updt_status_codes.md status reason codes and messages
3. FA Mapper [Unlink](https://github.com/G2P-Connect/specs/blob/draft/docs/rfc/specs-draft/g2p_famap_ulnk_status_codes.md) status reason codes and messages
4. FA Mapper [Resolve](https://github.com/G2P-Connect/specs/blob/draft/docs/rfc/specs-draft/g2p_famap_rslv_status_codes.md) status reason codes and messages

## Integration Schematics
![](./images/draw.io/interface-mapper.drawio.png)



