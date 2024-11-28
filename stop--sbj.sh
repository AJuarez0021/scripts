#!/bin/bash

FILE_HOME="$PWD/target"

PID_PATH="$FILE_HOME/pid.file"
 
if [ ! -f "$PID_PATH" ]; then
   echo "Process Id FilePath($PID_PATH) Not found"
else
   echo  "`date` Stopping processId: " `cat $PID_PATH`
   kill $(cat $PID_PATH) 
   echo "`date` Waiting for the process to finish..."
   tail --pid=`cat $PID_PATH` -f /dev/null;
   rm -v "$PID_PATH"
fi
touch "$PID_PATH"

