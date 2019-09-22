oidc-plugin-dist
===

This is the binary distribution for the oidc-plugin that provides OAuth2 / OpenID Connect for OpenFaaS, provided by OpenFaaS Ltd.

## Getting started

Run the binary manually - either `oidc-plugin-darwin` for MacOS, or `oidc-plugin-linux` for Linux.

You can also deploy to Kubernetes using [YAML files](./yaml/)

* Edit `oidc-plugin-ingress.yaml` to set your DNS address for the plugin
* Edit `oidc-plugin-dep.yaml` to set your OAuth configuration

Then apply with `kubectl apply -f ./yaml/`

## Switch gateway authentication url

Once the plugin is deployed, its time to change the gateway configuration, to actually use it.
If you used the [YAML files](./yaml/) to deploy the oidc-plugin, than you will have a new LoadBalancer type 
service deployed. So its available inside the cluster at http://oidc-plugin.openfaas:8080/validate

You can patch the gateway deployment, and change the corresponding env variable by:
```
kubectl patch -n openfaas deploy/gateway --patch '
{
  "spec": {
    "template": {
      "spec": {
        "containers": [
          {
            "env": [
              {
                "name": "auth_proxy_url",
                "value": "http://oidc-plugin.openfaas:8080/validate"
              }
            ],
            "name": "gateway"
          }
        ]
      }
    }
  }
}
'
```


## Troubleshooting

### Insecure TLS / self-signed

As of version 0.2.0, you can disable TLS verification by setting: "insecure_tls: true" as an environment variable.

### Get help

For more, see: [Docs: authentication](https://docs.openfaas.com/reference/authentication/)

[Join Slack](https://slack.openfaas.io/), or raise an issue.
