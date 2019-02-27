#!/bin/sh

# 各自の環境に合わせて記述
CLASSPATH=/home/application/instantclient_18_3/ojdbc8.jar:.

export CLASSPATH
java $1
