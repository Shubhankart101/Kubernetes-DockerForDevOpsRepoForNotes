# AWS Kubernetes and Docker Use Cases

## 1. EKS platform foundation

- Provision an EKS cluster with private subnets, managed node groups, IAM roles for service accounts, and separate workload capacity.
- Package workloads with Helm and deploy through GitHub Actions or AWS CodePipeline.
- Apply resource tagging, Kubernetes RBAC, AWS Organizations guardrails, and environment isolation.

## 2. Container registry and supply chain

- Build Docker images and publish immutable artifacts to Amazon ECR.
- Scan images, enforce retention policies, sign releases, and promote approved images between environments.
- Use admission policies to prevent privileged or unapproved workloads from running.

## 3. Application networking and observability

- Route traffic through the AWS Load Balancer Controller with private networking and ACM-managed TLS.
- Collect metrics, logs, and traces with CloudWatch, Amazon Managed Service for Prometheus, and Grafana.
- Define SLOs, alerts, dashboards, and incident runbooks for critical services.

## 4. Resilience and operations

- Use multiple Availability Zones, pod disruption budgets, cluster autoscaling, and managed node upgrades.
- Protect stateful workloads with EBS or EFS design, backup policies, and restore testing.
- Automate rollback, secret rotation, and disaster recovery validation from source-controlled configuration.
