# Kubernetes and Docker for DevOps

Practical notes and project-oriented use cases for container platforms, Kubernetes operations, and DevOps delivery.

## Deployment use cases

- [Azure use cases](projects/use-cases/azure.md)
- [AWS use cases](projects/use-cases/aws.md)
- [On-premises use cases](projects/use-cases/on-premises.md)

## Code examples and interview preparation

- [120-question interview bank](interview.md)
- [34-script library](scripts/README.md)
- [Azure container example](examples/azure/README.md)
- [AWS container example](examples/aws/README.md)
- [On-premises container example](examples/on-premises/README.md)
- [Helm chart](helm/devops-app/README.md)
- [Beginner Kubernetes and Docker interview code](interview-prep/beginner/README.md)
- [Intermediate Kubernetes and Docker interview code](interview-prep/intermediate/README.md)
- [Advanced Kubernetes and Docker interview code](interview-prep/advanced/README.md)

The weekly use-case index is refreshed every Monday at **7:00 AM IST** by [update-use-cases.yml](.github/workflows/update-use-cases.yml). Read the current rotation in [projects/DAILY_USE_CASES.md](projects/DAILY_USE_CASES.md) and preserved snapshots in [projects/use-case-history](projects/use-case-history). Historical use cases are never deleted.

## Interview Answers Inline

<details>
<summary><strong>Open all 150 questions, answers, and scripts</strong></summary>

### 1. What problem does Docker solve?
**Answer:** It addresses a recurring DevOps need by making delivery, operations, or infrastructure repeatable, reviewable, and safer to automate.
````yaml
# Question 1: What problem does Docker solve?
apiVersion: apps/v1
kind: Deployment
metadata:
  name: interview-solution-1
spec:
  replicas: 2
  selector:
    matchLabels:
      app: interview-solution-1
  template:
    metadata:
      labels:
        app: interview-solution-1
    spec:
      containers:
        - name: solution
          image: nginx:1.27-alpine
          ports:
            - name: http
              containerPort: 80
          readinessProbe:
            httpGet:
              path: /
              port: http
          resources:
            requests:
              cpu: 50m
              memory: 64Mi
            limits:
              cpu: 250m
              memory: 128Mi
````

### 2. What is a container image?
**Answer:** Build a minimal immutable image, pin dependencies, scan and sign it, publish it to a controlled registry, and deploy by digest when possible.
````yaml
# Question 2: What is a container image?
apiVersion: apps/v1
kind: Deployment
metadata:
  name: interview-solution-2
spec:
  replicas: 2
  selector:
    matchLabels:
      app: interview-solution-2
  template:
    metadata:
      labels:
        app: interview-solution-2
    spec:
      containers:
        - name: solution
          image: nginx:1.27-alpine
          ports:
            - name: http
              containerPort: 80
          readinessProbe:
            httpGet:
              path: /
              port: http
          resources:
            requests:
              cpu: 50m
              memory: 64Mi
            limits:
              cpu: 250m
              memory: 128Mi
````

### 3. What is a container?
**Answer:** Build a minimal immutable image, pin dependencies, scan and sign it, publish it to a controlled registry, and deploy by digest when possible.
````yaml
# Question 3: What is a container?
apiVersion: apps/v1
kind: Deployment
metadata:
  name: interview-solution-3
spec:
  replicas: 2
  selector:
    matchLabels:
      app: interview-solution-3
  template:
    metadata:
      labels:
        app: interview-solution-3
    spec:
      containers:
        - name: solution
          image: nginx:1.27-alpine
          ports:
            - name: http
              containerPort: 80
          readinessProbe:
            httpGet:
              path: /
              port: http
          resources:
            requests:
              cpu: 50m
              memory: 64Mi
            limits:
              cpu: 250m
              memory: 128Mi
````

### 4. What is the difference between an image and a container?
**Answer:** Build a minimal immutable image, pin dependencies, scan and sign it, publish it to a controlled registry, and deploy by digest when possible.
````yaml
# Question 4: What is the difference between an image and a container?
apiVersion: apps/v1
kind: Deployment
metadata:
  name: interview-solution-4
spec:
  replicas: 2
  selector:
    matchLabels:
      app: interview-solution-4
  template:
    metadata:
      labels:
        app: interview-solution-4
    spec:
      containers:
        - name: solution
          image: nginx:1.27-alpine
          ports:
            - name: http
              containerPort: 80
          readinessProbe:
            httpGet:
              path: /
              port: http
          resources:
            requests:
              cpu: 50m
              memory: 64Mi
            limits:
              cpu: 250m
              memory: 128Mi
````

### 5. What is a Dockerfile?
**Answer:** Build a minimal immutable image, pin dependencies, scan and sign it, publish it to a controlled registry, and deploy by digest when possible.
````yaml
# Question 5: What is a Dockerfile?
apiVersion: apps/v1
kind: Deployment
metadata:
  name: interview-solution-5
spec:
  replicas: 2
  selector:
    matchLabels:
      app: interview-solution-5
  template:
    metadata:
      labels:
        app: interview-solution-5
    spec:
      containers:
        - name: solution
          image: nginx:1.27-alpine
          ports:
            - name: http
              containerPort: 80
          readinessProbe:
            httpGet:
              path: /
              port: http
          resources:
            requests:
              cpu: 50m
              memory: 64Mi
            limits:
              cpu: 250m
              memory: 128Mi
````

### 6. What does `FROM` do in a Dockerfile?
**Answer:** Build a minimal immutable image, pin dependencies, scan and sign it, publish it to a controlled registry, and deploy by digest when possible.
````yaml
# Question 6: What does `FROM` do in a Dockerfile?
apiVersion: apps/v1
kind: Deployment
metadata:
  name: interview-solution-6
spec:
  replicas: 2
  selector:
    matchLabels:
      app: interview-solution-6
  template:
    metadata:
      labels:
        app: interview-solution-6
    spec:
      containers:
        - name: solution
          image: nginx:1.27-alpine
          ports:
            - name: http
              containerPort: 80
          readinessProbe:
            httpGet:
              path: /
              port: http
          resources:
            requests:
              cpu: 50m
              memory: 64Mi
            limits:
              cpu: 250m
              memory: 128Mi
````

### 7. What is a Docker image layer?
**Answer:** Build a minimal immutable image, pin dependencies, scan and sign it, publish it to a controlled registry, and deploy by digest when possible.
````yaml
# Question 7: What is a Docker image layer?
apiVersion: apps/v1
kind: Deployment
metadata:
  name: interview-solution-7
spec:
  replicas: 2
  selector:
    matchLabels:
      app: interview-solution-7
  template:
    metadata:
      labels:
        app: interview-solution-7
    spec:
      containers:
        - name: solution
          image: nginx:1.27-alpine
          ports:
            - name: http
              containerPort: 80
          readinessProbe:
            httpGet:
              path: /
              port: http
          resources:
            requests:
              cpu: 50m
              memory: 64Mi
            limits:
              cpu: 250m
              memory: 128Mi
````

### 8. Why should images use fixed tags?
**Answer:** Build a minimal immutable image, pin dependencies, scan and sign it, publish it to a controlled registry, and deploy by digest when possible.
````yaml
# Question 8: Why should images use fixed tags?
apiVersion: apps/v1
kind: Deployment
metadata:
  name: interview-solution-8
spec:
  replicas: 2
  selector:
    matchLabels:
      app: interview-solution-8
  template:
    metadata:
      labels:
        app: interview-solution-8
    spec:
      containers:
        - name: solution
          image: nginx:1.27-alpine
          ports:
            - name: http
              containerPort: 80
          readinessProbe:
            httpGet:
              path: /
              port: http
          resources:
            requests:
              cpu: 50m
              memory: 64Mi
            limits:
              cpu: 250m
              memory: 128Mi
````

### 9. What does `EXPOSE` document?
**Answer:** A strong answer should define the concept, show a small Kubernetes and Docker implementation, explain failure behavior, and describe how it would be tested in CI.
````yaml
# Question 9: What does `EXPOSE` document?
apiVersion: apps/v1
kind: Deployment
metadata:
  name: interview-solution-9
spec:
  replicas: 2
  selector:
    matchLabels:
      app: interview-solution-9
  template:
    metadata:
      labels:
        app: interview-solution-9
    spec:
      containers:
        - name: solution
          image: nginx:1.27-alpine
          ports:
            - name: http
              containerPort: 80
          readinessProbe:
            httpGet:
              path: /
              port: http
          resources:
            requests:
              cpu: 50m
              memory: 64Mi
            limits:
              cpu: 250m
              memory: 128Mi
````

### 10. What is the purpose of `CMD`?
**Answer:** A strong answer should define the concept, show a small Kubernetes and Docker implementation, explain failure behavior, and describe how it would be tested in CI.
````yaml
# Question 10: What is the purpose of `CMD`?
apiVersion: apps/v1
kind: Deployment
metadata:
  name: interview-solution-10
spec:
  replicas: 2
  selector:
    matchLabels:
      app: interview-solution-10
  template:
    metadata:
      labels:
        app: interview-solution-10
    spec:
      containers:
        - name: solution
          image: nginx:1.27-alpine
          ports:
            - name: http
              containerPort: 80
          readinessProbe:
            httpGet:
              path: /
              port: http
          resources:
            requests:
              cpu: 50m
              memory: 64Mi
            limits:
              cpu: 250m
              memory: 128Mi
````

### 11. How does `ENTRYPOINT` differ from `CMD`?
**Answer:** A strong answer should define the concept, show a small Kubernetes and Docker implementation, explain failure behavior, and describe how it would be tested in CI.
````yaml
# Question 11: How does `ENTRYPOINT` differ from `CMD`?
apiVersion: apps/v1
kind: Deployment
metadata:
  name: interview-solution-11
spec:
  replicas: 2
  selector:
    matchLabels:
      app: interview-solution-11
  template:
    metadata:
      labels:
        app: interview-solution-11
    spec:
      containers:
        - name: solution
          image: nginx:1.27-alpine
          ports:
            - name: http
              containerPort: 80
          readinessProbe:
            httpGet:
              path: /
              port: http
          resources:
            requests:
              cpu: 50m
              memory: 64Mi
            limits:
              cpu: 250m
              memory: 128Mi
````

### 12. What is a container registry?
**Answer:** Build a minimal immutable image, pin dependencies, scan and sign it, publish it to a controlled registry, and deploy by digest when possible.
````yaml
# Question 12: What is a container registry?
apiVersion: apps/v1
kind: Deployment
metadata:
  name: interview-solution-12
spec:
  replicas: 2
  selector:
    matchLabels:
      app: interview-solution-12
  template:
    metadata:
      labels:
        app: interview-solution-12
    spec:
      containers:
        - name: solution
          image: nginx:1.27-alpine
          ports:
            - name: http
              containerPort: 80
          readinessProbe:
            httpGet:
              path: /
              port: http
          resources:
            requests:
              cpu: 50m
              memory: 64Mi
            limits:
              cpu: 250m
              memory: 128Mi
````

### 13. What problem does Kubernetes solve?
**Answer:** It addresses a recurring DevOps need by making delivery, operations, or infrastructure repeatable, reviewable, and safer to automate.
````yaml
# Question 13: What problem does Kubernetes solve?
apiVersion: apps/v1
kind: Deployment
metadata:
  name: interview-solution-13
spec:
  replicas: 2
  selector:
    matchLabels:
      app: interview-solution-13
  template:
    metadata:
      labels:
        app: interview-solution-13
    spec:
      containers:
        - name: solution
          image: nginx:1.27-alpine
          ports:
            - name: http
              containerPort: 80
          readinessProbe:
            httpGet:
              path: /
              port: http
          resources:
            requests:
              cpu: 50m
              memory: 64Mi
            limits:
              cpu: 250m
              memory: 128Mi
````

### 14. What is a Kubernetes cluster?
**Answer:** A strong answer should define the concept, show a small Kubernetes and Docker implementation, explain failure behavior, and describe how it would be tested in CI.
````yaml
# Question 14: What is a Kubernetes cluster?
apiVersion: apps/v1
kind: Deployment
metadata:
  name: interview-solution-14
spec:
  replicas: 2
  selector:
    matchLabels:
      app: interview-solution-14
  template:
    metadata:
      labels:
        app: interview-solution-14
    spec:
      containers:
        - name: solution
          image: nginx:1.27-alpine
          ports:
            - name: http
              containerPort: 80
          readinessProbe:
            httpGet:
              path: /
              port: http
          resources:
            requests:
              cpu: 50m
              memory: 64Mi
            limits:
              cpu: 250m
              memory: 128Mi
````

### 15. What is a Kubernetes node?
**Answer:** A strong answer should define the concept, show a small Kubernetes and Docker implementation, explain failure behavior, and describe how it would be tested in CI.
````yaml
# Question 15: What is a Kubernetes node?
apiVersion: apps/v1
kind: Deployment
metadata:
  name: interview-solution-15
spec:
  replicas: 2
  selector:
    matchLabels:
      app: interview-solution-15
  template:
    metadata:
      labels:
        app: interview-solution-15
    spec:
      containers:
        - name: solution
          image: nginx:1.27-alpine
          ports:
            - name: http
              containerPort: 80
          readinessProbe:
            httpGet:
              path: /
              port: http
          resources:
            requests:
              cpu: 50m
              memory: 64Mi
            limits:
              cpu: 250m
              memory: 128Mi
````

### 16. What is a Pod?
**Answer:** A strong answer should define the concept, show a small Kubernetes and Docker implementation, explain failure behavior, and describe how it would be tested in CI.
````yaml
# Question 16: What is a Pod?
apiVersion: apps/v1
kind: Deployment
metadata:
  name: interview-solution-16
spec:
  replicas: 2
  selector:
    matchLabels:
      app: interview-solution-16
  template:
    metadata:
      labels:
        app: interview-solution-16
    spec:
      containers:
        - name: solution
          image: nginx:1.27-alpine
          ports:
            - name: http
              containerPort: 80
          readinessProbe:
            httpGet:
              path: /
              port: http
          resources:
            requests:
              cpu: 50m
              memory: 64Mi
            limits:
              cpu: 250m
              memory: 128Mi
````

### 17. Why is a Deployment preferred over a bare Pod?
**Answer:** Separate validation, build, promotion, and verification; use immutable artifacts, protected production controls, and an observable rollback path.
````yaml
# Question 17: Why is a Deployment preferred over a bare Pod?
apiVersion: apps/v1
kind: Deployment
metadata:
  name: interview-solution-17
spec:
  replicas: 2
  selector:
    matchLabels:
      app: interview-solution-17
  template:
    metadata:
      labels:
        app: interview-solution-17
    spec:
      containers:
        - name: solution
          image: nginx:1.27-alpine
          ports:
            - name: http
              containerPort: 80
          readinessProbe:
            httpGet:
              path: /
              port: http
          resources:
            requests:
              cpu: 50m
              memory: 64Mi
            limits:
              cpu: 250m
              memory: 128Mi
````

### 18. What is a ReplicaSet?
**Answer:** A strong answer should define the concept, show a small Kubernetes and Docker implementation, explain failure behavior, and describe how it would be tested in CI.
````yaml
# Question 18: What is a ReplicaSet?
apiVersion: apps/v1
kind: Deployment
metadata:
  name: interview-solution-18
