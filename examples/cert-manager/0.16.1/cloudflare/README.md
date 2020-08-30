# cert-manager/0.16.1/cloudflare
### Documentation:
1. https://cert-manager.io/docs/configuration/acme/dns01/cloudflare/

### Configuration Requirement:
- Update <APIKEY> within secret.yaml to the cloudflare API key you wish to utilize (recommend create specific API key referenced on documentation above)

### Deploy Order:
1. `kubectl apply -f namespace.yaml`
2. `kubectl apply -f secret.yaml`
3. `kubectl apply -f deployment.yaml`

### Monitor Process:
- `kubectl get events -n cert-manager-cloudflare --sort-by='.metadata.creationTimestamp'`

### Retrieve Certificate Information From Secrets:
1. Obtain certificate information
    - `kubectl get secret/letsencrypt-cert-tls -n cert-manager-cloudflare -o json | jq -r '.data."tls.crt"' | base64 --decode`
2. Obtain certificate key information
    - `kubectl get secret/letsencrypt-cert-tls -n cert-manager-cloudflare -o json | jq -r '.data."tls.key"' | base64 --decode`
