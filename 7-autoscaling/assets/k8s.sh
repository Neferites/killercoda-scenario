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

echo "source <(kubectl completion bash)" >> ~/.bashrc
echo "alias k=kubectl" >> ~/.bashrc
echo "complete -o default -F __start_kubectl k" >> ~/.bashrc
echo "alias k9s=\"k9s --kubeconfig /etc/rancher/k3s/k3s.yaml\"" >> ~/.bashrc

touch /ks/.k8sfinished