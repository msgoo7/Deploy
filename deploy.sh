#!/bin/bash

whoami
w
echo "current working dirctory: $PWD"

echo "installing pre-requisites"
for a in `cat requirments.txt | tr ',' '\n'`;do yum install -y $a; done

echo "Deployment starting"
sleep 2

echo "Deployment in progress"
echo "========================================================================"

cp -r $PWD/deploy_Package /root/deploy_path/

sleep 2
echo " deployment succesfull "

echo "==========================================================================="

echo "Updated Package is present at : /root/deploy_path/ "
sleep 2
echo "Below are the contentents:"
tree /root/deploy_path/

echo "++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++"
