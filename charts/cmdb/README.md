# Veops CMDB Helm Chart

The helm chart installs [cmdb](https://github.com/veops/cmdb) in a Kubernetes cluster.

## Prerequisites
- Kubernetes 1.22+
- Helm 3.9+

## Installing the Chart

Add Veops Helm repository

```bash
$ helm repo add veops https://github.com/veops/cmdb-helm-charts
```

To install the chart with the release name `my-cmdb`, run the following command:

```bash
$ helm install my-cmdb veops/cmdb
```

## Configuration

TODO: