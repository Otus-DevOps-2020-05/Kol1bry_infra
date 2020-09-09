yc compute instance create \
  --name from-image \
  --hostname from-image \
  --memory=4 \
  --create-boot-disk image-id='fd8k7271n31fa567vf8r',size=10GB \
  --network-interface subnet-name=default-ru-central1-a,nat-ip-version=ipv4 \
  --metadata serial-port-enable=1 \
  --ssh-key /home/kolibry/.ssh/appuser.pub \
  --zone ru-central1-a
