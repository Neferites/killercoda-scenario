#!/bin/bash
if [[ "${GOD}" != "true" ]]; then
  grep -i "k config get-contexts\|kubectl config get-contexts\|k get config view\| kubectl get config view" /tmp/res-step2
else
 exit 0
fi