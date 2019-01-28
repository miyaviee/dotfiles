#!/bin/sh
GITDIR=`dirname $0`/..
[ -e node_modules ] && ctags --languages=js -f ${GITDIR}/vendor.tags node_modules/
