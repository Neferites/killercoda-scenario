#!/bin/bash
if [[ ! -e "/tmp/god" ]]; then
  grep $(kubectl get secret mysql -o jsonpath='{.data.password}' | base64 -d) /tmp/res-step1
fi