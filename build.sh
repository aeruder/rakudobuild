#!/bin/bash

# Failed commands aborts script
set -e
# Uninitialized expansion aborts script
set -u
# Any command in a pipe failing aborts script
set -o pipefail

(
cd MoarVM
git pull
git clean -X -d -f .
perl Configure.pl --prefix $HOME/.rakudo
make -j8
make install
)

(
cd nqp
git pull
git clean -X -d -f .
perl Configure.pl --prefix $HOME/.rakudo
make -j8
make install
)

(
cd rakudo
git pull
git clean -X -d -f .
perl Configure.pl --prefix $HOME/.rakudo
make -j8
make install
)
