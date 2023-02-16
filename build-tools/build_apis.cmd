# This file auto generates all g2p connect yaml files.
# Assumes the command is run from the root folder i.e ./specs
# For each new category, please make sure to add a reference link in this file for easy auto generation of yamls.

#swagger-cli -f 2 -t yaml bundle ./api/autz/components/index.yaml -o ./api/authz/build/g2p-authz.yaml
#swagger-cli -f 2 -t yaml bundle ./api/mapper/components/index.yaml -o ./api/mapper/build/g2p-mapper.yaml
swagger-cli -f 2 -t yaml bundle ./api/disburse/components/index.yaml -o ./api/disburse/build/g2p-disburse.yaml