# cert-manager/0.16.1/cloudflare
### Documentation:
- https://cert-manager.io/docs/configuration/acme/dns01/cloudflare/

### Deploy Order:
1. `kubectl apply -f namespace.yaml`
2. `kubectl apply -f secret.yaml`
3. `kubectl apply -f certificate.yaml`

### Monitor Process:
- `kubectl get events -n cert-manager-test --sort-by='.metadata.creationTimestamp'`

### Retrieve Certificate Information From Secrets:
- `kubectl get secret/letsencrypt-cert-tls -n cert-manager-test -o json | jq -r '.data."tls.crt"' | base64 --decode`
- `kubectl get secret/letsencrypt-cert-tls -n cert-manager-test -o json | jq -r '.data."tls.key"' | base64 --decode`