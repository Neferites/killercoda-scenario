#!/bin/bash
if [[ ! -e "/tmp/god" ]]; then
  grep 'tls-certs' /tmp/res-step3 && grep 'nginx-proxy-conf' /tmp/res-step3
fi