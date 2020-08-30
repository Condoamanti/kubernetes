# cert-manager/0.16.1/cloudflare
### Documentation:
1. https://cert-manager.io/docs/configuration/acme/dns01/cloudflare/

### Configuration Requirement:
1. Update <APIKEY> to the cloudflare API key you wish to utilize (recommend create specific API key referenced on documentation above)
2. Update <EMAILADDRESS> to match the email address needed for expiration notifications
3. Update <DOMAINEXAMPLE> to match the domain your with create certificate for

### Deploy Order:
1. `kubectl apply -f namespace.yaml`
3. `kubectl apply -f deployment.yaml`

### Monitor Process:
- `kubectl get events -n cert-manager-cloudflare --sort-by='.metadata.creationTimestamp'`

### Retrieve Certificate Information From Secrets:
1. Obtain certificate information
    - `kubectl get secret/letsencrypt-cert-tls -n cert-manager-cloudflare -o json | jq -r '.data."tls.crt"' | base64 --decode`
2. Obtain certificate key information
    - `kubectl get secret/letsencrypt-cert-tls -n cert-manager-cloudflare -o json | jq -r '.data."tls.key"' | base64 --decode`
