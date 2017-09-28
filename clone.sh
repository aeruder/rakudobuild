#!/bin/bash

# Failed commands aborts script
set -e
# Uninitialized expansion aborts script
set -u
# Any command in a pipe failing aborts script
set -o pipefail

git clone https://github.com/MoarVM/MoarVM
git clone https://github.com/perl6/nqp
git clone https://github.com/rakudo/rakudo
