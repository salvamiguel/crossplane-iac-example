# Crossplane IaC Example
This repository is used alongside with [salvamiguel/crossplane-argocd-workshop](https://github.com/salvamiguel/crossplane-argocd-workshop) to demostrate a full GitOps workflow.

> [!NOTE]
> Go to [salvamiguel/crossplane-argocd-workshop](https://github.com/salvamiguel/crossplane-argocd-workshop) to see step-by-step instructions on how to deploy this setup.

Inside the ``infrastructure`` folder you can find ``default``, which contains the default infrastructure used in the workshop. In the same level you can find ``examples`` that has serveral examples of infrastructure definitions.

Follow instrucctions on the workshop repository. If you don't have time for that, just change the ``path`` value of your ``my-app.yaml`` to one of the folders inside ``examples``.


```yaml
source:
    repoURL: https://github.com/salvamiguel/crossplane-iac-example #
    targetRevision: HEAD
    path: infrastructure/examples/s3 #Choose between s3, eks and ha-ec2 examples.
```

For each example you have a README file that explains the Infrastructure to be deployed.

> [!WARNING]
> Some of the Infrastructure definitions in the examples folders may incur in some charges by AWS. Please delete the associated ArgoCD app to destroy all infrastructure as follows:
> ```bash
> kubectl delete -f infrastructure/my-app.yaml
> ```