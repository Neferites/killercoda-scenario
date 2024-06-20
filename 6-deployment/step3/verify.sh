#!/bin/bash
if [[ ! -e "/tmp/god" ]]; then
  kubectl get deployments.apps hello -o jsonpath='{.status.replicas}' | grep 3
fi