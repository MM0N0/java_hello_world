
DEV_DOCKER_SCRIPT := .docker/dev_docker.sh


test: ## test the application using gradle
	$(DEV_DOCKER_SCRIPT) gradle clean test

build_jar: ## builds the application using gradle
	$(DEV_DOCKER_SCRIPT) gradle clean test jar

run: ## runs the jar build with "build_jar"
	$(DEV_DOCKER_SCRIPT) java -jar build/libs/*.jar

dev_docker: ## runs and enters the dev_docker container running bash
	$(DEV_DOCKER_SCRIPT) bash
