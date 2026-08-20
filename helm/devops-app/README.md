# DevOps application Helm chart

Render and validate locally:

```bash
helm lint .
helm template devtrack . --set image.repository=registry.example/devtrack
helm upgrade --install devtrack . --namespace devtrack --create-namespace
kubectl rollout status deployment/devtrack-devops-app -n devtrack
```

The chart demonstrates values, named helpers, labels, probes, resources, and a Service. Add an ingress, HPA, and PodDisruptionBudget as an interview exercise.
