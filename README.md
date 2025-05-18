# jdmapp Helm Chart

This Helm Chart deploys a complete application stack consisting of a **frontend**, **backend**, and **database** in a Kubernetes cluster.

## Chart Structure

The chart provisions the following Kubernetes resources:

- **Frontend**:
  - `Deployment`
  - `Service`
  - `ConfigMap`
  - `Ingress`
- **Backend**:
  - `Deployment`
  - `Service`
  - `ConfigMap`
  - `Secret`
- **Database**:
  - `Deployment`
  - `Service`
  - `PersistentVolumeClaim`
  - `Secret`

## Prerequisites

Before deploying the chart, ensure you have:

1. Helm 3.x or newer installed.
2. Access to a Kubernetes cluster (e.g., Minikube, Kind, EKS, GKE, Civo).
3. A configured domain or the cluster's external IP to access the frontend.

## Installation

1. Clone the repository:

   ```bash
   git clone https://github.com/ronaldorodriguezbermudez/helm-chart-app.git
   cd helm-chart-app/jdmapp
   ```

2. Customize the `values.yaml` file to suit your needs. You can modify container images, database credentials, replica counts, and other settings.

3. Deploy the chart to your cluster:

   ```bash
   helm install jdmapp . --namespace jdmapp --create-namespace
   ```

4. Verify that all pods are running:

   ```bash
   kubectl get pods -n jdmapp
   ```
