#!/bin/bash

gcloud compute instances list
sleep 3
echo "Enter instance name to delete:"
read my_instance_name
echo "Enter instance zone:"
read my_instance_zone

gcloud compute instances delete ${my_instance_name} --zone ${my_instance_zone}
