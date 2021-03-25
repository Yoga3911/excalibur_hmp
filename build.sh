#!/bin/bash

export KERNELNAME=Excalibur

export LOCALVERSION=EAS

export KBUILD_BUILD_USER=@ExcaliburZx

export KBUILD_BUILD_HOST=

export TOOLCHAIN=clang

export DEVICES=lavender

source helper

gen_toolchain

send_msg "⏳ Mulai memasak ${KERNELNAME} ${LOCALVERSION} for ${DEVICES}... ⏳"

START=$(date +"%s")

for i in ${DEVICES//,/ }
do 

	build ${i} -oldcam


done

END=$(date +"%s")
 
DIFF=$(( END - START ))
