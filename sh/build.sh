#!/bin/bash

# http://wiki.octave.org/Talk:Build_from_source

apt-get update
apt-get install -y libtool
apt-get install -y autoconf
apt-get install -y make
apt-get install -y g++
apt-get install -y gfortran
apt-get install -y libblas-dev liblapack-dev
apt-get install -y libreadline-dev
apt-get install -y gperf
apt-get install -y bison
apt-get install -y sed
apt-get install -y mercurial

cd /octave
./bootstrap

cd /build
/octave/configure
make