spec:
  replicas: 2
  selector:
    matchLabels:
      app: interview-solution-18
  template:
    metadata:
      labels:
        app: interview-solution-18
    spec:
      containers:
        - name: solution
          image: nginx:1.27-alpine
          ports:
            - name: http
              containerPort: 80
          readinessProbe:
            httpGet:
              path: /
              port: http
          resources:
            requests:
              cpu: 50m
              memory: 64Mi
            limits:
              cpu: 250m
              memory: 128Mi
````

### 19. What is a Kubernetes Service?
**Answer:** Define the smallest required traffic path, restrict it with policy and identity, and verify connectivity from the same network boundary as the workload.
````yaml
# Question 19: What is a Kubernetes Service?
apiVersion: apps/v1
kind: Deployment
metadata:
  name: interview-solution-19
spec:
  replicas: 2
  selector:
    matchLabels:
      app: interview-solution-19
  template:
    metadata:
      labels:
        app: interview-solution-19
    spec:
      containers:
        - name: solution
          image: nginx:1.27-alpine
          ports:
            - name: http
              containerPort: 80
          readinessProbe:
            httpGet:
              path: /
              port: http
          resources:
            requests:
              cpu: 50m
              memory: 64Mi
            limits:
              cpu: 250m
              memory: 128Mi
````

### 20. How does a Service find Pods?
**Answer:** Define the smallest required traffic path, restrict it with policy and identity, and verify connectivity from the same network boundary as the workload.
````yaml
# Question 20: How does a Service find Pods?
apiVersion: apps/v1
kind: Deployment
metadata:
  name: interview-solution-20
spec:
  replicas: 2
  selector:
    matchLabels:
      app: interview-solution-20
  template:
    metadata:
      labels:
        app: interview-solution-20
    spec:
      containers:
        - name: solution
          image: nginx:1.27-alpine
          ports:
            - name: http
              containerPort: 80
          readinessProbe:
            httpGet:
              path: /
              port: http
          resources:
            requests:
              cpu: 50m
              memory: 64Mi
            limits:
              cpu: 250m
              memory: 128Mi
````

### 21. What is a label?
**Answer:** A strong answer should define the concept, show a small Kubernetes and Docker implementation, explain failure behavior, and describe how it would be tested in CI.
````yaml
# Question 21: What is a label?
apiVersion: apps/v1
kind: Deployment
metadata:
  name: interview-solution-21
spec:
  replicas: 2
  selector:
    matchLabels:
      app: interview-solution-21
  template:
    metadata:
      labels:
        app: interview-solution-21
    spec:
      containers:
        - name: solution
          image: nginx:1.27-alpine
          ports:
            - name: http
              containerPort: 80
          readinessProbe:
            httpGet:
              path: /
              port: http
          resources:
            requests:
              cpu: 50m
              memory: 64Mi
            limits:
              cpu: 250m
              memory: 128Mi
````

### 22. What is a selector?
**Answer:** A strong answer should define the concept, show a small Kubernetes and Docker implementation, explain failure behavior, and describe how it would be tested in CI.
````yaml
# Question 22: What is a selector?
apiVersion: apps/v1
kind: Deployment
metadata:
  name: interview-solution-22
spec:
  replicas: 2
  selector:
    matchLabels:
      app: interview-solution-22
  template:
    metadata:
      labels:
        app: interview-solution-22
    spec:
      containers:
        - name: solution
          image: nginx:1.27-alpine
          ports:
            - name: http
              containerPort: 80
          readinessProbe:
            httpGet:
              path: /
              port: http
          resources:
            requests:
              cpu: 50m
              memory: 64Mi
            limits:
              cpu: 250m
              memory: 128Mi
````

### 23. What is a namespace?
**Answer:** A strong answer should define the concept, show a small Kubernetes and Docker implementation, explain failure behavior, and describe how it would be tested in CI.
````yaml
# Question 23: What is a namespace?
apiVersion: apps/v1
kind: Deployment
metadata:
  name: interview-solution-23
spec:
  replicas: 2
  selector:
    matchLabels:
      app: interview-solution-23
  template:
    metadata:
      labels:
        app: interview-solution-23
    spec:
      containers:
        - name: solution
          image: nginx:1.27-alpine
          ports:
            - name: http
              containerPort: 80
          readinessProbe:
            httpGet:
              path: /
              port: http
          resources:
            requests:
              cpu: 50m
              memory: 64Mi
            limits:
              cpu: 250m
              memory: 128Mi
````

### 24. What is a ConfigMap?
**Answer:** A strong answer should define the concept, show a small Kubernetes and Docker implementation, explain failure behavior, and describe how it would be tested in CI.
````yaml
# Question 24: What is a ConfigMap?
apiVersion: apps/v1
kind: Deployment
metadata:
  name: interview-solution-24
spec:
  replicas: 2
  selector:
    matchLabels:
      app: interview-solution-24
  template:
    metadata:
      labels:
        app: interview-solution-24
    spec:
      containers:
        - name: solution
          image: nginx:1.27-alpine
          ports:
            - name: http
              containerPort: 80
          readinessProbe:
            httpGet:
              path: /
              port: http
          resources:
            requests:
              cpu: 50m
              memory: 64Mi
            limits:
              cpu: 250m
              memory: 128Mi
````

### 25. What is a Secret?
**Answer:** Keep the value in a protected secret store or workload identity, pass it at runtime, redact it from logs, and never commit it to source control.
````yaml
# Question 25: What is a Secret?
apiVersion: apps/v1
kind: Deployment
metadata:
  name: interview-solution-25
spec:
  replicas: 2
  selector:
    matchLabels:
      app: interview-solution-25
  template:
    metadata:
      labels:
        app: interview-solution-25
    spec:
      containers:
        - name: solution
          image: nginx:1.27-alpine
          ports:
            - name: http
              containerPort: 80
          readinessProbe:
            httpGet:
              path: /
              port: http
          resources:
            requests:
              cpu: 50m
              memory: 64Mi
            limits:
              cpu: 250m
              memory: 128Mi
````

### 26. How do you expose a container port?
**Answer:** Define the smallest required traffic path, restrict it with policy and identity, and verify connectivity from the same network boundary as the workload.
````yaml
# Question 26: How do you expose a container port?
apiVersion: apps/v1
kind: Deployment
metadata:
  name: interview-solution-26
spec:
  replicas: 2
  selector:
    matchLabels:
      app: interview-solution-26
  template:
    metadata:
      labels:
        app: interview-solution-26
    spec:
      containers:
        - name: solution
          image: nginx:1.27-alpine
          ports:
            - name: http
              containerPort: 80
          readinessProbe:
            httpGet:
              path: /
              port: http
          resources:
            requests:
              cpu: 50m
              memory: 64Mi
            limits:
              cpu: 250m
              memory: 128Mi
````

### 27. What is the difference between ClusterIP and LoadBalancer?
**Answer:** A strong answer should define the concept, show a small Kubernetes and Docker implementation, explain failure behavior, and describe how it would be tested in CI.
````yaml
# Question 27: What is the difference between ClusterIP and LoadBalancer?
apiVersion: apps/v1
kind: Deployment
metadata:
  name: interview-solution-27
spec:
  replicas: 2
  selector:
    matchLabels:
      app: interview-solution-27
  template:
    metadata:
      labels:
        app: interview-solution-27
    spec:
      containers:
        - name: solution
          image: nginx:1.27-alpine
          ports:
            - name: http
              containerPort: 80
          readinessProbe:
            httpGet:
              path: /
              port: http
          resources:
            requests:
              cpu: 50m
              memory: 64Mi
            limits:
              cpu: 250m
              memory: 128Mi
````

### 28. What is a Job?
**Answer:** Separate validation, build, promotion, and verification; use immutable artifacts, protected production controls, and an observable rollback path.
````yaml
# Question 28: What is a Job?
apiVersion: apps/v1
kind: Deployment
metadata:
  name: interview-solution-28
spec:
  replicas: 2
  selector:
    matchLabels:
      app: interview-solution-28
  template:
    metadata:
      labels:
        app: interview-solution-28
    spec:
      containers:
        - name: solution
          image: nginx:1.27-alpine
          ports:
            - name: http
              containerPort: 80
          readinessProbe:
            httpGet:
              path: /
              port: http
          resources:
            requests:
              cpu: 50m
              memory: 64Mi
            limits:
              cpu: 250m
              memory: 128Mi
````

### 29. What is a CronJob?
**Answer:** Separate validation, build, promotion, and verification; use immutable artifacts, protected production controls, and an observable rollback path.
````yaml
# Question 29: What is a CronJob?
apiVersion: apps/v1
kind: Deployment
metadata:
  name: interview-solution-29
spec:
  replicas: 2
  selector:
    matchLabels:
      app: interview-solution-29
  template:
    metadata:
      labels:
        app: interview-solution-29
    spec:
      containers:
        - name: solution
          image: nginx:1.27-alpine
          ports:
            - name: http
              containerPort: 80
          readinessProbe:
            httpGet:
              path: /
              port: http
          resources:
            requests:
              cpu: 50m
              memory: 64Mi
            limits:
              cpu: 250m
              memory: 128Mi
````

### 30. What does `kubectl apply` do?
**Answer:** A strong answer should define the concept, show a small Kubernetes and Docker implementation, explain failure behavior, and describe how it would be tested in CI.
````yaml
# Question 30: What does `kubectl apply` do?
apiVersion: apps/v1
kind: Deployment
metadata:
  name: interview-solution-30
spec:
  replicas: 2
  selector:
    matchLabels:
      app: interview-solution-30
  template:
    metadata:
      labels:
        app: interview-solution-30
    spec:
      containers:
        - name: solution
          image: nginx:1.27-alpine
          ports:
            - name: http
              containerPort: 80
          readinessProbe:
            httpGet:
              path: /
              port: http
          resources:
            requests:
              cpu: 50m
              memory: 64Mi
            limits:
              cpu: 250m
              memory: 128Mi
````

### 31. How do you inspect Pod logs?
**Answer:** Emit structured, correlation-aware telemetry with enough context to diagnose duration, failures, deployment version, and affected environment.
````yaml
# Question 31: How do you inspect Pod logs?
apiVersion: apps/v1
kind: Deployment
metadata:
  name: interview-solution-31
spec:
  replicas: 2
  selector:
    matchLabels:
      app: interview-solution-31
  template:
    metadata:
      labels:
        app: interview-solution-31
    spec:
      containers:
        - name: solution
          image: nginx:1.27-alpine
          ports:
            - name: http
              containerPort: 80
          readinessProbe:
            httpGet:
              path: /
              port: http
          resources:
            requests:
              cpu: 50m
              memory: 64Mi
            limits:
              cpu: 250m
              memory: 128Mi
````

### 32. How do you describe a failing Pod?
**Answer:** A strong answer should define the concept, show a small Kubernetes and Docker implementation, explain failure behavior, and describe how it would be tested in CI.
````yaml
# Question 32: How do you describe a failing Pod?
apiVersion: apps/v1
kind: Deployment
metadata:
  name: interview-solution-32
spec:
  replicas: 2
  selector:
    matchLabels:
      app: interview-solution-32
  template:
    metadata:
      labels:
        app: interview-solution-32
    spec:
      containers:
        - name: solution
          image: nginx:1.27-alpine
          ports:
            - name: http
              containerPort: 80
          readinessProbe:
            httpGet:
              path: /
              port: http
          resources:
            requests:
              cpu: 50m
              memory: 64Mi
            limits:
              cpu: 250m
              memory: 128Mi
````

### 33. What is a readiness probe?
**Answer:** Check a meaningful dependency or application endpoint, fail the operation when the check fails, and use the result to stop or roll back promotion.
````yaml
# Question 33: What is a readiness probe?
apiVersion: apps/v1
kind: Deployment
metadata:
  name: interview-solution-33
spec:
  replicas: 2
  selector:
    matchLabels:
      app: interview-solution-33
  template:
    metadata:
      labels:
        app: interview-solution-33
    spec:
      containers:
        - name: solution
          image: nginx:1.27-alpine
          ports:
            - name: http
              containerPort: 80
          readinessProbe:
            httpGet:
              path: /
              port: http
          resources:
            requests:
              cpu: 50m
              memory: 64Mi
            limits:
              cpu: 250m
              memory: 128Mi
````

### 34. What is a liveness probe?
**Answer:** Check a meaningful dependency or application endpoint, fail the operation when the check fails, and use the result to stop or roll back promotion.
````yaml
# Question 34: What is a liveness probe?
apiVersion: apps/v1
kind: Deployment
metadata:
  name: interview-solution-34
spec:
  replicas: 2
  selector:
    matchLabels:
      app: interview-solution-34
  template:
    metadata:
      labels:
        app: interview-solution-34
    spec:
      containers:
        - name: solution
          image: nginx:1.27-alpine
          ports:
            - name: http
              containerPort: 80
          readinessProbe:
            httpGet:
              path: /
              port: http
          resources:
            requests:
              cpu: 50m
              memory: 64Mi
            limits:
              cpu: 250m
              memory: 128Mi
````

### 35. What is a resource request?
**Answer:** Declare requests and limits, measure real usage, set explicit capacity bounds, and test behavior under saturation and recovery.
````yaml
# Question 35: What is a resource request?
apiVersion: apps/v1
kind: Deployment
metadata:
  name: interview-solution-35
spec:
  replicas: 2
  selector:
    matchLabels:
      app: interview-solution-35
  template:
    metadata:
      labels:
        app: interview-solution-35
    spec:
      containers:
        - name: solution
          image: nginx:1.27-alpine
          ports:
            - name: http
              containerPort: 80
          readinessProbe:
            httpGet:
              path: /
              port: http
          resources:
            requests:
              cpu: 50m
              memory: 64Mi
            limits:
              cpu: 250m
              memory: 128Mi
````

### 36. What is a resource limit?
**Answer:** Declare requests and limits, measure real usage, set explicit capacity bounds, and test behavior under saturation and recovery.
````yaml
# Question 36: What is a resource limit?
apiVersion: apps/v1
kind: Deployment
metadata:
  name: interview-solution-36
spec:
  replicas: 2
  selector:
    matchLabels:
      app: interview-solution-36
  template:
    metadata:
      labels:
        app: interview-solution-36
    spec:
      containers:
        - name: solution
          image: nginx:1.27-alpine
          ports:
            - name: http
              containerPort: 80
          readinessProbe:
            httpGet:
              path: /
              port: http
          resources:
            requests:
              cpu: 50m
              memory: 64Mi
            limits:
              cpu: 250m
              memory: 128Mi
````

### 37. What is Helm?
**Answer:** A strong answer should define the concept, show a small Kubernetes and Docker implementation, explain failure behavior, and describe how it would be tested in CI.
````yaml
# Question 37: What is Helm?
apiVersion: apps/v1
kind: Deployment
metadata:
  name: interview-solution-37
spec:
  replicas: 2
  selector:
    matchLabels:
      app: interview-solution-37
  template:
    metadata:
      labels:
        app: interview-solution-37
    spec:
      containers:
        - name: solution
          image: nginx:1.27-alpine
          ports:
            - name: http
              containerPort: 80
          readinessProbe:
            httpGet:
              path: /
              port: http
          resources:
            requests:
              cpu: 50m
              memory: 64Mi
            limits:
              cpu: 250m
              memory: 128Mi
