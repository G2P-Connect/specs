# DSBT-ON-STS : Disburse Status 

## ID: 
G2PConnect-DSBT-001

## Title:
DSBT-ON-STS : Disburse Status 

## Status:
Protocol Draft

## Published on:
April 15, 2023

## Expires on:
April 15, 2024 or Date of publication of next draft which ever is earlier

## License:
CC-BY-ND

## Authors:
1. Vijay Vujjini : vijay.vujjini@gmail.com

## Introduction
To discuss and finalize all valid reason codes to process Disbursement request

Please make additional suggestions through discussion forums and/or pull requests to files @
  - specs/src/common/schema/RequestStatus.yaml
  - specs/src/disburse/components/io/DisburseStatusReasonCode.yaml
  
## Status Reason Codes
| status | status_reason_code | status_reason_message | 
| ------ | ------------------ | --------------------- |
| rcvd   |                    | Request received      |
| pdng   |                    | Required initiated    |
| succ   |                    | Request processed     |
| rjct   | rjct.reference_id.invalid |  invalid reference_id|
| rjct   | rjct.reference_id.duplicate | duplicate reference_id |
| rjct   | rjct.schedule_ts.invalid | timestamp is invalid |
| rjct   | rjct.payer_fa.invalid |  |
| rjct   | rjct.payee_fa.invalid |  |
| rjct   | rjct.amount.invalid | |
| rjct   | rjct.currency_code.invalid|  |


## Acknowledgements
  The author would like to thank the following individuals for their contributions in creating the first draft of this document (in alphabetical order):
1. 