#!/bin/bash

whoami
w
echo "current working dirctory: $PWD"

echo" installing pre-requisites"
for a in `cat requirments.txt | tr ',' '\n'`;do yum install -y $a; done

cp -r $PWD/deploy_Package /root/deploy_path

echo " deployment succesfull "

===========================================================================

