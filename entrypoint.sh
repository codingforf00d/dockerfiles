#!/bin/sh

/app/chromedriver &

docker load < /app/7:3.tar && docker run 7:3

python3 /app/aaa.py