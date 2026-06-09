#!/bin/bash

docker stop flaskapp || true

docker rm flaskapp || true

docker build -t flaskapp .

docker run -d \
-p 80:5000 \
--name flaskapp \
flaskapp
