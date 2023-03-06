# FAMAP-ON-RSLV : FA Map Resolve Status 

## ID: 
G2PConnect-FAMAP-004

## Title:
FAMAP-ON-RSLV : FA Map Resolve Status

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
To discuss and finalize all valid reason codes to process Financial Address map resolve request

Please make additional suggestions through discussion forums and/or pull requests to files @
  - specs/src/common/schema/RequestStatus.yaml
  - specs/src/mapper/components/io/ResolveStatusReasonCode.yaml
  
## Status Reason Codes
| status | status_reason_code | status_reason_message | 
| ------ | ------------------ | --------------------- |
| rcvd   |                    | Request received      |
| pdng   |                    | Required initiated    |
| succ   |                    | Request processed     |
| rjct   | rjct.reference_id.invalid |  invalid reference_id|
| rjct   | rjct.reference_id.duplicate | duplicate reference_id |
| rjct   | rjct.schedule_ts.invalid | timestamp is invalid |
| rjct   | rjct.beneficiary_name.invalid |  |
| rjct   | rjct.resolve_type.not_supported |  |




## Acknowledgements
  The author would like to thank the following individuals for their contributions in creating the first draft of this document (in alphabetical order):
1. 