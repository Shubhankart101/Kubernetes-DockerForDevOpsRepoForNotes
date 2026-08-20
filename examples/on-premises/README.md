# On-premises container example

```bash
docker build -t registry.internal.example/devtrack:1.0.0 .
docker push registry.internal.example/devtrack:1.0.0
kubectl apply -f deployment.yaml
kubectl rollout status deployment/devtrack-onprem
```

Use a private registry and a `ClusterIP` service behind the organization's ingress or load balancer.
