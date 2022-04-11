#!/bin/bash
#This script creates three files: file1.txt, file2.txt and file3.txt,
#changes the access permissions for files and copy them
#to the newly created directory named backup. Then it creates
#an archive named backup.tzr.gz and removes backup directory.

#Create file1.txt, file2.txt and file3.txt.
touch file1.txt
touch file2.txt
touch file3.txt

#Change access permissions of files. Allow the User to read, write
#and execute, allow the Group and Others to read the file.
chmod 744 file1.txt file2.txt file3.txt

#Create new directory named backup.
mkdir backup

#Copy file1.txt, file2.txt and file3.txt to the backup directory.
cp file1.txt file2.txt file3.txt backup

#Create tar.gz file named backup.tar.gz for directory backup.
tar -czf backup.tar.gz backup

#Remove the directory named backup and its content.
rm -R backup
