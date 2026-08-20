# Azure Kubernetes and Docker Use Cases

## 1. AKS platform foundation

- Provision an AKS cluster with private API access, managed identity, Azure CNI, and separate system and user node pools.
- Package workloads with Helm and deploy through GitHub Actions or Azure DevOps.
- Apply Azure Policy, Microsoft Entra integration, workload identity, and resource tagging.

## 2. Container registry and supply chain

- Build Docker images in a controlled pipeline and publish immutable tags to Azure Container Registry.
- Enable vulnerability scanning, image signing, retention policies, and promotion from dev to production.
- Use admission controls to block untrusted or high-risk images.

## 3. Application networking and observability

- Expose services through Application Gateway for Containers or an ingress controller with TLS from Key Vault.
- Use Azure Monitor, Container Insights, managed Prometheus, and Grafana for platform and workload signals.
- Define SLOs, alerts, dashboards, and runbooks for customer-facing services.

## 4. Resilience and operations

- Configure zone-aware node pools, pod disruption budgets, autoscaling, backup, and controlled upgrades.
- Test rollback, node failure, secret rotation, and regional recovery procedures.
- Keep cluster configuration declarative and reviewable in source control.
