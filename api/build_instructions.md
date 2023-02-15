# How to build G2P Connect specifications

## IMPORTANT NOTES: 
1. Please do not direclty edit /specs/api/g2p-*.yaml files directly. 
2. Request reviewers to edit the respective .yaml files in below sub folders.
3. <b>g2p-*.yaml</b> files are auto generated using below steps.

## Folder Structure
1. G2P Specification root folder: specs/api
2. G2P Documentation root folder: specs/docs

## Organization of Open API Specficaition 
1. All openapi api endpoints are list in folder: specs/api/endpoints/ <br>
    Each G2P Solution Blueprint holds repsective APIs. e.g., <br>
    a. payment-index.yaml for payment disbursement, status checks etc., <br>
    b. id-account-mapper-index.yaml for id to account mapper functioanlity to link, unlink, status check etc., <br>
    c. identity-index.yaml for identity services like auth/eKYC etc., <br>
    c. functional-registry-index.yaml for data feeds. <br>
    d. etc.,
2. All open api components are listed in folder: specs/api/components/
    a. schemas <br>
    b. responses <br>
    c. headers <br>
    d. parmeteres <br>
    e. security <br>
3. Respective index file in each folder list each entity definition. This will enable to easily manage and edit the components. 

## Building Open API consolidated yaml file
1. Make sure all the yaml file have relative path references are resolved and index.yaml files have reference to all the required files.
1. Install the swagger command line tool using npm (Note: you may need to use root privileges if installing it globally).

```
sudo npm install -g swagger-cli
```
2. Generate the resolved OpenAPI definition file <br>
    a. Go to the root directory of this repository i.e specs/api <br>
    b. Run the swagger-build.cmd file <br>
    b. Alternatively, Run the following command for each index file in ./endpoints folder. for e.g., <br>

```
swagger-cli bundle ./endpoints/payment-index.yaml --outfile ./g2p-payments.yaml --type yaml
```
3. If the command runs successfully, you should see an output like this for each api index file,

```
Created g2p-payments.yaml from endpoints/payment_index.yaml
```

4. Commit the changes and push the updated code to git repo. Create pull requests for teams to collaborate and push changes to main branch!
