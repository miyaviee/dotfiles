#!/bin/sh
test -e $GEM_HOME && ctags --languages=ruby -f .git/vendor.tags $GEM_HOME
