### This is to grab the token for the service account to access the kubernetes-dashboard
- `kubectl -n kubernetes-dashboard describe secret $(kubectl -n kubernetes-dashboard get secret | grep admin-user | awk '{print $1}') | grep token`

### This only needs to be ran if using ClusterIp for service which is default
- `kubectl proxy --address='0.0.0.0' --accept-hosts='^*$'`

### Documentation:
1. https://docs.aws.amazon.com/eks/latest/userguide/dashboard-tutorial.html
2. https://www.thegeekdiary.com/how-to-access-kubernetes-dashboard-externally/