````

### 38. What is a Helm chart?
**Answer:** A strong answer should define the concept, show a small Kubernetes and Docker implementation, explain failure behavior, and describe how it would be tested in CI.
````yaml
# Question 38: What is a Helm chart?
apiVersion: apps/v1
kind: Deployment
metadata:
  name: interview-solution-38
spec:
  replicas: 2
  selector:
    matchLabels:
      app: interview-solution-38
  template:
    metadata:
      labels:
        app: interview-solution-38
    spec:
      containers:
        - name: solution
          image: nginx:1.27-alpine
          ports:
            - name: http
              containerPort: 80
          readinessProbe:
            httpGet:
              path: /
              port: http
          resources:
            requests:
              cpu: 50m
              memory: 64Mi
            limits:
              cpu: 250m
              memory: 128Mi
````

### 39. What is `values.yaml`?
**Answer:** A strong answer should define the concept, show a small Kubernetes and Docker implementation, explain failure behavior, and describe how it would be tested in CI.
````yaml
# Question 39: What is `values.yaml`?
apiVersion: apps/v1
kind: Deployment
metadata:
  name: interview-solution-39
spec:
  replicas: 2
  selector:
    matchLabels:
      app: interview-solution-39
  template:
    metadata:
      labels:
        app: interview-solution-39
    spec:
      containers:
        - name: solution
          image: nginx:1.27-alpine
          ports:
            - name: http
              containerPort: 80
          readinessProbe:
            httpGet:
              path: /
              port: http
          resources:
            requests:
              cpu: 50m
              memory: 64Mi
            limits:
              cpu: 250m
              memory: 128Mi
````

### 40. How do you roll back a Deployment?
**Answer:** Separate validation, build, promotion, and verification; use immutable artifacts, protected production controls, and an observable rollback path.
````yaml
# Question 40: How do you roll back a Deployment?
apiVersion: apps/v1
kind: Deployment
metadata:
  name: interview-solution-40
spec:
  replicas: 2
  selector:
    matchLabels:
      app: interview-solution-40
  template:
    metadata:
      labels:
        app: interview-solution-40
    spec:
      containers:
        - name: solution
          image: nginx:1.27-alpine
          ports:
            - name: http
              containerPort: 80
          readinessProbe:
            httpGet:
              path: /
              port: http
          resources:
            requests:
              cpu: 50m
              memory: 64Mi
            limits:
              cpu: 250m
              memory: 128Mi
````

### 41. Explain Kubernetes control-plane components.
**Answer:** Extract the behavior behind a small documented interface, keep inputs and outputs explicit, and test the reusable unit independently.
````yaml
# Question 41: Explain Kubernetes control-plane components.
apiVersion: apps/v1
kind: Deployment
metadata:
  name: interview-solution-41
spec:
  replicas: 2
  selector:
    matchLabels:
      app: interview-solution-41
  template:
    metadata:
      labels:
        app: interview-solution-41
    spec:
      containers:
        - name: solution
          image: nginx:1.27-alpine
          ports:
            - name: http
              containerPort: 80
          readinessProbe:
            httpGet:
              path: /
              port: http
          resources:
            requests:
              cpu: 50m
              memory: 64Mi
            limits:
              cpu: 250m
              memory: 128Mi
````

### 42. What does the API server do?
**Answer:** Use a structured client, explicit timeouts, status handling, pagination, schema validation, and safe authentication rather than string parsing.
````yaml
# Question 42: What does the API server do?
apiVersion: apps/v1
kind: Deployment
metadata:
  name: interview-solution-42
spec:
  replicas: 2
  selector:
    matchLabels:
      app: interview-solution-42
  template:
    metadata:
      labels:
        app: interview-solution-42
    spec:
      containers:
        - name: solution
          image: nginx:1.27-alpine
          ports:
            - name: http
              containerPort: 80
          readinessProbe:
            httpGet:
              path: /
              port: http
          resources:
            requests:
              cpu: 50m
              memory: 64Mi
            limits:
              cpu: 250m
              memory: 128Mi
````

### 43. What is stored in etcd?
**Answer:** A strong answer should define the concept, show a small Kubernetes and Docker implementation, explain failure behavior, and describe how it would be tested in CI.
````yaml
# Question 43: What is stored in etcd?
apiVersion: apps/v1
kind: Deployment
metadata:
  name: interview-solution-43
spec:
  replicas: 2
  selector:
    matchLabels:
      app: interview-solution-43
  template:
    metadata:
      labels:
        app: interview-solution-43
    spec:
      containers:
        - name: solution
          image: nginx:1.27-alpine
          ports:
            - name: http
              containerPort: 80
          readinessProbe:
            httpGet:
              path: /
              port: http
          resources:
            requests:
              cpu: 50m
              memory: 64Mi
            limits:
              cpu: 250m
              memory: 128Mi
````

### 44. What does the scheduler consider when placing a Pod?
**Answer:** A strong answer should define the concept, show a small Kubernetes and Docker implementation, explain failure behavior, and describe how it would be tested in CI.
````yaml
# Question 44: What does the scheduler consider when placing a Pod?
apiVersion: apps/v1
kind: Deployment
metadata:
  name: interview-solution-44
spec:
  replicas: 2
  selector:
    matchLabels:
      app: interview-solution-44
  template:
    metadata:
      labels:
        app: interview-solution-44
    spec:
      containers:
        - name: solution
          image: nginx:1.27-alpine
          ports:
            - name: http
              containerPort: 80
          readinessProbe:
            httpGet:
              path: /
              port: http
          resources:
            requests:
              cpu: 50m
              memory: 64Mi
            limits:
              cpu: 250m
              memory: 128Mi
````

### 45. What does the controller manager reconcile?
**Answer:** A strong answer should define the concept, show a small Kubernetes and Docker implementation, explain failure behavior, and describe how it would be tested in CI.
````yaml
# Question 45: What does the controller manager reconcile?
apiVersion: apps/v1
kind: Deployment
metadata:
  name: interview-solution-45
spec:
  replicas: 2
  selector:
    matchLabels:
      app: interview-solution-45
  template:
    metadata:
      labels:
        app: interview-solution-45
    spec:
      containers:
        - name: solution
          image: nginx:1.27-alpine
          ports:
            - name: http
              containerPort: 80
          readinessProbe:
            httpGet:
              path: /
              port: http
          resources:
            requests:
              cpu: 50m
              memory: 64Mi
            limits:
              cpu: 250m
              memory: 128Mi
````

### 46. How does kubelet manage a Pod?
**Answer:** A strong answer should define the concept, show a small Kubernetes and Docker implementation, explain failure behavior, and describe how it would be tested in CI.
````yaml
# Question 46: How does kubelet manage a Pod?
apiVersion: apps/v1
kind: Deployment
metadata:
  name: interview-solution-46
spec:
  replicas: 2
  selector:
    matchLabels:
      app: interview-solution-46
  template:
    metadata:
      labels:
        app: interview-solution-46
    spec:
      containers:
        - name: solution
          image: nginx:1.27-alpine
          ports:
            - name: http
              containerPort: 80
          readinessProbe:
            httpGet:
              path: /
              port: http
          resources:
            requests:
              cpu: 50m
              memory: 64Mi
            limits:
              cpu: 250m
              memory: 128Mi
````

### 47. How does CoreDNS support Service discovery?
**Answer:** Define the smallest required traffic path, restrict it with policy and identity, and verify connectivity from the same network boundary as the workload.
````yaml
# Question 47: How does CoreDNS support Service discovery?
apiVersion: apps/v1
kind: Deployment
metadata:
  name: interview-solution-47
spec:
  replicas: 2
  selector:
    matchLabels:
      app: interview-solution-47
  template:
    metadata:
      labels:
        app: interview-solution-47
    spec:
      containers:
        - name: solution
          image: nginx:1.27-alpine
          ports:
            - name: http
              containerPort: 80
          readinessProbe:
            httpGet:
              path: /
              port: http
          resources:
            requests:
              cpu: 50m
              memory: 64Mi
            limits:
              cpu: 250m
              memory: 128Mi
````

### 48. Explain a Deployment rolling update.
**Answer:** Bound concurrency, preserve a small failure domain, verify health between batches, and stop promotion when the error budget is exceeded.
````yaml
# Question 48: Explain a Deployment rolling update.
apiVersion: apps/v1
kind: Deployment
metadata:
  name: interview-solution-48
spec:
  replicas: 2
  selector:
    matchLabels:
      app: interview-solution-48
  template:
    metadata:
      labels:
        app: interview-solution-48
    spec:
      containers:
        - name: solution
          image: nginx:1.27-alpine
          ports:
            - name: http
              containerPort: 80
          readinessProbe:
            httpGet:
              path: /
              port: http
          resources:
            requests:
              cpu: 50m
              memory: 64Mi
            limits:
              cpu: 250m
              memory: 128Mi
````

### 49. What are `maxSurge` and `maxUnavailable`?
**Answer:** A strong answer should define the concept, show a small Kubernetes and Docker implementation, explain failure behavior, and describe how it would be tested in CI.
````yaml
# Question 49: What are `maxSurge` and `maxUnavailable`?
apiVersion: apps/v1
kind: Deployment
metadata:
  name: interview-solution-49
spec:
  replicas: 2
  selector:
    matchLabels:
      app: interview-solution-49
  template:
    metadata:
      labels:
        app: interview-solution-49
    spec:
      containers:
        - name: solution
          image: nginx:1.27-alpine
          ports:
            - name: http
              containerPort: 80
          readinessProbe:
            httpGet:
              path: /
              port: http
          resources:
            requests:
              cpu: 50m
              memory: 64Mi
            limits:
              cpu: 250m
              memory: 128Mi
````

### 50. How do you pause and resume a rollout?
**Answer:** A strong answer should define the concept, show a small Kubernetes and Docker implementation, explain failure behavior, and describe how it would be tested in CI.
````yaml
# Question 50: How do you pause and resume a rollout?
apiVersion: apps/v1
kind: Deployment
metadata:
  name: interview-solution-50
spec:
  replicas: 2
  selector:
    matchLabels:
      app: interview-solution-50
  template:
    metadata:
      labels:
        app: interview-solution-50
    spec:
      containers:
        - name: solution
          image: nginx:1.27-alpine
          ports:
            - name: http
              containerPort: 80
          readinessProbe:
            httpGet:
              path: /
              port: http
          resources:
            requests:
              cpu: 50m
              memory: 64Mi
            limits:
              cpu: 250m
              memory: 128Mi
````

### 51. How do you debug `CrashLoopBackOff`?
**Answer:** Retry only transient failures, use bounded exponential backoff with jitter, and return the final error when the retry budget is exhausted.
````yaml
# Question 51: How do you debug `CrashLoopBackOff`?
apiVersion: apps/v1
kind: Deployment
metadata:
  name: interview-solution-51
spec:
  replicas: 2
  selector:
    matchLabels:
      app: interview-solution-51
  template:
    metadata:
      labels:
        app: interview-solution-51
    spec:
      containers:
        - name: solution
          image: nginx:1.27-alpine
          ports:
            - name: http
              containerPort: 80
          readinessProbe:
            httpGet:
              path: /
              port: http
          resources:
            requests:
              cpu: 50m
              memory: 64Mi
            limits:
              cpu: 250m
              memory: 128Mi
````

### 52. How do you debug `ImagePullBackOff`?
**Answer:** Retry only transient failures, use bounded exponential backoff with jitter, and return the final error when the retry budget is exhausted.
````yaml
# Question 52: How do you debug `ImagePullBackOff`?
apiVersion: apps/v1
kind: Deployment
metadata:
  name: interview-solution-52
spec:
  replicas: 2
  selector:
    matchLabels:
      app: interview-solution-52
  template:
    metadata:
      labels:
        app: interview-solution-52
    spec:
      containers:
        - name: solution
          image: nginx:1.27-alpine
          ports:
            - name: http
              containerPort: 80
          readinessProbe:
            httpGet:
              path: /
              port: http
          resources:
            requests:
              cpu: 50m
              memory: 64Mi
            limits:
              cpu: 250m
              memory: 128Mi
````

### 53. How do requests and limits affect scheduling?
**Answer:** Declare requests and limits, measure real usage, set explicit capacity bounds, and test behavior under saturation and recovery.
````yaml
# Question 53: How do requests and limits affect scheduling?
apiVersion: apps/v1
kind: Deployment
metadata:
  name: interview-solution-53
spec:
  replicas: 2
  selector:
    matchLabels:
      app: interview-solution-53
  template:
    metadata:
      labels:
        app: interview-solution-53
    spec:
      containers:
        - name: solution
          image: nginx:1.27-alpine
          ports:
            - name: http
              containerPort: 80
          readinessProbe:
            httpGet:
              path: /
              port: http
          resources:
            requests:
              cpu: 50m
              memory: 64Mi
            limits:
              cpu: 250m
              memory: 128Mi
````

### 54. What is a HorizontalPodAutoscaler?
**Answer:** Declare requests and limits, measure real usage, set explicit capacity bounds, and test behavior under saturation and recovery.
````yaml
# Question 54: What is a HorizontalPodAutoscaler?
apiVersion: apps/v1
kind: Deployment
metadata:
  name: interview-solution-54
spec:
  replicas: 2
  selector:
    matchLabels:
      app: interview-solution-54
  template:
    metadata:
      labels:
        app: interview-solution-54
    spec:
      containers:
        - name: solution
          image: nginx:1.27-alpine
          ports:
            - name: http
              containerPort: 80
          readinessProbe:
            httpGet:
              path: /
              port: http
          resources:
            requests:
              cpu: 50m
              memory: 64Mi
            limits:
              cpu: 250m
              memory: 128Mi
````

### 55. What metrics can drive an HPA?
**Answer:** Emit structured, correlation-aware telemetry with enough context to diagnose duration, failures, deployment version, and affected environment.
````yaml
# Question 55: What metrics can drive an HPA?
apiVersion: apps/v1
kind: Deployment
metadata:
  name: interview-solution-55
spec:
  replicas: 2
  selector:
    matchLabels:
      app: interview-solution-55
  template:
    metadata:
      labels:
        app: interview-solution-55
    spec:
      containers:
        - name: solution
          image: nginx:1.27-alpine
          ports:
            - name: http
              containerPort: 80
          readinessProbe:
            httpGet:
              path: /
              port: http
          resources:
            requests:
              cpu: 50m
              memory: 64Mi
            limits:
              cpu: 250m
              memory: 128Mi
````

### 56. What is a PodDisruptionBudget?
**Answer:** A strong answer should define the concept, show a small Kubernetes and Docker implementation, explain failure behavior, and describe how it would be tested in CI.
````yaml
# Question 56: What is a PodDisruptionBudget?
apiVersion: apps/v1
kind: Deployment
metadata:
  name: interview-solution-56
spec:
  replicas: 2
  selector:
    matchLabels:
      app: interview-solution-56
  template:
    metadata:
      labels:
        app: interview-solution-56
    spec:
      containers:
        - name: solution
          image: nginx:1.27-alpine
          ports:
            - name: http
              containerPort: 80
          readinessProbe:
            httpGet:
              path: /
              port: http
          resources:
            requests:
              cpu: 50m
              memory: 64Mi
            limits:
              cpu: 250m
              memory: 128Mi
