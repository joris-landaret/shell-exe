#!/bin/zsh

cd /home/sarlas/shell-exe/script/Job_09
cat Shell_Userlist.csv | while read varligne
do

password=`echo $varligne |cut -d ',' -f4`
username=`echo $varligne |cut -d ',' -f2`
username=`echo ${username:l}`
role=`echo $varligne |cut -d ',' -f5`
echo $role

if [ ${role:0:5} = "Admin" ]
then

echo "creation de l'utilisateur : $username"
sudo useradd -m $username -p $password
echo "changement du role de : $username"
sudo  usermod -aG sudo $username

else

echo "creation de l'utilisateur : $username"
sudo useradd -m $username -p $password

fi

done < <(tail -n +2 Shell_Userlist.csv)
