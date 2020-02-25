#!bin/bash -x

echo "Welcome to employee wage computation"
isPresent=1
randomCheck=$((RANDOM%2))

if [ $isPresent -eq $randomCheck ]
then
	echo "Employee is present"
else
	echo "Employee is absent"
fi
