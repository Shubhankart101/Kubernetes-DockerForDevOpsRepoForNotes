# Kubernetes and Docker Interview Question Bank

This bank contains 150 questions organized by difficulty. Use the manifests in `scripts/` and the chart in `helm/devops-app/` to build practical answers.

## Worked Answers

### Beginner: replicated Deployment

**Question:** Why use a Deployment instead of a bare Pod?

```yaml
apiVersion: apps/v1
kind: Deployment
metadata: { name: hello }
spec:
	replicas: 2
	selector: { matchLabels: { app: hello } }
	template:
		metadata: { labels: { app: hello } }
		spec:
			containers: [{ name: web, image: nginx:1.27-alpine }]
```

The Deployment maintains replicas and supports rolling updates and rollback.

### Intermediate: readiness and resources

**Question:** How do you keep unready Pods out of traffic?

```yaml
containers:
	- name: api
		image: registry.example/api:1.2.3
		readinessProbe: { httpGet: { path: /health, port: 8080 } }
		resources:
			requests: { cpu: 100m, memory: 128Mi }
			limits: { cpu: 500m, memory: 512Mi }
```

Readiness controls traffic; requests guide scheduling and limits cap resource use.

### Advanced: autoscaling and disruption protection

```yaml
apiVersion: autoscaling/v2
kind: HorizontalPodAutoscaler
metadata: { name: api }
spec:
	scaleTargetRef: { apiVersion: apps/v1, kind: Deployment, name: api }
	minReplicas: 3
	maxReplicas: 20
	metrics:
		- type: Resource
			resource: { name: cpu, target: { type: Utilization, averageUtilization: 70 } }
```

An HPA changes replica count from observed metrics; pair it with a PodDisruptionBudget and topology spread for resilient production behavior.

## Beginner: 1-40

