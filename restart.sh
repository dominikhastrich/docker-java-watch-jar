#!/bin/bash
echo -e "\n---\n`date`: /restart.sh\n\nlet's get rolling ...\n`date`: killing all running processes of jar files\n" >> /tmp/app.log
ps -ef | grep "java -jar" | grep "jar" >> /tmp/app.log
ps -ef | grep "java -jar" | grep "jar" | awk '{print $2}' | xargs kill >> /tmp/app.log 2>&1
echo -e "\n\n`date`: start up target jar file\n\njava -jar /data/services/$TARGET_JAR $TARGET_ARGS" >> /tmp/app.log
java -jar /data/services/$TARGET_JAR $TARGET_ARGS >> /tmp/app.log 2>&1 &
echo -e "\n\n`date`: finished\n---\n" >> /tmp/app.log