# 📃 Credentialing

### Overview

1. Standardising credential issuance, search, verification, revokation and status check capabilities between G2P enabling DPGS/Products/Systems.
2. Country operational model shall decide the entity that manages one or more crendentialling systems.



### References

1. API specification [link](https://g2p-connect.github.io/specs/dist/g2p-credential.html)
2. Discussion [thread](https://github.com/G2P-Connect/.github/discussions)

### Interface List

| Interface ID   | End Point                      | Description                                                                                              |
| -------------- | ------------------------------ | -------------------------------------------------------------------------------------------------------- |
| CRED-ISSU      | POST /credential/issue         | Issue credential                                                                                         |
| CRED-ON-ISSU   | POST /credential/on-issue      | Issuance info through callback                                                                           |
| CRED-SRCH      | POST /credential/search        | Search credential by credential id, issuer, beneficary id, etc.,                                         |
| CRED-ON-SRCH   | POST /credential/on-search     | Credentail search results through call back                                                              |
| CRED-STS       | POST /credential/status        | Credential status update request                                                                         |
| CRED-ON-STS    | POST /credential/on-status     | Credentail status update results through call back                                                       |
| CRED-TXNSTS    | POST /credential/txn/on-status | Perform async status check of previous credential requests using transaction\_id and/or reference\_id(s) |
| CRED-ON-TXNSTS | POST /credential/txn/on-status | Response async status using callback                                                                     |

### Integration Schematics