````

### 57. What is an Ingress?
**Answer:** Define the smallest required traffic path, restrict it with policy and identity, and verify connectivity from the same network boundary as the workload.
````yaml
# Question 57: What is an Ingress?
apiVersion: apps/v1
kind: Deployment
metadata:
  name: interview-solution-57
spec:
  replicas: 2
  selector:
    matchLabels:
      app: interview-solution-57
  template:
    metadata:
      labels:
        app: interview-solution-57
    spec:
      containers:
        - name: solution
          image: nginx:1.27-alpine
          ports:
            - name: http
              containerPort: 80
          readinessProbe:
            httpGet:
              path: /
              port: http
          resources:
            requests:
              cpu: 50m
              memory: 64Mi
            limits:
              cpu: 250m
              memory: 128Mi
````

### 58. How does an ingress controller work?
**Answer:** Define the smallest required traffic path, restrict it with policy and identity, and verify connectivity from the same network boundary as the workload.
````yaml
# Question 58: How does an ingress controller work?
apiVersion: apps/v1
kind: Deployment
metadata:
  name: interview-solution-58
spec:
  replicas: 2
  selector:
    matchLabels:
      app: interview-solution-58
  template:
    metadata:
      labels:
        app: interview-solution-58
    spec:
      containers:
        - name: solution
          image: nginx:1.27-alpine
          ports:
            - name: http
              containerPort: 80
          readinessProbe:
            httpGet:
              path: /
              port: http
          resources:
            requests:
              cpu: 50m
              memory: 64Mi
            limits:
              cpu: 250m
              memory: 128Mi
````

### 59. What is a NetworkPolicy?
**Answer:** Define the smallest required traffic path, restrict it with policy and identity, and verify connectivity from the same network boundary as the workload.
````yaml
# Question 59: What is a NetworkPolicy?
apiVersion: apps/v1
kind: Deployment
metadata:
  name: interview-solution-59
spec:
  replicas: 2
  selector:
    matchLabels:
      app: interview-solution-59
  template:
    metadata:
      labels:
        app: interview-solution-59
    spec:
      containers:
        - name: solution
          image: nginx:1.27-alpine
          ports:
            - name: http
              containerPort: 80
          readinessProbe:
            httpGet:
              path: /
              port: http
          resources:
            requests:
              cpu: 50m
              memory: 64Mi
            limits:
              cpu: 250m
              memory: 128Mi
````

### 60. What happens when no NetworkPolicy selects a Pod?
**Answer:** Define the smallest required traffic path, restrict it with policy and identity, and verify connectivity from the same network boundary as the workload.
````yaml
# Question 60: What happens when no NetworkPolicy selects a Pod?
apiVersion: apps/v1
kind: Deployment
metadata:
  name: interview-solution-60
spec:
  replicas: 2
  selector:
    matchLabels:
      app: interview-solution-60
  template:
    metadata:
      labels:
        app: interview-solution-60
    spec:
      containers:
        - name: solution
          image: nginx:1.27-alpine
          ports:
            - name: http
              containerPort: 80
          readinessProbe:
            httpGet:
              path: /
              port: http
          resources:
            requests:
              cpu: 50m
              memory: 64Mi
            limits:
              cpu: 250m
              memory: 128Mi
````

### 61. How do you mount a ConfigMap as a file?
**Answer:** Use structured filesystem APIs, validate paths, quote inputs, handle missing resources deliberately, and avoid unsafe traversal or shell expansion.
````yaml
# Question 61: How do you mount a ConfigMap as a file?
apiVersion: apps/v1
kind: Deployment
metadata:
  name: interview-solution-61
spec:
  replicas: 2
  selector:
    matchLabels:
      app: interview-solution-61
  template:
    metadata:
      labels:
        app: interview-solution-61
    spec:
      containers:
        - name: solution
          image: nginx:1.27-alpine
          ports:
            - name: http
              containerPort: 80
          readinessProbe:
            httpGet:
              path: /
              port: http
          resources:
            requests:
              cpu: 50m
              memory: 64Mi
            limits:
              cpu: 250m
              memory: 128Mi
````

### 62. How should Secrets be handled in production?
**Answer:** Keep the value in a protected secret store or workload identity, pass it at runtime, redact it from logs, and never commit it to source control.
````yaml
# Question 62: How should Secrets be handled in production?
apiVersion: apps/v1
kind: Deployment
metadata:
  name: interview-solution-62
spec:
  replicas: 2
  selector:
    matchLabels:
      app: interview-solution-62
  template:
    metadata:
      labels:
        app: interview-solution-62
    spec:
      containers:
        - name: solution
          image: nginx:1.27-alpine
          ports:
            - name: http
              containerPort: 80
          readinessProbe:
            httpGet:
              path: /
              port: http
          resources:
            requests:
              cpu: 50m
              memory: 64Mi
            limits:
              cpu: 250m
              memory: 128Mi
````

### 63. What is a PersistentVolume?
**Answer:** A strong answer should define the concept, show a small Kubernetes and Docker implementation, explain failure behavior, and describe how it would be tested in CI.
````yaml
# Question 63: What is a PersistentVolume?
apiVersion: apps/v1
kind: Deployment
metadata:
  name: interview-solution-63
spec:
  replicas: 2
  selector:
    matchLabels:
      app: interview-solution-63
  template:
    metadata:
      labels:
        app: interview-solution-63
    spec:
      containers:
        - name: solution
          image: nginx:1.27-alpine
          ports:
            - name: http
              containerPort: 80
          readinessProbe:
            httpGet:
              path: /
              port: http
          resources:
            requests:
              cpu: 50m
              memory: 64Mi
            limits:
              cpu: 250m
              memory: 128Mi
````

### 64. What is a PersistentVolumeClaim?
**Answer:** A strong answer should define the concept, show a small Kubernetes and Docker implementation, explain failure behavior, and describe how it would be tested in CI.
````yaml
# Question 64: What is a PersistentVolumeClaim?
apiVersion: apps/v1
kind: Deployment
metadata:
  name: interview-solution-64
spec:
  replicas: 2
  selector:
    matchLabels:
      app: interview-solution-64
  template:
    metadata:
      labels:
        app: interview-solution-64
    spec:
      containers:
        - name: solution
          image: nginx:1.27-alpine
          ports:
            - name: http
              containerPort: 80
          readinessProbe:
            httpGet:
              path: /
              port: http
          resources:
            requests:
              cpu: 50m
              memory: 64Mi
            limits:
              cpu: 250m
              memory: 128Mi
````

### 65. Explain ReadWriteOnce and ReadWriteMany.
**Answer:** A strong answer should define the concept, show a small Kubernetes and Docker implementation, explain failure behavior, and describe how it would be tested in CI.
````yaml
# Question 65: Explain ReadWriteOnce and ReadWriteMany.
apiVersion: apps/v1
kind: Deployment
metadata:
  name: interview-solution-65
spec:
  replicas: 2
  selector:
    matchLabels:
      app: interview-solution-65
  template:
    metadata:
      labels:
        app: interview-solution-65
    spec:
      containers:
        - name: solution
          image: nginx:1.27-alpine
          ports:
            - name: http
              containerPort: 80
          readinessProbe:
            httpGet:
              path: /
              port: http
          resources:
            requests:
              cpu: 50m
              memory: 64Mi
            limits:
              cpu: 250m
              memory: 128Mi
````

### 66. How do StatefulSets differ from Deployments?
**Answer:** Store shared state remotely with encryption, access control, locking, versioning, and a tested recovery process.
````yaml
# Question 66: How do StatefulSets differ from Deployments?
apiVersion: apps/v1
kind: Deployment
metadata:
  name: interview-solution-66
spec:
  replicas: 2
  selector:
    matchLabels:
      app: interview-solution-66
  template:
    metadata:
      labels:
        app: interview-solution-66
    spec:
      containers:
        - name: solution
          image: nginx:1.27-alpine
          ports:
            - name: http
              containerPort: 80
          readinessProbe:
            httpGet:
              path: /
              port: http
          resources:
            requests:
              cpu: 50m
              memory: 64Mi
            limits:
              cpu: 250m
              memory: 128Mi
````

### 67. When should you use a DaemonSet?
**Answer:** A strong answer should define the concept, show a small Kubernetes and Docker implementation, explain failure behavior, and describe how it would be tested in CI.
````yaml
# Question 67: When should you use a DaemonSet?
apiVersion: apps/v1
kind: Deployment
metadata:
  name: interview-solution-67
spec:
  replicas: 2
  selector:
    matchLabels:
      app: interview-solution-67
  template:
    metadata:
      labels:
        app: interview-solution-67
    spec:
      containers:
        - name: solution
          image: nginx:1.27-alpine
          ports:
            - name: http
              containerPort: 80
          readinessProbe:
            httpGet:
              path: /
              port: http
          resources:
            requests:
              cpu: 50m
              memory: 64Mi
            limits:
              cpu: 250m
              memory: 128Mi
````

### 68. When should you use an init container?
**Answer:** Build a minimal immutable image, pin dependencies, scan and sign it, publish it to a controlled registry, and deploy by digest when possible.
````yaml
# Question 68: When should you use an init container?
apiVersion: apps/v1
kind: Deployment
metadata:
  name: interview-solution-68
spec:
  replicas: 2
  selector:
    matchLabels:
      app: interview-solution-68
  template:
    metadata:
      labels:
        app: interview-solution-68
    spec:
      containers:
        - name: solution
          image: nginx:1.27-alpine
          ports:
            - name: http
              containerPort: 80
          readinessProbe:
            httpGet:
              path: /
              port: http
          resources:
            requests:
              cpu: 50m
              memory: 64Mi
            limits:
              cpu: 250m
              memory: 128Mi
````

### 69. What is a sidecar container?
**Answer:** Build a minimal immutable image, pin dependencies, scan and sign it, publish it to a controlled registry, and deploy by digest when possible.
````yaml
# Question 69: What is a sidecar container?
apiVersion: apps/v1
kind: Deployment
metadata:
  name: interview-solution-69
spec:
  replicas: 2
  selector:
    matchLabels:
      app: interview-solution-69
  template:
    metadata:
      labels:
        app: interview-solution-69
    spec:
      containers:
        - name: solution
          image: nginx:1.27-alpine
          ports:
            - name: http
              containerPort: 80
          readinessProbe:
            httpGet:
              path: /
              port: http
          resources:
            requests:
              cpu: 50m
              memory: 64Mi
            limits:
              cpu: 250m
              memory: 128Mi
````

### 70. How do Jobs retry failed work?
**Answer:** Retry only transient failures, use bounded exponential backoff with jitter, and return the final error when the retry budget is exhausted.
````yaml
# Question 70: How do Jobs retry failed work?
apiVersion: apps/v1
kind: Deployment
metadata:
  name: interview-solution-70
spec:
  replicas: 2
  selector:
    matchLabels:
      app: interview-solution-70
  template:
    metadata:
      labels:
        app: interview-solution-70
    spec:
      containers:
        - name: solution
          image: nginx:1.27-alpine
          ports:
            - name: http
              containerPort: 80
          readinessProbe:
            httpGet:
              path: /
              port: http
          resources:
            requests:
              cpu: 50m
              memory: 64Mi
            limits:
              cpu: 250m
              memory: 128Mi
````

### 71. How do you make a CronJob idempotent?
**Answer:** Make the operation converge on the declared state and check the current state before mutating it, so a second run produces no unnecessary change.
````yaml
# Question 71: How do you make a CronJob idempotent?
apiVersion: apps/v1
kind: Deployment
metadata:
  name: interview-solution-71
spec:
  replicas: 2
  selector:
    matchLabels:
      app: interview-solution-71
  template:
    metadata:
      labels:
        app: interview-solution-71
    spec:
      containers:
        - name: solution
          image: nginx:1.27-alpine
          ports:
            - name: http
              containerPort: 80
          readinessProbe:
            httpGet:
              path: /
              port: http
          resources:
            requests:
              cpu: 50m
              memory: 64Mi
            limits:
              cpu: 250m
              memory: 128Mi
````

### 72. What is a ServiceAccount?
**Answer:** Define the smallest required traffic path, restrict it with policy and identity, and verify connectivity from the same network boundary as the workload.
````yaml
# Question 72: What is a ServiceAccount?
apiVersion: apps/v1
kind: Deployment
metadata:
  name: interview-solution-72
spec:
  replicas: 2
  selector:
    matchLabels:
      app: interview-solution-72
  template:
    metadata:
      labels:
        app: interview-solution-72
    spec:
      containers:
        - name: solution
          image: nginx:1.27-alpine
          ports:
            - name: http
              containerPort: 80
          readinessProbe:
            httpGet:
              path: /
              port: http
          resources:
            requests:
              cpu: 50m
              memory: 64Mi
            limits:
              cpu: 250m
              memory: 128Mi
````

### 73. What is RBAC?
**Answer:** Apply least privilege, isolate trust boundaries, validate policy in CI or admission, and record auditable changes.
````yaml
# Question 73: What is RBAC?
apiVersion: apps/v1
kind: Deployment
metadata:
  name: interview-solution-73
spec:
  replicas: 2
  selector:
    matchLabels:
      app: interview-solution-73
  template:
    metadata:
      labels:
        app: interview-solution-73
    spec:
      containers:
        - name: solution
          image: nginx:1.27-alpine
          ports:
            - name: http
              containerPort: 80
          readinessProbe:
            httpGet:
              path: /
              port: http
          resources:
            requests:
              cpu: 50m
              memory: 64Mi
            limits:
              cpu: 250m
              memory: 128Mi
````

### 74. Explain Role and ClusterRole.
**Answer:** Extract the behavior behind a small documented interface, keep inputs and outputs explicit, and test the reusable unit independently.
````yaml
# Question 74: Explain Role and ClusterRole.
apiVersion: apps/v1
kind: Deployment
metadata:
  name: interview-solution-74
spec:
  replicas: 2
  selector:
    matchLabels:
      app: interview-solution-74
  template:
    metadata:
      labels:
        app: interview-solution-74
    spec:
      containers:
        - name: solution
          image: nginx:1.27-alpine
          ports:
            - name: http
              containerPort: 80
          readinessProbe:
            httpGet:
              path: /
              port: http
          resources:
            requests:
              cpu: 50m
              memory: 64Mi
            limits:
              cpu: 250m
              memory: 128Mi
````

### 75. Explain RoleBinding and ClusterRoleBinding.
**Answer:** Extract the behavior behind a small documented interface, keep inputs and outputs explicit, and test the reusable unit independently.
````yaml
# Question 75: Explain RoleBinding and ClusterRoleBinding.
apiVersion: apps/v1
kind: Deployment
metadata:
  name: interview-solution-75
spec:
  replicas: 2
  selector:
    matchLabels:
      app: interview-solution-75
  template:
    metadata:
      labels:
        app: interview-solution-75
    spec:
      containers:
        - name: solution
          image: nginx:1.27-alpine
          ports:
            - name: http
              containerPort: 80
          readinessProbe:
            httpGet:
              path: /
              port: http
          resources:
            requests:
              cpu: 50m
              memory: 64Mi
            limits:
              cpu: 250m
              memory: 128Mi
````

