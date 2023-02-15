# This file auto generates all g2p connect yaml files.
# For each new category, please make sure to add a reference link in this file for easy auto generation of yamls.

swagger-cli -f 2 -t yaml bundle ./endpoints/authz_index.yaml -o api/g2p-authz.yaml
swagger-cli -f 2 -t yaml bundle ./endpoints/mapper_index.yaml -o api/g2p-mapper.yaml
swagger-cli -f 2 -t yaml bundle ./endpoints/payment_index.yaml -o api/g2p-payments.yaml