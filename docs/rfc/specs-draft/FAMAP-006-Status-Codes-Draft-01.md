# FAMAP-006 : FA Map Unlin Status 

## ID: 
G2PConnect-001

## Draft ID
Draft-01

## Title:
FAMAP-006 : FA Map Unlink Status

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
To discuss and finalize all valid reason codes to process Financial Address map unlink request

Please make additional suggestions through discussion forums and/or pull requests to files @
  - specs/src/common/schema/RequestStatus.yaml
  - specs/src/mapper/components/io/ResolveStatusReasonCode.yaml
  
## Disburse Status 
| status | status_reason_code | status_reason_message | 
| ------ | ------------------ | --------------------- |
| RCVD   |                    | Payment received      |
| PDNG   |                    | Payment initiated     |
| SUCC   |                    | Payment success       |
| RJCT   | RJCT_INVALID_TIMESTAMP | Timestamp is invalid |
| RJCT   | RJCT_INVALID_BENEFICIARY_NAME | Beneficiary name is invalid |
| RJCT   | RJCT_DUPLICATE_REFERENCE_ID   | Duplicate reference id |
| RJCT   | UKWN_NOT_FOUND_REFERENCE_ID | Reference id not found |
| RJCT   | UKWN_NOT_FOUND_TRANSACTION_ID | Transaction id not found|


## Acknowledgements
  The author would like to thank the following individuals for their contributions in creating the first draft of this document (in alphabetical order):
1. 