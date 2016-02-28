#!/bin/sh

# Set up environment
apt-get -y install git g++ autoconf pkg-config libtool libjson-spirit-dev libreadline-dev \
    libmm-dev libdw-dev libssl-dev python-numpy uuid-dev clang-format-3.3 valgrind \
    python-pip python-xmlrunner default-jdk default-jre ant kcachegrind libboost-all-dev \
    libcrypto++-dev scons protobuf-compiler libprotobuf-dev protobuf-compiler

# Pip
pip install unittest-xml-reporting

# Install dependencies
cd "$(dirname "$0")"
python ./dependencies.py
cd -