### 76. How do you inspect resource usage?
**Answer:** Declare requests and limits, measure real usage, set explicit capacity bounds, and test behavior under saturation and recovery.
````yaml
# Question 76: How do you inspect resource usage?
apiVersion: apps/v1
kind: Deployment
metadata:
  name: interview-solution-76
spec:
  replicas: 2
  selector:
    matchLabels:
      app: interview-solution-76
  template:
    metadata:
      labels:
        app: interview-solution-76
    spec:
      containers:
        - name: solution
          image: nginx:1.27-alpine
          ports:
            - name: http
              containerPort: 80
          readinessProbe:
            httpGet:
              path: /
              port: http
          resources:
            requests:
              cpu: 50m
              memory: 64Mi
            limits:
              cpu: 250m
              memory: 128Mi
````

### 77. What is a namespace ResourceQuota?
**Answer:** Declare requests and limits, measure real usage, set explicit capacity bounds, and test behavior under saturation and recovery.
````yaml
# Question 77: What is a namespace ResourceQuota?
apiVersion: apps/v1
kind: Deployment
metadata:
  name: interview-solution-77
spec:
  replicas: 2
  selector:
    matchLabels:
      app: interview-solution-77
  template:
    metadata:
      labels:
        app: interview-solution-77
    spec:
      containers:
        - name: solution
          image: nginx:1.27-alpine
          ports:
            - name: http
              containerPort: 80
          readinessProbe:
            httpGet:
              path: /
              port: http
          resources:
            requests:
              cpu: 50m
              memory: 64Mi
            limits:
              cpu: 250m
              memory: 128Mi
````

### 78. What is a LimitRange?
**Answer:** Declare requests and limits, measure real usage, set explicit capacity bounds, and test behavior under saturation and recovery.
````yaml
# Question 78: What is a LimitRange?
apiVersion: apps/v1
kind: Deployment
metadata:
  name: interview-solution-78
spec:
  replicas: 2
  selector:
    matchLabels:
      app: interview-solution-78
  template:
    metadata:
      labels:
        app: interview-solution-78
    spec:
      containers:
        - name: solution
          image: nginx:1.27-alpine
          ports:
            - name: http
              containerPort: 80
          readinessProbe:
            httpGet:
              path: /
              port: http
          resources:
            requests:
              cpu: 50m
              memory: 64Mi
            limits:
              cpu: 250m
              memory: 128Mi
````

### 79. How does Helm templating work?
**Answer:** A strong answer should define the concept, show a small Kubernetes and Docker implementation, explain failure behavior, and describe how it would be tested in CI.
````yaml
# Question 79: How does Helm templating work?
apiVersion: apps/v1
kind: Deployment
metadata:
  name: interview-solution-79
spec:
  replicas: 2
  selector:
    matchLabels:
      app: interview-solution-79
  template:
    metadata:
      labels:
        app: interview-solution-79
    spec:
      containers:
        - name: solution
          image: nginx:1.27-alpine
          ports:
            - name: http
              containerPort: 80
          readinessProbe:
            httpGet:
              path: /
              port: http
          resources:
            requests:
              cpu: 50m
              memory: 64Mi
            limits:
              cpu: 250m
              memory: 128Mi
````

### 80. How do you lint and render a Helm chart?
**Answer:** Automate syntax, static analysis, unit, and integration checks in CI; fail early and publish useful diagnostics as artifacts.
````yaml
# Question 80: How do you lint and render a Helm chart?
apiVersion: apps/v1
kind: Deployment
metadata:
  name: interview-solution-80
spec:
  replicas: 2
  selector:
    matchLabels:
      app: interview-solution-80
  template:
    metadata:
      labels:
        app: interview-solution-80
    spec:
      containers:
        - name: solution
          image: nginx:1.27-alpine
          ports:
            - name: http
              containerPort: 80
          readinessProbe:
            httpGet:
              path: /
              port: http
          resources:
            requests:
              cpu: 50m
              memory: 64Mi
            limits:
              cpu: 250m
              memory: 128Mi
````

### 81. Design a highly available Kubernetes control plane.
**Answer:** A strong answer should define the concept, show a small Kubernetes and Docker implementation, explain failure behavior, and describe how it would be tested in CI.
````yaml
# Question 81: Design a highly available Kubernetes control plane.
apiVersion: apps/v1
kind: Deployment
metadata:
  name: interview-solution-81
spec:
  replicas: 2
  selector:
    matchLabels:
      app: interview-solution-81
  template:
    metadata:
      labels:
        app: interview-solution-81
    spec:
      containers:
        - name: solution
          image: nginx:1.27-alpine
          ports:
            - name: http
              containerPort: 80
          readinessProbe:
            httpGet:
              path: /
              port: http
          resources:
            requests:
              cpu: 50m
              memory: 64Mi
            limits:
              cpu: 250m
              memory: 128Mi
````

### 82. How does etcd quorum affect availability?
**Answer:** A strong answer should define the concept, show a small Kubernetes and Docker implementation, explain failure behavior, and describe how it would be tested in CI.
````yaml
# Question 82: How does etcd quorum affect availability?
apiVersion: apps/v1
kind: Deployment
metadata:
  name: interview-solution-82
spec:
  replicas: 2
  selector:
    matchLabels:
      app: interview-solution-82
  template:
    metadata:
      labels:
        app: interview-solution-82
    spec:
      containers:
        - name: solution
          image: nginx:1.27-alpine
          ports:
            - name: http
              containerPort: 80
          readinessProbe:
            httpGet:
              path: /
              port: http
          resources:
            requests:
              cpu: 50m
              memory: 64Mi
            limits:
              cpu: 250m
              memory: 128Mi
````

### 83. How do you back up and restore etcd?
**Answer:** Keep the previous known-good version, validate the replacement, and automate a tested rollback or restore path with clear ownership and audit output.
````yaml
# Question 83: How do you back up and restore etcd?
apiVersion: apps/v1
kind: Deployment
metadata:
  name: interview-solution-83
spec:
  replicas: 2
  selector:
    matchLabels:
      app: interview-solution-83
  template:
    metadata:
      labels:
        app: interview-solution-83
    spec:
      containers:
        - name: solution
          image: nginx:1.27-alpine
          ports:
            - name: http
              containerPort: 80
          readinessProbe:
            httpGet:
              path: /
              port: http
          resources:
            requests:
              cpu: 50m
              memory: 64Mi
            limits:
              cpu: 250m
              memory: 128Mi
````

### 84. How do you upgrade a production cluster safely?
**Answer:** A strong answer should define the concept, show a small Kubernetes and Docker implementation, explain failure behavior, and describe how it would be tested in CI.
````yaml
# Question 84: How do you upgrade a production cluster safely?
apiVersion: apps/v1
kind: Deployment
metadata:
  name: interview-solution-84
spec:
  replicas: 2
  selector:
    matchLabels:
      app: interview-solution-84
  template:
    metadata:
      labels:
        app: interview-solution-84
    spec:
      containers:
        - name: solution
          image: nginx:1.27-alpine
          ports:
            - name: http
              containerPort: 80
          readinessProbe:
            httpGet:
              path: /
              port: http
          resources:
            requests:
              cpu: 50m
              memory: 64Mi
            limits:
              cpu: 250m
              memory: 128Mi
````

### 85. How do you drain a node without violating availability?
**Answer:** A strong answer should define the concept, show a small Kubernetes and Docker implementation, explain failure behavior, and describe how it would be tested in CI.
````yaml
# Question 85: How do you drain a node without violating availability?
apiVersion: apps/v1
kind: Deployment
metadata:
  name: interview-solution-85
spec:
  replicas: 2
  selector:
    matchLabels:
      app: interview-solution-85
  template:
    metadata:
      labels:
        app: interview-solution-85
    spec:
      containers:
        - name: solution
          image: nginx:1.27-alpine
          ports:
            - name: http
              containerPort: 80
          readinessProbe:
            httpGet:
              path: /
              port: http
          resources:
            requests:
              cpu: 50m
              memory: 64Mi
            limits:
              cpu: 250m
              memory: 128Mi
````

### 86. How do you spread replicas across zones?
**Answer:** A strong answer should define the concept, show a small Kubernetes and Docker implementation, explain failure behavior, and describe how it would be tested in CI.
````yaml
# Question 86: How do you spread replicas across zones?
apiVersion: apps/v1
kind: Deployment
metadata:
  name: interview-solution-86
spec:
  replicas: 2
  selector:
    matchLabels:
      app: interview-solution-86
  template:
    metadata:
      labels:
        app: interview-solution-86
    spec:
      containers:
        - name: solution
          image: nginx:1.27-alpine
          ports:
            - name: http
              containerPort: 80
          readinessProbe:
            httpGet:
              path: /
              port: http
          resources:
            requests:
              cpu: 50m
              memory: 64Mi
            limits:
              cpu: 250m
              memory: 128Mi
````

### 87. Explain pod affinity and anti-affinity.
**Answer:** A strong answer should define the concept, show a small Kubernetes and Docker implementation, explain failure behavior, and describe how it would be tested in CI.
````yaml
# Question 87: Explain pod affinity and anti-affinity.
apiVersion: apps/v1
kind: Deployment
metadata:
  name: interview-solution-87
spec:
  replicas: 2
  selector:
    matchLabels:
      app: interview-solution-87
  template:
    metadata:
      labels:
        app: interview-solution-87
    spec:
      containers:
        - name: solution
          image: nginx:1.27-alpine
          ports:
            - name: http
              containerPort: 80
          readinessProbe:
            httpGet:
              path: /
              port: http
          resources:
            requests:
              cpu: 50m
              memory: 64Mi
            limits:
              cpu: 250m
              memory: 128Mi
````

### 88. What are topology spread constraints?
**Answer:** Emit structured, correlation-aware telemetry with enough context to diagnose duration, failures, deployment version, and affected environment.
````yaml
# Question 88: What are topology spread constraints?
apiVersion: apps/v1
kind: Deployment
metadata:
  name: interview-solution-88
spec:
  replicas: 2
  selector:
    matchLabels:
      app: interview-solution-88
  template:
    metadata:
      labels:
        app: interview-solution-88
    spec:
      containers:
        - name: solution
          image: nginx:1.27-alpine
          ports:
            - name: http
              containerPort: 80
          readinessProbe:
            httpGet:
              path: /
              port: http
          resources:
            requests:
              cpu: 50m
              memory: 64Mi
            limits:
              cpu: 250m
              memory: 128Mi
````

### 89. How do taints and tolerations support isolation?
**Answer:** Define the smallest required traffic path, restrict it with policy and identity, and verify connectivity from the same network boundary as the workload.
````yaml
# Question 89: How do taints and tolerations support isolation?
apiVersion: apps/v1
kind: Deployment
metadata:
  name: interview-solution-89
spec:
  replicas: 2
  selector:
    matchLabels:
      app: interview-solution-89
  template:
    metadata:
      labels:
        app: interview-solution-89
    spec:
      containers:
        - name: solution
          image: nginx:1.27-alpine
          ports:
            - name: http
              containerPort: 80
          readinessProbe:
            httpGet:
              path: /
              port: http
          resources:
            requests:
              cpu: 50m
              memory: 64Mi
            limits:
              cpu: 250m
              memory: 128Mi
````

### 90. How do you design separate system and workload node pools?
**Answer:** A strong answer should define the concept, show a small Kubernetes and Docker implementation, explain failure behavior, and describe how it would be tested in CI.
````yaml
# Question 90: How do you design separate system and workload node pools?
apiVersion: apps/v1
kind: Deployment
metadata:
  name: interview-solution-90
spec:
  replicas: 2
  selector:
    matchLabels:
      app: interview-solution-90
  template:
    metadata:
      labels:
        app: interview-solution-90
    spec:
      containers:
        - name: solution
          image: nginx:1.27-alpine
          ports:
            - name: http
              containerPort: 80
          readinessProbe:
            httpGet:
              path: /
              port: http
          resources:
            requests:
              cpu: 50m
              memory: 64Mi
            limits:
              cpu: 250m
              memory: 128Mi
````

### 91. How do cluster and node autoscaling interact?
**Answer:** Declare requests and limits, measure real usage, set explicit capacity bounds, and test behavior under saturation and recovery.
````yaml
# Question 91: How do cluster and node autoscaling interact?
apiVersion: apps/v1
kind: Deployment
metadata:
  name: interview-solution-91
spec:
  replicas: 2
  selector:
    matchLabels:
      app: interview-solution-91
  template:
    metadata:
      labels:
        app: interview-solution-91
    spec:
      containers:
        - name: solution
          image: nginx:1.27-alpine
          ports:
            - name: http
              containerPort: 80
          readinessProbe:
            httpGet:
              path: /
              port: http
          resources:
            requests:
              cpu: 50m
              memory: 64Mi
            limits:
              cpu: 250m
              memory: 128Mi
````

### 92. How do you prevent autoscaling oscillation?
**Answer:** Declare requests and limits, measure real usage, set explicit capacity bounds, and test behavior under saturation and recovery.
````yaml
# Question 92: How do you prevent autoscaling oscillation?
apiVersion: apps/v1
kind: Deployment
metadata:
  name: interview-solution-92
spec:
  replicas: 2
  selector:
    matchLabels:
      app: interview-solution-92
  template:
    metadata:
      labels:
        app: interview-solution-92
    spec:
      containers:
        - name: solution
          image: nginx:1.27-alpine
          ports:
            - name: http
              containerPort: 80
          readinessProbe:
            httpGet:
              path: /
              port: http
          resources:
            requests:
              cpu: 50m
              memory: 64Mi
            limits:
              cpu: 250m
              memory: 128Mi
````

### 93. Design an SLO-driven rollout strategy.
**Answer:** Check a meaningful dependency or application endpoint, fail the operation when the check fails, and use the result to stop or roll back promotion.
````yaml
# Question 93: Design an SLO-driven rollout strategy.
apiVersion: apps/v1
kind: Deployment
metadata:
  name: interview-solution-93
spec:
  replicas: 2
  selector:
    matchLabels:
      app: interview-solution-93
  template:
    metadata:
      labels:
        app: interview-solution-93
    spec:
      containers:
        - name: solution
          image: nginx:1.27-alpine
          ports:
            - name: http
              containerPort: 80
          readinessProbe:
            httpGet:
              path: /
              port: http
          resources:
            requests:
              cpu: 50m
              memory: 64Mi
            limits:
              cpu: 250m
              memory: 128Mi
````

### 94. How do you implement canary deployment?
**Answer:** Bound concurrency, preserve a small failure domain, verify health between batches, and stop promotion when the error budget is exceeded.
````yaml
# Question 94: How do you implement canary deployment?
apiVersion: apps/v1
kind: Deployment
metadata:
  name: interview-solution-94
spec:
  replicas: 2
  selector:
    matchLabels:
      app: interview-solution-94
  template:
    metadata:
      labels:
        app: interview-solution-94
    spec:
      containers:
        - name: solution
          image: nginx:1.27-alpine
          ports:
            - name: http
              containerPort: 80
          readinessProbe:
            httpGet:
              path: /
              port: http
          resources:
            requests:
              cpu: 50m
              memory: 64Mi
            limits:
              cpu: 250m
              memory: 128Mi
````

