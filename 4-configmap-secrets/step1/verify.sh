#!/bin/bash
if [[ ! -e "/tmp/god" ]]; then
  kubectl get cm nginx-proxy-conf -n default && grep 1 /tmp/res-step1 && grep -i proxy /tmp/res-step1
fi