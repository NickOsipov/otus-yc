STATIC_IP=$(yc vpc address create \
  --external-ipv4 zone=ru-central1-b \
  --format json | jq -r '.external_ipv4_address.address')

echo $STATIC_IP