1. What problem does Docker solve?
**Answer:** It addresses a recurring DevOps need by making delivery, operations, or infrastructure repeatable, reviewable, and safer to automate.
2. What is a container image?
**Answer:** Build a minimal immutable image, pin dependencies, scan and sign it, publish it to a controlled registry, and deploy by digest when possible.
3. What is a container?
**Answer:** Build a minimal immutable image, pin dependencies, scan and sign it, publish it to a controlled registry, and deploy by digest when possible.
4. What is the difference between an image and a container?
**Answer:** Build a minimal immutable image, pin dependencies, scan and sign it, publish it to a controlled registry, and deploy by digest when possible.
5. What is a Dockerfile?
**Answer:** Build a minimal immutable image, pin dependencies, scan and sign it, publish it to a controlled registry, and deploy by digest when possible.
6. What does `FROM` do in a Dockerfile?
**Answer:** Build a minimal immutable image, pin dependencies, scan and sign it, publish it to a controlled registry, and deploy by digest when possible.
7. What is a Docker image layer?
**Answer:** Build a minimal immutable image, pin dependencies, scan and sign it, publish it to a controlled registry, and deploy by digest when possible.
8. Why should images use fixed tags?
**Answer:** Build a minimal immutable image, pin dependencies, scan and sign it, publish it to a controlled registry, and deploy by digest when possible.
9. What does `EXPOSE` document?
**Answer:** A strong answer should define the concept, show a small Kubernetes and Docker implementation, explain failure behavior, and describe how it would be tested in CI.
10. What is the purpose of `CMD`?
**Answer:** A strong answer should define the concept, show a small Kubernetes and Docker implementation, explain failure behavior, and describe how it would be tested in CI.
11. How does `ENTRYPOINT` differ from `CMD`?
**Answer:** A strong answer should define the concept, show a small Kubernetes and Docker implementation, explain failure behavior, and describe how it would be tested in CI.
12. What is a container registry?
**Answer:** Build a minimal immutable image, pin dependencies, scan and sign it, publish it to a controlled registry, and deploy by digest when possible.
13. What problem does Kubernetes solve?
**Answer:** It addresses a recurring DevOps need by making delivery, operations, or infrastructure repeatable, reviewable, and safer to automate.
14. What is a Kubernetes cluster?
**Answer:** A strong answer should define the concept, show a small Kubernetes and Docker implementation, explain failure behavior, and describe how it would be tested in CI.
15. What is a Kubernetes node?
**Answer:** A strong answer should define the concept, show a small Kubernetes and Docker implementation, explain failure behavior, and describe how it would be tested in CI.
16. What is a Pod?
**Answer:** A strong answer should define the concept, show a small Kubernetes and Docker implementation, explain failure behavior, and describe how it would be tested in CI.
17. Why is a Deployment preferred over a bare Pod?
**Answer:** Separate validation, build, promotion, and verification; use immutable artifacts, protected production controls, and an observable rollback path.
18. What is a ReplicaSet?
**Answer:** A strong answer should define the concept, show a small Kubernetes and Docker implementation, explain failure behavior, and describe how it would be tested in CI.
19. What is a Kubernetes Service?
**Answer:** Define the smallest required traffic path, restrict it with policy and identity, and verify connectivity from the same network boundary as the workload.
20. How does a Service find Pods?
**Answer:** Define the smallest required traffic path, restrict it with policy and identity, and verify connectivity from the same network boundary as the workload.
21. What is a label?
**Answer:** A strong answer should define the concept, show a small Kubernetes and Docker implementation, explain failure behavior, and describe how it would be tested in CI.
22. What is a selector?
**Answer:** A strong answer should define the concept, show a small Kubernetes and Docker implementation, explain failure behavior, and describe how it would be tested in CI.
23. What is a namespace?
**Answer:** A strong answer should define the concept, show a small Kubernetes and Docker implementation, explain failure behavior, and describe how it would be tested in CI.
24. What is a ConfigMap?
**Answer:** A strong answer should define the concept, show a small Kubernetes and Docker implementation, explain failure behavior, and describe how it would be tested in CI.
25. What is a Secret?
**Answer:** Keep the value in a protected secret store or workload identity, pass it at runtime, redact it from logs, and never commit it to source control.
26. How do you expose a container port?
**Answer:** Define the smallest required traffic path, restrict it with policy and identity, and verify connectivity from the same network boundary as the workload.
27. What is the difference between ClusterIP and LoadBalancer?
**Answer:** A strong answer should define the concept, show a small Kubernetes and Docker implementation, explain failure behavior, and describe how it would be tested in CI.
28. What is a Job?
**Answer:** Separate validation, build, promotion, and verification; use immutable artifacts, protected production controls, and an observable rollback path.
29. What is a CronJob?
**Answer:** Separate validation, build, promotion, and verification; use immutable artifacts, protected production controls, and an observable rollback path.
30. What does `kubectl apply` do?
**Answer:** A strong answer should define the concept, show a small Kubernetes and Docker implementation, explain failure behavior, and describe how it would be tested in CI.
31. How do you inspect Pod logs?
**Answer:** Emit structured, correlation-aware telemetry with enough context to diagnose duration, failures, deployment version, and affected environment.
32. How do you describe a failing Pod?
**Answer:** A strong answer should define the concept, show a small Kubernetes and Docker implementation, explain failure behavior, and describe how it would be tested in CI.
33. What is a readiness probe?
**Answer:** Check a meaningful dependency or application endpoint, fail the operation when the check fails, and use the result to stop or roll back promotion.
34. What is a liveness probe?
**Answer:** Check a meaningful dependency or application endpoint, fail the operation when the check fails, and use the result to stop or roll back promotion.
35. What is a resource request?
**Answer:** Declare requests and limits, measure real usage, set explicit capacity bounds, and test behavior under saturation and recovery.
36. What is a resource limit?
**Answer:** Declare requests and limits, measure real usage, set explicit capacity bounds, and test behavior under saturation and recovery.
37. What is Helm?
**Answer:** A strong answer should define the concept, show a small Kubernetes and Docker implementation, explain failure behavior, and describe how it would be tested in CI.
38. What is a Helm chart?
**Answer:** A strong answer should define the concept, show a small Kubernetes and Docker implementation, explain failure behavior, and describe how it would be tested in CI.
39. What is `values.yaml`?
**Answer:** A strong answer should define the concept, show a small Kubernetes and Docker implementation, explain failure behavior, and describe how it would be tested in CI.
40. How do you roll back a Deployment?
**Answer:** Separate validation, build, promotion, and verification; use immutable artifacts, protected production controls, and an observable rollback path.

