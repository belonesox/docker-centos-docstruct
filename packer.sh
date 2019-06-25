#!/bin/sh
export PACKER_LOG=1
export PACKER_LOG_PATH="packer.log"
#packer build -debug  template.json
packer build template.json
docker rmi $(docker images -f "dangling=true" -q)