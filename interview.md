# Kubernetes and Docker Interview Question Bank

This bank contains 150 questions organized by difficulty. Use the manifests in `scripts/` and the chart in `helm/devops-app/` to build practical answers.

## Beginner: 1-40

1. What problem does Docker solve?

**Answer:** It addresses a recurring DevOps need by making delivery, operations, or infrastructure repeatable, reviewable, and safer to automate.



<a href="interview-scripts/001-what-problem-does-docker-solve.yaml"><img src="https://img.shields.io/badge/Question%201%20script-Open-2088FF?style=for-the-badge&logo=github&logoColor=white" alt="Open question 1 script"></a>

```yaml
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
```

2. What is a container image?

**Answer:** Build a minimal immutable image, pin dependencies, scan and sign it, publish it to a controlled registry, and deploy by digest when possible.



<a href="interview-scripts/002-what-is-a-container-image.yaml"><img src="https://img.shields.io/badge/Question%202%20script-Open-2088FF?style=for-the-badge&logo=github&logoColor=white" alt="Open question 2 script"></a>

```yaml
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
```

3. What is a container?

**Answer:** Build a minimal immutable image, pin dependencies, scan and sign it, publish it to a controlled registry, and deploy by digest when possible.



<a href="interview-scripts/003-what-is-a-container.yaml"><img src="https://img.shields.io/badge/Question%203%20script-Open-2088FF?style=for-the-badge&logo=github&logoColor=white" alt="Open question 3 script"></a>

```yaml
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
```

4. What is the difference between an image and a container?

**Answer:** Build a minimal immutable image, pin dependencies, scan and sign it, publish it to a controlled registry, and deploy by digest when possible.



<a href="interview-scripts/004-what-is-the-difference-between-an-image-and-a-container.yaml"><img src="https://img.shields.io/badge/Question%204%20script-Open-2088FF?style=for-the-badge&logo=github&logoColor=white" alt="Open question 4 script"></a>

```yaml
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
```

5. What is a Dockerfile?

**Answer:** Build a minimal immutable image, pin dependencies, scan and sign it, publish it to a controlled registry, and deploy by digest when possible.



<a href="interview-scripts/005-what-is-a-dockerfile.yaml"><img src="https://img.shields.io/badge/Question%205%20script-Open-2088FF?style=for-the-badge&logo=github&logoColor=white" alt="Open question 5 script"></a>

```yaml
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
```

6. What does `FROM` do in a Dockerfile?

**Answer:** Build a minimal immutable image, pin dependencies, scan and sign it, publish it to a controlled registry, and deploy by digest when possible.



<a href="interview-scripts/006-what-does-from-do-in-a-dockerfile.yaml"><img src="https://img.shields.io/badge/Question%206%20script-Open-2088FF?style=for-the-badge&logo=github&logoColor=white" alt="Open question 6 script"></a>

```yaml
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
```

7. What is a Docker image layer?

**Answer:** Build a minimal immutable image, pin dependencies, scan and sign it, publish it to a controlled registry, and deploy by digest when possible.



<a href="interview-scripts/007-what-is-a-docker-image-layer.yaml"><img src="https://img.shields.io/badge/Question%207%20script-Open-2088FF?style=for-the-badge&logo=github&logoColor=white" alt="Open question 7 script"></a>

```yaml
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
```

8. Why should images use fixed tags?

**Answer:** Build a minimal immutable image, pin dependencies, scan and sign it, publish it to a controlled registry, and deploy by digest when possible.



<a href="interview-scripts/008-why-should-images-use-fixed-tags.yaml"><img src="https://img.shields.io/badge/Question%208%20script-Open-2088FF?style=for-the-badge&logo=github&logoColor=white" alt="Open question 8 script"></a>

```yaml
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
```

9. What does `EXPOSE` document?

**Answer:** A strong answer should define the concept, show a small Kubernetes and Docker implementation, explain failure behavior, and describe how it would be tested in CI.



<a href="interview-scripts/009-what-does-expose-document.yaml"><img src="https://img.shields.io/badge/Question%209%20script-Open-2088FF?style=for-the-badge&logo=github&logoColor=white" alt="Open question 9 script"></a>

```yaml
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
```

10. What is the purpose of `CMD`?

**Answer:** A strong answer should define the concept, show a small Kubernetes and Docker implementation, explain failure behavior, and describe how it would be tested in CI.



<a href="interview-scripts/010-what-is-the-purpose-of-cmd.yaml"><img src="https://img.shields.io/badge/Question%2010%20script-Open-2088FF?style=for-the-badge&logo=github&logoColor=white" alt="Open question 10 script"></a>

```yaml
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
```

11. How does `ENTRYPOINT` differ from `CMD`?

**Answer:** A strong answer should define the concept, show a small Kubernetes and Docker implementation, explain failure behavior, and describe how it would be tested in CI.



<a href="interview-scripts/011-how-does-entrypoint-differ-from-cmd.yaml"><img src="https://img.shields.io/badge/Question%2011%20script-Open-2088FF?style=for-the-badge&logo=github&logoColor=white" alt="Open question 11 script"></a>

```yaml
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
```

12. What is a container registry?

**Answer:** Build a minimal immutable image, pin dependencies, scan and sign it, publish it to a controlled registry, and deploy by digest when possible.



<a href="interview-scripts/012-what-is-a-container-registry.yaml"><img src="https://img.shields.io/badge/Question%2012%20script-Open-2088FF?style=for-the-badge&logo=github&logoColor=white" alt="Open question 12 script"></a>

```yaml
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
```

13. What problem does Kubernetes solve?

**Answer:** It addresses a recurring DevOps need by making delivery, operations, or infrastructure repeatable, reviewable, and safer to automate.



<a href="interview-scripts/013-what-problem-does-kubernetes-solve.yaml"><img src="https://img.shields.io/badge/Question%2013%20script-Open-2088FF?style=for-the-badge&logo=github&logoColor=white" alt="Open question 13 script"></a>

```yaml
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
```

14. What is a Kubernetes cluster?

**Answer:** A strong answer should define the concept, show a small Kubernetes and Docker implementation, explain failure behavior, and describe how it would be tested in CI.



<a href="interview-scripts/014-what-is-a-kubernetes-cluster.yaml"><img src="https://img.shields.io/badge/Question%2014%20script-Open-2088FF?style=for-the-badge&logo=github&logoColor=white" alt="Open question 14 script"></a>

```yaml
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
```

15. What is a Kubernetes node?

**Answer:** A strong answer should define the concept, show a small Kubernetes and Docker implementation, explain failure behavior, and describe how it would be tested in CI.



<a href="interview-scripts/015-what-is-a-kubernetes-node.yaml"><img src="https://img.shields.io/badge/Question%2015%20script-Open-2088FF?style=for-the-badge&logo=github&logoColor=white" alt="Open question 15 script"></a>

```yaml
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
```

16. What is a Pod?

**Answer:** A strong answer should define the concept, show a small Kubernetes and Docker implementation, explain failure behavior, and describe how it would be tested in CI.



<a href="interview-scripts/016-what-is-a-pod.yaml"><img src="https://img.shields.io/badge/Question%2016%20script-Open-2088FF?style=for-the-badge&logo=github&logoColor=white" alt="Open question 16 script"></a>

```yaml
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
```

17. Why is a Deployment preferred over a bare Pod?

**Answer:** Separate validation, build, promotion, and verification; use immutable artifacts, protected production controls, and an observable rollback path.



<a href="interview-scripts/017-why-is-a-deployment-preferred-over-a-bare-pod.yaml"><img src="https://img.shields.io/badge/Question%2017%20script-Open-2088FF?style=for-the-badge&logo=github&logoColor=white" alt="Open question 17 script"></a>

```yaml
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
```

18. What is a ReplicaSet?

**Answer:** A strong answer should define the concept, show a small Kubernetes and Docker implementation, explain failure behavior, and describe how it would be tested in CI.



<a href="interview-scripts/018-what-is-a-replicaset.yaml"><img src="https://img.shields.io/badge/Question%2018%20script-Open-2088FF?style=for-the-badge&logo=github&logoColor=white" alt="Open question 18 script"></a>

```yaml
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
```

19. What is a Kubernetes Service?

**Answer:** Define the smallest required traffic path, restrict it with policy and identity, and verify connectivity from the same network boundary as the workload.



<a href="interview-scripts/019-what-is-a-kubernetes-service.yaml"><img src="https://img.shields.io/badge/Question%2019%20script-Open-2088FF?style=for-the-badge&logo=github&logoColor=white" alt="Open question 19 script"></a>

