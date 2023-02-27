# AUTHZ-001 : Authorization Scope 

## ID: 
G2PConnect-002

## Draft ID
Draft-01

## Title:
AUTHZ-001 : Authorization Scope 

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

  Please make additional suggestions through discussion forums and/or pull requests to file @ specs/src/authz/components/io/OidcScope.yaml

  ## Error Codes
  ```
    - "disburse"
    - "on-disburse"
    - "disburse/status"
    - "disburse/on-status"
    - "mapper/link"
    - "mapper/unlink"
    - "mapper/update"
    - "mapper/on-update"
    - "mapper/resolve"
    - "mapper/on-resolve"
    - "mapper/status"
    - "mapper/on-status"
    - "<etc>"
  ```

  ## Acknowledgements
  The author would like to thank the following individuals for their contributions in creating the first draft of this document (in alphabetical order):

1. 
