# Blue-Green-Canary

This repository is a simple example of Blue-green deployments and rolling deployments (canary tests).

### Prerequisites

- Terraform 0.14 +
- AWS account
- Make

### USAGE

»» Make file 

````
init: Terraform init
blue:  Deploy BLUE environment
blue-90:  Route 10% of the traffic to the green environment.
split :  Split the traffic to the blue and green environments.
green:  Promote GREEN environment
blue-down: Scale down blue environment
destroy: Destroy all infra

````


»» Verify deployments 

Verify that your environment was deployed successfully by visiting the load balancer's DNS name in your browser or CURLing it from your terminal.

````
for i in `seq 1 5`; do curl <your loadbalancer url> ; done

````