```yaml
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
```

20. How does a Service find Pods?

**Answer:** Define the smallest required traffic path, restrict it with policy and identity, and verify connectivity from the same network boundary as the workload.



<a href="interview-scripts/020-how-does-a-service-find-pods.yaml"><img src="https://img.shields.io/badge/Question%2020%20script-Open-2088FF?style=for-the-badge&logo=github&logoColor=white" alt="Open question 20 script"></a>

```yaml
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
```

21. What is a label?

**Answer:** A strong answer should define the concept, show a small Kubernetes and Docker implementation, explain failure behavior, and describe how it would be tested in CI.



<a href="interview-scripts/021-what-is-a-label.yaml"><img src="https://img.shields.io/badge/Question%2021%20script-Open-2088FF?style=for-the-badge&logo=github&logoColor=white" alt="Open question 21 script"></a>

```yaml
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
```

22. What is a selector?

**Answer:** A strong answer should define the concept, show a small Kubernetes and Docker implementation, explain failure behavior, and describe how it would be tested in CI.



<a href="interview-scripts/022-what-is-a-selector.yaml"><img src="https://img.shields.io/badge/Question%2022%20script-Open-2088FF?style=for-the-badge&logo=github&logoColor=white" alt="Open question 22 script"></a>

```yaml
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
```

23. What is a namespace?

**Answer:** A strong answer should define the concept, show a small Kubernetes and Docker implementation, explain failure behavior, and describe how it would be tested in CI.



<a href="interview-scripts/023-what-is-a-namespace.yaml"><img src="https://img.shields.io/badge/Question%2023%20script-Open-2088FF?style=for-the-badge&logo=github&logoColor=white" alt="Open question 23 script"></a>

```yaml
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
```

24. What is a ConfigMap?

**Answer:** A strong answer should define the concept, show a small Kubernetes and Docker implementation, explain failure behavior, and describe how it would be tested in CI.



<a href="interview-scripts/024-what-is-a-configmap.yaml"><img src="https://img.shields.io/badge/Question%2024%20script-Open-2088FF?style=for-the-badge&logo=github&logoColor=white" alt="Open question 24 script"></a>

```yaml
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
```

25. What is a Secret?

**Answer:** Keep the value in a protected secret store or workload identity, pass it at runtime, redact it from logs, and never commit it to source control.



<a href="interview-scripts/025-what-is-a-secret.yaml"><img src="https://img.shields.io/badge/Question%2025%20script-Open-2088FF?style=for-the-badge&logo=github&logoColor=white" alt="Open question 25 script"></a>

```yaml
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
```

26. How do you expose a container port?

**Answer:** Define the smallest required traffic path, restrict it with policy and identity, and verify connectivity from the same network boundary as the workload.



<a href="interview-scripts/026-how-do-you-expose-a-container-port.yaml"><img src="https://img.shields.io/badge/Question%2026%20script-Open-2088FF?style=for-the-badge&logo=github&logoColor=white" alt="Open question 26 script"></a>

```yaml
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
```

27. What is the difference between ClusterIP and LoadBalancer?

**Answer:** A strong answer should define the concept, show a small Kubernetes and Docker implementation, explain failure behavior, and describe how it would be tested in CI.



<a href="interview-scripts/027-what-is-the-difference-between-clusterip-and-loadbalanc.yaml"><img src="https://img.shields.io/badge/Question%2027%20script-Open-2088FF?style=for-the-badge&logo=github&logoColor=white" alt="Open question 27 script"></a>

```yaml
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
```

28. What is a Job?

**Answer:** Separate validation, build, promotion, and verification; use immutable artifacts, protected production controls, and an observable rollback path.



<a href="interview-scripts/028-what-is-a-job.yaml"><img src="https://img.shields.io/badge/Question%2028%20script-Open-2088FF?style=for-the-badge&logo=github&logoColor=white" alt="Open question 28 script"></a>

```yaml
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
```

29. What is a CronJob?

**Answer:** Separate validation, build, promotion, and verification; use immutable artifacts, protected production controls, and an observable rollback path.



<a href="interview-scripts/029-what-is-a-cronjob.yaml"><img src="https://img.shields.io/badge/Question%2029%20script-Open-2088FF?style=for-the-badge&logo=github&logoColor=white" alt="Open question 29 script"></a>

```yaml
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
```

30. What does `kubectl apply` do?

**Answer:** A strong answer should define the concept, show a small Kubernetes and Docker implementation, explain failure behavior, and describe how it would be tested in CI.



<a href="interview-scripts/030-what-does-kubectl-apply-do.yaml"><img src="https://img.shields.io/badge/Question%2030%20script-Open-2088FF?style=for-the-badge&logo=github&logoColor=white" alt="Open question 30 script"></a>

```yaml
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
```

31. How do you inspect Pod logs?

**Answer:** Emit structured, correlation-aware telemetry with enough context to diagnose duration, failures, deployment version, and affected environment.



<a href="interview-scripts/031-how-do-you-inspect-pod-logs.yaml"><img src="https://img.shields.io/badge/Question%2031%20script-Open-2088FF?style=for-the-badge&logo=github&logoColor=white" alt="Open question 31 script"></a>

```yaml
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
```

32. How do you describe a failing Pod?

**Answer:** A strong answer should define the concept, show a small Kubernetes and Docker implementation, explain failure behavior, and describe how it would be tested in CI.



<a href="interview-scripts/032-how-do-you-describe-a-failing-pod.yaml"><img src="https://img.shields.io/badge/Question%2032%20script-Open-2088FF?style=for-the-badge&logo=github&logoColor=white" alt="Open question 32 script"></a>

```yaml
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
```

33. What is a readiness probe?

**Answer:** Check a meaningful dependency or application endpoint, fail the operation when the check fails, and use the result to stop or roll back promotion.



<a href="interview-scripts/033-what-is-a-readiness-probe.yaml"><img src="https://img.shields.io/badge/Question%2033%20script-Open-2088FF?style=for-the-badge&logo=github&logoColor=white" alt="Open question 33 script"></a>

```yaml
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
```

34. What is a liveness probe?

**Answer:** Check a meaningful dependency or application endpoint, fail the operation when the check fails, and use the result to stop or roll back promotion.



<a href="interview-scripts/034-what-is-a-liveness-probe.yaml"><img src="https://img.shields.io/badge/Question%2034%20script-Open-2088FF?style=for-the-badge&logo=github&logoColor=white" alt="Open question 34 script"></a>

```yaml
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
```

35. What is a resource request?

**Answer:** Declare requests and limits, measure real usage, set explicit capacity bounds, and test behavior under saturation and recovery.



<a href="interview-scripts/035-what-is-a-resource-request.yaml"><img src="https://img.shields.io/badge/Question%2035%20script-Open-2088FF?style=for-the-badge&logo=github&logoColor=white" alt="Open question 35 script"></a>

```yaml
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
```

36. What is a resource limit?

**Answer:** Declare requests and limits, measure real usage, set explicit capacity bounds, and test behavior under saturation and recovery.



<a href="interview-scripts/036-what-is-a-resource-limit.yaml"><img src="https://img.shields.io/badge/Question%2036%20script-Open-2088FF?style=for-the-badge&logo=github&logoColor=white" alt="Open question 36 script"></a>

```yaml
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
```

37. What is Helm?

**Answer:** A strong answer should define the concept, show a small Kubernetes and Docker implementation, explain failure behavior, and describe how it would be tested in CI.



<a href="interview-scripts/037-what-is-helm.yaml"><img src="https://img.shields.io/badge/Question%2037%20script-Open-2088FF?style=for-the-badge&logo=github&logoColor=white" alt="Open question 37 script"></a>

```yaml
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
```

38. What is a Helm chart?

**Answer:** A strong answer should define the concept, show a small Kubernetes and Docker implementation, explain failure behavior, and describe how it would be tested in CI.



<a href="interview-scripts/038-what-is-a-helm-chart.yaml"><img src="https://img.shields.io/badge/Question%2038%20script-Open-2088FF?style=for-the-badge&logo=github&logoColor=white" alt="Open question 38 script"></a>

```yaml
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
```

39. What is `values.yaml`?

**Answer:** A strong answer should define the concept, show a small Kubernetes and Docker implementation, explain failure behavior, and describe how it would be tested in CI.



<a href="interview-scripts/039-what-is-values-yaml.yaml"><img src="https://img.shields.io/badge/Question%2039%20script-Open-2088FF?style=for-the-badge&logo=github&logoColor=white" alt="Open question 39 script"></a>

