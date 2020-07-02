#!/bin/bash

set -e

path_to_submodule=$1

git submodule deinit -f $path_to_submodule
echo "completed git submodule deinit -f"

rm -rf .git/modules/$path_to_submodule
echo "completed rm -rf .git/modules"

git rm -f $path_to_submodule
echo "completed git rm -f"
