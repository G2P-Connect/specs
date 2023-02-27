# Disburse - Status

## ID: 
G2PConnect-001

## Draft ID
Draft-01

## Title:
Disbuese - Status

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
  This document outlines the possible scope values to allow as part of JWT tokens to manage end point access. The initial assumption is to allow all end point verbs as enumerated list to manage end point access by respective implementing systems 

  Please make additional suggestions through discussion forums and/or pull requests to files @
  - specs/src/disburse/components/io/DisburseStatus.yaml
  - specs/src/disburse/components/io/DisburseStatusReasonCode.yaml
  
## Disburse Status
  ```
    Disburse status definitions: 
      1. RCVD: Received; payment received 
      2. PDNG: Pending; payment initiated 
      3. RJCT: Rejected; payment initiated and has been rejected 
      4. SUCC: Success; payment is successful
  ```

## Disburse Status Reason Code & Message
  ```
    Disburse status reason code definitions: 
      1. RJCT_INVALID_PAYER_FA; Payer Financial Address is invalid
      2. RJCT_INVALID_PAYEE_FA; Payee Financial Address is invalid
      3. RJCT_INVALID_AMOUNT; Invalid Amount
      4. RJCT_INALID_SHCHEDULE_TIMESTAMP; Schedule timesatmp is invalid
      5. RJCT_INVALID_CURRENCY_CODE; Currency code is invalid
      6. etc.,
  ```
## Acknowledgements
  The author would like to thank the following individuals for their contributions in creating the first draft of this document (in alphabetical order):

1. 