```yaml
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
```

40. How do you roll back a Deployment?

**Answer:** Separate validation, build, promotion, and verification; use immutable artifacts, protected production controls, and an observable rollback path.



<a href="interview-scripts/040-how-do-you-roll-back-a-deployment.yaml"><img src="https://img.shields.io/badge/Question%2040%20script-Open-2088FF?style=for-the-badge&logo=github&logoColor=white" alt="Open question 40 script"></a>

```yaml
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
```


## Intermediate: 41-80

41. Explain Kubernetes control-plane components.

**Answer:** Extract the behavior behind a small documented interface, keep inputs and outputs explicit, and test the reusable unit independently.



<a href="interview-scripts/041-explain-kubernetes-control-plane-components.yaml"><img src="https://img.shields.io/badge/Question%2041%20script-Open-2088FF?style=for-the-badge&logo=github&logoColor=white" alt="Open question 41 script"></a>

```yaml
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
```

42. What does the API server do?

**Answer:** Use a structured client, explicit timeouts, status handling, pagination, schema validation, and safe authentication rather than string parsing.



<a href="interview-scripts/042-what-does-the-api-server-do.yaml"><img src="https://img.shields.io/badge/Question%2042%20script-Open-2088FF?style=for-the-badge&logo=github&logoColor=white" alt="Open question 42 script"></a>

```yaml
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
```

43. What is stored in etcd?

**Answer:** A strong answer should define the concept, show a small Kubernetes and Docker implementation, explain failure behavior, and describe how it would be tested in CI.



<a href="interview-scripts/043-what-is-stored-in-etcd.yaml"><img src="https://img.shields.io/badge/Question%2043%20script-Open-2088FF?style=for-the-badge&logo=github&logoColor=white" alt="Open question 43 script"></a>

```yaml
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
```

44. What does the scheduler consider when placing a Pod?

**Answer:** A strong answer should define the concept, show a small Kubernetes and Docker implementation, explain failure behavior, and describe how it would be tested in CI.



<a href="interview-scripts/044-what-does-the-scheduler-consider-when-placing-a-pod.yaml"><img src="https://img.shields.io/badge/Question%2044%20script-Open-2088FF?style=for-the-badge&logo=github&logoColor=white" alt="Open question 44 script"></a>

```yaml
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
```

45. What does the controller manager reconcile?

**Answer:** A strong answer should define the concept, show a small Kubernetes and Docker implementation, explain failure behavior, and describe how it would be tested in CI.



<a href="interview-scripts/045-what-does-the-controller-manager-reconcile.yaml"><img src="https://img.shields.io/badge/Question%2045%20script-Open-2088FF?style=for-the-badge&logo=github&logoColor=white" alt="Open question 45 script"></a>

```yaml
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
```

46. How does kubelet manage a Pod?

**Answer:** A strong answer should define the concept, show a small Kubernetes and Docker implementation, explain failure behavior, and describe how it would be tested in CI.



<a href="interview-scripts/046-how-does-kubelet-manage-a-pod.yaml"><img src="https://img.shields.io/badge/Question%2046%20script-Open-2088FF?style=for-the-badge&logo=github&logoColor=white" alt="Open question 46 script"></a>

```yaml
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
```

47. How does CoreDNS support Service discovery?

**Answer:** Define the smallest required traffic path, restrict it with policy and identity, and verify connectivity from the same network boundary as the workload.



<a href="interview-scripts/047-how-does-coredns-support-service-discovery.yaml"><img src="https://img.shields.io/badge/Question%2047%20script-Open-2088FF?style=for-the-badge&logo=github&logoColor=white" alt="Open question 47 script"></a>

```yaml
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
```

48. Explain a Deployment rolling update.

**Answer:** Bound concurrency, preserve a small failure domain, verify health between batches, and stop promotion when the error budget is exceeded.



<a href="interview-scripts/048-explain-a-deployment-rolling-update.yaml"><img src="https://img.shields.io/badge/Question%2048%20script-Open-2088FF?style=for-the-badge&logo=github&logoColor=white" alt="Open question 48 script"></a>

```yaml
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
```

49. What are `maxSurge` and `maxUnavailable`?

**Answer:** A strong answer should define the concept, show a small Kubernetes and Docker implementation, explain failure behavior, and describe how it would be tested in CI.



<a href="interview-scripts/049-what-are-maxsurge-and-maxunavailable.yaml"><img src="https://img.shields.io/badge/Question%2049%20script-Open-2088FF?style=for-the-badge&logo=github&logoColor=white" alt="Open question 49 script"></a>

```yaml
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
```

50. How do you pause and resume a rollout?

**Answer:** A strong answer should define the concept, show a small Kubernetes and Docker implementation, explain failure behavior, and describe how it would be tested in CI.



<a href="interview-scripts/050-how-do-you-pause-and-resume-a-rollout.yaml"><img src="https://img.shields.io/badge/Question%2050%20script-Open-2088FF?style=for-the-badge&logo=github&logoColor=white" alt="Open question 50 script"></a>

```yaml
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
```

51. How do you debug `CrashLoopBackOff`?

**Answer:** Retry only transient failures, use bounded exponential backoff with jitter, and return the final error when the retry budget is exhausted.



<a href="interview-scripts/051-how-do-you-debug-crashloopbackoff.yaml"><img src="https://img.shields.io/badge/Question%2051%20script-Open-2088FF?style=for-the-badge&logo=github&logoColor=white" alt="Open question 51 script"></a>

```yaml
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
```

52. How do you debug `ImagePullBackOff`?

**Answer:** Retry only transient failures, use bounded exponential backoff with jitter, and return the final error when the retry budget is exhausted.



<a href="interview-scripts/052-how-do-you-debug-imagepullbackoff.yaml"><img src="https://img.shields.io/badge/Question%2052%20script-Open-2088FF?style=for-the-badge&logo=github&logoColor=white" alt="Open question 52 script"></a>

```yaml
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
```

53. How do requests and limits affect scheduling?

**Answer:** Declare requests and limits, measure real usage, set explicit capacity bounds, and test behavior under saturation and recovery.



<a href="interview-scripts/053-how-do-requests-and-limits-affect-scheduling.yaml"><img src="https://img.shields.io/badge/Question%2053%20script-Open-2088FF?style=for-the-badge&logo=github&logoColor=white" alt="Open question 53 script"></a>

```yaml
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
```

54. What is a HorizontalPodAutoscaler?

**Answer:** Declare requests and limits, measure real usage, set explicit capacity bounds, and test behavior under saturation and recovery.



<a href="interview-scripts/054-what-is-a-horizontalpodautoscaler.yaml"><img src="https://img.shields.io/badge/Question%2054%20script-Open-2088FF?style=for-the-badge&logo=github&logoColor=white" alt="Open question 54 script"></a>

```yaml
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
```

55. What metrics can drive an HPA?

**Answer:** Emit structured, correlation-aware telemetry with enough context to diagnose duration, failures, deployment version, and affected environment.



<a href="interview-scripts/055-what-metrics-can-drive-an-hpa.yaml"><img src="https://img.shields.io/badge/Question%2055%20script-Open-2088FF?style=for-the-badge&logo=github&logoColor=white" alt="Open question 55 script"></a>

```yaml
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
```

56. What is a PodDisruptionBudget?

**Answer:** A strong answer should define the concept, show a small Kubernetes and Docker implementation, explain failure behavior, and describe how it would be tested in CI.



<a href="interview-scripts/056-what-is-a-poddisruptionbudget.yaml"><img src="https://img.shields.io/badge/Question%2056%20script-Open-2088FF?style=for-the-badge&logo=github&logoColor=white" alt="Open question 56 script"></a>

```yaml
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
```

57. What is an Ingress?

**Answer:** Define the smallest required traffic path, restrict it with policy and identity, and verify connectivity from the same network boundary as the workload.



<a href="interview-scripts/057-what-is-an-ingress.yaml"><img src="https://img.shields.io/badge/Question%2057%20script-Open-2088FF?style=for-the-badge&logo=github&logoColor=white" alt="Open question 57 script"></a>

```yaml
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
```

58. How does an ingress controller work?

**Answer:** Define the smallest required traffic path, restrict it with policy and identity, and verify connectivity from the same network boundary as the workload.



<a href="interview-scripts/058-how-does-an-ingress-controller-work.yaml"><img src="https://img.shields.io/badge/Question%2058%20script-Open-2088FF?style=for-the-badge&logo=github&logoColor=white" alt="Open question 58 script"></a>

