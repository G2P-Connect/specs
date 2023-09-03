# API documentation

The APIs are accessible through
    1. DCI:  [standards](https://spdci.github.io/standards/release/index.html)
    2. G2P Community: [specifications](https://g2p-connect.github.io/specs/release/index.html)

## Discussion forum 

To initiate any discussion please visit [discussion page](https://github.com/orgs/spdci/discussions).

**IMPORTANT NOTES:**
1. Final release for consuming these APIs (yaml, html) are available in specs/release folder.
2. Contribute to G2P Connect specification or DCI standards APIs through pull requests in  respective specs/src folder.
3. specs/release folder files are auto generated and it's NOT recommended to edit these directly. 
4. specs/release filder API files are for final consumption by solution providers to make their services compatible with G2P Connect / DCI standards.

### Reference Links
1. Build [Instructions](./build/build_instructions.md)

## Directory structure 

    root repo folder
    └── release
        |
        ├── html (All redoc generated html files)
        ├── swagger-ui
        └── yaml ( All yaml files bundled from src folder)
        └── samples (API samples in json for reference)
    └── src
        |
        ├── common
            ├── header
            ├── parameter
            ├── response
            ├── schema
            ├── security
        ├── extensions
            ├── dci
            ├── openId
            ├── fhir
            ├── cdpi
        ├── registry
            ├── schema
                ├── core
                ├── civil
                ├── farmer
                ├── disability
            ├── registry_core_api_v1.0.0.yaml
            ├── registry_civil_api_v1.0.0.yaml
            ├── registry_nid_api_v1.0.0.yaml
            ├── registry_farmer_api_v1.0.0.yaml
            ├── registry_disability_api_v1.0.0.yaml  
        ├── mapper
            ├── schema
                ├── core
                ├── fa
            ├── mapper_core_api_v1.0.0.yaml
        ├── disbure
            ├── schema
                ├── core
            ├── disburse_core_api_v1.0.0.yaml
                
## Change request 

Please raise a pull request to submit any changes.
