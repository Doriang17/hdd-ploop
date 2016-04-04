echo "vmid"
read vmid
mkdir /$vmid
mount -t ploop $vmid/root.hdd/root.hdd /$vmid
cd /home
tar -I pigz -cvf backup_$vmid.tar.gz /$vmid/*
echo "ip ?"
read ip
echo " folder ?"
read folder
rsync -i -a backup_$vmid.tar.gz root@$ip:/$folder --stats --progress
umount /tmp/$vmid
