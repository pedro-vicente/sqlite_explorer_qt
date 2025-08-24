#!/bin/bash

set -e
mkdir -p build/sqlite_explorer

remote=$(git config --get remote.origin.url)
echo "remote repository: $remote"

pushd build/sqlite_explorer

if [[ "$OSTYPE" == "msys" || "$OSTYPE" == "cygwin" ]]; then
    cmake ../../  -DCMAKE_POLICY_VERSION_MINIMUM=3.16
elif [[ "$OSTYPE" == "darwin"* ]]; then
    cmake ../../ -DCMAKE_POLICY_VERSION_MINIMUM=3.16
elif [[ "$OSTYPE" == "linux-gnu"* ]]; then
    if command -v apt-get &> /dev/null; then
        echo "Checking for required packages..."
        sudo apt-get update
        sudo apt-get install -y build-essential cmake pkg-config
        sudo apt-get install -y qt6-base-dev qt6-base-dev-tools libqt6sql6-dev
        sudo apt-get install -y libsqlite3-dev
        sudo apt-get install -y "^libxcb.*" libx11-xcb-dev libglu1-mesa-dev libxrender-dev libxi-dev libgl1-mesa-dev
    fi
    cmake ../../  -DCMAKE_POLICY_VERSION_MINIMUM=3.16
fi

cmake --build . --config Debug

popd

echo "Executable location:"
if [[ "$OSTYPE" == "msys" || "$OSTYPE" == "cygwin" ]]; then
    echo "  build/sqlite_explorer/Debug/sqlite_explorer.exe"
elif [[ "$OSTYPE" == "darwin"* ]]; then
    echo "  build/sqlite_explorer/sqlite_explorer.app"
else
    echo "  build/sqlite_explorer/sqlite_explorer"
fi