#!/bin/bash

helm repo add ingress-nginx https://kubernetes.github.io/ingress-nginx
helm repo add elastic https://helm.elastic.co
helm repo update
helm install ingress ingress-nginx/ingress-nginx
helm install elasticsearch elastic/elasticsearch