#!/usr/bin/env bash



read -p "Student First Name: " fname
read -p "Student Last Name: " lname

echo "$fname $lname" >> ./students.ls
