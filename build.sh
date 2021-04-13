#!/bin/bash

export KERNELNAME=Excalibur

export LOCALVERSION=

export KBUILD_BUILD_USER=ExcaliburZx

export KBUILD_BUILD_HOST=FunProject

export TOOLCHAIN=clang

export DEVICES=lavender

source helper

gen_toolchain

send_msg "⚔️ Mulai menempa ${KERNELNAME} kernel ⚔️"

START=$(date +"%s")

for i in ${DEVICES//,/ }
do 

	build ${i} -oldcam
	build ${i} -newcam

done

END=$(date +"%s")
 
DIFF=$(( END - START ))
