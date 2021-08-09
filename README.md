# Blue-Green-Canary

This repository is a simple example of Blue-green deployments and rolling deployments (canary tests).

### Prerequisites

- Terraform 0.14 +
- AWS account
- Make

### USAGE

»» Make file 


»» Verify deployments 

Verify that your blue environment was deployed successfully by visiting the load balancer's DNS name in your browser or CURLing it from your terminal.

````
for i in `seq 1 5`; do curl <your loadbalancer url> ; done

````



