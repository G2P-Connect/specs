# REG-ON-SUB : Registry Subscribe

## ID: 
G2PConnect-REG-001

## Title:
REG-ON-SUB : Registry Subscribe

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
To discuss and finalize all valid reason codes for identity verification service 

Please make additional suggestions through discussion forums and/or pull requests to files @
  - specs/src/common/schema/RequestStatus.yaml
  - specs/src/registry/components/io/SubscribeStatusReasonCode.yaml
  
## Status Reason Codes
| status | status_reason_code | status_reason_message | 
| ------ | ------------------ | --------------------- |
| rcvd   |                    | Request received      |
| pdng   |                    | Required initiated    |
| succ   |                    | Request processed     |
| rjct   | rjct.reference_id.invalid |  invalid reference_id|
| rjct   | rjct.reference_id.duplicate | duplicate reference_id |
| rjct   | rjct.timestamp.invalid | timestamp is invalid |
| rjct   | rjct.{attribute_name}.invalid | Schedule timestamp is invalid |
| rjct   | rjct.{attribute_value}.invalid | Currency code is invalid |
| rjct   | rjct.{operator}.invalid | Duplicate reference id |
| rjct   | id.verify_success | |
| rjct   | id.cancelled | | 
| rjct   | id.suspended |  | 

## Acknowledgements
  The author would like to thank the following individuals for their contributions in creating the first draft of this document (in alphabetical order):
1. 