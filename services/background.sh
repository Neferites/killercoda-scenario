#!/bin/bash

set -x # to test stderr output in /var/log/killercoda

kubectl create secret generic tls-certs --from-file=tls/
kubectl create configmap nginx-proxy-conf --from-file=proxy.conf
kubectl apply -f pods/healthy-monolith.yaml
kubectl apply -f pods/pod-monolith.yaml
kubectl apply -f pods/secure-monolith.yaml