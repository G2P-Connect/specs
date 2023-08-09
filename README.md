# DCI API documentation

The API documentation repository contains html and yaml files to generate swagger documents. The API in swagger format accessible via website [https://spdci.github.io/api-documentation/](https://spdci.github.io/api-documentation/)

## Discussion forum 

To initiate any discussion please visit [discussion page](https://github.com/orgs/spdci/discussions).

## Directory structure 

    standards
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
            ├── registry_framer_api_v1.0.0.yaml
            ├── registry_disability_api_v1.0.0.yaml            

## Change request 

Please raise a pull request to submit any changes.
