#!/usr/bin/env bash

## This Program needs root or user with permissions to use yum
# This is the Main File

f_chkfordia(){

sudo yum list installed -q 'dialog'
 if [ $? == 0 ]; then
      echo "dialog is installed"
 else echo "dialog requierd for running"
      read -p "Download & Install? y/n " ans

     if [ $ans == y ]; then 
       sudo yum install -y -q dialog
     else echo "Canceling program" 
          exit
     fi
 fi
}

f_chkfordia

dialog --title "Program" --menu "Choose an option" 20 60 18 "ADD Student" "Adding a student" "Delete Studant" "Deleting a student" "ADD Grade" "Adding a grade" "Student Avg" "Calculating Student Avg" "Max Avg" "The student with the highest avg" "Replace Grades" "Replacing grades for two students"

clear
