#!/bin/sh
mount /dev/sdb1 /mnt/db
chmod 777 /home/phpork/Desktop/output.csv
cp /home/phpork/Desktop/output.csv /mnt/db
chmod 777 /mnt/db/output.csv
cp /mnt/db/output.csv /run/media/phpork/KINGSTON
umount /mnt/db
