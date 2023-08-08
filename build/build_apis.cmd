# This file auto generates all g2p connect yaml files.
# Assumes the command is run from the root folder i.e ./specs
# For each new category, please make sure to add a reference link in this file for easy auto generation of yamls.

swagger-cli -f 2 -t yaml bundle ./src/authz/auth_core_api_v1.0.0.yaml -o ./release/yaml/auth_core_api_v1.0.0.yaml
swagger-cli -f 2 -t yaml bundle ./src/registry/registry_core_api_v1.0.0.yaml -o ./release/yaml/registry_core_api_v1.0.0.yaml

redocly build-docs ./release/yaml/auth_core_api_v1.0.0.yaml  -o ./release/redoc/auth_core_api_v1_0.0.0.html
redocly build-docs ./release/yaml/registry_core_api_v1.0.0.yaml  -o ./release/redoc/registry_core_api_v1_0.0.0.html