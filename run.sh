#!/usr/bin/env bash

RESTART_LOG_PATH=${SS_HOME}/ssserver_restart.log 
SS_LOG_PATH=${SS_HOME}/ssserver.log 
TIME_STR=`date "+%Y-%m-%d %H:%M:%S"`
echo "${TIME_STR} restart again" >> $LOG_PATH

bash ${SS_HOME}/make_conf.sh > ${SS_HOME}/ss_conf.json

ssserver -c ${SS_HOME}/ss_conf.json start >> ${SS_LOG_PATH} 2>&1