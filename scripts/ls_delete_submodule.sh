#!/bin/bash

set -e

submodule_name=$1

git submodule deinit -f $submodule_name
echo "completed git submodule deinit -f"
git rm -f $submodule_name
echo "completed git rm -f"
git rm -f --cached $submodule_name
echo "completed git rm -f --cached"
rm -rf .git/modules/$submodule_name
echo "completed rm -rf .git/modules"j
