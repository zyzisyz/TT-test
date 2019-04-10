#!/bin/bash

#*************************************************************************
#	> File Name: run.sh
#	> Author: Yang Zhang 
#	> Mail: zyziszy@foxmail.com 
#	> Created Time: Wed 10 Apr 2019 03:21:35 PM CST
# ************************************************************************/


if [ ! -d "model" ];then
	mkdir model
fi

for recipe in cnn TT;do
	python -u ${recipe}-mnist.py --batch-size=200 \
								 --epochs=2 
done
