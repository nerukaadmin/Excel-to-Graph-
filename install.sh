#!/bin/sh
echo Checking pip3..
if pip3 --version ; then 
	echo pip3 installed..
else
	echo installing pip3..
	sudo apt update
	sudo apt install python3-pip
	pip3 --version
fi
curl https://raw.githubusercontent.com/nerukaadmin/Excel-to-Graph-/master/requirements.txt --output requirements.txt
echo installing pip pacakges... 
pip3 install -r requirements.txt
curl https://raw.githubusercontent.com/nerukaadmin/Excel-to-Graph-/master/ex_to_graph.py --output ex_to_graph.py
mkdir -p  OUT
mkdir -p  IN
mkdir -p  tmp
mkdir -p  TM
mkdir -p  ROLE
mkdir -p  ROLE_TXT
chmod 777 -R OUT
chmod 777 -R IN
chmod 777 -R tmp
chmod 777 -R ROLE
chmod 777 -R ROLE_TXT
touch ./TM/team_member_list.txt
chmod 777 ./TM/team_member_list.txt
echo Installtion completed...!
echo creating run.sh
cat init > run.sh
