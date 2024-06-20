#!/bin/bash

# this script ensures that k8s is running and working

rm $0

curl -sfL https://get.k3s.io | sh -

while [ ! -f /etc/rancher/k3s/k3s.yaml ]
do
  sleep 1
done

while ! kubectl get nodes | grep -w "Ready"; do
  echo "WAIT FOR NODES READY"
  sleep 1
done


touch /ks/.k8sfinished