#!/bin/bash

my_account="email@gmail.com"
my_region="us-west1"
my_zone="us-west1-b"

echo "== == =="
echo "Enter gmail account:"
read my_account
echo ""

gcloud config set account ${my_account}
gcloud config set compute/region ${my_region}
gcloud config set compute/zone ${my_zone}
#gcloud config set project PROJECT_ID

echo ""
echo "== == =="
echo "Gcloud configuration:"
gcloud config list
sleep 3

gcloud auth login
