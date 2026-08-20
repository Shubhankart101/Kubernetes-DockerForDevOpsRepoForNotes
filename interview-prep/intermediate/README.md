# Intermediate Kubernetes and Docker Interview Code

```yaml
apiVersion: apps/v1
kind: Deployment
metadata:
  name: api
spec:
  replicas: 3
  selector:
    matchLabels: { app: api }
  template:
    metadata:
      labels: { app: api }
    spec:
      containers:
        - name: api
          image: registry.example/api:1.2.3
          resources:
            requests: { cpu: 100m, memory: 128Mi }
            limits: { cpu: 500m, memory: 512Mi }
          readinessProbe:
            httpGet: { path: /health, port: 8080 }
```

Practice: explain selectors, readiness versus liveness, rolling updates, requests versus limits, and how Helm values make this reusable.
