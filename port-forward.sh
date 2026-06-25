#!/bin/bash

kubectl port-forward service/argocd-server -n argocd 8080:443
