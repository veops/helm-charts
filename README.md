# Veops Helm Charts

This repository contains Helm charts for Veops project.

## Usage

[Helm](https://helm.sh/) must be installed to use the charts. Please refer to Helm's [documentation](https://helm.sh/docs/) to get started.

Once Helm is set up properly, add the repo as follows:

```bash
$ helm repo add veops https://github.com/veops/helm-charts
```

## Helm Charts
You can then run helm search repo  `veops` to see the charts.

### cmdb
The chart can be used to install [cmdb](https://github.com/veops/cmdb) in a Kubernetes cluster. More detailed documentation can be found in [cmdb chart directory](./charts/cmdb/README.md).

## Contributing

See [Contributing](./Contributing.md)

## License
[AGPL-3.0 license](./LICENSE)