#!/bin/bash

# 首先能ping通
# ping raspberrypi.local

# 需要先清除~/.ssh/known_hosts 中 raspberrypi.local 的记录
ssh-keygen -R raspberrypi.local

# ansible-playbook play-book.yaml --extra-vars "@vars.yaml" -vvvv
ansible-playbook play-book.yaml --extra-vars "@vars.yaml"
