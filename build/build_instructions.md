# How to build G2P Connect specifications

## IMPORTANT NOTES: 
1. Please do not direclty edit /specs/api/g2p-*.yaml files directly. 
2. Request reviewers to edit the respective .yaml files in src ub folders.
3. <b>g2p-*.yaml</b> files are auto generated using below steps.

## Folder Structure
1. G2P Specification src folder: specs/src
2. G2P Published API folder: specs/api
3. G2P Documentation root folder: specs/docs
4. G2P Redocly html docs: specs/docs/dist

## Organization of Open API Specficaition 
1. All source file are list in folder: specs/src/ <br>
    Each G2P solution blueprint component holds repsective APIs. e.g., <br>
    a. disburse/index.yaml for payment disbursement, status checks etc., <br>
    b. mapper/index.yaml for id to account mapper functioanlity to link, unlink, status check etc., <br>
    c. identity/index.yaml for identity services like auth/eKYC etc., <br>
    d. credential/index.yaml for credential services <br>
    c. civil-registry//index.yaml for beneficiary data from civil registries. <br>
    d. etc.,
2. All open api common components are listed in folder: specs/src/common/
    a. schemas <br>
    b. responses <br>
    c. headers <br>
    d. parmeteres <br>
    e. security <br>

## Building Open API consolidated yaml file
1. Make sure all the yaml file have relative path references are resolved and index.yaml files have reference to all the required files.
1. Install the swagger command line tool using npm (Note: you may need to use root privileges if installing it globally).

```
sudo npm install -g swagger-cli
```
2. Generate the resolved OpenAPI definition file <br>
    a. Go to the root directory of this repository i.e specs/ <br>
    b. Run the build_apis.cmd file <br>
    b. Alternatively, Run the following command for each index file in ./endpoints folder. for e.g., <br>

```
swagger-cli -f 2 -t yaml bundle ./src/disburse/index.yaml -o ./api/g2p-disburse.yaml
```

If the command runs successfully, you should see an output like this for each api index file
```
Created g2p-disburse.yaml from endpoints/disburse_index.yaml
```

3. To create redocly html pages for easy readability 

```
redocly build-docs ./api/g2p-disburse.yaml -o ./docs/dist/g2p-disburse.html
```

If the command runs successfully, you should see an output like this for each api index file
```
bundled successfully in: ./docs/dist/g2p-disburse.html
```

5. Commit the changes and push the updated code to git repo. Create pull requests for teams to collaborate and merge to main branch!