```yaml
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
```

59. What is a NetworkPolicy?

**Answer:** Define the smallest required traffic path, restrict it with policy and identity, and verify connectivity from the same network boundary as the workload.



<a href="interview-scripts/059-what-is-a-networkpolicy.yaml"><img src="https://img.shields.io/badge/Question%2059%20script-Open-2088FF?style=for-the-badge&logo=github&logoColor=white" alt="Open question 59 script"></a>

```yaml
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
```

60. What happens when no NetworkPolicy selects a Pod?

**Answer:** Define the smallest required traffic path, restrict it with policy and identity, and verify connectivity from the same network boundary as the workload.



<a href="interview-scripts/060-what-happens-when-no-networkpolicy-selects-a-pod.yaml"><img src="https://img.shields.io/badge/Question%2060%20script-Open-2088FF?style=for-the-badge&logo=github&logoColor=white" alt="Open question 60 script"></a>

```yaml
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
```

61. How do you mount a ConfigMap as a file?

**Answer:** Use structured filesystem APIs, validate paths, quote inputs, handle missing resources deliberately, and avoid unsafe traversal or shell expansion.



<a href="interview-scripts/061-how-do-you-mount-a-configmap-as-a-file.yaml"><img src="https://img.shields.io/badge/Question%2061%20script-Open-2088FF?style=for-the-badge&logo=github&logoColor=white" alt="Open question 61 script"></a>

```yaml
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
```

62. How should Secrets be handled in production?

**Answer:** Keep the value in a protected secret store or workload identity, pass it at runtime, redact it from logs, and never commit it to source control.



<a href="interview-scripts/062-how-should-secrets-be-handled-in-production.yaml"><img src="https://img.shields.io/badge/Question%2062%20script-Open-2088FF?style=for-the-badge&logo=github&logoColor=white" alt="Open question 62 script"></a>

```yaml
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
```

63. What is a PersistentVolume?

**Answer:** A strong answer should define the concept, show a small Kubernetes and Docker implementation, explain failure behavior, and describe how it would be tested in CI.



<a href="interview-scripts/063-what-is-a-persistentvolume.yaml"><img src="https://img.shields.io/badge/Question%2063%20script-Open-2088FF?style=for-the-badge&logo=github&logoColor=white" alt="Open question 63 script"></a>

```yaml
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
```

64. What is a PersistentVolumeClaim?

**Answer:** A strong answer should define the concept, show a small Kubernetes and Docker implementation, explain failure behavior, and describe how it would be tested in CI.



<a href="interview-scripts/064-what-is-a-persistentvolumeclaim.yaml"><img src="https://img.shields.io/badge/Question%2064%20script-Open-2088FF?style=for-the-badge&logo=github&logoColor=white" alt="Open question 64 script"></a>

```yaml
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
```

65. Explain ReadWriteOnce and ReadWriteMany.

**Answer:** A strong answer should define the concept, show a small Kubernetes and Docker implementation, explain failure behavior, and describe how it would be tested in CI.



<a href="interview-scripts/065-explain-readwriteonce-and-readwritemany.yaml"><img src="https://img.shields.io/badge/Question%2065%20script-Open-2088FF?style=for-the-badge&logo=github&logoColor=white" alt="Open question 65 script"></a>

```yaml
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
```

66. How do StatefulSets differ from Deployments?

**Answer:** Store shared state remotely with encryption, access control, locking, versioning, and a tested recovery process.



<a href="interview-scripts/066-how-do-statefulsets-differ-from-deployments.yaml"><img src="https://img.shields.io/badge/Question%2066%20script-Open-2088FF?style=for-the-badge&logo=github&logoColor=white" alt="Open question 66 script"></a>

```yaml
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
```

67. When should you use a DaemonSet?

**Answer:** A strong answer should define the concept, show a small Kubernetes and Docker implementation, explain failure behavior, and describe how it would be tested in CI.



<a href="interview-scripts/067-when-should-you-use-a-daemonset.yaml"><img src="https://img.shields.io/badge/Question%2067%20script-Open-2088FF?style=for-the-badge&logo=github&logoColor=white" alt="Open question 67 script"></a>

```yaml
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
```

68. When should you use an init container?

**Answer:** Build a minimal immutable image, pin dependencies, scan and sign it, publish it to a controlled registry, and deploy by digest when possible.



<a href="interview-scripts/068-when-should-you-use-an-init-container.yaml"><img src="https://img.shields.io/badge/Question%2068%20script-Open-2088FF?style=for-the-badge&logo=github&logoColor=white" alt="Open question 68 script"></a>

```yaml
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
```

69. What is a sidecar container?

**Answer:** Build a minimal immutable image, pin dependencies, scan and sign it, publish it to a controlled registry, and deploy by digest when possible.



<a href="interview-scripts/069-what-is-a-sidecar-container.yaml"><img src="https://img.shields.io/badge/Question%2069%20script-Open-2088FF?style=for-the-badge&logo=github&logoColor=white" alt="Open question 69 script"></a>

```yaml
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
```

70. How do Jobs retry failed work?

**Answer:** Retry only transient failures, use bounded exponential backoff with jitter, and return the final error when the retry budget is exhausted.



<a href="interview-scripts/070-how-do-jobs-retry-failed-work.yaml"><img src="https://img.shields.io/badge/Question%2070%20script-Open-2088FF?style=for-the-badge&logo=github&logoColor=white" alt="Open question 70 script"></a>

```yaml
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
```

71. How do you make a CronJob idempotent?

**Answer:** Make the operation converge on the declared state and check the current state before mutating it, so a second run produces no unnecessary change.



<a href="interview-scripts/071-how-do-you-make-a-cronjob-idempotent.yaml"><img src="https://img.shields.io/badge/Question%2071%20script-Open-2088FF?style=for-the-badge&logo=github&logoColor=white" alt="Open question 71 script"></a>

```yaml
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
```

72. What is a ServiceAccount?

**Answer:** Define the smallest required traffic path, restrict it with policy and identity, and verify connectivity from the same network boundary as the workload.



<a href="interview-scripts/072-what-is-a-serviceaccount.yaml"><img src="https://img.shields.io/badge/Question%2072%20script-Open-2088FF?style=for-the-badge&logo=github&logoColor=white" alt="Open question 72 script"></a>

```yaml
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
```

73. What is RBAC?

**Answer:** Apply least privilege, isolate trust boundaries, validate policy in CI or admission, and record auditable changes.



<a href="interview-scripts/073-what-is-rbac.yaml"><img src="https://img.shields.io/badge/Question%2073%20script-Open-2088FF?style=for-the-badge&logo=github&logoColor=white" alt="Open question 73 script"></a>

```yaml
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
```

74. Explain Role and ClusterRole.

**Answer:** Extract the behavior behind a small documented interface, keep inputs and outputs explicit, and test the reusable unit independently.



<a href="interview-scripts/074-explain-role-and-clusterrole.yaml"><img src="https://img.shields.io/badge/Question%2074%20script-Open-2088FF?style=for-the-badge&logo=github&logoColor=white" alt="Open question 74 script"></a>

```yaml
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
```

75. Explain RoleBinding and ClusterRoleBinding.

**Answer:** Extract the behavior behind a small documented interface, keep inputs and outputs explicit, and test the reusable unit independently.



<a href="interview-scripts/075-explain-rolebinding-and-clusterrolebinding.yaml"><img src="https://img.shields.io/badge/Question%2075%20script-Open-2088FF?style=for-the-badge&logo=github&logoColor=white" alt="Open question 75 script"></a>

```yaml
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
```

76. How do you inspect resource usage?

**Answer:** Declare requests and limits, measure real usage, set explicit capacity bounds, and test behavior under saturation and recovery.



<a href="interview-scripts/076-how-do-you-inspect-resource-usage.yaml"><img src="https://img.shields.io/badge/Question%2076%20script-Open-2088FF?style=for-the-badge&logo=github&logoColor=white" alt="Open question 76 script"></a>

```yaml
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
```

77. What is a namespace ResourceQuota?

**Answer:** Declare requests and limits, measure real usage, set explicit capacity bounds, and test behavior under saturation and recovery.



<a href="interview-scripts/077-what-is-a-namespace-resourcequota.yaml"><img src="https://img.shields.io/badge/Question%2077%20script-Open-2088FF?style=for-the-badge&logo=github&logoColor=white" alt="Open question 77 script"></a>

```yaml
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
```

78. What is a LimitRange?

**Answer:** Declare requests and limits, measure real usage, set explicit capacity bounds, and test behavior under saturation and recovery.



