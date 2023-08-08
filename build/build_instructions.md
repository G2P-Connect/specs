# How to build DCI SP standards

## IMPORTANT NOTES: 
1. Please do not direclty edit /standards/release/yaml/*.yaml files directly. 
2. Request reviewers to edit the respective .yaml files in src folders.
3. standards/release/yaml/*.yaml files are <b>auto generated</b> using below steps.
do
## Folder Structure
1. DCI SP Standards src folder: standards/src
2. DCI SP Published API release folder: standards/release
3. DCI SP Build folder: standards/build

## Organization of Open API Specficaition 
1. All source file are list in folder: standards/src/ <br>
    Each DCI SP solution blueprint component holds repsective APIs. e.g., <br>
    a. registry/registry_core_api_v1.0.0.yaml for registry access <br>
    b. etc.,
2. All open api common components are listed in folder: standards/src/common/
    a. schemas <br>
    b. responses <br>
    c. headers <br>
    d. parmeteres <br>
    e. security <br>

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
swagger-cli -f 2 -t yaml bundle ./src/registry/registry_core_api_v1.0.0.yaml -o ./release/registry_core_api_v1.0.0.yaml

```

If the command runs successfully, you should see an output like this for each api index file
```
Created registry_core_api_v1.0.0.html from release/yaml/registry_core_api_v1.0.0.yaml
```

3. To create redoc html pages for easy readability 

```
redoc build-docs ./api/registry_core_api_v1.0.0.yaml -o ./docs/dist/registry_core_api_v1.0.0.html
```

If the command runs successfully, you should see an output like this for each api index file
```
bundled successfully in: ./release/dist/redoc/registry_core_api_v1.0.0.html
```

5. Commit the changes and push the updated code to git repo. Create pull requests for teams to collaborate and merge to main branch!
