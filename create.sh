#!/bin/bash
#!This is a shell script to finish the folders tasks.
rm -rf /home/gec/mmb/1
mkdir /home/gec/mmb/1
cd /home/gec/mmb/1
echo 'The current path is :';pwd
echo '********'
for i in 1 2 3 4 5 6 7 8 9 10
do
    #ls
    echo '++'
    let result=i%2
    if [ $result -eq 0 ]
    then
       mkdir $i
       #echo "mkdir $i finished"
       cd $i
       #echo "cd $i finished"
       a=1000
       while [ $a -gt 0 ]
       do
           echo '--'
           #echo $a
           mkdir $a
           let a--
           #a = $a-1
       done
       echo '1000 filefolders created successfully'
       cd .. #exit
       #echo "exit $i finished"
    else
       mkdir $i
       #echo "mkdir finished"
    fi
done
cd ..
ls -lR|grep "^d"|wc -l
