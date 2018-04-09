#!/bin/bash

echo "Enter new instance name"
read my_instance_name
gcloud compute instances create ${my_instance_name} --machine-type g1-small --zone us-west1-c --image-family ubuntu-1604-lts --image-project ubuntu-os-cloud
gcloud compute instances list
