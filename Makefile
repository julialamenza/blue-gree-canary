# -------------------------------------------------
# GLOBAL VARS
# -------------------------------------------------

SHELL  := /bin/bash
blue   := terraform apply -var 'traffic_distribution=blue' -auto-approve
blue-90 := terraform apply -var 'traffic_distribution=blue-90' -auto-approve
split := terraform apply -var 'traffic_distribution=split' -auto-approve
green := terraform apply -var 'traffic_distribution=green' -auto-approve
blue-down =: terraform apply -var 'traffic_distribution=green' -var 'enable_blue_env=false'
destroy := terraform destroy -auto-approve

#.DEFAULT_GOAL := init

.PHONY: list
list:
	@fgrep -h "##" $(MAKEFILE_LIST) | fgrep -v fgrep | sed -e 's/\\$$//' | sed -e 's/##//'

init: ## Terraform Init 
	@terraform init

blue: ## Deploy BLUE environment  
	$(blue)

blue-90: ## Routing 10% of the traffic to the green environment.
	$(blue-90)

split : ## Splitting the traffic to the blue and green environments.
	$(blue-90)

green: ## Promote GREEN environment  
	$(green)

blue-down: ## Scale down blue environments
	$(blue-down)

destroy: ## Destroy all infra
	$(destroy)