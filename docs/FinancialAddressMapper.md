### Overview
1. Enable standardising linking, unlinking, update and status check capabilities between G2P enabling DPGS/Products/Systems.
2. Beneficiary identifier can be of national id, national id tokens, mobile number, email id, virtual payment ids, user id's etc that are supported by underlying payment processing/rails platforms. <br>
3. Country operational model shall decide the entity that manages one or more ID to Account Mapper registries.

### Interface List

| Interface ID | End Point | Description | 
| ------------ | --------- | ----------- |
| FAMAP-001 | POST [/mapper/link](https://g2p-connect.github.io/specs/dist/g2p-mapper.html#tag/1.-Financial-Address-Mapper-LinkingUnlinking/operation/post_g2p_mapper_link) | Linking id / fa to mapper registry | 
| FAMAP-002 | POST [/mapper/on-link](https://g2p-connect.github.io/specs/dist/g2p-mapper.html#tag/1.-Financial-Address-Mapper-LinkingUnlinking/operation/post_g2p_mapper_on-link) | Linking status info through callback end point | 
| FAMAP-003 | POST /mapper/update | Updating fa details to mapper registry|
| FAMAP-004 | POST /mapper/on-update | Update response through callback end point |
| FAMAP-005 | POST /mapper/unlink | remove id/fa link from mapper registry | 
| FAMAP-006 | POST /mapper/on-unlink | Unlinking response through callback end point | 
| FAMAP-007 | POST /mapper/resolve | Resolve fa / beneficiary id to a store of value | 
| FAMAP-008 | POST /mapper/on-resolve | Resolve response through callback end point | 
| FAMAP-009 | POST /mapper/status | Status check using transaction_id or reference_id(s) | 
| FAMAP-010 | POST /mapper/on-status | Status check response through callback end point | 


***

![](./images/draw.io/interface-mapper.drawio.png)

### References
1. API specification [link](https://g2p-connect.github.io/specs/dist/g2p-mapper.html)
2. Discussion [thread](https://github.com/G2P-Connect/.github/discussions)