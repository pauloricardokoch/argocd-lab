#!/bin/bash

# helm search repo argo/argo-cd --versions

helm --kube-context=kind-udemy-argocd upgrade argocd argo/argo-cd --version 8.6.0 \
--install \
--create-namespace -n argocd \
-f ./helm/argo-cd/argocd-values.yaml
