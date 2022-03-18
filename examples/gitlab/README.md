# gitlab
1. ```kubectl -n gitlab-ce describe sa gitlab```
2. ```kubectl -n gitlab-ce get secret gitlab-token-ssd4q```
3. ```kubectl -n gitlab-ce describe secret gitlab-token-ssd4q```
  - ```
    Name:         gitlab-token-ssd4q
    Namespace:    gitlab-ce
    Labels:       <none>
    Annotations:  kubernetes.io/service-account.name: gitlab
                kubernetes.io/service-account.uid: 09aae4da-8419-4383-986f-8075c1dfd3e0

    Type:  kubernetes.io/service-account-token

    Data
    ====
    ca.crt:     1099 bytes
    namespace:  9 bytes
    token:      eyJhbGciOiJSUzI1NiIsImtpZCI6InhwOHlmN2lqNktfaEw5Xzh4TUt2YW8wTW54OVZUa0J3Y2JxdXFIYlZrZFkifQ.eyJpc3MiOiJrdWJlcm5ldGVzL3NlcnZpY2VhY2NvdW50Iiwia3ViZXJuZXRlcy5pby9zZXJ2aWNlYWNjb3VudC9uYW1lc3BhY2UiOiJnaXRsYWItY2UiLCJrdWJlcm5ldGVzLmlvL3NlcnZpY2VhY2NvdW50L3NlY3JldC5uYW1lIjoiZ2l0bGFiLXRva2VuLXNzZDRxIiwia3ViZXJuZXRlcy5pby9zZXJ2aWNlYWNjb3VudC9zZXJ2aWNlLWFjY291bnQubmFtZSI6ImdpdGxhYiIsImt1YmVybmV0ZXMuaW8vc2VydmljZWFjY291bnQvc2VydmljZS1hY2NvdW50LnVpZCI6IjA5YWFlNGRhLTg0MTktNDM4My05ODZmLTgwNzVjMWRmZDNlMCIsInN1YiI6InN5c3RlbTpzZXJ2aWNlYWNjb3VudDpnaXRsYWItY2U6Z2l0bGFiIn0.Ej1aI0mI9GS6k-CugP8-GFWx8xnZ2-y24Prhy6eKBVQdbnInuvxxThWxcvysF5BerhvVf-o-yPlBtcAYC1nAbh68rVMgh2xBP-fC7dBj0kmB1s-1dkjeljoaHxrz3Q_yogWUxEMgWAhMQ6Ko86J9bMreG17jaIaWcJuKxERmm39aG3-5FK3Lo1Z-CKELR4IaMGsva7dLhDcj5FVUP2fH43Ac10d1YIWZpATSKGjkGhir7FQ1AXCJeP32R3h4uI8INuDJ2Bcl1ncrerG5douA2kMB8STjcL-uaev9RBZFU56qzLqkGNrVgezpdwds2zB04kEas5WZ6eHiIkmLs_N0FA
    ```
4. Update gitlab CI/CD configuration for 'KUBERNETES_TOKEN'