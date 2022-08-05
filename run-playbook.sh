#!/bin/bash

packageId=$1
tierFolder=$2
playbook=$3
logFile=$tierFolder/logs/process_run_$(date +"%Y_%m_%d_%I_%M_%p").log

echo "=> Starting process [$packageId]" >> $logFile
echo "" >> $logFile

ansible-playbook -i $tierFolder/hosts $tierFolder/$playbook >> $logFile

echo "=> Finishing process [$packageId]" >> $logFile
echo "" >> $logFile