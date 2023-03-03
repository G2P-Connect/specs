# DSBT-ON-STS : Disburse Status 

## ID: 
G2PConnect-DSBT-ON-STS

## Draft ID
Draft-01

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
  
## Disburse Status 
| status | status_reason_code | status_reason_message | 
| ------ | ------------------ | --------------------- |
| RCVD   |                    | Payment received      |
| PDNG   |                    | Payment initiated     |
| SUCC   |                    | Payment success       |
| RJCT   | RJCT_PAYER_FA_INVALID | Payer Financial Address is invalid |
| RJCT   | RJCT_PAYEE_FA_INVALID | Payee Financial Address is invalid |
| RJCT   | RJCT_AMOUNT_INVALID | Invalid Amount |
| RJCT   | RJCT_SHCHEDULE_TIMESTAMP_INVALID | Schedule timestamp is invalid |
| RJCT   | RJCT_CURRENCY_CODE_INVALID | Currency code is invalid |
| RJCT   | RJCT_REFERENCE_ID_DUPLICATE | Duplicate reference id |
| UKWN   | UKWN_REFERENCE_ID_NOT_FOUND| Reference id not found  |
| UKWN   | UKWN_REFERENCE_ID_NOT_FOUND | Transaction id not found |

## Acknowledgements
  The author would like to thank the following individuals for their contributions in creating the first draft of this document (in alphabetical order):
1. 
