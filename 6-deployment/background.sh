#!/bin/bash

set -x # to test stderr output in /var/log/killercoda

kubectl create secret generic tls-certs --from-file=tls/
kubectl create configmap nginx-frontend-conf --from-file=configuration/nginx