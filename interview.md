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
Script: [Question 1 script](interview-scripts/001-what-problem-does-docker-solve.yaml)
2. What is a container image?
**Answer:** Build a minimal immutable image, pin dependencies, scan and sign it, publish it to a controlled registry, and deploy by digest when possible.
Script: [Question 2 script](interview-scripts/002-what-is-a-container-image.yaml)
3. What is a container?
**Answer:** Build a minimal immutable image, pin dependencies, scan and sign it, publish it to a controlled registry, and deploy by digest when possible.
Script: [Question 3 script](interview-scripts/003-what-is-a-container.yaml)
4. What is the difference between an image and a container?
**Answer:** Build a minimal immutable image, pin dependencies, scan and sign it, publish it to a controlled registry, and deploy by digest when possible.
Script: [Question 4 script](interview-scripts/004-what-is-the-difference-between-an-image-and-a-container.yaml)
5. What is a Dockerfile?
**Answer:** Build a minimal immutable image, pin dependencies, scan and sign it, publish it to a controlled registry, and deploy by digest when possible.
Script: [Question 5 script](interview-scripts/005-what-is-a-dockerfile.yaml)
6. What does `FROM` do in a Dockerfile?
**Answer:** Build a minimal immutable image, pin dependencies, scan and sign it, publish it to a controlled registry, and deploy by digest when possible.
Script: [Question 6 script](interview-scripts/006-what-does-from-do-in-a-dockerfile.yaml)
7. What is a Docker image layer?
**Answer:** Build a minimal immutable image, pin dependencies, scan and sign it, publish it to a controlled registry, and deploy by digest when possible.
Script: [Question 7 script](interview-scripts/007-what-is-a-docker-image-layer.yaml)
8. Why should images use fixed tags?
**Answer:** Build a minimal immutable image, pin dependencies, scan and sign it, publish it to a controlled registry, and deploy by digest when possible.
Script: [Question 8 script](interview-scripts/008-why-should-images-use-fixed-tags.yaml)
9. What does `EXPOSE` document?
**Answer:** A strong answer should define the concept, show a small Kubernetes and Docker implementation, explain failure behavior, and describe how it would be tested in CI.
Script: [Question 9 script](interview-scripts/009-what-does-expose-document.yaml)
10. What is the purpose of `CMD`?
**Answer:** A strong answer should define the concept, show a small Kubernetes and Docker implementation, explain failure behavior, and describe how it would be tested in CI.
Script: [Question 10 script](interview-scripts/010-what-is-the-purpose-of-cmd.yaml)
11. How does `ENTRYPOINT` differ from `CMD`?
**Answer:** A strong answer should define the concept, show a small Kubernetes and Docker implementation, explain failure behavior, and describe how it would be tested in CI.
Script: [Question 11 script](interview-scripts/011-how-does-entrypoint-differ-from-cmd.yaml)
12. What is a container registry?
**Answer:** Build a minimal immutable image, pin dependencies, scan and sign it, publish it to a controlled registry, and deploy by digest when possible.
Script: [Question 12 script](interview-scripts/012-what-is-a-container-registry.yaml)
13. What problem does Kubernetes solve?
**Answer:** It addresses a recurring DevOps need by making delivery, operations, or infrastructure repeatable, reviewable, and safer to automate.
Script: [Question 13 script](interview-scripts/013-what-problem-does-kubernetes-solve.yaml)
14. What is a Kubernetes cluster?
**Answer:** A strong answer should define the concept, show a small Kubernetes and Docker implementation, explain failure behavior, and describe how it would be tested in CI.
Script: [Question 14 script](interview-scripts/014-what-is-a-kubernetes-cluster.yaml)
15. What is a Kubernetes node?
**Answer:** A strong answer should define the concept, show a small Kubernetes and Docker implementation, explain failure behavior, and describe how it would be tested in CI.
Script: [Question 15 script](interview-scripts/015-what-is-a-kubernetes-node.yaml)
16. What is a Pod?
**Answer:** A strong answer should define the concept, show a small Kubernetes and Docker implementation, explain failure behavior, and describe how it would be tested in CI.
Script: [Question 16 script](interview-scripts/016-what-is-a-pod.yaml)
17. Why is a Deployment preferred over a bare Pod?
**Answer:** Separate validation, build, promotion, and verification; use immutable artifacts, protected production controls, and an observable rollback path.
Script: [Question 17 script](interview-scripts/017-why-is-a-deployment-preferred-over-a-bare-pod.yaml)
18. What is a ReplicaSet?
**Answer:** A strong answer should define the concept, show a small Kubernetes and Docker implementation, explain failure behavior, and describe how it would be tested in CI.
Script: [Question 18 script](interview-scripts/018-what-is-a-replicaset.yaml)
19. What is a Kubernetes Service?
**Answer:** Define the smallest required traffic path, restrict it with policy and identity, and verify connectivity from the same network boundary as the workload.
Script: [Question 19 script](interview-scripts/019-what-is-a-kubernetes-service.yaml)
20. How does a Service find Pods?
**Answer:** Define the smallest required traffic path, restrict it with policy and identity, and verify connectivity from the same network boundary as the workload.
Script: [Question 20 script](interview-scripts/020-how-does-a-service-find-pods.yaml)
21. What is a label?
**Answer:** A strong answer should define the concept, show a small Kubernetes and Docker implementation, explain failure behavior, and describe how it would be tested in CI.
Script: [Question 21 script](interview-scripts/021-what-is-a-label.yaml)
22. What is a selector?
**Answer:** A strong answer should define the concept, show a small Kubernetes and Docker implementation, explain failure behavior, and describe how it would be tested in CI.
Script: [Question 22 script](interview-scripts/022-what-is-a-selector.yaml)
23. What is a namespace?
**Answer:** A strong answer should define the concept, show a small Kubernetes and Docker implementation, explain failure behavior, and describe how it would be tested in CI.
Script: [Question 23 script](interview-scripts/023-what-is-a-namespace.yaml)
24. What is a ConfigMap?
**Answer:** A strong answer should define the concept, show a small Kubernetes and Docker implementation, explain failure behavior, and describe how it would be tested in CI.
Script: [Question 24 script](interview-scripts/024-what-is-a-configmap.yaml)
25. What is a Secret?
**Answer:** Keep the value in a protected secret store or workload identity, pass it at runtime, redact it from logs, and never commit it to source control.
Script: [Question 25 script](interview-scripts/025-what-is-a-secret.yaml)
26. How do you expose a container port?
**Answer:** Define the smallest required traffic path, restrict it with policy and identity, and verify connectivity from the same network boundary as the workload.
Script: [Question 26 script](interview-scripts/026-how-do-you-expose-a-container-port.yaml)
27. What is the difference between ClusterIP and LoadBalancer?
**Answer:** A strong answer should define the concept, show a small Kubernetes and Docker implementation, explain failure behavior, and describe how it would be tested in CI.
Script: [Question 27 script](interview-scripts/027-what-is-the-difference-between-clusterip-and-loadbalanc.yaml)
28. What is a Job?
**Answer:** Separate validation, build, promotion, and verification; use immutable artifacts, protected production controls, and an observable rollback path.
Script: [Question 28 script](interview-scripts/028-what-is-a-job.yaml)
29. What is a CronJob?
**Answer:** Separate validation, build, promotion, and verification; use immutable artifacts, protected production controls, and an observable rollback path.
Script: [Question 29 script](interview-scripts/029-what-is-a-cronjob.yaml)
30. What does `kubectl apply` do?
**Answer:** A strong answer should define the concept, show a small Kubernetes and Docker implementation, explain failure behavior, and describe how it would be tested in CI.
Script: [Question 30 script](interview-scripts/030-what-does-kubectl-apply-do.yaml)
31. How do you inspect Pod logs?
**Answer:** Emit structured, correlation-aware telemetry with enough context to diagnose duration, failures, deployment version, and affected environment.
Script: [Question 31 script](interview-scripts/031-how-do-you-inspect-pod-logs.yaml)
32. How do you describe a failing Pod?
**Answer:** A strong answer should define the concept, show a small Kubernetes and Docker implementation, explain failure behavior, and describe how it would be tested in CI.
Script: [Question 32 script](interview-scripts/032-how-do-you-describe-a-failing-pod.yaml)
33. What is a readiness probe?
**Answer:** Check a meaningful dependency or application endpoint, fail the operation when the check fails, and use the result to stop or roll back promotion.
Script: [Question 33 script](interview-scripts/033-what-is-a-readiness-probe.yaml)
34. What is a liveness probe?
**Answer:** Check a meaningful dependency or application endpoint, fail the operation when the check fails, and use the result to stop or roll back promotion.
Script: [Question 34 script](interview-scripts/034-what-is-a-liveness-probe.yaml)
35. What is a resource request?
**Answer:** Declare requests and limits, measure real usage, set explicit capacity bounds, and test behavior under saturation and recovery.
Script: [Question 35 script](interview-scripts/035-what-is-a-resource-request.yaml)
36. What is a resource limit?
**Answer:** Declare requests and limits, measure real usage, set explicit capacity bounds, and test behavior under saturation and recovery.
Script: [Question 36 script](interview-scripts/036-what-is-a-resource-limit.yaml)
37. What is Helm?
**Answer:** A strong answer should define the concept, show a small Kubernetes and Docker implementation, explain failure behavior, and describe how it would be tested in CI.
Script: [Question 37 script](interview-scripts/037-what-is-helm.yaml)
38. What is a Helm chart?
**Answer:** A strong answer should define the concept, show a small Kubernetes and Docker implementation, explain failure behavior, and describe how it would be tested in CI.
Script: [Question 38 script](interview-scripts/038-what-is-a-helm-chart.yaml)
39. What is `values.yaml`?
**Answer:** A strong answer should define the concept, show a small Kubernetes and Docker implementation, explain failure behavior, and describe how it would be tested in CI.
Script: [Question 39 script](interview-scripts/039-what-is-values-yaml.yaml)
40. How do you roll back a Deployment?
**Answer:** Separate validation, build, promotion, and verification; use immutable artifacts, protected production controls, and an observable rollback path.
Script: [Question 40 script](interview-scripts/040-how-do-you-roll-back-a-deployment.yaml)

