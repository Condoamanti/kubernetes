# nfs-client-provisioner (DEPERCATED v1.21 kuberentes)
### Documentation:
1. https://github.com/kubernetes-sigs/nfs-subdir-external-provisioner

### Requirements:
1. nfs-client (This must be configured on all worker nodes)
    - CentOS7 / yum install nfs-utils
2. Configure fstab by adding the following line (This must be configured on all worker nodes)
    - `192.168.110.245:/mnt/pool2/kubernetes-data/    /mnt/pool2/kubernetes-data/   nfs defaults 0 0`
3. Create the `dynamic` folder at `/mnt/pool2/kubernetes-data/`

### Kubernetes Storage Configuration
| ServerName | ServerIPv4 | ServerNFSShare |
|-----------|------------|----------------|
| FREENAS1DC1.domain.local | 192.168.110.245 | /mnt/pool2/kubernetes-data/dynamic |

### Important Configuration
1. Storage Class Name:
    -  standard
1. Storage Provisioner Name:
    - nfs-client/nfs

### Configuration Validation
1. Create a test Persistent Volume Claim (PVC) and pod using the test-pod.yaml
    - `kubectl apply -f test-pod.yaml`

### Known Issues
1. Kubernetes v1.20
    1. Using Kubernetes v1.20.0, getting "unexpected error getting claim reference: selfLink was empty, can't make reference"
        - https://github.com/kubernetes-sigs/nfs-subdir-external-provisioner/issues/25#issuecomment-742616668