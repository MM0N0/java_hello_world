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
3. create a pull request to dev

### Trigger Release
all features merged to dev since the last release will be included in the release
- trigger gh action "Trigger Release" to trigger a new release

### Trigger patch Release
all features merged to dev since the last release will be included in the patch release
- trigger gh action "Trigger Patch Release" to trigger a new patch release

## Contribute
...

## License
...

## Author Information
...
