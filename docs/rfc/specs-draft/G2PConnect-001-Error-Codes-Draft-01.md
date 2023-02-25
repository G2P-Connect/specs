# Error Codes for G2P Connect Communications

## ID: 
G2PConnect-001

## Draft ID
Draft-01

## Title:
Error Codes

## Status:
Protocol Draft

## Published on:
Feburary 15, 2023

## Expires on:
Feburary 15, 2024 or Date of publication of next draft which ever is earlier

## License:
CC-BY-ND

## Authors:
1. Vijay Vujjini : vijay.vujjini@gmail.com

## Introduction
  This document outlines the error codes which must be returned by a G2P Connect sender/receiver. 

  1. Assumption is Recevier successfully received, parsed and verfied the authenticity of message. 
  2. All validations and exception to generate a successful ACK/NACK response are tracked in this category.
  3. These error codes are part of ACK/NACK Error element.

  ## Error Codes
  |**Code**|**Message**|**Description**|
  |---|---|---|
  |**30000|Invalid request error|Generic invalid request error**|
  |30001|Sender not found|When Receiver is unable to find the sender id|
  |30002|Receiver not found|When Sender is unable to find the receiver id|
  |**40000|Business Error|Generic business error**|
  |40001|Action not applicable|When an API endpoint is not implemented receiver as it is not required for their use cases and a sender calls one of these endpoints|
  |40002|Insufficent funds|Insufficent funds|
  |**50000|Policy Error|Generic Policy Error**|
  |**90000|Technical Error|Generic Technical Error**|

  ## Acknowledgements
  The author would like to thank the following individuals for their contributions in creating the first draft of this document (in alphabetical order):

1. 
