#!/bin/bash

set -x # to test stderr output in /var/log/killercoda

kubectl apply -f pods/healthy-monolith.yaml
kubectl apply -f pods/pod-monolith.yaml
kubectl apply -f pods/secure-monolith.yaml