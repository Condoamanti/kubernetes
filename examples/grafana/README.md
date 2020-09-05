# grafana
### Documentation:
- https://grafana.com/docs/grafana/latest/installation/docker/
- https://grafana.com/docs/grafana/latest/installation/configure-docker/
- https://grafana.com/docs/grafana/latest/administration/configuration/

### Configuration Requirements:
1. Update configuration within certificate.yaml to include <APIKEY> and <EMAILADDRESS>

### Deployment Order:
1. `kubectl apply -f namespace.yaml`
2. `kubectl apply -f certificate.yaml`
3. `kubectl apply -f deployment.yaml`