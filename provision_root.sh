#!/bin/sh

echo "provision_root.sh"

yum -y update

LANG=C yum -y groupinstall "GNOME Desktop"

yum -y install git
