#!/bin/bash
set -e

userDB=$1
hostDB=$2
port=$3
fileDB=$4

echo "Importando archivo: $fileDB"
echo "Host: $hostDB - Port: $port"
./mysqlsh --host=$hostDB --user=$userDB --port=$port --save-passwords=never --log-file=mysqlsh.log --log-sql=on --sql --file $fileDB
echo "Archivo $fileDB importado."
