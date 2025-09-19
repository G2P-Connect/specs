# API documentation

The APIs are accessible through
    1. DCI:  [standards](https://standards.spdci.org/standards)

## Discussion forum 

To initiate any discussion please visit [discussion page](https://github.com/orgs/spdci/discussions).

**IMPORTANT NOTES:**
1. Final release for consuming these APIs (yaml, html) are available in specs/release folder.
2. Contribute to  DCI standards APIs through pull requests in  respective specs/src folder.
3. specs/release folder files are auto generated and it's NOT recommended to edit these directly. 
4. specs/release filder API files are for final consumption by solution providers to make their services compatible with  DCI standards.

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
            ├── dr
            ├── fr
            ├── ibr
            ├── social
        ├── registry
            ├── schema
                ├── dr
                ├── fr
                ├── ibr
                ├── schema
                ├── social
            ├── registry_core_api_v1.0.0.yaml
            ├── social_api_v1.0.0.yaml
            ├── dr_api_v1.0.0.yaml
            ├── fr_api_v1.0.0.yaml
            ├── ibr_api_v1.0.0.yaml  
        ├── mapper
            ├── schema
                ├── core
                ├── fa

                
## Change request 

Please raise a pull request to submit any changes.
