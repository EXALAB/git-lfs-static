#! /usr/bin/env bash

#Currently not working for mips

#How to use:

#Run: ./build_git.sh /diretory/to/work

export GOPATH=$1
cd $1
go get github.com/git-lfs/git-lfs
cd src/github.com/git-lfs/git-lfs

mkdir -p bin/arm
mkdir -p bin/arm64
mkdir -p bin/i386
mkdir -p bin/amd64

#mkdir -p bin/mipsel
#mkdir -p bin/mips64el

export LD_FLAGS="-w"
export EXTRA_LD_FLAGS="-static"
export GOOS=linux 

GOARCH=arm make
mv bin/git-lfs bin/arm
GOARCH=arm64 make
mv bin/git-lfs bin/arm64
GOARCH=386 make
mv bin/git-lfs bin/i386
GOARCH=amd64 make
mv bin/git-lfs bin/amd64

#GOARCH=mipsle make
#mv bin/git-lfs bin/mipsel
#GOARCH=mips64le make
#mv bin/git-lfs bin/mips64el


#Available GOARCH:

#386
#amd64
#amd64p32
#arm
#armbe
#arm64
#arm64be
#ppc64
#ppc64le
#mips
#mipsle
#mips64
#mips64le
#mips64p32
#mips64p32le
#ppc
#s390
#s390x
#sparc
#sparc64
