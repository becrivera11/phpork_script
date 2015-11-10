#!/bin/sh
/opt/lampp/lampp start
/opt/lampp/bin/mysqldump -u root --no-create-info --complete-insert phpork movement transaction > /home/phpork/Desktop/backup.sql
chmod 777 /home/phpork/Desktop/backup.sql
mount /dev/sdb1 /mnt/db
cp /home/phpork/Desktop/backup.sql /mnt/db
chmod 777 /mnt/db/backup.sql
cp /mnt/db/backup.sql /run/media/phpork/KINGSTON
umount /mnt/db