<a href="interview-scripts/078-what-is-a-limitrange.yaml"><img src="https://img.shields.io/badge/Question%2078%20script-Open-2088FF?style=for-the-badge&logo=github&logoColor=white" alt="Open question 78 script"></a>

```yaml
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
```

79. How does Helm templating work?

**Answer:** A strong answer should define the concept, show a small Kubernetes and Docker implementation, explain failure behavior, and describe how it would be tested in CI.



<a href="interview-scripts/079-how-does-helm-templating-work.yaml"><img src="https://img.shields.io/badge/Question%2079%20script-Open-2088FF?style=for-the-badge&logo=github&logoColor=white" alt="Open question 79 script"></a>

```yaml
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
```

80. How do you lint and render a Helm chart?

**Answer:** Automate syntax, static analysis, unit, and integration checks in CI; fail early and publish useful diagnostics as artifacts.



<a href="interview-scripts/080-how-do-you-lint-and-render-a-helm-chart.yaml"><img src="https://img.shields.io/badge/Question%2080%20script-Open-2088FF?style=for-the-badge&logo=github&logoColor=white" alt="Open question 80 script"></a>

```yaml
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
```


## Advanced: 81-120

81. Design a highly available Kubernetes control plane.

**Answer:** A strong answer should define the concept, show a small Kubernetes and Docker implementation, explain failure behavior, and describe how it would be tested in CI.



<a href="interview-scripts/081-design-a-highly-available-kubernetes-control-plane.yaml"><img src="https://img.shields.io/badge/Question%2081%20script-Open-2088FF?style=for-the-badge&logo=github&logoColor=white" alt="Open question 81 script"></a>

```yaml
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
```

82. How does etcd quorum affect availability?

**Answer:** A strong answer should define the concept, show a small Kubernetes and Docker implementation, explain failure behavior, and describe how it would be tested in CI.



<a href="interview-scripts/082-how-does-etcd-quorum-affect-availability.yaml"><img src="https://img.shields.io/badge/Question%2082%20script-Open-2088FF?style=for-the-badge&logo=github&logoColor=white" alt="Open question 82 script"></a>

```yaml
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
```

83. How do you back up and restore etcd?

**Answer:** Keep the previous known-good version, validate the replacement, and automate a tested rollback or restore path with clear ownership and audit output.



<a href="interview-scripts/083-how-do-you-back-up-and-restore-etcd.yaml"><img src="https://img.shields.io/badge/Question%2083%20script-Open-2088FF?style=for-the-badge&logo=github&logoColor=white" alt="Open question 83 script"></a>

```yaml
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
```

84. How do you upgrade a production cluster safely?

**Answer:** A strong answer should define the concept, show a small Kubernetes and Docker implementation, explain failure behavior, and describe how it would be tested in CI.



<a href="interview-scripts/084-how-do-you-upgrade-a-production-cluster-safely.yaml"><img src="https://img.shields.io/badge/Question%2084%20script-Open-2088FF?style=for-the-badge&logo=github&logoColor=white" alt="Open question 84 script"></a>

```yaml
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
```

85. How do you drain a node without violating availability?

**Answer:** A strong answer should define the concept, show a small Kubernetes and Docker implementation, explain failure behavior, and describe how it would be tested in CI.



<a href="interview-scripts/085-how-do-you-drain-a-node-without-violating-availability.yaml"><img src="https://img.shields.io/badge/Question%2085%20script-Open-2088FF?style=for-the-badge&logo=github&logoColor=white" alt="Open question 85 script"></a>

```yaml
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
```

86. How do you spread replicas across zones?

**Answer:** A strong answer should define the concept, show a small Kubernetes and Docker implementation, explain failure behavior, and describe how it would be tested in CI.



<a href="interview-scripts/086-how-do-you-spread-replicas-across-zones.yaml"><img src="https://img.shields.io/badge/Question%2086%20script-Open-2088FF?style=for-the-badge&logo=github&logoColor=white" alt="Open question 86 script"></a>

```yaml
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
```

87. Explain pod affinity and anti-affinity.

**Answer:** A strong answer should define the concept, show a small Kubernetes and Docker implementation, explain failure behavior, and describe how it would be tested in CI.



<a href="interview-scripts/087-explain-pod-affinity-and-anti-affinity.yaml"><img src="https://img.shields.io/badge/Question%2087%20script-Open-2088FF?style=for-the-badge&logo=github&logoColor=white" alt="Open question 87 script"></a>

```yaml
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
```

88. What are topology spread constraints?

**Answer:** Emit structured, correlation-aware telemetry with enough context to diagnose duration, failures, deployment version, and affected environment.



<a href="interview-scripts/088-what-are-topology-spread-constraints.yaml"><img src="https://img.shields.io/badge/Question%2088%20script-Open-2088FF?style=for-the-badge&logo=github&logoColor=white" alt="Open question 88 script"></a>

```yaml
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
```

89. How do taints and tolerations support isolation?

**Answer:** Define the smallest required traffic path, restrict it with policy and identity, and verify connectivity from the same network boundary as the workload.



<a href="interview-scripts/089-how-do-taints-and-tolerations-support-isolation.yaml"><img src="https://img.shields.io/badge/Question%2089%20script-Open-2088FF?style=for-the-badge&logo=github&logoColor=white" alt="Open question 89 script"></a>

```yaml
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
```

90. How do you design separate system and workload node pools?

**Answer:** A strong answer should define the concept, show a small Kubernetes and Docker implementation, explain failure behavior, and describe how it would be tested in CI.



<a href="interview-scripts/090-how-do-you-design-separate-system-and-workload-node-poo.yaml"><img src="https://img.shields.io/badge/Question%2090%20script-Open-2088FF?style=for-the-badge&logo=github&logoColor=white" alt="Open question 90 script"></a>

```yaml
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
```

91. How do cluster and node autoscaling interact?

**Answer:** Declare requests and limits, measure real usage, set explicit capacity bounds, and test behavior under saturation and recovery.



<a href="interview-scripts/091-how-do-cluster-and-node-autoscaling-interact.yaml"><img src="https://img.shields.io/badge/Question%2091%20script-Open-2088FF?style=for-the-badge&logo=github&logoColor=white" alt="Open question 91 script"></a>

```yaml
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
```

92. How do you prevent autoscaling oscillation?

**Answer:** Declare requests and limits, measure real usage, set explicit capacity bounds, and test behavior under saturation and recovery.



<a href="interview-scripts/092-how-do-you-prevent-autoscaling-oscillation.yaml"><img src="https://img.shields.io/badge/Question%2092%20script-Open-2088FF?style=for-the-badge&logo=github&logoColor=white" alt="Open question 92 script"></a>

```yaml
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
```

93. Design an SLO-driven rollout strategy.

**Answer:** Check a meaningful dependency or application endpoint, fail the operation when the check fails, and use the result to stop or roll back promotion.



<a href="interview-scripts/093-design-an-slo-driven-rollout-strategy.yaml"><img src="https://img.shields.io/badge/Question%2093%20script-Open-2088FF?style=for-the-badge&logo=github&logoColor=white" alt="Open question 93 script"></a>

```yaml
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
```

94. How do you implement canary deployment?

**Answer:** Bound concurrency, preserve a small failure domain, verify health between batches, and stop promotion when the error budget is exceeded.



<a href="interview-scripts/094-how-do-you-implement-canary-deployment.yaml"><img src="https://img.shields.io/badge/Question%2094%20script-Open-2088FF?style=for-the-badge&logo=github&logoColor=white" alt="Open question 94 script"></a>

```yaml
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
```

95. How do you implement blue-green deployment?

**Answer:** Bound concurrency, preserve a small failure domain, verify health between batches, and stop promotion when the error budget is exceeded.



<a href="interview-scripts/095-how-do-you-implement-blue-green-deployment.yaml"><img src="https://img.shields.io/badge/Question%2095%20script-Open-2088FF?style=for-the-badge&logo=github&logoColor=white" alt="Open question 95 script"></a>

```yaml
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
```

96. How do you combine readiness gates with traffic shifting?

**Answer:** Check a meaningful dependency or application endpoint, fail the operation when the check fails, and use the result to stop or roll back promotion.



<a href="interview-scripts/096-how-do-you-combine-readiness-gates-with-traffic-shiftin.yaml"><img src="https://img.shields.io/badge/Question%2096%20script-Open-2088FF?style=for-the-badge&logo=github&logoColor=white" alt="Open question 96 script"></a>

```yaml
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
```

97. How do you design a multi-tenant cluster?

