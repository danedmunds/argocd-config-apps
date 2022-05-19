# Installing Data Gateway
The virtual machine will come with ArgoCD installation script and some configuration files. In order to install ArgoCD and configure Data Gateway, Do the following
- Inject the ARGOCD_GITHUB_SSH_KEY in the argocd-preconfig.yaml file. This key is found in 1Password `argocd_github_ssh_private_key`. This will be injected by the caller of the installation process.
- Run install.sh
- run `sudo microk8s kubectl apply -f data-gateway-config.yaml`
- create the applicationset by running `sudo microk8s kubectl apply -f data-gateway-applicationset.yaml` 