## Intermediate: 41-80

41. Explain Kubernetes control-plane components.
**Answer:** Extract the behavior behind a small documented interface, keep inputs and outputs explicit, and test the reusable unit independently.
Script: [Question 41 script](interview-scripts/041-explain-kubernetes-control-plane-components.yaml)
42. What does the API server do?
**Answer:** Use a structured client, explicit timeouts, status handling, pagination, schema validation, and safe authentication rather than string parsing.
Script: [Question 42 script](interview-scripts/042-what-does-the-api-server-do.yaml)
43. What is stored in etcd?
**Answer:** A strong answer should define the concept, show a small Kubernetes and Docker implementation, explain failure behavior, and describe how it would be tested in CI.
Script: [Question 43 script](interview-scripts/043-what-is-stored-in-etcd.yaml)
44. What does the scheduler consider when placing a Pod?
**Answer:** A strong answer should define the concept, show a small Kubernetes and Docker implementation, explain failure behavior, and describe how it would be tested in CI.
Script: [Question 44 script](interview-scripts/044-what-does-the-scheduler-consider-when-placing-a-pod.yaml)
45. What does the controller manager reconcile?
**Answer:** A strong answer should define the concept, show a small Kubernetes and Docker implementation, explain failure behavior, and describe how it would be tested in CI.
Script: [Question 45 script](interview-scripts/045-what-does-the-controller-manager-reconcile.yaml)
46. How does kubelet manage a Pod?
**Answer:** A strong answer should define the concept, show a small Kubernetes and Docker implementation, explain failure behavior, and describe how it would be tested in CI.
Script: [Question 46 script](interview-scripts/046-how-does-kubelet-manage-a-pod.yaml)
47. How does CoreDNS support Service discovery?
**Answer:** Define the smallest required traffic path, restrict it with policy and identity, and verify connectivity from the same network boundary as the workload.
Script: [Question 47 script](interview-scripts/047-how-does-coredns-support-service-discovery.yaml)
48. Explain a Deployment rolling update.
**Answer:** Bound concurrency, preserve a small failure domain, verify health between batches, and stop promotion when the error budget is exceeded.
Script: [Question 48 script](interview-scripts/048-explain-a-deployment-rolling-update.yaml)
49. What are `maxSurge` and `maxUnavailable`?
**Answer:** A strong answer should define the concept, show a small Kubernetes and Docker implementation, explain failure behavior, and describe how it would be tested in CI.
Script: [Question 49 script](interview-scripts/049-what-are-maxsurge-and-maxunavailable.yaml)
50. How do you pause and resume a rollout?
**Answer:** A strong answer should define the concept, show a small Kubernetes and Docker implementation, explain failure behavior, and describe how it would be tested in CI.
Script: [Question 50 script](interview-scripts/050-how-do-you-pause-and-resume-a-rollout.yaml)
51. How do you debug `CrashLoopBackOff`?
**Answer:** Retry only transient failures, use bounded exponential backoff with jitter, and return the final error when the retry budget is exhausted.
Script: [Question 51 script](interview-scripts/051-how-do-you-debug-crashloopbackoff.yaml)
52. How do you debug `ImagePullBackOff`?
**Answer:** Retry only transient failures, use bounded exponential backoff with jitter, and return the final error when the retry budget is exhausted.
Script: [Question 52 script](interview-scripts/052-how-do-you-debug-imagepullbackoff.yaml)
53. How do requests and limits affect scheduling?
**Answer:** Declare requests and limits, measure real usage, set explicit capacity bounds, and test behavior under saturation and recovery.
Script: [Question 53 script](interview-scripts/053-how-do-requests-and-limits-affect-scheduling.yaml)
54. What is a HorizontalPodAutoscaler?
**Answer:** Declare requests and limits, measure real usage, set explicit capacity bounds, and test behavior under saturation and recovery.
Script: [Question 54 script](interview-scripts/054-what-is-a-horizontalpodautoscaler.yaml)
55. What metrics can drive an HPA?
**Answer:** Emit structured, correlation-aware telemetry with enough context to diagnose duration, failures, deployment version, and affected environment.
Script: [Question 55 script](interview-scripts/055-what-metrics-can-drive-an-hpa.yaml)
56. What is a PodDisruptionBudget?
**Answer:** A strong answer should define the concept, show a small Kubernetes and Docker implementation, explain failure behavior, and describe how it would be tested in CI.
Script: [Question 56 script](interview-scripts/056-what-is-a-poddisruptionbudget.yaml)
57. What is an Ingress?
**Answer:** Define the smallest required traffic path, restrict it with policy and identity, and verify connectivity from the same network boundary as the workload.
Script: [Question 57 script](interview-scripts/057-what-is-an-ingress.yaml)
58. How does an ingress controller work?
**Answer:** Define the smallest required traffic path, restrict it with policy and identity, and verify connectivity from the same network boundary as the workload.
Script: [Question 58 script](interview-scripts/058-how-does-an-ingress-controller-work.yaml)
59. What is a NetworkPolicy?
**Answer:** Define the smallest required traffic path, restrict it with policy and identity, and verify connectivity from the same network boundary as the workload.
Script: [Question 59 script](interview-scripts/059-what-is-a-networkpolicy.yaml)
60. What happens when no NetworkPolicy selects a Pod?
**Answer:** Define the smallest required traffic path, restrict it with policy and identity, and verify connectivity from the same network boundary as the workload.
Script: [Question 60 script](interview-scripts/060-what-happens-when-no-networkpolicy-selects-a-pod.yaml)
61. How do you mount a ConfigMap as a file?
**Answer:** Use structured filesystem APIs, validate paths, quote inputs, handle missing resources deliberately, and avoid unsafe traversal or shell expansion.
Script: [Question 61 script](interview-scripts/061-how-do-you-mount-a-configmap-as-a-file.yaml)
62. How should Secrets be handled in production?
**Answer:** Keep the value in a protected secret store or workload identity, pass it at runtime, redact it from logs, and never commit it to source control.
Script: [Question 62 script](interview-scripts/062-how-should-secrets-be-handled-in-production.yaml)
63. What is a PersistentVolume?
**Answer:** A strong answer should define the concept, show a small Kubernetes and Docker implementation, explain failure behavior, and describe how it would be tested in CI.
Script: [Question 63 script](interview-scripts/063-what-is-a-persistentvolume.yaml)
64. What is a PersistentVolumeClaim?
**Answer:** A strong answer should define the concept, show a small Kubernetes and Docker implementation, explain failure behavior, and describe how it would be tested in CI.
Script: [Question 64 script](interview-scripts/064-what-is-a-persistentvolumeclaim.yaml)
65. Explain ReadWriteOnce and ReadWriteMany.
**Answer:** A strong answer should define the concept, show a small Kubernetes and Docker implementation, explain failure behavior, and describe how it would be tested in CI.
Script: [Question 65 script](interview-scripts/065-explain-readwriteonce-and-readwritemany.yaml)
66. How do StatefulSets differ from Deployments?
**Answer:** Store shared state remotely with encryption, access control, locking, versioning, and a tested recovery process.
Script: [Question 66 script](interview-scripts/066-how-do-statefulsets-differ-from-deployments.yaml)
67. When should you use a DaemonSet?
**Answer:** A strong answer should define the concept, show a small Kubernetes and Docker implementation, explain failure behavior, and describe how it would be tested in CI.
Script: [Question 67 script](interview-scripts/067-when-should-you-use-a-daemonset.yaml)
68. When should you use an init container?
**Answer:** Build a minimal immutable image, pin dependencies, scan and sign it, publish it to a controlled registry, and deploy by digest when possible.
Script: [Question 68 script](interview-scripts/068-when-should-you-use-an-init-container.yaml)
69. What is a sidecar container?
**Answer:** Build a minimal immutable image, pin dependencies, scan and sign it, publish it to a controlled registry, and deploy by digest when possible.
Script: [Question 69 script](interview-scripts/069-what-is-a-sidecar-container.yaml)
70. How do Jobs retry failed work?
**Answer:** Retry only transient failures, use bounded exponential backoff with jitter, and return the final error when the retry budget is exhausted.
Script: [Question 70 script](interview-scripts/070-how-do-jobs-retry-failed-work.yaml)
71. How do you make a CronJob idempotent?
**Answer:** Make the operation converge on the declared state and check the current state before mutating it, so a second run produces no unnecessary change.
Script: [Question 71 script](interview-scripts/071-how-do-you-make-a-cronjob-idempotent.yaml)
72. What is a ServiceAccount?
**Answer:** Define the smallest required traffic path, restrict it with policy and identity, and verify connectivity from the same network boundary as the workload.
Script: [Question 72 script](interview-scripts/072-what-is-a-serviceaccount.yaml)
73. What is RBAC?
**Answer:** Apply least privilege, isolate trust boundaries, validate policy in CI or admission, and record auditable changes.
Script: [Question 73 script](interview-scripts/073-what-is-rbac.yaml)
74. Explain Role and ClusterRole.
**Answer:** Extract the behavior behind a small documented interface, keep inputs and outputs explicit, and test the reusable unit independently.
Script: [Question 74 script](interview-scripts/074-explain-role-and-clusterrole.yaml)
75. Explain RoleBinding and ClusterRoleBinding.
**Answer:** Extract the behavior behind a small documented interface, keep inputs and outputs explicit, and test the reusable unit independently.
Script: [Question 75 script](interview-scripts/075-explain-rolebinding-and-clusterrolebinding.yaml)
76. How do you inspect resource usage?
**Answer:** Declare requests and limits, measure real usage, set explicit capacity bounds, and test behavior under saturation and recovery.
Script: [Question 76 script](interview-scripts/076-how-do-you-inspect-resource-usage.yaml)
77. What is a namespace ResourceQuota?
**Answer:** Declare requests and limits, measure real usage, set explicit capacity bounds, and test behavior under saturation and recovery.
Script: [Question 77 script](interview-scripts/077-what-is-a-namespace-resourcequota.yaml)
78. What is a LimitRange?
**Answer:** Declare requests and limits, measure real usage, set explicit capacity bounds, and test behavior under saturation and recovery.
Script: [Question 78 script](interview-scripts/078-what-is-a-limitrange.yaml)
79. How does Helm templating work?
**Answer:** A strong answer should define the concept, show a small Kubernetes and Docker implementation, explain failure behavior, and describe how it would be tested in CI.
Script: [Question 79 script](interview-scripts/079-how-does-helm-templating-work.yaml)
80. How do you lint and render a Helm chart?
**Answer:** Automate syntax, static analysis, unit, and integration checks in CI; fail early and publish useful diagnostics as artifacts.
Script: [Question 80 script](interview-scripts/080-how-do-you-lint-and-render-a-helm-chart.yaml)

