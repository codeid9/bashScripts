#!/bin/bash
if ! read -t 5 -p "Do you want to understand read command(y/n), you have 5 second to answer this question:  " ans
then
    echo
    echo "Time out!"
fi

read -p "Enter Your Username: " name 
read -s -p "Enter Your Password: " pass
echo -e -n "\nEnter fruits name: "
read -a fruits

echo "You said: $ans"
echo "Hello $name"
echo "Your Password is: $pass"
echo "${fruits[0]}"
echo "${fruits[1]}"


