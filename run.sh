#!/bin/sh

echo "OK, you're in"
mkdir -p /tmp
echo "container running ..." >> /tmp/app.log
echo `date` >>  /tmp/app.log
echo "check watchman trigger"
watchman trigger-list /data/services
echo "let's read the log"
tail -fn100 /tmp/app.log
