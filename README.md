### Kubernetes Cluster Configuration
| NodeName | NodeIPv4 | NodeRole |
|----------|----------|----------|
| K8SNODE1DC1.domain.local | 192.168.110.221 | master |
| K8SNODE2DC1.domain.local | 192.168.110.222 | worker |
| K8SNODE3DC1.domain.local | 192.168.110.223 | worker |
| K8SNODE4DC1.domain.local | 192.168.110.224 | worker |

### Kubernetes Storage Configuration
| ServerName | ServerIPv4 | ServerNFSShare |
|-----------|------------|----------------|
| FREENAS1DC1.domain.local | 192.168.110.245 | /mnt/pool2/kubernetes-data |

### Terminology
1. Persistent Volume (PV):
    - A PersistentVolume (PV) is a piece of storage in the cluster that has been provisioned by an administrator or dynamically provisioned using Storage Classes. It is a resource in the cluster just like a node is a cluster resource. PVs are volume plugins like Volumes, but have a lifecycle independent of any individual Pod that uses the PV. This API object captures the details of the implementation of the storage, be that NFS, iSCSI, or a cloud-provider-specific storage system.
    - https://kubernetes.io/docs/concepts/storage/persistent-volumes/#introduction
2. Persistent Volume Claim (PVC):
    - A PersistentVolumeClaim (PVC) is a request for storage by a user. It is similar to a Pod. Pods consume node resources and PVCs consume PV resources. Pods can request specific levels of resources (CPU and Memory). Claims can request specific size and access modes (e.g., they can be mounted once read/write or many times read-only).
    - https://kubernetes.io/docs/concepts/storage/persistent-volumes/#introduction
3. Replicate Set (Deployment Recommended):
    - https://kubernetes.io/docs/concepts/workloads/controllers/replicaset/
4. Deployment:
    - https://kubernetes.io/docs/concepts/workloads/controllers/deployment/

### Saltstack
- Reference the below links for automated configuration of kubernetes nodes
    1. https://github.com/Condoamanti/salt-states
    2. https://github.com/Condoamanti/salt-pillar