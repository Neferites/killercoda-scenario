#!/bin/bash
if [[ ! -e "/tmp/god" ]]; then
  kubectl get secrets tls-certs -n default && grep 4 /tmp/res-step2 && grep -iE '*.pem' /tmp/res-step2
fi