### 95. How do you implement blue-green deployment?
**Answer:** Bound concurrency, preserve a small failure domain, verify health between batches, and stop promotion when the error budget is exceeded.
````yaml
# Question 95: How do you implement blue-green deployment?
apiVersion: apps/v1
kind: Deployment
metadata:
  name: interview-solution-95
spec:
  replicas: 2
  selector:
    matchLabels:
      app: interview-solution-95
  template:
    metadata:
      labels:
        app: interview-solution-95
    spec:
      containers:
        - name: solution
          image: nginx:1.27-alpine
          ports:
            - name: http
              containerPort: 80
          readinessProbe:
            httpGet:
              path: /
              port: http
          resources:
            requests:
              cpu: 50m
              memory: 64Mi
            limits:
              cpu: 250m
              memory: 128Mi
````

### 96. How do you combine readiness gates with traffic shifting?
**Answer:** Check a meaningful dependency or application endpoint, fail the operation when the check fails, and use the result to stop or roll back promotion.
````yaml
# Question 96: How do you combine readiness gates with traffic shifting?
apiVersion: apps/v1
kind: Deployment
metadata:
  name: interview-solution-96
spec:
  replicas: 2
  selector:
    matchLabels:
      app: interview-solution-96
  template:
    metadata:
      labels:
        app: interview-solution-96
    spec:
      containers:
        - name: solution
          image: nginx:1.27-alpine
          ports:
            - name: http
              containerPort: 80
          readinessProbe:
            httpGet:
              path: /
              port: http
          resources:
            requests:
              cpu: 50m
              memory: 64Mi
            limits:
              cpu: 250m
              memory: 128Mi
````

### 97. How do you design a multi-tenant cluster?
**Answer:** A strong answer should define the concept, show a small Kubernetes and Docker implementation, explain failure behavior, and describe how it would be tested in CI.
````yaml
# Question 97: How do you design a multi-tenant cluster?
apiVersion: apps/v1
kind: Deployment
metadata:
  name: interview-solution-97
spec:
  replicas: 2
  selector:
    matchLabels:
      app: interview-solution-97
  template:
    metadata:
      labels:
        app: interview-solution-97
    spec:
      containers:
        - name: solution
          image: nginx:1.27-alpine
          ports:
            - name: http
              containerPort: 80
          readinessProbe:
            httpGet:
              path: /
              port: http
          resources:
            requests:
              cpu: 50m
              memory: 64Mi
            limits:
              cpu: 250m
              memory: 128Mi
````

### 98. How do namespaces, RBAC, quotas, and NetworkPolicies combine?
**Answer:** Define the smallest required traffic path, restrict it with policy and identity, and verify connectivity from the same network boundary as the workload.
````yaml
# Question 98: How do namespaces, RBAC, quotas, and NetworkPolicies combine?
apiVersion: apps/v1
kind: Deployment
metadata:
  name: interview-solution-98
spec:
  replicas: 2
  selector:
    matchLabels:
      app: interview-solution-98
  template:
    metadata:
      labels:
        app: interview-solution-98
    spec:
      containers:
        - name: solution
          image: nginx:1.27-alpine
          ports:
            - name: http
              containerPort: 80
          readinessProbe:
            httpGet:
              path: /
              port: http
          resources:
            requests:
              cpu: 50m
              memory: 64Mi
            limits:
              cpu: 250m
              memory: 128Mi
````

### 99. How do you enforce Pod Security Standards?
**Answer:** Apply least privilege, isolate trust boundaries, validate policy in CI or admission, and record auditable changes.
````yaml
# Question 99: How do you enforce Pod Security Standards?
apiVersion: apps/v1
kind: Deployment
metadata:
  name: interview-solution-99
spec:
  replicas: 2
  selector:
    matchLabels:
      app: interview-solution-99
  template:
    metadata:
      labels:
        app: interview-solution-99
    spec:
      containers:
        - name: solution
          image: nginx:1.27-alpine
          ports:
            - name: http
              containerPort: 80
          readinessProbe:
            httpGet:
              path: /
              port: http
          resources:
            requests:
              cpu: 50m
              memory: 64Mi
            limits:
              cpu: 250m
              memory: 128Mi
````

### 100. How do you prevent privileged containers?
**Answer:** Apply least privilege, isolate trust boundaries, validate policy in CI or admission, and record auditable changes.
````yaml
# Question 100: How do you prevent privileged containers?
apiVersion: apps/v1
kind: Deployment
metadata:
  name: interview-solution-100
spec:
  replicas: 2
  selector:
    matchLabels:
      app: interview-solution-100
  template:
    metadata:
      labels:
        app: interview-solution-100
    spec:
      containers:
        - name: solution
          image: nginx:1.27-alpine
          ports:
            - name: http
              containerPort: 80
          readinessProbe:
            httpGet:
              path: /
              port: http
          resources:
            requests:
              cpu: 50m
              memory: 64Mi
            limits:
              cpu: 250m
              memory: 128Mi
````

### 101. How do you secure the container supply chain?
**Answer:** Apply least privilege, isolate trust boundaries, validate policy in CI or admission, and record auditable changes.
````yaml
# Question 101: How do you secure the container supply chain?
apiVersion: apps/v1
kind: Deployment
metadata:
  name: interview-solution-101
spec:
  replicas: 2
  selector:
    matchLabels:
      app: interview-solution-101
  template:
    metadata:
      labels:
        app: interview-solution-101
    spec:
      containers:
        - name: solution
          image: nginx:1.27-alpine
          ports:
            - name: http
              containerPort: 80
          readinessProbe:
            httpGet:
              path: /
              port: http
          resources:
            requests:
              cpu: 50m
              memory: 64Mi
            limits:
              cpu: 250m
              memory: 128Mi
````

### 102. Why use digest-pinned images?
**Answer:** Build a minimal immutable image, pin dependencies, scan and sign it, publish it to a controlled registry, and deploy by digest when possible.
````yaml
# Question 102: Why use digest-pinned images?
apiVersion: apps/v1
kind: Deployment
metadata:
  name: interview-solution-102
spec:
  replicas: 2
  selector:
    matchLabels:
      app: interview-solution-102
  template:
    metadata:
      labels:
        app: interview-solution-102
    spec:
      containers:
        - name: solution
          image: nginx:1.27-alpine
          ports:
            - name: http
              containerPort: 80
          readinessProbe:
            httpGet:
              path: /
              port: http
          resources:
            requests:
              cpu: 50m
              memory: 64Mi
            limits:
              cpu: 250m
              memory: 128Mi
````

### 103. How do image signing and admission verification work?
**Answer:** Build a minimal immutable image, pin dependencies, scan and sign it, publish it to a controlled registry, and deploy by digest when possible.
````yaml
# Question 103: How do image signing and admission verification work?
apiVersion: apps/v1
kind: Deployment
metadata:
  name: interview-solution-103
spec:
  replicas: 2
  selector:
    matchLabels:
      app: interview-solution-103
  template:
    metadata:
      labels:
        app: interview-solution-103
    spec:
      containers:
        - name: solution
          image: nginx:1.27-alpine
          ports:
            - name: http
              containerPort: 80
          readinessProbe:
            httpGet:
              path: /
              port: http
          resources:
            requests:
              cpu: 50m
              memory: 64Mi
            limits:
              cpu: 250m
              memory: 128Mi
````

### 104. How do you design private registry access?
**Answer:** Build a minimal immutable image, pin dependencies, scan and sign it, publish it to a controlled registry, and deploy by digest when possible.
````yaml
# Question 104: How do you design private registry access?
apiVersion: apps/v1
kind: Deployment
metadata:
  name: interview-solution-104
spec:
  replicas: 2
  selector:
    matchLabels:
      app: interview-solution-104
  template:
    metadata:
      labels:
        app: interview-solution-104
    spec:
      containers:
        - name: solution
          image: nginx:1.27-alpine
          ports:
            - name: http
              containerPort: 80
          readinessProbe:
            httpGet:
              path: /
              port: http
          resources:
            requests:
              cpu: 50m
              memory: 64Mi
            limits:
              cpu: 250m
              memory: 128Mi
````

### 105. How do you use workload identity on Azure?
**Answer:** Use provider-native identity with least privilege, explicit environment boundaries, tagging, policy controls, and repeatable infrastructure definitions.
````yaml
# Question 105: How do you use workload identity on Azure?
apiVersion: apps/v1
kind: Deployment
metadata:
  name: interview-solution-105
spec:
  replicas: 2
  selector:
    matchLabels:
      app: interview-solution-105
  template:
    metadata:
      labels:
        app: interview-solution-105
    spec:
      containers:
        - name: solution
          image: nginx:1.27-alpine
          ports:
            - name: http
              containerPort: 80
          readinessProbe:
            httpGet:
              path: /
              port: http
          resources:
            requests:
              cpu: 50m
              memory: 64Mi
            limits:
              cpu: 250m
              memory: 128Mi
````

### 106. How do you use IAM roles for service accounts on AWS?
**Answer:** Extract the behavior behind a small documented interface, keep inputs and outputs explicit, and test the reusable unit independently.
````yaml
# Question 106: How do you use IAM roles for service accounts on AWS?
apiVersion: apps/v1
kind: Deployment
metadata:
  name: interview-solution-106
spec:
  replicas: 2
  selector:
    matchLabels:
      app: interview-solution-106
  template:
    metadata:
      labels:
        app: interview-solution-106
    spec:
      containers:
        - name: solution
          image: nginx:1.27-alpine
          ports:
            - name: http
              containerPort: 80
          readinessProbe:
            httpGet:
              path: /
              port: http
          resources:
            requests:
              cpu: 50m
              memory: 64Mi
            limits:
              cpu: 250m
              memory: 128Mi
````

### 107. How do you design AKS networking?
**Answer:** Define the smallest required traffic path, restrict it with policy and identity, and verify connectivity from the same network boundary as the workload.
````yaml
# Question 107: How do you design AKS networking?
apiVersion: apps/v1
kind: Deployment
metadata:
  name: interview-solution-107
spec:
  replicas: 2
  selector:
    matchLabels:
      app: interview-solution-107
  template:
    metadata:
      labels:
        app: interview-solution-107
    spec:
      containers:
        - name: solution
          image: nginx:1.27-alpine
          ports:
            - name: http
              containerPort: 80
          readinessProbe:
            httpGet:
              path: /
              port: http
          resources:
            requests:
              cpu: 50m
              memory: 64Mi
            limits:
              cpu: 250m
              memory: 128Mi
````

### 108. How do you design EKS networking?
**Answer:** Define the smallest required traffic path, restrict it with policy and identity, and verify connectivity from the same network boundary as the workload.
````yaml
# Question 108: How do you design EKS networking?
apiVersion: apps/v1
kind: Deployment
metadata:
  name: interview-solution-108
spec:
  replicas: 2
  selector:
    matchLabels:
      app: interview-solution-108
  template:
    metadata:
      labels:
        app: interview-solution-108
    spec:
      containers:
        - name: solution
          image: nginx:1.27-alpine
          ports:
            - name: http
              containerPort: 80
          readinessProbe:
            httpGet:
              path: /
              port: http
          resources:
            requests:
              cpu: 50m
              memory: 64Mi
            limits:
              cpu: 250m
              memory: 128Mi
````

### 109. How do you connect on-premises clusters to cloud services?
**Answer:** Define the smallest required traffic path, restrict it with policy and identity, and verify connectivity from the same network boundary as the workload.
````yaml
# Question 109: How do you connect on-premises clusters to cloud services?
apiVersion: apps/v1
kind: Deployment
metadata:
  name: interview-solution-109
spec:
  replicas: 2
  selector:
    matchLabels:
      app: interview-solution-109
  template:
    metadata:
      labels:
        app: interview-solution-109
    spec:
      containers:
        - name: solution
          image: nginx:1.27-alpine
          ports:
            - name: http
              containerPort: 80
          readinessProbe:
            httpGet:
              path: /
              port: http
          resources:
            requests:
              cpu: 50m
              memory: 64Mi
            limits:
              cpu: 250m
              memory: 128Mi
````

### 110. How do you observe cluster, node, and application health?
**Answer:** Check a meaningful dependency or application endpoint, fail the operation when the check fails, and use the result to stop or roll back promotion.
````yaml
# Question 110: How do you observe cluster, node, and application health?
apiVersion: apps/v1
kind: Deployment
metadata:
  name: interview-solution-110
spec:
  replicas: 2
  selector:
    matchLabels:
      app: interview-solution-110
  template:
    metadata:
      labels:
        app: interview-solution-110
    spec:
      containers:
        - name: solution
          image: nginx:1.27-alpine
          ports:
            - name: http
              containerPort: 80
          readinessProbe:
            httpGet:
              path: /
              port: http
          resources:
            requests:
              cpu: 50m
              memory: 64Mi
            limits:
              cpu: 250m
              memory: 128Mi
````

### 111. How do you correlate traces with deployment versions?
**Answer:** Emit structured, correlation-aware telemetry with enough context to diagnose duration, failures, deployment version, and affected environment.
````yaml
# Question 111: How do you correlate traces with deployment versions?
apiVersion: apps/v1
kind: Deployment
metadata:
  name: interview-solution-111
spec:
  replicas: 2
  selector:
    matchLabels:
      app: interview-solution-111
  template:
    metadata:
      labels:
        app: interview-solution-111
    spec:
      containers:
        - name: solution
          image: nginx:1.27-alpine
          ports:
            - name: http
              containerPort: 80
          readinessProbe:
            httpGet:
              path: /
              port: http
          resources:
            requests:
              cpu: 50m
              memory: 64Mi
            limits:
              cpu: 250m
              memory: 128Mi
````

### 112. How do you perform capacity planning?
**Answer:** Declare requests and limits, measure real usage, set explicit capacity bounds, and test behavior under saturation and recovery.
````yaml
# Question 112: How do you perform capacity planning?
apiVersion: apps/v1
kind: Deployment
metadata:
  name: interview-solution-112
spec:
  replicas: 2
  selector:
    matchLabels:
      app: interview-solution-112
  template:
    metadata:
      labels:
        app: interview-solution-112
    spec:
      containers:
        - name: solution
          image: nginx:1.27-alpine
          ports:
            - name: http
              containerPort: 80
          readinessProbe:
            httpGet:
              path: /
              port: http
          resources:
            requests:
              cpu: 50m
              memory: 64Mi
            limits:
              cpu: 250m
              memory: 128Mi
````

### 113. How do you recover from a control-plane outage?
**Answer:** A strong answer should define the concept, show a small Kubernetes and Docker implementation, explain failure behavior, and describe how it would be tested in CI.
````yaml
# Question 113: How do you recover from a control-plane outage?
apiVersion: apps/v1
kind: Deployment
metadata:
  name: interview-solution-113
spec:
  replicas: 2
  selector:
    matchLabels:
      app: interview-solution-113
  template:
    metadata:
      labels:
        app: interview-solution-113
    spec:
      containers:
        - name: solution
          image: nginx:1.27-alpine
          ports:
            - name: http
              containerPort: 80
          readinessProbe:
            httpGet:
              path: /
              port: http
          resources:
            requests:
              cpu: 50m
              memory: 64Mi
            limits:
              cpu: 250m
              memory: 128Mi
````

### 114. How do you recover from a registry outage?
**Answer:** Build a minimal immutable image, pin dependencies, scan and sign it, publish it to a controlled registry, and deploy by digest when possible.
````yaml
# Question 114: How do you recover from a registry outage?
apiVersion: apps/v1
kind: Deployment
metadata:
  name: interview-solution-114
