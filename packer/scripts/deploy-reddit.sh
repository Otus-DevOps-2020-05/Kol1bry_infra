#!/bin/bash

apt-get install -y git

git clone -b monolith https://github.com/express42/reddit.git /home/ubuntu/reddit

cd /home/ubuntu/reddit && bundle install

