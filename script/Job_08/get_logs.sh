#!/bin/zsh

last sarlas | wc -l > /home/sarlas/shell-exe/script/Job_08/number_connection-`date +%d-%m-%Y-%H:%M`
mkdir -p /home/sarlas/shell-exe/script/Job_08/Backup
tar -cvf /home/sarlas/shell-exe/script/Job_08/Backup/number_connection-`date +%d-%m-%Y-%H:%M`.tar /home/sarlas/shell-exe/script/Job_08/number_connection-`date +%d-%m-%Y-%H:%M`
rm /home/sarlas/shell-exe/script/Job_08/number_connection-`date +%d-%m-%Y-%H:%M`
