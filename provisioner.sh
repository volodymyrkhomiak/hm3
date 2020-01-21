sudo pvcreate /dev/sdc /dev/sdd /dev/sde /dev/sdf
sudo vgcreate vol1 /dev/sdc /dev/sdd
sudo vgcreate vol2 /dev/sde /dev/sdf
sudo lvcreate -n lvm1 -l 100%FREE vol1
sudo lvcreate -n lvm2 -l 100%FREE vol2