**Answer:** A strong answer should define the concept, show a small Kubernetes and Docker implementation, explain failure behavior, and describe how it would be tested in CI.



<a href="interview-scripts/097-how-do-you-design-a-multi-tenant-cluster.yaml"><img src="https://img.shields.io/badge/Question%2097%20script-Open-2088FF?style=for-the-badge&logo=github&logoColor=white" alt="Open question 97 script"></a>

```yaml
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
```

98. How do namespaces, RBAC, quotas, and NetworkPolicies combine?

**Answer:** Define the smallest required traffic path, restrict it with policy and identity, and verify connectivity from the same network boundary as the workload.



<a href="interview-scripts/098-how-do-namespaces-rbac-quotas-and-networkpolicies-combi.yaml"><img src="https://img.shields.io/badge/Question%2098%20script-Open-2088FF?style=for-the-badge&logo=github&logoColor=white" alt="Open question 98 script"></a>

```yaml
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
```

99. How do you enforce Pod Security Standards?

**Answer:** Apply least privilege, isolate trust boundaries, validate policy in CI or admission, and record auditable changes.



<a href="interview-scripts/099-how-do-you-enforce-pod-security-standards.yaml"><img src="https://img.shields.io/badge/Question%2099%20script-Open-2088FF?style=for-the-badge&logo=github&logoColor=white" alt="Open question 99 script"></a>

```yaml
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
```

100. How do you prevent privileged containers?

**Answer:** Apply least privilege, isolate trust boundaries, validate policy in CI or admission, and record auditable changes.



<a href="interview-scripts/100-how-do-you-prevent-privileged-containers.yaml"><img src="https://img.shields.io/badge/Question%20100%20script-Open-2088FF?style=for-the-badge&logo=github&logoColor=white" alt="Open question 100 script"></a>

```yaml
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
```

101. How do you secure the container supply chain?

**Answer:** Apply least privilege, isolate trust boundaries, validate policy in CI or admission, and record auditable changes.



<a href="interview-scripts/101-how-do-you-secure-the-container-supply-chain.yaml"><img src="https://img.shields.io/badge/Question%20101%20script-Open-2088FF?style=for-the-badge&logo=github&logoColor=white" alt="Open question 101 script"></a>

```yaml
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
```

102. Why use digest-pinned images?

**Answer:** Build a minimal immutable image, pin dependencies, scan and sign it, publish it to a controlled registry, and deploy by digest when possible.



<a href="interview-scripts/102-why-use-digest-pinned-images.yaml"><img src="https://img.shields.io/badge/Question%20102%20script-Open-2088FF?style=for-the-badge&logo=github&logoColor=white" alt="Open question 102 script"></a>

```yaml
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
```

103. How do image signing and admission verification work?

**Answer:** Build a minimal immutable image, pin dependencies, scan and sign it, publish it to a controlled registry, and deploy by digest when possible.



<a href="interview-scripts/103-how-do-image-signing-and-admission-verification-work.yaml"><img src="https://img.shields.io/badge/Question%20103%20script-Open-2088FF?style=for-the-badge&logo=github&logoColor=white" alt="Open question 103 script"></a>

```yaml
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
```

104. How do you design private registry access?

**Answer:** Build a minimal immutable image, pin dependencies, scan and sign it, publish it to a controlled registry, and deploy by digest when possible.



<a href="interview-scripts/104-how-do-you-design-private-registry-access.yaml"><img src="https://img.shields.io/badge/Question%20104%20script-Open-2088FF?style=for-the-badge&logo=github&logoColor=white" alt="Open question 104 script"></a>

```yaml
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
```

105. How do you use workload identity on Azure?

**Answer:** Use provider-native identity with least privilege, explicit environment boundaries, tagging, policy controls, and repeatable infrastructure definitions.



<a href="interview-scripts/105-how-do-you-use-workload-identity-on-azure.yaml"><img src="https://img.shields.io/badge/Question%20105%20script-Open-2088FF?style=for-the-badge&logo=github&logoColor=white" alt="Open question 105 script"></a>

```yaml
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
```

106. How do you use IAM roles for service accounts on AWS?

**Answer:** Extract the behavior behind a small documented interface, keep inputs and outputs explicit, and test the reusable unit independently.



<a href="interview-scripts/106-how-do-you-use-iam-roles-for-service-accounts-on-aws.yaml"><img src="https://img.shields.io/badge/Question%20106%20script-Open-2088FF?style=for-the-badge&logo=github&logoColor=white" alt="Open question 106 script"></a>

```yaml
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
```

107. How do you design AKS networking?

**Answer:** Define the smallest required traffic path, restrict it with policy and identity, and verify connectivity from the same network boundary as the workload.



<a href="interview-scripts/107-how-do-you-design-aks-networking.yaml"><img src="https://img.shields.io/badge/Question%20107%20script-Open-2088FF?style=for-the-badge&logo=github&logoColor=white" alt="Open question 107 script"></a>

```yaml
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
```

108. How do you design EKS networking?

**Answer:** Define the smallest required traffic path, restrict it with policy and identity, and verify connectivity from the same network boundary as the workload.



<a href="interview-scripts/108-how-do-you-design-eks-networking.yaml"><img src="https://img.shields.io/badge/Question%20108%20script-Open-2088FF?style=for-the-badge&logo=github&logoColor=white" alt="Open question 108 script"></a>

```yaml
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
```

109. How do you connect on-premises clusters to cloud services?

**Answer:** Define the smallest required traffic path, restrict it with policy and identity, and verify connectivity from the same network boundary as the workload.



<a href="interview-scripts/109-how-do-you-connect-on-premises-clusters-to-cloud-servic.yaml"><img src="https://img.shields.io/badge/Question%20109%20script-Open-2088FF?style=for-the-badge&logo=github&logoColor=white" alt="Open question 109 script"></a>

```yaml
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
```

110. How do you observe cluster, node, and application health?

**Answer:** Check a meaningful dependency or application endpoint, fail the operation when the check fails, and use the result to stop or roll back promotion.



<a href="interview-scripts/110-how-do-you-observe-cluster-node-and-application-health.yaml"><img src="https://img.shields.io/badge/Question%20110%20script-Open-2088FF?style=for-the-badge&logo=github&logoColor=white" alt="Open question 110 script"></a>

```yaml
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
```

111. How do you correlate traces with deployment versions?

**Answer:** Emit structured, correlation-aware telemetry with enough context to diagnose duration, failures, deployment version, and affected environment.



<a href="interview-scripts/111-how-do-you-correlate-traces-with-deployment-versions.yaml"><img src="https://img.shields.io/badge/Question%20111%20script-Open-2088FF?style=for-the-badge&logo=github&logoColor=white" alt="Open question 111 script"></a>

```yaml
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
```

112. How do you perform capacity planning?

**Answer:** Declare requests and limits, measure real usage, set explicit capacity bounds, and test behavior under saturation and recovery.



<a href="interview-scripts/112-how-do-you-perform-capacity-planning.yaml"><img src="https://img.shields.io/badge/Question%20112%20script-Open-2088FF?style=for-the-badge&logo=github&logoColor=white" alt="Open question 112 script"></a>

```yaml
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
```

113. How do you recover from a control-plane outage?

**Answer:** A strong answer should define the concept, show a small Kubernetes and Docker implementation, explain failure behavior, and describe how it would be tested in CI.



<a href="interview-scripts/113-how-do-you-recover-from-a-control-plane-outage.yaml"><img src="https://img.shields.io/badge/Question%20113%20script-Open-2088FF?style=for-the-badge&logo=github&logoColor=white" alt="Open question 113 script"></a>

```yaml
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
```

114. How do you recover from a registry outage?

**Answer:** Build a minimal immutable image, pin dependencies, scan and sign it, publish it to a controlled registry, and deploy by digest when possible.



<a href="interview-scripts/114-how-do-you-recover-from-a-registry-outage.yaml"><img src="https://img.shields.io/badge/Question%20114%20script-Open-2088FF?style=for-the-badge&logo=github&logoColor=white" alt="Open question 114 script"></a>

```yaml
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
```

115. How do you test backup restoration?

**Answer:** Automate syntax, static analysis, unit, and integration checks in CI; fail early and publish useful diagnostics as artifacts.



<a href="interview-scripts/115-how-do-you-test-backup-restoration.yaml"><img src="https://img.shields.io/badge/Question%20115%20script-Open-2088FF?style=for-the-badge&logo=github&logoColor=white" alt="Open question 115 script"></a>

```yaml
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
```

