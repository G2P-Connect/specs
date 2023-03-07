## Overview
1. Standardising search, subscription, notification capabilities between G2P enabling DPGS/Products/Systems.

## References
1. API specification [link](https://g2p-connect.github.io/specs/dist/g2p-crvs.html)
2. Discussion [thread](https://github.com/G2P-Connect/.github/discussions)

## Interface List

| Interface ID | End Point | Description | 
| ------------ | --------- | ----------- |
| CRVS-SUB | POST /crvs/subscribe | Subscribe to a life event with crvs | 
| CRVS-NTFY | POST /crvs/notify | CRVS to notify a life event to subscrbiers | 
| CRVS-SRCH | POST /crvs/serach | Search person(s) in crvs using key identifiers | 
| CRVS-ON-SRCH | POST /crvs/on-search | Search results through callback | 
| CRVS-VRFY | POST /crvs/fetch | Fetch request for one or more person's verifiable credential | 
| CRVS-ON-VRFY | POST /crvs/on-fetch | Fetch response with one or more person(s) verifiable crendential thorugh callback |
| CRVS-STS | POST /crvs/txn/status | Status check on any of the crvs actions using transaction_id or reference_id(s) | 
| CRVS-ON-STS | POST /crvs/txn/on-status | Status check response through callback | 

## Request For Comments
1. CRVS [subscribe](https://github.com/G2P-Connect/specs/blob/draft/docs/rfc/specs-draft/g2p_id_vrfy_status_codes.md) status reason codes and messages

## Integration Schematics
![](./images/draw.io/interface-crvs.drawio.png)
