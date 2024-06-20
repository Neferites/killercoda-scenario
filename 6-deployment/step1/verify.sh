#!/bin/bash
if [[ ! -e "/tmp/god" ]]; then
  grep -i "InvalidImageName\|Invalid" /tmp/res-step1
fi