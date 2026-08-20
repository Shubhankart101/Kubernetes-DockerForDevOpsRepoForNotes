# AWS container example

```bash
docker build -t YOUR_ACCOUNT.dkr.ecr.REGION.amazonaws.com/devtrack:1.0.0 .
aws ecr get-login-password --region REGION | docker login --username AWS --password-stdin YOUR_ACCOUNT.dkr.ecr.REGION.amazonaws.com
docker push YOUR_ACCOUNT.dkr.ecr.REGION.amazonaws.com/devtrack:1.0.0
kubectl apply -f deployment.yaml
kubectl rollout status deployment/devtrack-aws
```
