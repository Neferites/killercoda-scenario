#!/bin/bash
if [[ ! -e "/tmp/god" ]]; then
  grep -i "k config get-contexts\|kubectl config get-contexts\|k get config view\| kubectl get config view" /tmp/res-step2
fi