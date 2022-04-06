# Installing Data Gateway
The virtual machine will come with ArgoCD already installed on it. In order to install Data Gateway, add other configurations in install.sh and data-gateway-config.yaml and run the following
- Run install.sh
- run `sudo microk8s kubectl apply -f data-gateway-config.yaml`
- create the applicationset by running `sudo microk8s kubectl apply -f data-gateway-applicationset.yaml` 
