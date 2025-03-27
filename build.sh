#!/bin/bash
###
 # @Author: zzh weiersili2021@163.com
 # @Date: 2025-03-27 16:20:01
 # @LastEditors: zzh weiersili2021@163.com
 # @LastEditTime: 2025-03-27 16:31:40
 # @FilePath: /InternProject/build.sh
 # @Description: 
### 
echo "InternPorject Build Start"
WORK_DIR=$(pwd)
mkdir -p "$WORK_DIR/build"
go build -o "$WORK_DIR/build/output" main.go
cd "$WORK_DIR/build"
./output
echo "InternPorject Build End"
