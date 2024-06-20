#!/bin/bash
[ if ${GOD:-} != "true"]; then
  grep -i "kubernetes-admin" /tmp/res-step1
else
 return 0
fi