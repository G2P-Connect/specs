# How to build Open API specs in html, yaml formats

## IMPORTANT NOTES: 
1. Please do not direclty edit ./release/yaml/*.yaml files directly. 
2. Request contributors/reviewers doing pull requests to edit .yaml files in src folders.
3. ./release/yaml/*.yaml files are <b>auto generated</b> using below steps.
do
## Folder Structure
1. src folder: ./src
2. Published API release folder: ./release
3. Build folder: ./build

## Organization of Open API Specficaition 
1. All source file are list in folder: ./src/ <br>
    Each solution blueprint component holds repsective APIs. e.g., <br>
    a. registry/registry_core_api_v1.0.0.yaml for registry access <br>
    b. etc.,
2. All open api common components are listed in folder: standards/src/common/
    a. schemas <br>
    b. responses <br>
    c. headers <br>
    d. parmeteres <br>
    e. security <br>
3. Organisations, Countries and System specific standards are referenced in folder: standards/src/extensions/<name>
    a. dci <br>
    b. openId <br>
    c. cdpi <br>
    d. fhir <br>

## Building Open API consolidated yaml file
1. Make sure all the yaml file have relative path references are resolved and core_xxx_api_vx.x.x.yaml files have reference to all the required files.
1. Install the swagger command line tool using npm (Note: you may need to use root privileges if installing it globally).

```
sudo npm install -g swagger-cli
```
2. Generate the resolved OpenAPI definition file <br>
    a. Go to the root directory of this repository i.e standards/ <br>
    b. Run the build_apis.cmd from standards/ folder  <br>
    b. Alternatively, Run the following command for each index file in ./standards/ folder. for e.g., <br>

```
swagger-cli -f 2 -t yaml bundle ./src/registry/registry_core_api_v1.0.0.yaml -o ./release/yaml/registry_core_api_v1.0.0.yaml

```

If the command runs successfully, you should see an output like this for each api index file
```
Created registry_core_api_v1.0.0.html from release/yaml/registry_core_api_v1.0.0.yaml
```

3. To create redoc html pages for easy readability 

```
redoc build-docs ./src/registry_core_api_v1.0.0.yaml -o ./release/html/registry_core_api_v1.0.0.html
```

If the command runs successfully, you should see an output like this for each api index file
```
bundled successfully in: ./release/html/registry_core_api_v1.0.0.html
```

5. Commit the changes and push the updated code to git repo. Create pull requests for teams to collaborate and merge to main branch!
