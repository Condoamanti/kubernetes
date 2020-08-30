# cert-manager/0.16.1
### Documentation:
1. https://cert-manager.io/docs/installation/kubernetes/

### Configuration Validation
1. Create a test Persistent Volume Claim (PVC) and pod using the test-pod.yaml
    - `kubectl apply -f test-resources.yaml`
2. Get the describe information from certificate object
    - `kubectl describe certificate -n cert-manager-test`