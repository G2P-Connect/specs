# This file auto generates all g2p connect yaml files.
# For each new category, please make sure to add a reference link in this file for easy auto generation of yamls.

swagger-cli -f 2 -t yaml bundle api/endpoints/authz_index.yaml -o api/g2p-authz.yaml
swagger-cli -f 2 -t yaml bundle api/endpoints/account-mapper_index.yaml -o api/g2p-account-mapper.yaml
swagger-cli -f 2 -t yaml bundle api/endpoints/payment_index.yaml -o api/g2p-payments.yaml