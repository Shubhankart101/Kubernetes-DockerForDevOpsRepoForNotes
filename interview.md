# Kubernetes and Docker Interview Question Bank

This bank contains 120 questions organized by difficulty. Use the manifests in `scripts/` and the chart in `helm/devops-app/` to build practical answers.

## Beginner: 1-40

1. What problem does Docker solve?
2. What is a container image?
3. What is a container?
4. What is the difference between an image and a container?
5. What is a Dockerfile?
6. What does `FROM` do in a Dockerfile?
7. What is a Docker image layer?
8. Why should images use fixed tags?
9. What does `EXPOSE` document?
10. What is the purpose of `CMD`?
11. How does `ENTRYPOINT` differ from `CMD`?
12. What is a container registry?
13. What problem does Kubernetes solve?
14. What is a Kubernetes cluster?
15. What is a Kubernetes node?
16. What is a Pod?
17. Why is a Deployment preferred over a bare Pod?
18. What is a ReplicaSet?
19. What is a Kubernetes Service?
20. How does a Service find Pods?
21. What is a label?
22. What is a selector?
23. What is a namespace?
24. What is a ConfigMap?
25. What is a Secret?
26. How do you expose a container port?
27. What is the difference between ClusterIP and LoadBalancer?
28. What is a Job?
29. What is a CronJob?
30. What does `kubectl apply` do?
31. How do you inspect Pod logs?
32. How do you describe a failing Pod?
33. What is a readiness probe?
34. What is a liveness probe?
35. What is a resource request?
36. What is a resource limit?
37. What is Helm?
38. What is a Helm chart?
39. What is `values.yaml`?
40. How do you roll back a Deployment?

## Intermediate: 41-80

41. Explain Kubernetes control-plane components.
42. What does the API server do?
43. What is stored in etcd?
44. What does the scheduler consider when placing a Pod?
45. What does the controller manager reconcile?
46. How does kubelet manage a Pod?
47. How does CoreDNS support Service discovery?
48. Explain a Deployment rolling update.
49. What are `maxSurge` and `maxUnavailable`?
50. How do you pause and resume a rollout?
51. How do you debug `CrashLoopBackOff`?
52. How do you debug `ImagePullBackOff`?
53. How do requests and limits affect scheduling?
54. What is a HorizontalPodAutoscaler?
55. What metrics can drive an HPA?
56. What is a PodDisruptionBudget?
57. What is an Ingress?
58. How does an ingress controller work?
59. What is a NetworkPolicy?
60. What happens when no NetworkPolicy selects a Pod?
61. How do you mount a ConfigMap as a file?
62. How should Secrets be handled in production?
63. What is a PersistentVolume?
64. What is a PersistentVolumeClaim?
65. Explain ReadWriteOnce and ReadWriteMany.
66. How do StatefulSets differ from Deployments?
67. When should you use a DaemonSet?
68. When should you use an init container?
69. What is a sidecar container?
70. How do Jobs retry failed work?
71. How do you make a CronJob idempotent?
72. What is a ServiceAccount?
73. What is RBAC?
74. Explain Role and ClusterRole.
75. Explain RoleBinding and ClusterRoleBinding.
76. How do you inspect resource usage?
77. What is a namespace ResourceQuota?
78. What is a LimitRange?
79. How does Helm templating work?
80. How do you lint and render a Helm chart?

## Advanced: 81-120

81. Design a highly available Kubernetes control plane.
82. How does etcd quorum affect availability?
83. How do you back up and restore etcd?
84. How do you upgrade a production cluster safely?
85. How do you drain a node without violating availability?
86. How do you spread replicas across zones?
87. Explain pod affinity and anti-affinity.
88. What are topology spread constraints?
89. How do taints and tolerations support isolation?
90. How do you design separate system and workload node pools?
91. How do cluster and node autoscaling interact?
92. How do you prevent autoscaling oscillation?
93. Design an SLO-driven rollout strategy.
94. How do you implement canary deployment?
95. How do you implement blue-green deployment?
96. How do you combine readiness gates with traffic shifting?
97. How do you design a multi-tenant cluster?
98. How do namespaces, RBAC, quotas, and NetworkPolicies combine?
99. How do you enforce Pod Security Standards?
100. How do you prevent privileged containers?
101. How do you secure the container supply chain?
102. Why use digest-pinned images?
103. How do image signing and admission verification work?
104. How do you design private registry access?
105. How do you use workload identity on Azure?
106. How do you use IAM roles for service accounts on AWS?
107. How do you design AKS networking?
108. How do you design EKS networking?
109. How do you connect on-premises clusters to cloud services?
110. How do you observe cluster, node, and application health?
111. How do you correlate traces with deployment versions?
112. How do you perform capacity planning?
113. How do you recover from a control-plane outage?
114. How do you recover from a registry outage?
115. How do you test backup restoration?
116. Explain Helm release history and rollback behavior.
117. How do you version and promote Helm charts?
118. How do you manage secrets in Helm without leaking them?
119. What failure modes exist in Docker-in-Docker CI?
120. Design a secure, multi-region, observable Kubernetes platform with reversible releases.

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
