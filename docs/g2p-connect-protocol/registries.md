# Registries

### Overview

1. Standardising search, subscription, notification capabilities between G2P enabling DPGS/Products/Systems.

### References

1. API specification [link](https://g2p-connect.github.io/specs/dist/g2p-registry.html)
2. Discussion [thread](https://github.com/G2P-Connect/.github/discussions)

### Interface List

| Interface ID | End Point                    | Description                                                                       |
| ------------ | ---------------------------- | --------------------------------------------------------------------------------- |
| REG-SUB      | POST /registry/subscribe     | Subscribe to a life event with registry                                           |
| REG-NTFY     | POST /registry/notify        | REG to notify a life event to subscrbiers                                         |
| REG-SRCH     | POST /registry/serach        | Search person(s) in registry using key identifiers                                |
| REG-ON-SRCH  | POST /registry/on-search     | Search results through callback                                                   |
| REG-STS      | POST /registry/txn/status    | Status check on any of the crvs actions using transaction\_id or reference\_id(s) |
| REG-ON-STS   | POST /registry/txn/on-status | Status check response through callback                                            |

### Registry Types

G2P Connect indicative list of registries:

```yaml
type: string
description: |
  1. Registry types like civil, population, family, household, school, college, farmer, land, utitlity, etc., 
  2. Country specific implementations should extend and allow custom types.
enum:
 - "civil"
 - "population"
 - "family"
 - "household"
 - "school"
 - "farmer"
 - "land"
 - "vehicle"
 - "property"
 - "utility"
 - "other"
```

This specificaion recommends implemenations to extend custom registries as part of country specific requirements. The registry specific payload can be extended in the G2P connect registry sericce end points.

### Regisry Sub-Event Types

#### Civil Registry

```yaml
description: Civil registry event types
type: string
enum:
  - "birth"
  - "death"
  - "marriage"
  - "divorce"
  - "annulment"
  - "seperation"
  - "adoption"
  - "demographic_change"
  - "unregister"
```

#### Functional Registry

```yaml
description: Functional registry event types
type: string
enum:
  - "read"
  - "link"
  - "update"
  - "unlink"
```

### Request For Comments

1. REG [subscribe](../rfc/specs-draft/g2p\_reg\_sub\_status\_codes.md) status reason codes and messages

### Integration Schematics

![](../images/draw.io/interface-crvs.drawio.png)
