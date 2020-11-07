#!/bin/bash                                                                                                                                                                                     
#Run as root!                                                                                                                                                                                   
                                                                                                                                                                                                
if [ "$(whoami)" != "root" ]; then                                                                                                                                                              
        echo "Script must be run as root!"                                                                                                                                                      
        exit 255                                                                                                                                                                                
else       
umount -R /.snapshots
umount -R /home/.snapshots
rm -r /.snapshots
rm -r /home/.snapshots
snapper -c root create-config /
snapper -c home create-config /home
mount -av
sed -i 's/TIMELINE_LIMIT_YEARLY="10"/TIMELINE_LIMIT_YEARLY="0"/g' /etc/snapper/configs/root
sed -i 's/TIMELINE_LIMIT_MONTHLY="10"/TIMELINE_LIMIT_MONTHLY="0"/g' /etc/snapper/configs/root
sed -i 's/TIMELINE_LIMIT_DAILY="10"/TIMELINE_LIMIT_DAILY="3"/g' /etc/snapper/configs/root
sed -i 's/TIMELINE_LIMIT_HOURLY="10"/TIMELINE_LIMIT_HOURLY="5"/g' /etc/snapper/configs/root
sed -i 's/TIMELINE_LIMIT_YEARLY="10"/TIMELINE_LIMIT_YEARLY="0"/g' /etc/snapper/configs/home
sed -i 's/TIMELINE_LIMIT_MONTHLY="10"/TIMELINE_LIMIT_MONTHLY="0"/g' /etc/snapper/configs/home
sed -i 's/TIMELINE_LIMIT_DAILY="10"/TIMELINE_LIMIT_DAILY="2"/g' /etc/snapper/configs/home
sed -i 's/TIMELINE_LIMIT_HOURLY="10"/TIMELINE_LIMIT_HOURLY="5"/g' /etc/snapper/configs/home
fi
