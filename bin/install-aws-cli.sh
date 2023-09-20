#!/usr/bin/env bash

cd /workspace

rm -fr "./aws"
rm -fr "./awscliv2.zip"

curl "https://awscli.amazonaws.com/awscli-exe-linux-x86_64.zip" -o "awscliv2.zip"
unzip awscliv2.zip
sudo ./aws/install

aws sts get-caller-identity

cd $PROJECT_ROOT
