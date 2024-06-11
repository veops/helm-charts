# Veops CMDB Helm Chart

The helm chart installs [cmdb](https://github.com/veops/cmdb) in a Kubernetes cluster.

## Prerequisites
- Kubernetes 1.22+
- Helm 3.9+

## Installing the Chart

Add Veops Helm repository

```bash
$ helm repo add veops https://github.com/veops/helm-charts
```

To install the chart with the release name `my-cmdb`, run the following command:

```bash
$ helm install my-cmdb veops/cmdb
```

## Configuration

- Use existing mysql and redis

```bash
--set api.mysql.builtIn=false \
--set api.mysql.host=${your-mysql-host} \
--set api.mysql.port=${your-mysql-port} \
--set api.mysql.database=${your-mysql-database} \
--set api.mysql.user=${your-mysql-user} \
--set api.mysql.password=${your-mysql-password}
```

```bash
--set api.redis.builtIn=false \
--set api.redis.host=${your-mysql-host} \
--set api.redis.port=${your-mysql-port} \
--set api.redis.password=${your-mysql-password}
```