## Intermediate: 41-80

41. Explain Kubernetes control-plane components.
**Answer:** Extract the behavior behind a small documented interface, keep inputs and outputs explicit, and test the reusable unit independently.
42. What does the API server do?
**Answer:** Use a structured client, explicit timeouts, status handling, pagination, schema validation, and safe authentication rather than string parsing.
43. What is stored in etcd?
**Answer:** A strong answer should define the concept, show a small Kubernetes and Docker implementation, explain failure behavior, and describe how it would be tested in CI.
44. What does the scheduler consider when placing a Pod?
**Answer:** A strong answer should define the concept, show a small Kubernetes and Docker implementation, explain failure behavior, and describe how it would be tested in CI.
45. What does the controller manager reconcile?
**Answer:** A strong answer should define the concept, show a small Kubernetes and Docker implementation, explain failure behavior, and describe how it would be tested in CI.
46. How does kubelet manage a Pod?
**Answer:** A strong answer should define the concept, show a small Kubernetes and Docker implementation, explain failure behavior, and describe how it would be tested in CI.
47. How does CoreDNS support Service discovery?
**Answer:** Define the smallest required traffic path, restrict it with policy and identity, and verify connectivity from the same network boundary as the workload.
48. Explain a Deployment rolling update.
**Answer:** Bound concurrency, preserve a small failure domain, verify health between batches, and stop promotion when the error budget is exceeded.
49. What are `maxSurge` and `maxUnavailable`?
**Answer:** A strong answer should define the concept, show a small Kubernetes and Docker implementation, explain failure behavior, and describe how it would be tested in CI.
50. How do you pause and resume a rollout?
**Answer:** A strong answer should define the concept, show a small Kubernetes and Docker implementation, explain failure behavior, and describe how it would be tested in CI.
51. How do you debug `CrashLoopBackOff`?
**Answer:** Retry only transient failures, use bounded exponential backoff with jitter, and return the final error when the retry budget is exhausted.
52. How do you debug `ImagePullBackOff`?
**Answer:** Retry only transient failures, use bounded exponential backoff with jitter, and return the final error when the retry budget is exhausted.
53. How do requests and limits affect scheduling?
**Answer:** Declare requests and limits, measure real usage, set explicit capacity bounds, and test behavior under saturation and recovery.
54. What is a HorizontalPodAutoscaler?
**Answer:** Declare requests and limits, measure real usage, set explicit capacity bounds, and test behavior under saturation and recovery.
55. What metrics can drive an HPA?
**Answer:** Emit structured, correlation-aware telemetry with enough context to diagnose duration, failures, deployment version, and affected environment.
56. What is a PodDisruptionBudget?
**Answer:** A strong answer should define the concept, show a small Kubernetes and Docker implementation, explain failure behavior, and describe how it would be tested in CI.
57. What is an Ingress?
**Answer:** Define the smallest required traffic path, restrict it with policy and identity, and verify connectivity from the same network boundary as the workload.
58. How does an ingress controller work?
**Answer:** Define the smallest required traffic path, restrict it with policy and identity, and verify connectivity from the same network boundary as the workload.
59. What is a NetworkPolicy?
**Answer:** Define the smallest required traffic path, restrict it with policy and identity, and verify connectivity from the same network boundary as the workload.
60. What happens when no NetworkPolicy selects a Pod?
**Answer:** Define the smallest required traffic path, restrict it with policy and identity, and verify connectivity from the same network boundary as the workload.
61. How do you mount a ConfigMap as a file?
**Answer:** Use structured filesystem APIs, validate paths, quote inputs, handle missing resources deliberately, and avoid unsafe traversal or shell expansion.
62. How should Secrets be handled in production?
**Answer:** Keep the value in a protected secret store or workload identity, pass it at runtime, redact it from logs, and never commit it to source control.
63. What is a PersistentVolume?
**Answer:** A strong answer should define the concept, show a small Kubernetes and Docker implementation, explain failure behavior, and describe how it would be tested in CI.
64. What is a PersistentVolumeClaim?
**Answer:** A strong answer should define the concept, show a small Kubernetes and Docker implementation, explain failure behavior, and describe how it would be tested in CI.
65. Explain ReadWriteOnce and ReadWriteMany.
**Answer:** A strong answer should define the concept, show a small Kubernetes and Docker implementation, explain failure behavior, and describe how it would be tested in CI.
66. How do StatefulSets differ from Deployments?
**Answer:** Store shared state remotely with encryption, access control, locking, versioning, and a tested recovery process.
67. When should you use a DaemonSet?
**Answer:** A strong answer should define the concept, show a small Kubernetes and Docker implementation, explain failure behavior, and describe how it would be tested in CI.
68. When should you use an init container?
**Answer:** Build a minimal immutable image, pin dependencies, scan and sign it, publish it to a controlled registry, and deploy by digest when possible.
69. What is a sidecar container?
**Answer:** Build a minimal immutable image, pin dependencies, scan and sign it, publish it to a controlled registry, and deploy by digest when possible.
70. How do Jobs retry failed work?
**Answer:** Retry only transient failures, use bounded exponential backoff with jitter, and return the final error when the retry budget is exhausted.
71. How do you make a CronJob idempotent?
**Answer:** Make the operation converge on the declared state and check the current state before mutating it, so a second run produces no unnecessary change.
72. What is a ServiceAccount?
**Answer:** Define the smallest required traffic path, restrict it with policy and identity, and verify connectivity from the same network boundary as the workload.
73. What is RBAC?
**Answer:** Apply least privilege, isolate trust boundaries, validate policy in CI or admission, and record auditable changes.
74. Explain Role and ClusterRole.
**Answer:** Extract the behavior behind a small documented interface, keep inputs and outputs explicit, and test the reusable unit independently.
75. Explain RoleBinding and ClusterRoleBinding.
**Answer:** Extract the behavior behind a small documented interface, keep inputs and outputs explicit, and test the reusable unit independently.
76. How do you inspect resource usage?
**Answer:** Declare requests and limits, measure real usage, set explicit capacity bounds, and test behavior under saturation and recovery.
77. What is a namespace ResourceQuota?
**Answer:** Declare requests and limits, measure real usage, set explicit capacity bounds, and test behavior under saturation and recovery.
78. What is a LimitRange?
**Answer:** Declare requests and limits, measure real usage, set explicit capacity bounds, and test behavior under saturation and recovery.
79. How does Helm templating work?
**Answer:** A strong answer should define the concept, show a small Kubernetes and Docker implementation, explain failure behavior, and describe how it would be tested in CI.
80. How do you lint and render a Helm chart?
**Answer:** Automate syntax, static analysis, unit, and integration checks in CI; fail early and publish useful diagnostics as artifacts.

## Advanced: 81-120

81. Design a highly available Kubernetes control plane.
**Answer:** A strong answer should define the concept, show a small Kubernetes and Docker implementation, explain failure behavior, and describe how it would be tested in CI.
82. How does etcd quorum affect availability?
**Answer:** A strong answer should define the concept, show a small Kubernetes and Docker implementation, explain failure behavior, and describe how it would be tested in CI.
83. How do you back up and restore etcd?
**Answer:** Keep the previous known-good version, validate the replacement, and automate a tested rollback or restore path with clear ownership and audit output.
84. How do you upgrade a production cluster safely?
**Answer:** A strong answer should define the concept, show a small Kubernetes and Docker implementation, explain failure behavior, and describe how it would be tested in CI.
85. How do you drain a node without violating availability?
**Answer:** A strong answer should define the concept, show a small Kubernetes and Docker implementation, explain failure behavior, and describe how it would be tested in CI.
86. How do you spread replicas across zones?
**Answer:** A strong answer should define the concept, show a small Kubernetes and Docker implementation, explain failure behavior, and describe how it would be tested in CI.
87. Explain pod affinity and anti-affinity.
**Answer:** A strong answer should define the concept, show a small Kubernetes and Docker implementation, explain failure behavior, and describe how it would be tested in CI.
88. What are topology spread constraints?
**Answer:** Emit structured, correlation-aware telemetry with enough context to diagnose duration, failures, deployment version, and affected environment.
89. How do taints and tolerations support isolation?
**Answer:** Define the smallest required traffic path, restrict it with policy and identity, and verify connectivity from the same network boundary as the workload.
90. How do you design separate system and workload node pools?
**Answer:** A strong answer should define the concept, show a small Kubernetes and Docker implementation, explain failure behavior, and describe how it would be tested in CI.
91. How do cluster and node autoscaling interact?
**Answer:** Declare requests and limits, measure real usage, set explicit capacity bounds, and test behavior under saturation and recovery.
92. How do you prevent autoscaling oscillation?
**Answer:** Declare requests and limits, measure real usage, set explicit capacity bounds, and test behavior under saturation and recovery.
93. Design an SLO-driven rollout strategy.
**Answer:** Check a meaningful dependency or application endpoint, fail the operation when the check fails, and use the result to stop or roll back promotion.
94. How do you implement canary deployment?
**Answer:** Bound concurrency, preserve a small failure domain, verify health between batches, and stop promotion when the error budget is exceeded.
95. How do you implement blue-green deployment?
**Answer:** Bound concurrency, preserve a small failure domain, verify health between batches, and stop promotion when the error budget is exceeded.
96. How do you combine readiness gates with traffic shifting?
**Answer:** Check a meaningful dependency or application endpoint, fail the operation when the check fails, and use the result to stop or roll back promotion.
97. How do you design a multi-tenant cluster?
**Answer:** A strong answer should define the concept, show a small Kubernetes and Docker implementation, explain failure behavior, and describe how it would be tested in CI.
98. How do namespaces, RBAC, quotas, and NetworkPolicies combine?
**Answer:** Define the smallest required traffic path, restrict it with policy and identity, and verify connectivity from the same network boundary as the workload.
99. How do you enforce Pod Security Standards?
**Answer:** Apply least privilege, isolate trust boundaries, validate policy in CI or admission, and record auditable changes.
100. How do you prevent privileged containers?
**Answer:** Apply least privilege, isolate trust boundaries, validate policy in CI or admission, and record auditable changes.
101. How do you secure the container supply chain?
**Answer:** Apply least privilege, isolate trust boundaries, validate policy in CI or admission, and record auditable changes.
102. Why use digest-pinned images?
**Answer:** Build a minimal immutable image, pin dependencies, scan and sign it, publish it to a controlled registry, and deploy by digest when possible.
103. How do image signing and admission verification work?
**Answer:** Build a minimal immutable image, pin dependencies, scan and sign it, publish it to a controlled registry, and deploy by digest when possible.
104. How do you design private registry access?
**Answer:** Build a minimal immutable image, pin dependencies, scan and sign it, publish it to a controlled registry, and deploy by digest when possible.
105. How do you use workload identity on Azure?
**Answer:** Use provider-native identity with least privilege, explicit environment boundaries, tagging, policy controls, and repeatable infrastructure definitions.
106. How do you use IAM roles for service accounts on AWS?
**Answer:** Extract the behavior behind a small documented interface, keep inputs and outputs explicit, and test the reusable unit independently.
107. How do you design AKS networking?
**Answer:** Define the smallest required traffic path, restrict it with policy and identity, and verify connectivity from the same network boundary as the workload.
108. How do you design EKS networking?
**Answer:** Define the smallest required traffic path, restrict it with policy and identity, and verify connectivity from the same network boundary as the workload.
109. How do you connect on-premises clusters to cloud services?
**Answer:** Define the smallest required traffic path, restrict it with policy and identity, and verify connectivity from the same network boundary as the workload.
110. How do you observe cluster, node, and application health?
**Answer:** Check a meaningful dependency or application endpoint, fail the operation when the check fails, and use the result to stop or roll back promotion.
111. How do you correlate traces with deployment versions?
**Answer:** Emit structured, correlation-aware telemetry with enough context to diagnose duration, failures, deployment version, and affected environment.
112. How do you perform capacity planning?
**Answer:** Declare requests and limits, measure real usage, set explicit capacity bounds, and test behavior under saturation and recovery.
113. How do you recover from a control-plane outage?
**Answer:** A strong answer should define the concept, show a small Kubernetes and Docker implementation, explain failure behavior, and describe how it would be tested in CI.
114. How do you recover from a registry outage?
**Answer:** Build a minimal immutable image, pin dependencies, scan and sign it, publish it to a controlled registry, and deploy by digest when possible.
115. How do you test backup restoration?
**Answer:** Automate syntax, static analysis, unit, and integration checks in CI; fail early and publish useful diagnostics as artifacts.
116. Explain Helm release history and rollback behavior.
**Answer:** Keep the previous known-good version, validate the replacement, and automate a tested rollback or restore path with clear ownership and audit output.
117. How do you version and promote Helm charts?
**Answer:** A strong answer should define the concept, show a small Kubernetes and Docker implementation, explain failure behavior, and describe how it would be tested in CI.
118. How do you manage secrets in Helm without leaking them?
**Answer:** Keep the value in a protected secret store or workload identity, pass it at runtime, redact it from logs, and never commit it to source control.
119. What failure modes exist in Docker-in-Docker CI?
**Answer:** Build a minimal immutable image, pin dependencies, scan and sign it, publish it to a controlled registry, and deploy by digest when possible.
120. Design a secure, multi-region, observable Kubernetes platform with reversible releases.
**Answer:** Emit structured, correlation-aware telemetry with enough context to diagnose duration, failures, deployment version, and affected environment.

