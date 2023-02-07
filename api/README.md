# How to build G2P Connect specifications

## Folder Structure
1. Specification root folder: specs/api
2. Documentation root folder: specs/docs

## Organization of Open API Specficaition 
1. All openapi api endpoints are list in folder: specs/api/endpoints/ <<br>
    Each G2P Solution Blueprint holds repsective APIs. for e.g.
    a. payment-index.yaml for payment disbursement, status checks etc.,
    b. id-account-mapper-index.yaml for id to account mapper functioanlity to link, unlink, status check etc.,
    c. identity-index.yaml for identity services like auth/eKYC etc.,
    c. functional-registry-index.yaml for data feeds
    d. etc.,
2. All open api components are listed in folder: specs/api/components/ <br>
    a. schemas
    b. responses
    c. headers
    d. parmeteres
    e. security
3. Respective index file in each folder list each entity definition. This will enable to easily manage and edit the components

## Building Open API consolidated yaml file
1. Make sure all the yaml file have relative path references are resolved.
1. Install the swagger command line tool using npm (Note: you may need to use root privileges if installing it globally).

```
sudo npm install -g swagger-cli
```
2. Generate the resolved OpenAPI definition file
    a. Go to the root directory of this project
    b. Run the following command for each index file in api/endpoints folder

```
swagger-cli bundle api/endpoints/payment-index.yaml --outfile api/g2p-payments.yaml --type yaml
```
3. If the command runs successfully, you should see an output like this for each api index file,

```
Created api/g2p-payments.yaml from api/endpoints/payment_index.yaml
```

4. Commit the changes and push the updated code to git repo. Create pull requests for teams to collaborate and push changes to main branch!