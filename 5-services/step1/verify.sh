#!/bin/bash
if [[ ! -e "/tmp/god" ]]; then
  kubectl get svc monolith -n default && grep 3 /tmp/res-step1
fi
