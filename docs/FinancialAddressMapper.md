## Overview
1. Standardising linking, unlinking, update, resolve and status check capabilities between G2P enabling DPGS/Products/Systems.
2. Beneficiary identifier can be of national id, id tokens, mobile number, email id, virtual payment ids, user id's, etc that are supported by underlying payment processing/rails platforms.
3. Country operational model shall decide the entity that manages one or more ID to Financial address map registries.

## Interface List

| Interface ID | End Point | Description | 
| ------------ | --------- | ----------- |
| FAMAP-LNK | POST [/mapper/link](https://g2p-connect.github.io/specs/dist/g2p-mapper.html#operation/post_g2p_mapper_link) | Linking id / fa to mapper registry | 
| FAMAP-ON-LNK | POST [/mapper/on-link](https://g2p-connect.github.io/specs/dist/g2p-mapper.html#operation/post_g2p_mapper_on-link) | Linking status info through callback end point | 
| FAMAP-UPDT | POST [/mapper/update](https://g2p-connect.github.io/specs/dist/g2p-mapper.html#operation/put_g2p_mapper_update) | Updating fa details to mapper registry|
| FAMAP-ON-UPDT | POST [/mapper/on-update](https://g2p-connect.github.io/specs/dist/g2p-mapper.html#operation/put_g2p_mapper_on-update) | Update response through callback end point |
| FAMAP-ULNK | POST [/mapper/unlink](https://g2p-connect.github.io/specs/dist/g2p-mapper.html#operation/post_g2p_mapper_unlink) | remove id/fa link from mapper registry | 
| FAMAP-ON-ULNK | POST [/mapper/on-unlink](https://g2p-connect.github.io/specs/dist/g2p-mapper.html#operation/post_g2p_mapper_on-unlink) | Unlinking response through callback end point | 
| FAMAP-RSLV | POST [/mapper/resolve](https://g2p-connect.github.io/specs/dist/g2p-mapper.html#operation/post_g2p_mapper_resolve) | Resolve fa / beneficiary id to a store of value | 
| FAMAP-ON-RSLV | POST [/mapper/on-resolve](https://g2p-connect.github.io/specs/dist/g2p-mapper.html#operation/post_g2p_mapper_on-resolve) | Resolve response through callback end point | 
| FAMAP-STS | POST [/mapper/status](https://g2p-connect.github.io/specs/dist/g2p-mapper.html#operation/post_g2p_mapper_status) | Status check on any of the mapper actions using transaction_id or reference_id(s) | 
| FAMAP-ON-STS | POST [/mapper/on-status](https://g2p-connect.github.io/specs/dist/g2p-mapper.html#operation/post_g2p_mapper_on-status) | Status check response through callback end point | 

## Request For Comments
1. FA mapper linking status, reason code/message- [FAMAP-ON-LNK-Status-Codes-Draft-01](https://github.com/G2P-Connect/specs/blob/draft/docs/rfc/specs-draft/FAMAP-ON-LNK-Status-Codes-Draft-01.md)
2. FA mapper update status, reason code/message- [FAMAP-ON-UPDT-Status-Codes-Draft-01](https://github.com/G2P-Connect/specs/blob/draft/docs/rfc/specs-draft/FAMAP-ON-UPDT-Status-Codes-Draft-01.md)
3. FA mapper unlink status, reason code/message- [FAMAP-ON-ULNK-Status-Codes-Draft-01](https://github.com/G2P-Connect/specs/blob/draft/docs/rfc/specs-draft/FAMAP-ON-ULNK-Status-Codes-Draft-01.md)
4. FA mapper resolve status, reason code/message- [FAMAP-ON-RSLV-Status-Codes-Draft-01](https://github.com/G2P-Connect/specs/blob/draft/docs/rfc/specs-draft/FAMAP-ON-RSLV-Status-Codes-Draft-01.md)

## Integration Schematics
![](./images/draw.io/interface-mapper.drawio.png)


## References
1. API specification [link](https://g2p-connect.github.io/specs/dist/g2p-mapper.html)
2. Discussion [thread](https://github.com/G2P-Connect/.github/discussions/16)