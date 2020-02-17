#!/bin/bash
if [-f/etc/lsb-release]
then
  echo "OS:'cat /etc/lsb-release'">>myfile
fi
if [-f/etc/shells]
then
  echo "available shell:">>myfile
  cat /etc/shells>>myfile
fi
if [-f/etc/sysconfig/home]
 then
  echo "----------------------------------------">>myfile
  echo "computer mouse information">>myfile
  echo "----------------------------------------">>myfile
  cat /etc/sysconfig/mouse>>myfile
fi 
echo "--------------------------------------------">>myfile
echo "computer cpu info">>myfile
cat /proc/cpuinfo>>myfile
echo "---------------------------------------">>myfile
echo "computer memory info:">>myfile
echo "-------------------------------------">>myfile
cat /proc/meminfo>>myfile
if [-d/proc/ide/hda]
 then 
  echo "---------------------------------">>myfile
  echo "harddisk info: ">>myfile
  echo "model :cat/proc/ide/hda/model">>myfile
  echo "driver :'cat /proc/ide/hda/driver">>myfile
  echo "cache size:'cat/proc/ide/hda/cache:'">>myfile
fi 
echo "-----------------------------------">>myfile
echo "file system(mount):">>myfile
echo "--------------------------">>myfile
cat /proc/mounts>>myfile