spec:
  replicas: 2
  selector:
    matchLabels:
      app: interview-solution-114
  template:
    metadata:
      labels:
        app: interview-solution-114
    spec:
      containers:
        - name: solution
          image: nginx:1.27-alpine
          ports:
            - name: http
              containerPort: 80
          readinessProbe:
            httpGet:
              path: /
              port: http
          resources:
            requests:
              cpu: 50m
              memory: 64Mi
            limits:
              cpu: 250m
              memory: 128Mi
````

### 115. How do you test backup restoration?
**Answer:** Automate syntax, static analysis, unit, and integration checks in CI; fail early and publish useful diagnostics as artifacts.
````yaml
# Question 115: How do you test backup restoration?
apiVersion: apps/v1
kind: Deployment
metadata:
  name: interview-solution-115
spec:
  replicas: 2
  selector:
    matchLabels:
      app: interview-solution-115
  template:
    metadata:
      labels:
        app: interview-solution-115
    spec:
      containers:
        - name: solution
          image: nginx:1.27-alpine
          ports:
            - name: http
              containerPort: 80
          readinessProbe:
            httpGet:
              path: /
              port: http
          resources:
            requests:
              cpu: 50m
              memory: 64Mi
            limits:
              cpu: 250m
              memory: 128Mi
````

### 116. Explain Helm release history and rollback behavior.
**Answer:** Keep the previous known-good version, validate the replacement, and automate a tested rollback or restore path with clear ownership and audit output.
````yaml
# Question 116: Explain Helm release history and rollback behavior.
apiVersion: apps/v1
kind: Deployment
metadata:
  name: interview-solution-116
spec:
  replicas: 2
  selector:
    matchLabels:
      app: interview-solution-116
  template:
    metadata:
      labels:
        app: interview-solution-116
    spec:
      containers:
        - name: solution
          image: nginx:1.27-alpine
          ports:
            - name: http
              containerPort: 80
          readinessProbe:
            httpGet:
              path: /
              port: http
          resources:
            requests:
              cpu: 50m
              memory: 64Mi
            limits:
              cpu: 250m
              memory: 128Mi
````

### 117. How do you version and promote Helm charts?
**Answer:** A strong answer should define the concept, show a small Kubernetes and Docker implementation, explain failure behavior, and describe how it would be tested in CI.
````yaml
# Question 117: How do you version and promote Helm charts?
apiVersion: apps/v1
kind: Deployment
metadata:
  name: interview-solution-117
spec:
  replicas: 2
  selector:
    matchLabels:
      app: interview-solution-117
  template:
    metadata:
      labels:
        app: interview-solution-117
    spec:
      containers:
        - name: solution
          image: nginx:1.27-alpine
          ports:
            - name: http
              containerPort: 80
          readinessProbe:
            httpGet:
              path: /
              port: http
          resources:
            requests:
              cpu: 50m
              memory: 64Mi
            limits:
              cpu: 250m
              memory: 128Mi
````

### 118. How do you manage secrets in Helm without leaking them?
**Answer:** Keep the value in a protected secret store or workload identity, pass it at runtime, redact it from logs, and never commit it to source control.
````yaml
# Question 118: How do you manage secrets in Helm without leaking them?
apiVersion: apps/v1
kind: Deployment
metadata:
  name: interview-solution-118
spec:
  replicas: 2
  selector:
    matchLabels:
      app: interview-solution-118
  template:
    metadata:
      labels:
        app: interview-solution-118
    spec:
      containers:
        - name: solution
          image: nginx:1.27-alpine
          ports:
            - name: http
              containerPort: 80
          readinessProbe:
            httpGet:
              path: /
              port: http
          resources:
            requests:
              cpu: 50m
              memory: 64Mi
            limits:
              cpu: 250m
              memory: 128Mi
````

### 119. What failure modes exist in Docker-in-Docker CI?
**Answer:** Build a minimal immutable image, pin dependencies, scan and sign it, publish it to a controlled registry, and deploy by digest when possible.
````yaml
# Question 119: What failure modes exist in Docker-in-Docker CI?
apiVersion: apps/v1
kind: Deployment
metadata:
  name: interview-solution-119
spec:
  replicas: 2
  selector:
    matchLabels:
      app: interview-solution-119
  template:
    metadata:
      labels:
        app: interview-solution-119
    spec:
      containers:
        - name: solution
          image: nginx:1.27-alpine
          ports:
            - name: http
              containerPort: 80
          readinessProbe:
            httpGet:
              path: /
              port: http
          resources:
            requests:
              cpu: 50m
              memory: 64Mi
            limits:
              cpu: 250m
              memory: 128Mi
````

### 120. Design a secure, multi-region, observable Kubernetes platform with reversible releases.
**Answer:** Emit structured, correlation-aware telemetry with enough context to diagnose duration, failures, deployment version, and affected environment.
````yaml
# Question 120: Design a secure, multi-region, observable Kubernetes platform with reversible releases.
apiVersion: apps/v1
kind: Deployment
metadata:
  name: interview-solution-120
spec:
  replicas: 2
  selector:
    matchLabels:
      app: interview-solution-120
  template:
    metadata:
      labels:
        app: interview-solution-120
    spec:
      containers:
        - name: solution
          image: nginx:1.27-alpine
          ports:
            - name: http
              containerPort: 80
          readinessProbe:
            httpGet:
              path: /
              port: http
          resources:
            requests:
              cpu: 50m
              memory: 64Mi
            limits:
              cpu: 250m
              memory: 128Mi
````

### 121. Write a Dockerfile that uses a non-root user and minimal runtime image.
**Answer:** Use declarative manifests with pinned images, probes, resource controls, least-privilege identity, and a rollout strategy that can be observed and rolled back.
````yaml
# Question 121: Write a Dockerfile that uses a non-root user and minimal runtime image.
apiVersion: apps/v1
kind: Deployment
metadata:
  name: interview-solution-121
spec:
  replicas: 2
  selector:
    matchLabels:
      app: interview-solution-121
  template:
    metadata:
      labels:
        app: interview-solution-121
    spec:
      containers:
        - name: solution
          image: nginx:1.27-alpine
          ports:
            - name: http
              containerPort: 80
          readinessProbe:
            httpGet:
              path: /
              port: http
          resources:
            requests:
              cpu: 50m
              memory: 64Mi
            limits:
              cpu: 250m
              memory: 128Mi
````

### 122. Write a Dockerfile with a multi-stage build.
**Answer:** Separate validation, build, promotion, and verification jobs; use immutable artifacts, protected variables or OIDC, and manual approval for production.
````yaml
# Question 122: Write a Dockerfile with a multi-stage build.
apiVersion: apps/v1
kind: Deployment
metadata:
  name: interview-solution-122
spec:
  replicas: 2
  selector:
    matchLabels:
      app: interview-solution-122
  template:
    metadata:
      labels:
        app: interview-solution-122
    spec:
      containers:
        - name: solution
          image: nginx:1.27-alpine
          ports:
            - name: http
              containerPort: 80
          readinessProbe:
            httpGet:
              path: /
              port: http
          resources:
            requests:
              cpu: 50m
              memory: 64Mi
            limits:
              cpu: 250m
              memory: 128Mi
````

### 123. Write a Deployment with three replicas and a readiness probe.
**Answer:** Deploy an immutable version, run a health or smoke check, promote only on success, and invoke a tested rollback while preserving the failure in logs.
````yaml
# Question 123: Write a Deployment with three replicas and a readiness probe.
apiVersion: apps/v1
kind: Deployment
metadata:
  name: interview-solution-123
spec:
  replicas: 2
  selector:
    matchLabels:
      app: interview-solution-123
  template:
    metadata:
      labels:
        app: interview-solution-123
    spec:
      containers:
        - name: solution
          image: nginx:1.27-alpine
          ports:
            - name: http
              containerPort: 80
          readinessProbe:
            httpGet:
              path: /
              port: http
          resources:
            requests:
              cpu: 50m
              memory: 64Mi
            limits:
              cpu: 250m
              memory: 128Mi
````

### 124. Write a Service that selects only stable Pods.
**Answer:** Use declarative manifests with pinned images, probes, resource controls, least-privilege identity, and a rollout strategy that can be observed and rolled back.
````yaml
# Question 124: Write a Service that selects only stable Pods.
apiVersion: apps/v1
kind: Deployment
metadata:
  name: interview-solution-124
spec:
  replicas: 2
  selector:
    matchLabels:
      app: interview-solution-124
  template:
    metadata:
      labels:
        app: interview-solution-124
    spec:
      containers:
        - name: solution
          image: nginx:1.27-alpine
          ports:
            - name: http
              containerPort: 80
          readinessProbe:
            httpGet:
              path: /
              port: http
          resources:
            requests:
              cpu: 50m
              memory: 64Mi
            limits:
              cpu: 250m
              memory: 128Mi
````

### 125. Mount one ConfigMap key as a file.
**Answer:** Implement the solution with validated inputs, deterministic behavior, clear failure handling, tests, and an example execution command for Kubernetes/Docker.
````yaml
# Question 125: Mount one ConfigMap key as a file.
apiVersion: apps/v1
kind: Deployment
metadata:
  name: interview-solution-125
spec:
  replicas: 2
  selector:
    matchLabels:
      app: interview-solution-125
  template:
    metadata:
      labels:
        app: interview-solution-125
    spec:
      containers:
        - name: solution
          image: nginx:1.27-alpine
          ports:
            - name: http
              containerPort: 80
          readinessProbe:
            httpGet:
              path: /
              port: http
          resources:
            requests:
              cpu: 50m
              memory: 64Mi
            limits:
              cpu: 250m
              memory: 128Mi
````

### 126. Inject a Secret as an environment variable without committing plaintext.
**Answer:** Parse with the platform's structured data tool, validate required fields and types at the boundary, and return a clear nonzero failure for malformed input.
````yaml
# Question 126: Inject a Secret as an environment variable without committing plaintext.
apiVersion: apps/v1
kind: Deployment
metadata:
  name: interview-solution-126
spec:
  replicas: 2
  selector:
    matchLabels:
      app: interview-solution-126
  template:
    metadata:
      labels:
        app: interview-solution-126
    spec:
      containers:
        - name: solution
          image: nginx:1.27-alpine
          ports:
            - name: http
              containerPort: 80
          readinessProbe:
            httpGet:
              path: /
              port: http
          resources:
            requests:
              cpu: 50m
              memory: 64Mi
            limits:
              cpu: 250m
              memory: 128Mi
````

### 127. Write a Job that retries a migration three times.
**Answer:** Separate validation, build, promotion, and verification jobs; use immutable artifacts, protected variables or OIDC, and manual approval for production.
````yaml
# Question 127: Write a Job that retries a migration three times.
apiVersion: apps/v1
kind: Deployment
metadata:
  name: interview-solution-127
spec:
  replicas: 2
  selector:
    matchLabels:
      app: interview-solution-127
  template:
    metadata:
      labels:
        app: interview-solution-127
    spec:
      containers:
        - name: solution
          image: nginx:1.27-alpine
          ports:
            - name: http
              containerPort: 80
          readinessProbe:
            httpGet:
              path: /
              port: http
          resources:
            requests:
              cpu: 50m
              memory: 64Mi
            limits:
              cpu: 250m
              memory: 128Mi
````

### 128. Write a non-overlapping CronJob for a nightly report.
**Answer:** Separate validation, build, promotion, and verification jobs; use immutable artifacts, protected variables or OIDC, and manual approval for production.
````yaml
# Question 128: Write a non-overlapping CronJob for a nightly report.
apiVersion: apps/v1
kind: Deployment
metadata:
  name: interview-solution-128
spec:
  replicas: 2
  selector:
    matchLabels:
      app: interview-solution-128
  template:
    metadata:
      labels:
        app: interview-solution-128
    spec:
      containers:
        - name: solution
          image: nginx:1.27-alpine
          ports:
            - name: http
              containerPort: 80
          readinessProbe:
            httpGet:
              path: /
              port: http
          resources:
            requests:
              cpu: 50m
              memory: 64Mi
            limits:
              cpu: 250m
              memory: 128Mi
````

### 129. Add CPU and memory requests and limits to a Deployment.
**Answer:** Deploy an immutable version, run a health or smoke check, promote only on success, and invoke a tested rollback while preserving the failure in logs.
````yaml
# Question 129: Add CPU and memory requests and limits to a Deployment.
apiVersion: apps/v1
kind: Deployment
metadata:
  name: interview-solution-129
spec:
  replicas: 2
  selector:
    matchLabels:
      app: interview-solution-129
  template:
    metadata:
      labels:
        app: interview-solution-129
    spec:
      containers:
        - name: solution
          image: nginx:1.27-alpine
          ports:
            - name: http
              containerPort: 80
          readinessProbe:
            httpGet:
              path: /
              port: http
          resources:
            requests:
              cpu: 50m
              memory: 64Mi
            limits:
              cpu: 250m
              memory: 128Mi
````

### 130. Write a liveness probe for a stuck HTTP process.
**Answer:** Implement the solution with validated inputs, deterministic behavior, clear failure handling, tests, and an example execution command for Kubernetes/Docker.
````yaml
# Question 130: Write a liveness probe for a stuck HTTP process.
apiVersion: apps/v1
kind: Deployment
metadata:
  name: interview-solution-130
spec:
  replicas: 2
  selector:
    matchLabels:
      app: interview-solution-130
  template:
    metadata:
      labels:
        app: interview-solution-130
    spec:
      containers:
        - name: solution
          image: nginx:1.27-alpine
          ports:
            - name: http
              containerPort: 80
          readinessProbe:
            httpGet:
              path: /
              port: http
          resources:
            requests:
              cpu: 50m
              memory: 64Mi
            limits:
              cpu: 250m
              memory: 128Mi
````

### 131. Write an HPA scaling between two and ten replicas at 70% CPU.
**Answer:** Implement the solution with validated inputs, deterministic behavior, clear failure handling, tests, and an example execution command for Kubernetes/Docker.
````yaml
# Question 131: Write an HPA scaling between two and ten replicas at 70% CPU.
apiVersion: apps/v1
kind: Deployment
metadata:
  name: interview-solution-131
spec:
  replicas: 2
  selector:
    matchLabels:
      app: interview-solution-131
  template:
    metadata:
      labels:
        app: interview-solution-131
    spec:
      containers:
        - name: solution
          image: nginx:1.27-alpine
          ports:
            - name: http
              containerPort: 80
          readinessProbe:
            httpGet:
              path: /
              port: http
          resources:
            requests:
              cpu: 50m
              memory: 64Mi
            limits:
              cpu: 250m
              memory: 128Mi
````

### 132. Write an Ingress route for `/api` with TLS.
**Answer:** Use explicit authentication, timeouts, status handling, pagination, rate-limit handling, and structured response validation; never place credentials in source.
````yaml
# Question 132: Write an Ingress route for `/api` with TLS.
apiVersion: apps/v1
kind: Deployment
metadata:
  name: interview-solution-132
