# Elastic Cloud on Kubernetes (1.2)
### Documentation:
1. https://www.elastic.co/guide/en/cloud-on-k8s/current/k8s-deploy-eck.html

### Requirements:
1. nfs-provisioner:
    - https://github.com/Condoamanti/kubernetes/tree/master/examples/nfs-provisioner
### Configuration Steps:
1. ElasticSearch
    1. Install custom resource definitions
        - `kubectl apply -f https://download.elastic.co/downloads/eck/1.2.0/all-in-one.yaml` or `kubectl apply -f all-in-one.yaml`
    2. Verify the operator logs
        - `kubectl -n elastic-system logs -f statefulset.apps/elastic-operator`
    3. Deploy elasticsearch.yaml
        - `kubectl apply -f elasticsearch.yaml`
    4. Wait for pod initalization
    5. Determine ses-elastic-user secret object name
        - `kubectl get secret -n eck`
    6. Write to console the secret for later use
        - `kubectl get secret elasticsearch-es-elastic-user -o=jsonpath='{.data.elastic'} -n eck | base64 --decode; echo`
    7. Log into service at 32500 with elastic user 
2. Kibana
    1. Deploy kibana.yaml
        - `kubectl apply -f kibana.yaml`
    2. Wait for pod initalization
    3. Log into service at 32510 with elastic user