echo "vmid"
read vmid
mkdir /$vmid
mount -t ploop $vmid/root.hdd/root.hdd /$vmid
cd /home
tar -I pigz -cvf backup_$vmid.tar.gz /$vmid/*
rsync -i -a backup_$vmid.tar.gz root@51.255.69.77:/var/lib/vz/dump/ --stats --progress
