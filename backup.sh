#!/bin/bash
declare -a worlds=(worlds)
backupdir=backup/
ext=.tar

hdateformat=$(date '+%Y-%m-%d-%H-%M-%S')H$ext
ddateformat=$(date '+%Y-%m-%d')D$ext
numworlds=${#worlds[@]}

    echo "Starting multiworld backup..."
 
    if [ -d $backupdir ] ; then
        sleep 0
    else
        mkdir -p $backupdir
    fi
    tar -C $backupdir cf $hdateformat plugins worlds
    cp $backupdir$hdateformat $backupdir$ddateformat]

    echo "Updated daily backup."

    find $backupdir/ -name *H$ext -mmin +1440 -exec rm {} \;
    find $backupdir/ -name *D$ext -mtime +14 -exec rm {} \;

    echo "Removed old backups." 
    echo "Backup complete."
exit 0