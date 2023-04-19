#!/bin/bash
set -euo pipefail

echo "Configuring the repository!"

git submodule update --init
cd lib/pico-sdk && git submodule update --init && cd ../..

echo "Done!"
echo "Deleting this file"

rm configure.sh
