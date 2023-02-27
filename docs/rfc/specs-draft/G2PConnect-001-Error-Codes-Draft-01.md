# Error Codes for G2P Connect Transport Layer Communications

## ID: 
G2PConnect-001

## Draft ID
Draft-01

## Title:
Message Delivery - Error Codes

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
  This document outlines the error codes which must be returned by a G2P Connect sender/receiver to ensure reliable delivery of message. This is for protocol agnostic error codes i.e HTTPS, SFTP, Messaging, etc.,

  1. Assumption is Recevier successfully received, parsed, signature verfication and decryption of message for downsteam processing. 
  2. If any of the above steps are not possible, then receiver is expected to return one of the below error codes as a sync response.
  3. Please make additional suggestions through discussion forums and/or pull requests to file @ specs/src/common/schema/Error.yaml

  ## Error Codes
  ```
  - "ERR_ACCESS_DENIED"
  - "ERR_INVALID_REQUEST"
  - "ERR_INVALID_SENDER"
  - "ERR_INVALID_SENDER_URI"
  - "ERR_INVALID_RECEIVER"
  - "ERR_INVALID_RECEIVER_URI"
  - "ERR_MANDATORY_HEADER_MISSING"
  - "ERR_INVALID_MESSAGE_ID"
  - "ERR_INVALID_TIMESTAMP"
  - "ERR_INVALID_ACTION"
  - "ERR_INVALID_SIGNATURE"
  - "ERR_INVALID_ENCRYPTION"
  - "ERR_INVALID_MESSAGE"
  - "ERR_SERVICE_UNAVAILABLE"
  ```

  ## Acknowledgements
  The author would like to thank the following individuals for their contributions in creating the first draft of this document (in alphabetical order):

1. 