## HackerRank-Style Platform Challenges: 121-150

121. Write a Dockerfile that uses a non-root user and minimal runtime image.
122. Write a Dockerfile with a multi-stage build.
123. Write a Deployment with three replicas and a readiness probe.
124. Write a Service that selects only stable Pods.
125. Mount one ConfigMap key as a file.
126. Inject a Secret as an environment variable without committing plaintext.
127. Write a Job that retries a migration three times.
128. Write a non-overlapping CronJob for a nightly report.
129. Add CPU and memory requests and limits to a Deployment.
130. Write a liveness probe for a stuck HTTP process.
131. Write an HPA scaling between two and ten replicas at 70% CPU.
132. Write an Ingress route for `/api` with TLS.
133. Write a default-deny NetworkPolicy and an API allow rule.
134. Write a PVC and mount it at `/var/lib/app`.
135. Write a PodDisruptionBudget preserving one replica.
136. Write a zero-unavailable rolling update.
137. Template an image repository and tag with Helm values.
138. Write Helm helpers for stable names and labels.
139. Write a Helm test Pod for a Service endpoint.
140. Spread replicas across availability zones.
141. Write pod anti-affinity for same-application replicas.
142. Write taints and tolerations for a dedicated node pool.
143. Write a restricted security context with dropped capabilities.
144. Write a namespace ResourceQuota.
145. Write a LimitRange with default requests and limits.
146. Write a canary Service selecting `track: canary`.
147. Write a ServiceAccount for cloud workload identity.
148. Pin an image by digest to prevent tag drift.
149. Write a backup CronJob with least privilege.
150. Build a Helm application with probes, autoscaling, policy, security, and rollback.

## Executable Answers

- [Beginner answers](interview-answers/beginner.yaml): a basic replicated Deployment.
- [Intermediate answers](interview-answers/intermediate.yaml): probes and resource governance.
- [Advanced answers](interview-answers/advanced.yaml): autoscaling and disruption protection.
