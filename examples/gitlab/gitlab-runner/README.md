# gitlab/gitlab-runner
## Deployment:
- Deployment for gitlab-runner is manual, it is required to run the 'deployment-noconfig.yaml' first then run the command needed to join to the cluster to obtain the randomly generated token
  1. ``` kubectl apply -f deployment-noconfig.yaml```
  2. ``` kubectl -n gitlab-ce exec -it pod/<POD_FULL_NAME> -- /bin/bash ```
    - Select default prompts for installation and select 'kubernetes' on last prompt
  3. When gitlab runner is added get content of '/etc/gitlab-runner/config.toml'
    - Extract the 'Token' from the yaml
  4. Update the 'deployment.yaml' config to include token generated and validate that the runner is 'connected'
  5. Test gitlab pipelines
### Documentation:
1. https://adambcomer.com/blog/setup-gitlab-cicd-on-kubernetes.html
