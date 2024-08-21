# gitops-argocd-demo

This ArgoCD folder contains definitions of ArgoCD applications and their related Helm charts.

GitHub Action (Manual) to deploy ``demoapp`` ArgoCD application.

To understand the "magic" behind GitOps, go to [deployment template file](helm/demo-app/templates/deployment.yaml) and check the value of image attribute.

## GitOps Architecture 
![alt text](design/design.png)

## How to configure this repo
- Fork this repo
- Establish a trust between GitHub.com and your Azure subscription by configuring OpenID connect, follow [this](https://docs.github.com/en/actions/deployment/security-hardening-your-deployments/configuring-openid-connect-in-azure) article.
- Add the following GitHub Action secrets: AZURE_CLIENT_ID, AZURE_SUBSCRIPTION_ID, AZURE_TENANT_ID (the values should taken after following OpenID connect article).
