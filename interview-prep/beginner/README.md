# Beginner Kubernetes and Docker Interview Code

```dockerfile
FROM nginx:1.27-alpine
COPY index.html /usr/share/nginx/html/index.html
EXPOSE 80
```

```yaml
apiVersion: v1
kind: Pod
metadata:
  name: hello
spec:
  containers:
    - name: web
      image: nginx:1.27-alpine
      ports: [{ containerPort: 80 }]
```

Practice: explain image layers, `EXPOSE`, labels, pod scheduling, and why a Deployment is preferred over a bare Pod.
