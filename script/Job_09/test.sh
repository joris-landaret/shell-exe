#!/bin/zsh

cd /home/sarlas/shell-exe/script/Job_09
cat Shell_Userlist.csv | while read varligne
do

pass=`echo $varligne |cut -d ',' -f4`
user=`echo $varligne |cut -d ',' -f2`
user=`echo ${user,,}`
role=`echo $varligne |cut -d ',' -f5`
echo $role

if [ ${role:0:5} = "Admin" ]
then

echo "creation de l'utilisateur : $user"
sudo useradd -m $user -p $pass
echo usermod -aG sudo $user

else

echo "creation de l'utilisateur : $user"
sudo useradd -m $user -p $pass

fi

done < <(tail -n +2 Shell_Userlist.csv)
