#!/bin/bash

oldfile=mc_srv
newfile=backup.zip

month=`date +%B`
year=`date +%Y`

prefix="backup"

archivefile=$prefix.$month.$year.tar

# Check for existence of a compressed archive matching the naming convention
if [ -e $archivefile.gz ]
then
    echo -e "\e[1;33mfdmz17@script~\e[0m" Backup $archivefile arlready exist...
    echo -e "\e[1;33mfdmz17@script~\e[0m" Adding file $oldfile to existing backup
    # Uncompress the archive, because you can't add a file to a
    # compressed archive
    gunzip $archivefile.gz

    # Add the file to the archive
    tar --append --file=$archivefile $oldfile

    # Recompress the archive
    gzip $archivefile

# No existing archive - create a new one and add the file
else
    echo -e "\e[1;33mfdmz17@script~\e[0m" Creating new backup file '$archivefile'...
    tar --create --file=$archivefile $oldfile
    gzip $archivefile
fi

# Update the files outside the archive
mv $newfile $oldfile