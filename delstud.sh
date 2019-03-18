#!/usr/bin/env bash


read -p "First name: " fname
read -p "Last Name: " lname

grep -v "$fname $lname" ./students.ls > ./studtmp
cat ./studtmp > ./students.ls
rm ./studtmp
