#!/bin/bash

cat <<EOT > /root/.vimrc
set expandtab
set tabstop=2
set shiftwidth=2
EOT

# init scenario
rm $0
bash /ks/k8s.sh

# scenario specific
wget https://github.com/derailed/k9s/releases/download/v0.32.5/k9s_linux_amd64.deb -O /tmp/k9s_linux_amd64.deb && dpkg -i /tmp/k9s_linux_amd64.deb

# mark init finished
touch /ks/.initfinished