#!/bin/bash

set -x # to test stderr output in /var/log/killercoda

wget https://github.com/derailed/k9s/releases/download/v0.32.5/k9s_linux_amd64.deb -O /tmp/k9s_linux_amd64.deb && dpkg -i /tmp/k9s_linux_amd64.deb
kubectl create secret generic tls-certs --from-file=tls/
kubectl create configmap nginx-frontend-conf --from-file=configuration/nginx