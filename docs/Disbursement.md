### Reference Links
1. API specification [link](../api/g2p-disburse.yaml)
2. Disbursement feature relate [discussion thread](https://github.com/G2P-Connect/.github/discussions) 

### Overview
1. G2P Connect payment disbursement APIs intent is to enable standrdisation between social protection and payment processing/rails systems integration
2. Disburse and DisburseStatue are core entities to enable generation of payment instruction and reconcile processing status 


### Interface List

| Interface ID   | End Point | Description | 
| -------------- | --------- | ----------- |
| DISB-001 | POST /disburse |  Social protection platofrom initiating g2p disbursements | 
| DISB-002 | POST /on-disburse | Disbursement initiating systems receive disbursement status info through callback end points| 
| DISB-003 | POST /disburse/status | Request for disbursement status from (e.g) social protection, Treasury systems | 
| DISB-004 | POST /disburse/on-status | Disbursement status to social protection, Treasury systems. | 
| DISB-005 | GET /disburse/status/{transaction_id} /{summary_only} | Disbursement status to social protection, Treasury systems | 
| DISB-006 | GET /disburse/status/{reference_id} | Disbursement status to social protection, Treasury systems | 


***

![](https://github.com/G2P-Connect/specs/blob/draft/docs/images/draw.io/interface-disb.drawio.png)
