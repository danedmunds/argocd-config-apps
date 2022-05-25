# Installing Data Gateway
The virtual machine will come with ArgoCD installation script and some configuration files. In order to install ArgoCD and configure Data Gateway, Do the following
- Inject the ARGOCD_GITHUB_SSH_KEY private key in the argocd-preconfig.yaml file. This key is found in 1Password under `argocd_github_ssh_private_key`. This will be injected by the caller of the installation process.
- Run /usr/share/qlik/argocd/install.sh. This installs argocd, and sets up the connection to the github repo `qlik-download/argocd-config-apps` containing the manifest files for data gateway.
- run `sudo microk8s kubectl apply -f /usr/share/qlik/argocd/data-gateway-config.yaml`. This sets up the Storage class, persistent volume and persistent volume claim
- create the applicationset by running `sudo microk8s kubectl apply -n argocd -f /usr/share/qlik/argocd/data-gateway-applicationset.yaml` 
- To access the argocd application dashboard, run the command `sudo microk8s kubectl -n argocd get secret argocd-initial-admin-secret -o jsonpath="{.data.password}" | base64 -d; echo` This will give us the password. From the web browser, navigate to the ttps://ipaddress:30443. Log in using `admin` as the username and the password from the command.
- 
