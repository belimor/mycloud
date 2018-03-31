#!/bin/bash

# gcloud information
echo "###### Gcloud Information:"
which gcloud
sleep 5
echo "######"
gcloud config list
sleep 5
echo "######"
gcloud version
sleep 5
echo "######"
gcloud components list
sleep 5
echo "######"
gcloud compute instances list
