#!/bin/bash
source .bashrc

vm_name=$1

yc compute instance create \
    --preemptible \
    --name $vm_name \
    --hostname $vm_name \
    --zone ${YC_ZONE} \
    --memory=16 \
    --cores=2 \
    --create-boot-disk `
        `image-folder-id=standard-images,`
        `image-family=ubuntu-2004-lts,`
        `type=network-hdd,`
        `size=30 \
    --network-interface subnet-name=${YC_SUBNET_NAME},nat-ip-version=ipv4 \
    --service-account-name ${YC_SA_NAME} \
    --metadata-from-file user-data=metadata.yaml