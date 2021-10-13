#!/usr/bin/env bash

# install aws
sudo apt-get update
sudo apt-get install awscli -y
aws --version

aws configure set region eu-central-1 --profile max
aws configure set aws_access_key_id $ACCESS_KEY --profile max
aws configure set aws_secret_access_key $SECRET_ACCESS_KEY --profile max

export AWS_PROFILE=max