116. Explain Helm release history and rollback behavior.

**Answer:** Keep the previous known-good version, validate the replacement, and automate a tested rollback or restore path with clear ownership and audit output.



<a href="interview-scripts/116-explain-helm-release-history-and-rollback-behavior.yaml"><img src="https://img.shields.io/badge/Question%20116%20script-Open-2088FF?style=for-the-badge&logo=github&logoColor=white" alt="Open question 116 script"></a>

```yaml
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
```

117. How do you version and promote Helm charts?

**Answer:** A strong answer should define the concept, show a small Kubernetes and Docker implementation, explain failure behavior, and describe how it would be tested in CI.



<a href="interview-scripts/117-how-do-you-version-and-promote-helm-charts.yaml"><img src="https://img.shields.io/badge/Question%20117%20script-Open-2088FF?style=for-the-badge&logo=github&logoColor=white" alt="Open question 117 script"></a>

```yaml
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
```

118. How do you manage secrets in Helm without leaking them?

**Answer:** Keep the value in a protected secret store or workload identity, pass it at runtime, redact it from logs, and never commit it to source control.



<a href="interview-scripts/118-how-do-you-manage-secrets-in-helm-without-leaking-them.yaml"><img src="https://img.shields.io/badge/Question%20118%20script-Open-2088FF?style=for-the-badge&logo=github&logoColor=white" alt="Open question 118 script"></a>

```yaml
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
```

119. What failure modes exist in Docker-in-Docker CI?

**Answer:** Build a minimal immutable image, pin dependencies, scan and sign it, publish it to a controlled registry, and deploy by digest when possible.



<a href="interview-scripts/119-what-failure-modes-exist-in-docker-in-docker-ci.yaml"><img src="https://img.shields.io/badge/Question%20119%20script-Open-2088FF?style=for-the-badge&logo=github&logoColor=white" alt="Open question 119 script"></a>

```yaml
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
```

120. Design a secure, multi-region, observable Kubernetes platform with reversible releases.

**Answer:** Emit structured, correlation-aware telemetry with enough context to diagnose duration, failures, deployment version, and affected environment.



<a href="interview-scripts/120-design-a-secure-multi-region-observable-kubernetes-plat.yaml"><img src="https://img.shields.io/badge/Question%20120%20script-Open-2088FF?style=for-the-badge&logo=github&logoColor=white" alt="Open question 120 script"></a>

```yaml
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
```


## HackerRank-Style Platform Challenges: 121-150

121. Write a Dockerfile that uses a non-root user and minimal runtime image.

**Answer:** Use declarative manifests with pinned images, probes, resource controls, least-privilege identity, and a rollout strategy that can be observed and rolled back.



<a href="interview-scripts/121-write-a-dockerfile-that-uses-a-non-root-user-and-minima.yaml"><img src="https://img.shields.io/badge/Question%20121%20script-Open-2088FF?style=for-the-badge&logo=github&logoColor=white" alt="Open question 121 script"></a>

```yaml
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
```

122. Write a Dockerfile with a multi-stage build.

**Answer:** Separate validation, build, promotion, and verification jobs; use immutable artifacts, protected variables or OIDC, and manual approval for production.



<a href="interview-scripts/122-write-a-dockerfile-with-a-multi-stage-build.yaml"><img src="https://img.shields.io/badge/Question%20122%20script-Open-2088FF?style=for-the-badge&logo=github&logoColor=white" alt="Open question 122 script"></a>

```yaml
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
```

123. Write a Deployment with three replicas and a readiness probe.

**Answer:** Deploy an immutable version, run a health or smoke check, promote only on success, and invoke a tested rollback while preserving the failure in logs.



<a href="interview-scripts/123-write-a-deployment-with-three-replicas-and-a-readiness.yaml"><img src="https://img.shields.io/badge/Question%20123%20script-Open-2088FF?style=for-the-badge&logo=github&logoColor=white" alt="Open question 123 script"></a>

```yaml
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
```

124. Write a Service that selects only stable Pods.

**Answer:** Use declarative manifests with pinned images, probes, resource controls, least-privilege identity, and a rollout strategy that can be observed and rolled back.



<a href="interview-scripts/124-write-a-service-that-selects-only-stable-pods.yaml"><img src="https://img.shields.io/badge/Question%20124%20script-Open-2088FF?style=for-the-badge&logo=github&logoColor=white" alt="Open question 124 script"></a>

```yaml
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
```

125. Mount one ConfigMap key as a file.

**Answer:** Implement the solution with validated inputs, deterministic behavior, clear failure handling, tests, and an example execution command for Kubernetes/Docker.



<a href="interview-scripts/125-mount-one-configmap-key-as-a-file.yaml"><img src="https://img.shields.io/badge/Question%20125%20script-Open-2088FF?style=for-the-badge&logo=github&logoColor=white" alt="Open question 125 script"></a>

```yaml
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
```

126. Inject a Secret as an environment variable without committing plaintext.

**Answer:** Parse with the platform's structured data tool, validate required fields and types at the boundary, and return a clear nonzero failure for malformed input.



<a href="interview-scripts/126-inject-a-secret-as-an-environment-variable-without-comm.yaml"><img src="https://img.shields.io/badge/Question%20126%20script-Open-2088FF?style=for-the-badge&logo=github&logoColor=white" alt="Open question 126 script"></a>

```yaml
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
```

127. Write a Job that retries a migration three times.

**Answer:** Separate validation, build, promotion, and verification jobs; use immutable artifacts, protected variables or OIDC, and manual approval for production.



<a href="interview-scripts/127-write-a-job-that-retries-a-migration-three-times.yaml"><img src="https://img.shields.io/badge/Question%20127%20script-Open-2088FF?style=for-the-badge&logo=github&logoColor=white" alt="Open question 127 script"></a>

```yaml
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
```

128. Write a non-overlapping CronJob for a nightly report.

**Answer:** Separate validation, build, promotion, and verification jobs; use immutable artifacts, protected variables or OIDC, and manual approval for production.



<a href="interview-scripts/128-write-a-non-overlapping-cronjob-for-a-nightly-report.yaml"><img src="https://img.shields.io/badge/Question%20128%20script-Open-2088FF?style=for-the-badge&logo=github&logoColor=white" alt="Open question 128 script"></a>

```yaml
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
```

129. Add CPU and memory requests and limits to a Deployment.

**Answer:** Deploy an immutable version, run a health or smoke check, promote only on success, and invoke a tested rollback while preserving the failure in logs.



<a href="interview-scripts/129-add-cpu-and-memory-requests-and-limits-to-a-deployment.yaml"><img src="https://img.shields.io/badge/Question%20129%20script-Open-2088FF?style=for-the-badge&logo=github&logoColor=white" alt="Open question 129 script"></a>

```yaml
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
```

130. Write a liveness probe for a stuck HTTP process.

**Answer:** Implement the solution with validated inputs, deterministic behavior, clear failure handling, tests, and an example execution command for Kubernetes/Docker.



<a href="interview-scripts/130-write-a-liveness-probe-for-a-stuck-http-process.yaml"><img src="https://img.shields.io/badge/Question%20130%20script-Open-2088FF?style=for-the-badge&logo=github&logoColor=white" alt="Open question 130 script"></a>

```yaml
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
```

131. Write an HPA scaling between two and ten replicas at 70% CPU.

**Answer:** Implement the solution with validated inputs, deterministic behavior, clear failure handling, tests, and an example execution command for Kubernetes/Docker.



<a href="interview-scripts/131-write-an-hpa-scaling-between-two-and-ten-replicas-at-70.yaml"><img src="https://img.shields.io/badge/Question%20131%20script-Open-2088FF?style=for-the-badge&logo=github&logoColor=white" alt="Open question 131 script"></a>

```yaml
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
```

132. Write an Ingress route for `/api` with TLS.

**Answer:** Use explicit authentication, timeouts, status handling, pagination, rate-limit handling, and structured response validation; never place credentials in source.



<a href="interview-scripts/132-write-an-ingress-route-for-api-with-tls.yaml"><img src="https://img.shields.io/badge/Question%20132%20script-Open-2088FF?style=for-the-badge&logo=github&logoColor=white" alt="Open question 132 script"></a>

```yaml
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
```

133. Write a default-deny NetworkPolicy and an API allow rule.

**Answer:** Use explicit authentication, timeouts, status handling, pagination, rate-limit handling, and structured response validation; never place credentials in source.



