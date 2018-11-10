#!/bin/sh
GITDIR=`dirname $0`/..
[ -e $GEM_HOME ] && ctags --languages=ruby -f ${GITDIR}/vendor.tags $GEM_HOME/
