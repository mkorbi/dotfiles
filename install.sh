#!/usr/bin/env bash

# install aws
curl "https://awscli.amazonaws.com/awscli-exe-linux-x86_64.zip" -o "awscliv2.zip"
unzip awscliv2.zip
sudo ./aws/install
aws --version

aws configure set region eu-central-1 --profile max
aws configure set aws_access_key_id ${{ secrets.ACCESS_KEY }} --profile max
aws configure set aws_secret_access_key ${{ secrets.SECRET_ACCESS_KEY }} --profile max

export AWS_PROFILE=max