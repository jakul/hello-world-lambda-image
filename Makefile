.PHONY: help

build-python: ## Build the Python Docker image
build-python:
	docker build -t hello_world_lambda_image . -f app/Dockerfile

run-python: ## Run the Python Docker image
run-python:
	docker run -p 9000:8080 hello_world_lambda_image

invoke-python: ## Send a request to the Python service
invoke-python:
	curl -XPOST "http://localhost:9000/2015-03-31/functions/function/invocations" -d '{}'


help: ## Print this help
help:
	@echo 'Usage: make <target>'
	@echo
	@echo 'Targets:'
	@egrep '^(.+)\:\ ##\ (.+)' $(MAKEFILE_LIST) | column -t -c 2 -s ':#'
