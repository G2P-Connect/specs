# FAMAP-006 : FA Map Unlink Status 

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
  - specs/src/mapper/components/io/UnlinkStatusReasonCode.yaml
  
## Unlink Status 
| status | status_reason_code | status_reason_message | 
| ------ | ------------------ | --------------------- |
| RCVD   |                    | Payment received      |
| PDNG   |                    | Payment initiated     |
| SUCC   |                    | Payment success       |
| RJCT   | RJCT_TIMESTAMP_INVALID | Timestamp is invalid |
| RJCT   | RJCT_BENEFICIARY_NAME_INVALID | Beneficiary name is invalid |
| RJCT   | RJCT_REFERENCE_ID_DUPLICATE   | Duplicate reference id |
| RJCT   | UKWN_REFERENCE_ID_NOT_FOUND | Reference id not found |
| RJCT   | UKWN_TRANSACTION_ID_NOT_FOUND | Transaction id not found|


## Acknowledgements
  The author would like to thank the following individuals for their contributions in creating the first draft of this document (in alphabetical order):
1. 