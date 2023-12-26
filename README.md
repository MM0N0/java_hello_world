# java_hello_world

This is a simple java application.

## Dependencies
- make
- bash
- docker

**if you are using windows, you will have to use wsl**

## Make commands

---
### test
test application:
```bash
make test
```
---
### build
build executable fat jar:
```bash
make build_jar
```
---
### run
run:
```bash
make run
```
---
### dev_docker
open and enter a dev_docker container:
```bash
make dev_docker
```
---
    
# TODOs
- rework workflow and release management [ in progress ]
-

## workflow

### Add Feature
1. create branch "feature/${FEATURE_NAME}" from dev
2. develop the feature ([build_snapshot.yml](.github%2Fworkflows%2Fbuild_snapshot.yml) will rebuild on commit)
3. make sure it works and doesn't break anything
4. create a pull request to dev

### Trigger Release
- trigger gh action "Trigger Minor/Major Release" to trigger a new release

(all features merged to dev since the last release will be included in the new release)

### Add a hotfix to a release
1. create branch "hotfix/${FEATURE_NAME}" from the release/XYZ branch
2. merge to release/XYZ branch and dev
3. If the release Branch is finished, merge it to main

### Trigger patch Release
all features merged to YYY since the last release will be included in the patch release
- trigger gh action "Trigger Patch Release" to trigger a new patch release

-- fake_change

## Contribute
...

## License
...

## Author Information
...
