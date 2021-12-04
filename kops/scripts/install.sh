#!/bin/bash

#aws s3 mb s3://k8s-kops-k8s-bucket
export KOPS_STATE_STORE=s3://infoliontechpros.k8.local

kops create secret --name liontechpros.k8s.local sshpublickey admin -i ~/.ssh/id_rsa.pub
kops create cluster    liontechpros.k8s.local --zones us-east-2a --yes
kops update cluster
kops validate cluster