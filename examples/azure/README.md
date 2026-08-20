# Azure container example

```bash
docker build -t YOUR_ACR.azurecr.io/devtrack:1.0.0 .
docker push YOUR_ACR.azurecr.io/devtrack:1.0.0
kubectl apply -f deployment.yaml
kubectl rollout status deployment/devtrack-azure
```

Replace `YOUR_ACR` with the Azure Container Registry name and authenticate with `az acr login` first.
