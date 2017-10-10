#!/bin/bash
#!It's a shell script to output a 9*9 multiple list.
pwd
echo 'This is a 9*9 multiple table'
for ((a=1;a<10;a++))
do 
    for ((b=1;b<10;b++))
    do
        if [ $a -ge $b ]
        then
            c=$[$a * $b]
            echo -n "$a*$b=$c "
        else
            echo -e "**\n"
            break
        fi 
    done 
done
echo -e "\n The last number a is $a,b is $b \n"
