#!bin/bash -x

echo "Welcome to employee wage computation"
isPresent=1
isPartTime=1
isFullTime=2
empRatePerHr=20

randomCheck=$((RANDOM%3))

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
	empHrs=8
	salary=$(($empRatePerHr*$empHrs))
else
	salary=0
fi
# To add part time employee and calculate it's wage
if [ $isPartTime -eq $randomCheck ]
then
	empHrs=4
elif [ $isFullTime -eq $randomCheck ]
then
	empHrs=8
else
	empHrs=0
fi
salary=$(($empRatePerHr*$empHrs))