## Advanced: 81-120

81. Design a highly available Kubernetes control plane.
**Answer:** A strong answer should define the concept, show a small Kubernetes and Docker implementation, explain failure behavior, and describe how it would be tested in CI.
Script: [Question 81 script](interview-scripts/081-design-a-highly-available-kubernetes-control-plane.yaml)
82. How does etcd quorum affect availability?
**Answer:** A strong answer should define the concept, show a small Kubernetes and Docker implementation, explain failure behavior, and describe how it would be tested in CI.
Script: [Question 82 script](interview-scripts/082-how-does-etcd-quorum-affect-availability.yaml)
83. How do you back up and restore etcd?
**Answer:** Keep the previous known-good version, validate the replacement, and automate a tested rollback or restore path with clear ownership and audit output.
Script: [Question 83 script](interview-scripts/083-how-do-you-back-up-and-restore-etcd.yaml)
84. How do you upgrade a production cluster safely?
**Answer:** A strong answer should define the concept, show a small Kubernetes and Docker implementation, explain failure behavior, and describe how it would be tested in CI.
Script: [Question 84 script](interview-scripts/084-how-do-you-upgrade-a-production-cluster-safely.yaml)
85. How do you drain a node without violating availability?
**Answer:** A strong answer should define the concept, show a small Kubernetes and Docker implementation, explain failure behavior, and describe how it would be tested in CI.
Script: [Question 85 script](interview-scripts/085-how-do-you-drain-a-node-without-violating-availability.yaml)
86. How do you spread replicas across zones?
**Answer:** A strong answer should define the concept, show a small Kubernetes and Docker implementation, explain failure behavior, and describe how it would be tested in CI.
Script: [Question 86 script](interview-scripts/086-how-do-you-spread-replicas-across-zones.yaml)
87. Explain pod affinity and anti-affinity.
**Answer:** A strong answer should define the concept, show a small Kubernetes and Docker implementation, explain failure behavior, and describe how it would be tested in CI.
Script: [Question 87 script](interview-scripts/087-explain-pod-affinity-and-anti-affinity.yaml)
88. What are topology spread constraints?
**Answer:** Emit structured, correlation-aware telemetry with enough context to diagnose duration, failures, deployment version, and affected environment.
Script: [Question 88 script](interview-scripts/088-what-are-topology-spread-constraints.yaml)
89. How do taints and tolerations support isolation?
**Answer:** Define the smallest required traffic path, restrict it with policy and identity, and verify connectivity from the same network boundary as the workload.
Script: [Question 89 script](interview-scripts/089-how-do-taints-and-tolerations-support-isolation.yaml)
90. How do you design separate system and workload node pools?
**Answer:** A strong answer should define the concept, show a small Kubernetes and Docker implementation, explain failure behavior, and describe how it would be tested in CI.
Script: [Question 90 script](interview-scripts/090-how-do-you-design-separate-system-and-workload-node-poo.yaml)
91. How do cluster and node autoscaling interact?
**Answer:** Declare requests and limits, measure real usage, set explicit capacity bounds, and test behavior under saturation and recovery.
Script: [Question 91 script](interview-scripts/091-how-do-cluster-and-node-autoscaling-interact.yaml)
92. How do you prevent autoscaling oscillation?
**Answer:** Declare requests and limits, measure real usage, set explicit capacity bounds, and test behavior under saturation and recovery.
Script: [Question 92 script](interview-scripts/092-how-do-you-prevent-autoscaling-oscillation.yaml)
93. Design an SLO-driven rollout strategy.
**Answer:** Check a meaningful dependency or application endpoint, fail the operation when the check fails, and use the result to stop or roll back promotion.
Script: [Question 93 script](interview-scripts/093-design-an-slo-driven-rollout-strategy.yaml)
94. How do you implement canary deployment?
**Answer:** Bound concurrency, preserve a small failure domain, verify health between batches, and stop promotion when the error budget is exceeded.
Script: [Question 94 script](interview-scripts/094-how-do-you-implement-canary-deployment.yaml)
95. How do you implement blue-green deployment?
**Answer:** Bound concurrency, preserve a small failure domain, verify health between batches, and stop promotion when the error budget is exceeded.
Script: [Question 95 script](interview-scripts/095-how-do-you-implement-blue-green-deployment.yaml)
96. How do you combine readiness gates with traffic shifting?
**Answer:** Check a meaningful dependency or application endpoint, fail the operation when the check fails, and use the result to stop or roll back promotion.
Script: [Question 96 script](interview-scripts/096-how-do-you-combine-readiness-gates-with-traffic-shiftin.yaml)
97. How do you design a multi-tenant cluster?
**Answer:** A strong answer should define the concept, show a small Kubernetes and Docker implementation, explain failure behavior, and describe how it would be tested in CI.
Script: [Question 97 script](interview-scripts/097-how-do-you-design-a-multi-tenant-cluster.yaml)
98. How do namespaces, RBAC, quotas, and NetworkPolicies combine?
**Answer:** Define the smallest required traffic path, restrict it with policy and identity, and verify connectivity from the same network boundary as the workload.
Script: [Question 98 script](interview-scripts/098-how-do-namespaces-rbac-quotas-and-networkpolicies-combi.yaml)
99. How do you enforce Pod Security Standards?
**Answer:** Apply least privilege, isolate trust boundaries, validate policy in CI or admission, and record auditable changes.
Script: [Question 99 script](interview-scripts/099-how-do-you-enforce-pod-security-standards.yaml)
100. How do you prevent privileged containers?
**Answer:** Apply least privilege, isolate trust boundaries, validate policy in CI or admission, and record auditable changes.
Script: [Question 100 script](interview-scripts/100-how-do-you-prevent-privileged-containers.yaml)
101. How do you secure the container supply chain?
**Answer:** Apply least privilege, isolate trust boundaries, validate policy in CI or admission, and record auditable changes.
Script: [Question 101 script](interview-scripts/101-how-do-you-secure-the-container-supply-chain.yaml)
102. Why use digest-pinned images?
**Answer:** Build a minimal immutable image, pin dependencies, scan and sign it, publish it to a controlled registry, and deploy by digest when possible.
Script: [Question 102 script](interview-scripts/102-why-use-digest-pinned-images.yaml)
103. How do image signing and admission verification work?
**Answer:** Build a minimal immutable image, pin dependencies, scan and sign it, publish it to a controlled registry, and deploy by digest when possible.
Script: [Question 103 script](interview-scripts/103-how-do-image-signing-and-admission-verification-work.yaml)
104. How do you design private registry access?
**Answer:** Build a minimal immutable image, pin dependencies, scan and sign it, publish it to a controlled registry, and deploy by digest when possible.
Script: [Question 104 script](interview-scripts/104-how-do-you-design-private-registry-access.yaml)
105. How do you use workload identity on Azure?
**Answer:** Use provider-native identity with least privilege, explicit environment boundaries, tagging, policy controls, and repeatable infrastructure definitions.
Script: [Question 105 script](interview-scripts/105-how-do-you-use-workload-identity-on-azure.yaml)
106. How do you use IAM roles for service accounts on AWS?
**Answer:** Extract the behavior behind a small documented interface, keep inputs and outputs explicit, and test the reusable unit independently.
Script: [Question 106 script](interview-scripts/106-how-do-you-use-iam-roles-for-service-accounts-on-aws.yaml)
107. How do you design AKS networking?
**Answer:** Define the smallest required traffic path, restrict it with policy and identity, and verify connectivity from the same network boundary as the workload.
Script: [Question 107 script](interview-scripts/107-how-do-you-design-aks-networking.yaml)
108. How do you design EKS networking?
**Answer:** Define the smallest required traffic path, restrict it with policy and identity, and verify connectivity from the same network boundary as the workload.
Script: [Question 108 script](interview-scripts/108-how-do-you-design-eks-networking.yaml)
109. How do you connect on-premises clusters to cloud services?
**Answer:** Define the smallest required traffic path, restrict it with policy and identity, and verify connectivity from the same network boundary as the workload.
Script: [Question 109 script](interview-scripts/109-how-do-you-connect-on-premises-clusters-to-cloud-servic.yaml)
110. How do you observe cluster, node, and application health?
**Answer:** Check a meaningful dependency or application endpoint, fail the operation when the check fails, and use the result to stop or roll back promotion.
Script: [Question 110 script](interview-scripts/110-how-do-you-observe-cluster-node-and-application-health.yaml)
111. How do you correlate traces with deployment versions?
**Answer:** Emit structured, correlation-aware telemetry with enough context to diagnose duration, failures, deployment version, and affected environment.
Script: [Question 111 script](interview-scripts/111-how-do-you-correlate-traces-with-deployment-versions.yaml)
112. How do you perform capacity planning?
**Answer:** Declare requests and limits, measure real usage, set explicit capacity bounds, and test behavior under saturation and recovery.
Script: [Question 112 script](interview-scripts/112-how-do-you-perform-capacity-planning.yaml)
113. How do you recover from a control-plane outage?
**Answer:** A strong answer should define the concept, show a small Kubernetes and Docker implementation, explain failure behavior, and describe how it would be tested in CI.
Script: [Question 113 script](interview-scripts/113-how-do-you-recover-from-a-control-plane-outage.yaml)
114. How do you recover from a registry outage?
**Answer:** Build a minimal immutable image, pin dependencies, scan and sign it, publish it to a controlled registry, and deploy by digest when possible.
Script: [Question 114 script](interview-scripts/114-how-do-you-recover-from-a-registry-outage.yaml)
115. How do you test backup restoration?
**Answer:** Automate syntax, static analysis, unit, and integration checks in CI; fail early and publish useful diagnostics as artifacts.
Script: [Question 115 script](interview-scripts/115-how-do-you-test-backup-restoration.yaml)
116. Explain Helm release history and rollback behavior.
**Answer:** Keep the previous known-good version, validate the replacement, and automate a tested rollback or restore path with clear ownership and audit output.
Script: [Question 116 script](interview-scripts/116-explain-helm-release-history-and-rollback-behavior.yaml)
117. How do you version and promote Helm charts?
**Answer:** A strong answer should define the concept, show a small Kubernetes and Docker implementation, explain failure behavior, and describe how it would be tested in CI.
Script: [Question 117 script](interview-scripts/117-how-do-you-version-and-promote-helm-charts.yaml)
118. How do you manage secrets in Helm without leaking them?
**Answer:** Keep the value in a protected secret store or workload identity, pass it at runtime, redact it from logs, and never commit it to source control.
Script: [Question 118 script](interview-scripts/118-how-do-you-manage-secrets-in-helm-without-leaking-them.yaml)
119. What failure modes exist in Docker-in-Docker CI?
**Answer:** Build a minimal immutable image, pin dependencies, scan and sign it, publish it to a controlled registry, and deploy by digest when possible.
Script: [Question 119 script](interview-scripts/119-what-failure-modes-exist-in-docker-in-docker-ci.yaml)
120. Design a secure, multi-region, observable Kubernetes platform with reversible releases.
**Answer:** Emit structured, correlation-aware telemetry with enough context to diagnose duration, failures, deployment version, and affected environment.
Script: [Question 120 script](interview-scripts/120-design-a-secure-multi-region-observable-kubernetes-plat.yaml)

