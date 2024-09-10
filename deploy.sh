#!/bin/bash

# Check if AWS CLI is installed
if ! command -v aws &> /dev/null
then
  echo "AWS CLI not found. Installing AWS CLI..."
  sudo apt update
  sudo apt install curl unzip -y
  curl "https://awscli.amazonaws.com/awscli-exe-linux-x86_64.zip" -o "awscliv2.zip"
  unzip awscliv2.zip
  sudo ./aws/install
else
  echo "AWS CLI is already installed."
fi

#
