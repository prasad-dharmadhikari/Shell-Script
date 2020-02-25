#!bin/bash -x

echo "Welcome to employee wage computation"
isPresent=1
randomCheck=$((RANDOM%2))

# To check whether employee is present or not
if [ $isPresent -eq $randomCheck ]
then
	echo "Employee is present"
else
	echo "Employee is absent"
fi
# To calculate daily employee wage
if [ $isPresent -eq $randomCheck ]
then
	empRatePerHr=20
	empHrs=8
	salary=$(($empRatePerHr*$empHrs))
else
	salary=0
fi
