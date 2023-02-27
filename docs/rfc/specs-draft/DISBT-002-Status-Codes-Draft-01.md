# DIST-003 : Disburse Status 

## ID: 
G2PConnect-001

## Draft ID
Draft-01

## Title:
DIST-003 : Disburse Status 

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
| RJCT   | RJCT_INVALID_PAYER_FA | Payer Financial Address is invalid |
| RJCT   | RJCT_INVALID_PAYEE_FA | Payee Financial Address is invalid |
| RJCT   | RJCT_INVALID_AMOUNT   | Invalid Amount |
| RJCT   | RJCT_INALID_SHCHEDULE_TIMESTAMP | Schedule timestamp is invalid |
| RJCT   | RJCT_INVALID_CURRENCY_CODE | Currency code is invalid |
| RJCT   | RJCT_DUPLICATE_REFERENCE_ID | Duplicate reference id |
| UKWN   | UKWN_NOT_FOUND_REFERENCE_ID | Reference id not found  |
| UKWN   | UKWN_NOT_FOUND_REFERENCE_ID | Transaction id not found |

## Acknowledgements
  The author would like to thank the following individuals for their contributions in creating the first draft of this document (in alphabetical order):
1. 