<a href="interview-scripts/133-write-a-default-deny-networkpolicy-and-an-api-allow-rul.yaml"><img src="https://img.shields.io/badge/Question%20133%20script-Open-2088FF?style=for-the-badge&logo=github&logoColor=white" alt="Open question 133 script"></a>

```yaml
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
```

134. Write a PVC and mount it at `/var/lib/app`.

**Answer:** Implement the solution with validated inputs, deterministic behavior, clear failure handling, tests, and an example execution command for Kubernetes/Docker.



<a href="interview-scripts/134-write-a-pvc-and-mount-it-at-var-lib-app.yaml"><img src="https://img.shields.io/badge/Question%20134%20script-Open-2088FF?style=for-the-badge&logo=github&logoColor=white" alt="Open question 134 script"></a>

```yaml
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
```

135. Write a PodDisruptionBudget preserving one replica.

**Answer:** Use declarative manifests with pinned images, probes, resource controls, least-privilege identity, and a rollout strategy that can be observed and rolled back.



<a href="interview-scripts/135-write-a-poddisruptionbudget-preserving-one-replica.yaml"><img src="https://img.shields.io/badge/Question%20135%20script-Open-2088FF?style=for-the-badge&logo=github&logoColor=white" alt="Open question 135 script"></a>

```yaml
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
```

136. Write a zero-unavailable rolling update.

**Answer:** Implement the solution with validated inputs, deterministic behavior, clear failure handling, tests, and an example execution command for Kubernetes/Docker.



<a href="interview-scripts/136-write-a-zero-unavailable-rolling-update.yaml"><img src="https://img.shields.io/badge/Question%20136%20script-Open-2088FF?style=for-the-badge&logo=github&logoColor=white" alt="Open question 136 script"></a>

```yaml
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
```

137. Template an image repository and tag with Helm values.

**Answer:** Use declarative manifests with pinned images, probes, resource controls, least-privilege identity, and a rollout strategy that can be observed and rolled back.



<a href="interview-scripts/137-template-an-image-repository-and-tag-with-helm-values.yaml"><img src="https://img.shields.io/badge/Question%20137%20script-Open-2088FF?style=for-the-badge&logo=github&logoColor=white" alt="Open question 137 script"></a>

```yaml
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
```

138. Write Helm helpers for stable names and labels.

**Answer:** Use declarative manifests with pinned images, probes, resource controls, least-privilege identity, and a rollout strategy that can be observed and rolled back.



<a href="interview-scripts/138-write-helm-helpers-for-stable-names-and-labels.yaml"><img src="https://img.shields.io/badge/Question%20138%20script-Open-2088FF?style=for-the-badge&logo=github&logoColor=white" alt="Open question 138 script"></a>

```yaml
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
```

139. Write a Helm test Pod for a Service endpoint.

**Answer:** Test the happy path, invalid input, timeout, retry exhaustion, and partial failure with mocks for external systems and an assertion on the final result.



<a href="interview-scripts/139-write-a-helm-test-pod-for-a-service-endpoint.yaml"><img src="https://img.shields.io/badge/Question%20139%20script-Open-2088FF?style=for-the-badge&logo=github&logoColor=white" alt="Open question 139 script"></a>

```yaml
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
```

140. Spread replicas across availability zones.

**Answer:** Implement the solution with validated inputs, deterministic behavior, clear failure handling, tests, and an example execution command for Kubernetes/Docker.



<a href="interview-scripts/140-spread-replicas-across-availability-zones.yaml"><img src="https://img.shields.io/badge/Question%20140%20script-Open-2088FF?style=for-the-badge&logo=github&logoColor=white" alt="Open question 140 script"></a>

```yaml
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
```

141. Write pod anti-affinity for same-application replicas.

**Answer:** Use declarative manifests with pinned images, probes, resource controls, least-privilege identity, and a rollout strategy that can be observed and rolled back.



<a href="interview-scripts/141-write-pod-anti-affinity-for-same-application-replicas.yaml"><img src="https://img.shields.io/badge/Question%20141%20script-Open-2088FF?style=for-the-badge&logo=github&logoColor=white" alt="Open question 141 script"></a>

```yaml
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
```

142. Write taints and tolerations for a dedicated node pool.

**Answer:** Implement the solution with validated inputs, deterministic behavior, clear failure handling, tests, and an example execution command for Kubernetes/Docker.



<a href="interview-scripts/142-write-taints-and-tolerations-for-a-dedicated-node-pool.yaml"><img src="https://img.shields.io/badge/Question%20142%20script-Open-2088FF?style=for-the-badge&logo=github&logoColor=white" alt="Open question 142 script"></a>

```yaml
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
```

143. Write a restricted security context with dropped capabilities.

**Answer:** Implement the solution with validated inputs, deterministic behavior, clear failure handling, tests, and an example execution command for Kubernetes/Docker.



<a href="interview-scripts/143-write-a-restricted-security-context-with-dropped-capabi.yaml"><img src="https://img.shields.io/badge/Question%20143%20script-Open-2088FF?style=for-the-badge&logo=github&logoColor=white" alt="Open question 143 script"></a>

```yaml
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
```

144. Write a namespace ResourceQuota.

**Answer:** Express the desired state with typed inputs, stable addresses, policy validation, protected state, and a reviewed plan before apply.



<a href="interview-scripts/144-write-a-namespace-resourcequota.yaml"><img src="https://img.shields.io/badge/Question%20144%20script-Open-2088FF?style=for-the-badge&logo=github&logoColor=white" alt="Open question 144 script"></a>

```yaml
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
```

145. Write a LimitRange with default requests and limits.

**Answer:** Implement the solution with validated inputs, deterministic behavior, clear failure handling, tests, and an example execution command for Kubernetes/Docker.



<a href="interview-scripts/145-write-a-limitrange-with-default-requests-and-limits.yaml"><img src="https://img.shields.io/badge/Question%20145%20script-Open-2088FF?style=for-the-badge&logo=github&logoColor=white" alt="Open question 145 script"></a>

```yaml
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
```

146. Write a canary Service selecting `track: canary`.

**Answer:** Deploy an immutable version, run a health or smoke check, promote only on success, and invoke a tested rollback while preserving the failure in logs.



<a href="interview-scripts/146-write-a-canary-service-selecting-track-canary.yaml"><img src="https://img.shields.io/badge/Question%20146%20script-Open-2088FF?style=for-the-badge&logo=github&logoColor=white" alt="Open question 146 script"></a>

```yaml
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
```

147. Write a ServiceAccount for cloud workload identity.

**Answer:** Parse the input into structured records, use a map or counter for aggregation, sort only when ranking is required, and test empty, duplicate, and boundary inputs.



<a href="interview-scripts/147-write-a-serviceaccount-for-cloud-workload-identity.yaml"><img src="https://img.shields.io/badge/Question%20147%20script-Open-2088FF?style=for-the-badge&logo=github&logoColor=white" alt="Open question 147 script"></a>

```yaml
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
```

148. Pin an image by digest to prevent tag drift.

**Answer:** Use declarative manifests with pinned images, probes, resource controls, least-privilege identity, and a rollout strategy that can be observed and rolled back.



<a href="interview-scripts/148-pin-an-image-by-digest-to-prevent-tag-drift.yaml"><img src="https://img.shields.io/badge/Question%20148%20script-Open-2088FF?style=for-the-badge&logo=github&logoColor=white" alt="Open question 148 script"></a>

```yaml
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
```

149. Write a backup CronJob with least privilege.

**Answer:** Separate validation, build, promotion, and verification jobs; use immutable artifacts, protected variables or OIDC, and manual approval for production.



<a href="interview-scripts/149-write-a-backup-cronjob-with-least-privilege.yaml"><img src="https://img.shields.io/badge/Question%20149%20script-Open-2088FF?style=for-the-badge&logo=github&logoColor=white" alt="Open question 149 script"></a>

```yaml
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
```

150. Build a Helm application with probes, autoscaling, policy, security, and rollback.

**Answer:** Deploy an immutable version, run a health or smoke check, promote only on success, and invoke a tested rollback while preserving the failure in logs.



<a href="interview-scripts/150-build-a-helm-application-with-probes-autoscaling-policy.yaml"><img src="https://img.shields.io/badge/Question%20150%20script-Open-2088FF?style=for-the-badge&logo=github&logoColor=white" alt="Open question 150 script"></a>

```yaml
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
```


## Executable Answers

- [Beginner answers](interview-answers/beginner.yaml): a basic replicated Deployment.
- [Intermediate answers](interview-answers/intermediate.yaml): probes and resource governance.
- [Advanced answers](interview-answers/advanced.yaml): autoscaling and disruption protection.