spec:
  replicas: 2
  selector:
    matchLabels:
      app: interview-solution-132
  template:
    metadata:
      labels:
        app: interview-solution-132
    spec:
      containers:
        - name: solution
          image: nginx:1.27-alpine
          ports:
            - name: http
              containerPort: 80
          readinessProbe:
            httpGet:
              path: /
              port: http
          resources:
            requests:
              cpu: 50m
              memory: 64Mi
            limits:
              cpu: 250m
              memory: 128Mi
````

### 133. Write a default-deny NetworkPolicy and an API allow rule.
**Answer:** Use explicit authentication, timeouts, status handling, pagination, rate-limit handling, and structured response validation; never place credentials in source.
````yaml
# Question 133: Write a default-deny NetworkPolicy and an API allow rule.
apiVersion: apps/v1
kind: Deployment
metadata:
  name: interview-solution-133
spec:
  replicas: 2
  selector:
    matchLabels:
      app: interview-solution-133
  template:
    metadata:
      labels:
        app: interview-solution-133
    spec:
      containers:
        - name: solution
          image: nginx:1.27-alpine
          ports:
            - name: http
              containerPort: 80
          readinessProbe:
            httpGet:
              path: /
              port: http
          resources:
            requests:
              cpu: 50m
              memory: 64Mi
            limits:
              cpu: 250m
              memory: 128Mi
````

### 134. Write a PVC and mount it at `/var/lib/app`.
**Answer:** Implement the solution with validated inputs, deterministic behavior, clear failure handling, tests, and an example execution command for Kubernetes/Docker.
````yaml
# Question 134: Write a PVC and mount it at `/var/lib/app`.
apiVersion: apps/v1
kind: Deployment
metadata:
  name: interview-solution-134
spec:
  replicas: 2
  selector:
    matchLabels:
      app: interview-solution-134
  template:
    metadata:
      labels:
        app: interview-solution-134
    spec:
      containers:
        - name: solution
          image: nginx:1.27-alpine
          ports:
            - name: http
              containerPort: 80
          readinessProbe:
            httpGet:
              path: /
              port: http
          resources:
            requests:
              cpu: 50m
              memory: 64Mi
            limits:
              cpu: 250m
              memory: 128Mi
````

### 135. Write a PodDisruptionBudget preserving one replica.
**Answer:** Use declarative manifests with pinned images, probes, resource controls, least-privilege identity, and a rollout strategy that can be observed and rolled back.
````yaml
# Question 135: Write a PodDisruptionBudget preserving one replica.
apiVersion: apps/v1
kind: Deployment
metadata:
  name: interview-solution-135
spec:
  replicas: 2
  selector:
    matchLabels:
      app: interview-solution-135
  template:
    metadata:
      labels:
        app: interview-solution-135
    spec:
      containers:
        - name: solution
          image: nginx:1.27-alpine
          ports:
            - name: http
              containerPort: 80
          readinessProbe:
            httpGet:
              path: /
              port: http
          resources:
            requests:
              cpu: 50m
              memory: 64Mi
            limits:
              cpu: 250m
              memory: 128Mi
````

### 136. Write a zero-unavailable rolling update.
**Answer:** Implement the solution with validated inputs, deterministic behavior, clear failure handling, tests, and an example execution command for Kubernetes/Docker.
````yaml
# Question 136: Write a zero-unavailable rolling update.
apiVersion: apps/v1
kind: Deployment
metadata:
  name: interview-solution-136
spec:
  replicas: 2
  selector:
    matchLabels:
      app: interview-solution-136
  template:
    metadata:
      labels:
        app: interview-solution-136
    spec:
      containers:
        - name: solution
          image: nginx:1.27-alpine
          ports:
            - name: http
              containerPort: 80
          readinessProbe:
            httpGet:
              path: /
              port: http
          resources:
            requests:
              cpu: 50m
              memory: 64Mi
            limits:
              cpu: 250m
              memory: 128Mi
````

### 137. Template an image repository and tag with Helm values.
**Answer:** Use declarative manifests with pinned images, probes, resource controls, least-privilege identity, and a rollout strategy that can be observed and rolled back.
````yaml
# Question 137: Template an image repository and tag with Helm values.
apiVersion: apps/v1
kind: Deployment
metadata:
  name: interview-solution-137
spec:
  replicas: 2
  selector:
    matchLabels:
      app: interview-solution-137
  template:
    metadata:
      labels:
        app: interview-solution-137
    spec:
      containers:
        - name: solution
          image: nginx:1.27-alpine
          ports:
            - name: http
              containerPort: 80
          readinessProbe:
            httpGet:
              path: /
              port: http
          resources:
            requests:
              cpu: 50m
              memory: 64Mi
            limits:
              cpu: 250m
              memory: 128Mi
````

### 138. Write Helm helpers for stable names and labels.
**Answer:** Use declarative manifests with pinned images, probes, resource controls, least-privilege identity, and a rollout strategy that can be observed and rolled back.
````yaml
# Question 138: Write Helm helpers for stable names and labels.
apiVersion: apps/v1
kind: Deployment
metadata:
  name: interview-solution-138
spec:
  replicas: 2
  selector:
    matchLabels:
      app: interview-solution-138
  template:
    metadata:
      labels:
        app: interview-solution-138
    spec:
      containers:
        - name: solution
          image: nginx:1.27-alpine
          ports:
            - name: http
              containerPort: 80
          readinessProbe:
            httpGet:
              path: /
              port: http
          resources:
            requests:
              cpu: 50m
              memory: 64Mi
            limits:
              cpu: 250m
              memory: 128Mi
````

### 139. Write a Helm test Pod for a Service endpoint.
**Answer:** Test the happy path, invalid input, timeout, retry exhaustion, and partial failure with mocks for external systems and an assertion on the final result.
````yaml
# Question 139: Write a Helm test Pod for a Service endpoint.
apiVersion: apps/v1
kind: Deployment
metadata:
  name: interview-solution-139
spec:
  replicas: 2
  selector:
    matchLabels:
      app: interview-solution-139
  template:
    metadata:
      labels:
        app: interview-solution-139
    spec:
      containers:
        - name: solution
          image: nginx:1.27-alpine
          ports:
            - name: http
              containerPort: 80
          readinessProbe:
            httpGet:
              path: /
              port: http
          resources:
            requests:
              cpu: 50m
              memory: 64Mi
            limits:
              cpu: 250m
              memory: 128Mi
````

### 140. Spread replicas across availability zones.
**Answer:** Implement the solution with validated inputs, deterministic behavior, clear failure handling, tests, and an example execution command for Kubernetes/Docker.
````yaml
# Question 140: Spread replicas across availability zones.
apiVersion: apps/v1
kind: Deployment
metadata:
  name: interview-solution-140
spec:
  replicas: 2
  selector:
    matchLabels:
      app: interview-solution-140
  template:
    metadata:
      labels:
        app: interview-solution-140
    spec:
      containers:
        - name: solution
          image: nginx:1.27-alpine
          ports:
            - name: http
              containerPort: 80
          readinessProbe:
            httpGet:
              path: /
              port: http
          resources:
            requests:
              cpu: 50m
              memory: 64Mi
            limits:
              cpu: 250m
              memory: 128Mi
````

### 141. Write pod anti-affinity for same-application replicas.
**Answer:** Use declarative manifests with pinned images, probes, resource controls, least-privilege identity, and a rollout strategy that can be observed and rolled back.
````yaml
# Question 141: Write pod anti-affinity for same-application replicas.
apiVersion: apps/v1
kind: Deployment
metadata:
  name: interview-solution-141
spec:
  replicas: 2
  selector:
    matchLabels:
      app: interview-solution-141
  template:
    metadata:
      labels:
        app: interview-solution-141
    spec:
      containers:
        - name: solution
          image: nginx:1.27-alpine
          ports:
            - name: http
              containerPort: 80
          readinessProbe:
            httpGet:
              path: /
              port: http
          resources:
            requests:
              cpu: 50m
              memory: 64Mi
            limits:
              cpu: 250m
              memory: 128Mi
````

### 142. Write taints and tolerations for a dedicated node pool.
**Answer:** Implement the solution with validated inputs, deterministic behavior, clear failure handling, tests, and an example execution command for Kubernetes/Docker.
````yaml
# Question 142: Write taints and tolerations for a dedicated node pool.
apiVersion: apps/v1
kind: Deployment
metadata:
  name: interview-solution-142
spec:
  replicas: 2
  selector:
    matchLabels:
      app: interview-solution-142
  template:
    metadata:
      labels:
        app: interview-solution-142
    spec:
      containers:
        - name: solution
          image: nginx:1.27-alpine
          ports:
            - name: http
              containerPort: 80
          readinessProbe:
            httpGet:
              path: /
              port: http
          resources:
            requests:
              cpu: 50m
              memory: 64Mi
            limits:
              cpu: 250m
              memory: 128Mi
````

### 143. Write a restricted security context with dropped capabilities.
**Answer:** Implement the solution with validated inputs, deterministic behavior, clear failure handling, tests, and an example execution command for Kubernetes/Docker.
````yaml
# Question 143: Write a restricted security context with dropped capabilities.
apiVersion: apps/v1
kind: Deployment
metadata:
  name: interview-solution-143
spec:
  replicas: 2
  selector:
    matchLabels:
      app: interview-solution-143
  template:
    metadata:
      labels:
        app: interview-solution-143
    spec:
      containers:
        - name: solution
          image: nginx:1.27-alpine
          ports:
            - name: http
              containerPort: 80
          readinessProbe:
            httpGet:
              path: /
              port: http
          resources:
            requests:
              cpu: 50m
              memory: 64Mi
            limits:
              cpu: 250m
              memory: 128Mi
````

### 144. Write a namespace ResourceQuota.
**Answer:** Express the desired state with typed inputs, stable addresses, policy validation, protected state, and a reviewed plan before apply.
````yaml
# Question 144: Write a namespace ResourceQuota.
apiVersion: apps/v1
kind: Deployment
metadata:
  name: interview-solution-144
spec:
  replicas: 2
  selector:
    matchLabels:
      app: interview-solution-144
  template:
    metadata:
      labels:
        app: interview-solution-144
    spec:
      containers:
        - name: solution
          image: nginx:1.27-alpine
          ports:
            - name: http
              containerPort: 80
          readinessProbe:
            httpGet:
              path: /
              port: http
          resources:
            requests:
              cpu: 50m
              memory: 64Mi
            limits:
              cpu: 250m
              memory: 128Mi
````

### 145. Write a LimitRange with default requests and limits.
**Answer:** Implement the solution with validated inputs, deterministic behavior, clear failure handling, tests, and an example execution command for Kubernetes/Docker.
````yaml
# Question 145: Write a LimitRange with default requests and limits.
apiVersion: apps/v1
kind: Deployment
metadata:
  name: interview-solution-145
spec:
  replicas: 2
  selector:
    matchLabels:
      app: interview-solution-145
  template:
    metadata:
      labels:
        app: interview-solution-145
    spec:
      containers:
        - name: solution
          image: nginx:1.27-alpine
          ports:
            - name: http
              containerPort: 80
          readinessProbe:
            httpGet:
              path: /
              port: http
          resources:
            requests:
              cpu: 50m
              memory: 64Mi
            limits:
              cpu: 250m
              memory: 128Mi
````

### 146. Write a canary Service selecting `track: canary`.
**Answer:** Deploy an immutable version, run a health or smoke check, promote only on success, and invoke a tested rollback while preserving the failure in logs.
````yaml
# Question 146: Write a canary Service selecting `track: canary`.
apiVersion: apps/v1
kind: Deployment
metadata:
  name: interview-solution-146
spec:
  replicas: 2
  selector:
    matchLabels:
      app: interview-solution-146
  template:
    metadata:
      labels:
        app: interview-solution-146
    spec:
      containers:
        - name: solution
          image: nginx:1.27-alpine
          ports:
            - name: http
              containerPort: 80
          readinessProbe:
            httpGet:
              path: /
              port: http
          resources:
            requests:
              cpu: 50m
              memory: 64Mi
            limits:
              cpu: 250m
              memory: 128Mi
````

### 147. Write a ServiceAccount for cloud workload identity.
**Answer:** Parse the input into structured records, use a map or counter for aggregation, sort only when ranking is required, and test empty, duplicate, and boundary inputs.
````yaml
# Question 147: Write a ServiceAccount for cloud workload identity.
apiVersion: apps/v1
kind: Deployment
metadata:
  name: interview-solution-147
spec:
  replicas: 2
  selector:
    matchLabels:
      app: interview-solution-147
  template:
    metadata:
      labels:
        app: interview-solution-147
    spec:
      containers:
        - name: solution
          image: nginx:1.27-alpine
          ports:
            - name: http
              containerPort: 80
          readinessProbe:
            httpGet:
              path: /
              port: http
          resources:
            requests:
              cpu: 50m
              memory: 64Mi
            limits:
              cpu: 250m
              memory: 128Mi
````

### 148. Pin an image by digest to prevent tag drift.
**Answer:** Use declarative manifests with pinned images, probes, resource controls, least-privilege identity, and a rollout strategy that can be observed and rolled back.
````yaml
# Question 148: Pin an image by digest to prevent tag drift.
apiVersion: apps/v1
kind: Deployment
metadata:
  name: interview-solution-148
spec:
  replicas: 2
  selector:
    matchLabels:
      app: interview-solution-148
  template:
    metadata:
      labels:
        app: interview-solution-148
    spec:
      containers:
        - name: solution
          image: nginx:1.27-alpine
          ports:
            - name: http
              containerPort: 80
          readinessProbe:
            httpGet:
              path: /
              port: http
          resources:
            requests:
              cpu: 50m
              memory: 64Mi
            limits:
              cpu: 250m
              memory: 128Mi
````

### 149. Write a backup CronJob with least privilege.
**Answer:** Separate validation, build, promotion, and verification jobs; use immutable artifacts, protected variables or OIDC, and manual approval for production.
````yaml
# Question 149: Write a backup CronJob with least privilege.
apiVersion: apps/v1
kind: Deployment
metadata:
  name: interview-solution-149
spec:
  replicas: 2
  selector:
    matchLabels:
      app: interview-solution-149
  template:
    metadata:
      labels:
        app: interview-solution-149
    spec:
      containers:
        - name: solution
          image: nginx:1.27-alpine
          ports:
            - name: http
              containerPort: 80
          readinessProbe:
            httpGet:
              path: /
              port: http
          resources:
            requests:
              cpu: 50m
              memory: 64Mi
            limits:
              cpu: 250m
              memory: 128Mi
````

### 150. Build a Helm application with probes, autoscaling, policy, security, and rollback.
**Answer:** Deploy an immutable version, run a health or smoke check, promote only on success, and invoke a tested rollback while preserving the failure in logs.
````yaml
# Question 150: Build a Helm application with probes, autoscaling, policy, security, and rollback.
apiVersion: apps/v1
kind: Deployment
metadata:
  name: interview-solution-150
spec:
  replicas: 2
  selector:
    matchLabels:
      app: interview-solution-150
  template:
    metadata:
      labels:
        app: interview-solution-150
    spec:
      containers:
        - name: solution
          image: nginx:1.27-alpine
          ports:
            - name: http
              containerPort: 80
          readinessProbe:
            httpGet:
              path: /
              port: http
          resources:
            requests:
              cpu: 50m
              memory: 64Mi
            limits:
              cpu: 250m
              memory: 128Mi
````

</details>
