#! /usr/bin/env bash
set -xe

RELEASE=$1
PACKAGE="ec2-expire-snapshots"

git clone https://github.com/amontalban/${PACKAGE}.git
cd ${PACKAGE}
pdebuild --use-pdebuild-internal -- \
--basetgz /var/cache/pbuilder/debian-${RELEASE}.tgz
