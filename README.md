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
  - what stages should be there?
    - dev (developer tests here)
    - test (qa team will test single features here)
    - staging (production-like environment)
    - production
  - how should the workflow be?
  - 
    1. branch from last released branch (feature/XYZ)
    2. do local development
    3. PR feature/XYZ to dev
    4. dev will be released on dev stage on push
    5. developer test on dev stage (if it fails revert the PR and go back to step c)
    6. PR feature/XYZ to test
    7. test will be released on test stage on push
    8. let qa test feature on test stage (if it fails revert all PRs and go back to step c)
    9. PR feature/XYZ to staging
    10. staging will be released on staging stage eventually
    11. let qa test feature on staging stage (if it fails revert all PRs and go back to step c)
    12. PR staging to production
    13. production will be branched to new release/XYZ branch
    14. release/XYZ will be released on production stage eventually
  - what branch to use for releases
  - how to build a hotfix
  
  - GitFlow -> Once the hotfix is complete it is merged to both develop and master
-

## workflow

### Add Feature
1. create branch "feature/${FEATURE_NAME}" from dev
2. develop the feature ([build_snapshot.yml](.github%2Fworkflows%2Fbuild_snapshot.yml) will rebuild on commit)
3. make sure it works and doesn't break anything
4. create a pull request to dev

### Trigger Release
all features merged to dev since the last release will be included in the release
- trigger gh action "Trigger Minor/Major Release" to trigger a new release

### Add a hotfix to a release
1. create branch "hotfix/${FEATURE_NAME}" from the release/XYZ branch you want to fix
2. merge to release/XYZ branch and dev
3. If the release Branch is finished, merge it to main

### Trigger patch Release
all features merged to YYY since the last release will be included in the patch release
- trigger gh action "Trigger Patch Release" to trigger a new patch release

## Contribute
...

## License
...

## Author Information
...
