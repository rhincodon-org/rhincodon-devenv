#!/bin/bash

_HOSTNAME=vm01
_MEMORY=4096
_CPUS=2
_SUBNET=192.168.50.
_IPADDRESS=${_SUBNET}100
_NET_LOCAL=devlocal

_vagranttemplate=../template/Vagrantfile
_vagrantfile=../vms/${_HOSTNAME}/Vagrantfile

mkdir ../vms/${_HOSTNAME}
cp ${_vagranttemplate} ${_vagrantfile}

sed -i -e "s/_HOSTNAME/${_HOSTNAME}/g" ${_vagrantfile}
sed -i -e "s/_MEMORY/${_MEMORY}/g" ${_vagrantfile}
sed -i -e "s/_CPUS/${_CPUS}/g" ${_vagrantfile}
sed -i -e "s/_IPADDRESS/${_IPADDRESS}/g" ${_vagrantfile}
sed -i -e "s/_NET_LOCAL/${_NET_LOCAL}/g" ${_vagrantfile}