## HackerRank-Style Platform Challenges: 121-150

121. Write a Dockerfile that uses a non-root user and minimal runtime image.
**Answer:** Use declarative manifests with pinned images, probes, resource controls, least-privilege identity, and a rollout strategy that can be observed and rolled back.
Script: [Question 121 script](interview-scripts/121-write-a-dockerfile-that-uses-a-non-root-user-and-minima.yaml)
122. Write a Dockerfile with a multi-stage build.
**Answer:** Separate validation, build, promotion, and verification jobs; use immutable artifacts, protected variables or OIDC, and manual approval for production.
Script: [Question 122 script](interview-scripts/122-write-a-dockerfile-with-a-multi-stage-build.yaml)
123. Write a Deployment with three replicas and a readiness probe.
**Answer:** Deploy an immutable version, run a health or smoke check, promote only on success, and invoke a tested rollback while preserving the failure in logs.
Script: [Question 123 script](interview-scripts/123-write-a-deployment-with-three-replicas-and-a-readiness.yaml)
124. Write a Service that selects only stable Pods.
**Answer:** Use declarative manifests with pinned images, probes, resource controls, least-privilege identity, and a rollout strategy that can be observed and rolled back.
Script: [Question 124 script](interview-scripts/124-write-a-service-that-selects-only-stable-pods.yaml)
125. Mount one ConfigMap key as a file.
**Answer:** Implement the solution with validated inputs, deterministic behavior, clear failure handling, tests, and an example execution command for Kubernetes/Docker.
Script: [Question 125 script](interview-scripts/125-mount-one-configmap-key-as-a-file.yaml)
126. Inject a Secret as an environment variable without committing plaintext.
**Answer:** Parse with the platform's structured data tool, validate required fields and types at the boundary, and return a clear nonzero failure for malformed input.
Script: [Question 126 script](interview-scripts/126-inject-a-secret-as-an-environment-variable-without-comm.yaml)
127. Write a Job that retries a migration three times.
**Answer:** Separate validation, build, promotion, and verification jobs; use immutable artifacts, protected variables or OIDC, and manual approval for production.
Script: [Question 127 script](interview-scripts/127-write-a-job-that-retries-a-migration-three-times.yaml)
128. Write a non-overlapping CronJob for a nightly report.
**Answer:** Separate validation, build, promotion, and verification jobs; use immutable artifacts, protected variables or OIDC, and manual approval for production.
Script: [Question 128 script](interview-scripts/128-write-a-non-overlapping-cronjob-for-a-nightly-report.yaml)
129. Add CPU and memory requests and limits to a Deployment.
**Answer:** Deploy an immutable version, run a health or smoke check, promote only on success, and invoke a tested rollback while preserving the failure in logs.
Script: [Question 129 script](interview-scripts/129-add-cpu-and-memory-requests-and-limits-to-a-deployment.yaml)
130. Write a liveness probe for a stuck HTTP process.
**Answer:** Implement the solution with validated inputs, deterministic behavior, clear failure handling, tests, and an example execution command for Kubernetes/Docker.
Script: [Question 130 script](interview-scripts/130-write-a-liveness-probe-for-a-stuck-http-process.yaml)
131. Write an HPA scaling between two and ten replicas at 70% CPU.
**Answer:** Implement the solution with validated inputs, deterministic behavior, clear failure handling, tests, and an example execution command for Kubernetes/Docker.
Script: [Question 131 script](interview-scripts/131-write-an-hpa-scaling-between-two-and-ten-replicas-at-70.yaml)
132. Write an Ingress route for `/api` with TLS.
**Answer:** Use explicit authentication, timeouts, status handling, pagination, rate-limit handling, and structured response validation; never place credentials in source.
Script: [Question 132 script](interview-scripts/132-write-an-ingress-route-for-api-with-tls.yaml)
133. Write a default-deny NetworkPolicy and an API allow rule.
**Answer:** Use explicit authentication, timeouts, status handling, pagination, rate-limit handling, and structured response validation; never place credentials in source.
Script: [Question 133 script](interview-scripts/133-write-a-default-deny-networkpolicy-and-an-api-allow-rul.yaml)
134. Write a PVC and mount it at `/var/lib/app`.
**Answer:** Implement the solution with validated inputs, deterministic behavior, clear failure handling, tests, and an example execution command for Kubernetes/Docker.
Script: [Question 134 script](interview-scripts/134-write-a-pvc-and-mount-it-at-var-lib-app.yaml)
135. Write a PodDisruptionBudget preserving one replica.
**Answer:** Use declarative manifests with pinned images, probes, resource controls, least-privilege identity, and a rollout strategy that can be observed and rolled back.
Script: [Question 135 script](interview-scripts/135-write-a-poddisruptionbudget-preserving-one-replica.yaml)
136. Write a zero-unavailable rolling update.
**Answer:** Implement the solution with validated inputs, deterministic behavior, clear failure handling, tests, and an example execution command for Kubernetes/Docker.
Script: [Question 136 script](interview-scripts/136-write-a-zero-unavailable-rolling-update.yaml)
137. Template an image repository and tag with Helm values.
**Answer:** Use declarative manifests with pinned images, probes, resource controls, least-privilege identity, and a rollout strategy that can be observed and rolled back.
Script: [Question 137 script](interview-scripts/137-template-an-image-repository-and-tag-with-helm-values.yaml)
138. Write Helm helpers for stable names and labels.
**Answer:** Use declarative manifests with pinned images, probes, resource controls, least-privilege identity, and a rollout strategy that can be observed and rolled back.
Script: [Question 138 script](interview-scripts/138-write-helm-helpers-for-stable-names-and-labels.yaml)
139. Write a Helm test Pod for a Service endpoint.
**Answer:** Test the happy path, invalid input, timeout, retry exhaustion, and partial failure with mocks for external systems and an assertion on the final result.
Script: [Question 139 script](interview-scripts/139-write-a-helm-test-pod-for-a-service-endpoint.yaml)
140. Spread replicas across availability zones.
**Answer:** Implement the solution with validated inputs, deterministic behavior, clear failure handling, tests, and an example execution command for Kubernetes/Docker.
Script: [Question 140 script](interview-scripts/140-spread-replicas-across-availability-zones.yaml)
141. Write pod anti-affinity for same-application replicas.
**Answer:** Use declarative manifests with pinned images, probes, resource controls, least-privilege identity, and a rollout strategy that can be observed and rolled back.
Script: [Question 141 script](interview-scripts/141-write-pod-anti-affinity-for-same-application-replicas.yaml)
142. Write taints and tolerations for a dedicated node pool.
**Answer:** Implement the solution with validated inputs, deterministic behavior, clear failure handling, tests, and an example execution command for Kubernetes/Docker.
Script: [Question 142 script](interview-scripts/142-write-taints-and-tolerations-for-a-dedicated-node-pool.yaml)
143. Write a restricted security context with dropped capabilities.
**Answer:** Implement the solution with validated inputs, deterministic behavior, clear failure handling, tests, and an example execution command for Kubernetes/Docker.
Script: [Question 143 script](interview-scripts/143-write-a-restricted-security-context-with-dropped-capabi.yaml)
144. Write a namespace ResourceQuota.
**Answer:** Express the desired state with typed inputs, stable addresses, policy validation, protected state, and a reviewed plan before apply.
Script: [Question 144 script](interview-scripts/144-write-a-namespace-resourcequota.yaml)
145. Write a LimitRange with default requests and limits.
**Answer:** Implement the solution with validated inputs, deterministic behavior, clear failure handling, tests, and an example execution command for Kubernetes/Docker.
Script: [Question 145 script](interview-scripts/145-write-a-limitrange-with-default-requests-and-limits.yaml)
146. Write a canary Service selecting `track: canary`.
**Answer:** Deploy an immutable version, run a health or smoke check, promote only on success, and invoke a tested rollback while preserving the failure in logs.
Script: [Question 146 script](interview-scripts/146-write-a-canary-service-selecting-track-canary.yaml)
147. Write a ServiceAccount for cloud workload identity.
**Answer:** Parse the input into structured records, use a map or counter for aggregation, sort only when ranking is required, and test empty, duplicate, and boundary inputs.
Script: [Question 147 script](interview-scripts/147-write-a-serviceaccount-for-cloud-workload-identity.yaml)
148. Pin an image by digest to prevent tag drift.
**Answer:** Use declarative manifests with pinned images, probes, resource controls, least-privilege identity, and a rollout strategy that can be observed and rolled back.
Script: [Question 148 script](interview-scripts/148-pin-an-image-by-digest-to-prevent-tag-drift.yaml)
149. Write a backup CronJob with least privilege.
**Answer:** Separate validation, build, promotion, and verification jobs; use immutable artifacts, protected variables or OIDC, and manual approval for production.
Script: [Question 149 script](interview-scripts/149-write-a-backup-cronjob-with-least-privilege.yaml)
150. Build a Helm application with probes, autoscaling, policy, security, and rollback.
**Answer:** Deploy an immutable version, run a health or smoke check, promote only on success, and invoke a tested rollback while preserving the failure in logs.
Script: [Question 150 script](interview-scripts/150-build-a-helm-application-with-probes-autoscaling-policy.yaml)

## Executable Answers

- [Beginner answers](interview-answers/beginner.yaml): a basic replicated Deployment.
- [Intermediate answers](interview-answers/intermediate.yaml): probes and resource governance.
- [Advanced answers](interview-answers/advanced.yaml): autoscaling and disruption protection.
