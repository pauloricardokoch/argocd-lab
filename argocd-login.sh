#!/bin/sh

argocd login localhost:8080 --insecure \
--username=admin \
--password=$(kubectl get secret argocd-initial-admin-secret -n argocd -o jsonpath="{.data.password}" | base64 -d)
