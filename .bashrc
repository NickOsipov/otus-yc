export YC_SA_NAME=otus
export YC_NETWORK_NAME=otus-network
export YC_SUBNET_NAME=otus-subnet
export YC_FOLDER_ID=$(yc config get folder-id)
export YC_ZONE=ru-central1-a
export YC_SUBNET_RANGE="10.0.0.0/24"

function log() {
    echo $(date) "| INFO:" $@
}