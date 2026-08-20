# Advanced Kubernetes and Docker Interview Code

```yaml
apiVersion: autoscaling/v2
kind: HorizontalPodAutoscaler
metadata:
  name: api
spec:
  scaleTargetRef:
    apiVersion: apps/v1
    kind: Deployment
    name: api
  minReplicas: 3
  maxReplicas: 20
  behavior:
    scaleDown:
      stabilizationWindowSeconds: 300
  metrics:
    - type: Resource
      resource:
        name: cpu
        target:
          type: Utilization
          averageUtilization: 70
```

Advanced exercise: add an Ingress, NetworkPolicy, PodDisruptionBudget, topology spread constraints, signed image verification, and a Helm upgrade rollback strategy. Explain failure domains and how you would test each one.
