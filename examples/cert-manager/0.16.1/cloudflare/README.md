# cert-manager/0.16.1/cloudflare
### Documentation:
- https://cert-manager.io/docs/configuration/acme/dns01/cloudflare/
### Retrieve Certificate Information From Secrets:
- `kubectl get secret/letsencrypt-cert-tls -n cert-manager-test -o json | jq -r '.data."tls.crt"' | base64 --decode`
- `kubectl get secret/letsencrypt-cert-tls -n cert-manager-test -o json | jq -r '.data."tls.key"' | base64 --decode`