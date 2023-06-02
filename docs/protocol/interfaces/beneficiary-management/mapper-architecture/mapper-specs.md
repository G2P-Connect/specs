# Mapper Specs

### Assumptions

1. Financial Address (FA) representred in normative form is pre-requisite for these api's to work
2. Payer/Payee FAs are to be obtianed by the respective financial entity that holds store of value accounts

### References

1. API specification [link](https://g2p-connect.github.io/specs/dist/g2p-mapper.html)
2. Discussion [thread](https://github.com/G2P-Connect/.github/discussions/16)

### Interface List

| Interface ID    | End Point                  | Description                                                                         |
| --------------- | -------------------------- | ----------------------------------------------------------------------------------- |
| FAMAP-LNK       | POST /mapper/link          | Linking id / fa to mapper registry                                                  |
| FAMAP-ON-LNK    | POST /mapper/on-link       | Linking response through callback end point                                         |
| FAMAP-UPDT      | POST /mapper/update        | Updating fa details against an id in mapper registry                                |
| FAMAP-ON-UPDT   | POST /mapper/on-update     | Update response through callback end point                                          |
| FAMAP-ULNK      | POST /mapper/unlink        | remove id/fa link from mapper registry                                              |
| FAMAP-ON-ULNK   | POST /mapper/on-unlink     | Unlinking response through callback end point                                       |
| FAMAP-RSLV      | POST /mapper/resolve       | Resolve fa / beneficiary id to a store of value details                             |
| FAMAP-ON-RSLV   | POST /mapper/on-resolve    | Resolve response through callback end point                                         |
| FAMAP-TXNSTS    | POST /mapper/txn/status    | Status check on any of the mapper actions using transaction\_id or reference\_id(s) |
| FAMAP-ON-TXNSTS | POST /mapper/txn/on-status | Status check response through callback end point                                    |

### Integration Schematics



<figure><img src="broken-reference" alt=""><figcaption></figcaption></figure>

