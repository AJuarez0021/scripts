#!/bin/bash

FILE_HOME="$PWD/target"
FILE_LOGS="$PWD/target/file.logs"
 
echo "Path $FILE_HOME"
 
PID_PATH="$FILE_HOME/pid.file"
touch "$PID_PATH"
if [ ! -f "$PID_PATH" ]; then
   echo "Process Id FilePath($PID_PATH) Not found"
   
else
  cd "$FILE_HOME/"
  COMPONENT_NAME=`ls *.jar`;

  echo "Start $COMPONENT_NAME"

  nohup java -jar "$FILE_HOME"/$COMPONENT_NAME > $FILE_LOGS 2>&1 & echo $! > "$FILE_HOME/pid.file" &

fi

