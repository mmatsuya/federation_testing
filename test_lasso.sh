#!/bin/bash

set -x
set -e

echo "First running mod_auth_mellon tests"
./test_mellon.sh

echo "Next run lasso sha1 test."
py.test -v test_lasso-sha1.py --junit-xml=result_lasso-sha1.xml
