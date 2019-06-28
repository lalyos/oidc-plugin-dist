oidc-plugin-dist
===

This is the binary distribution for the oidc-plugin that provides OAuth2 / OpenID Connect for OpenFaaS, provided by OpenFaaS Ltd.

## Getting started

Run the binary manually - either `oidc-plugin-darwin` for MacOS, or `oidc-plugin-linux` for Linux.

You can also deploy to Kubernetes using [YAML files](./yaml/)

* Edit `oidc-plugin-ingress.yaml` to set your DNS address for the plugin
* Edit `oidc-plugin-dep.yaml` to set your OAuth configuration

Then apply with `kubectl apply -f ./yaml/`

For more, see: [Docs: authentication](https://docs.openfaas.com/reference/authentication/)
