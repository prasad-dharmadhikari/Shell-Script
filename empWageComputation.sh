#!bin/bash -x

echo "Welcome to employee wage computation"
isPresent=1
isPartTime=1
isFullTime=2
empRatePerHr=20
numWorkingDays=20
totalSalary=0

employeeCheck=$((RANDOM%3))

# To check whether employee is present or not
if [ $isPresent -eq $employeeCheck ]
then
	echo "Employee is present"
else
	echo "Employee is absent"
fi
# To calculate daily employee wage
if [ $isPresent -eq $employeeCheck ]
then
	empHrs=8
	salary=$(($empRatePerHr*$empHrs))
else
	salary=0
fi
# To add part time employee and calculate it's wage using case statement
#To calculate the wage for month
for((day=1;day<=$numWorkingDays;day++))
do
	employeeCheck=$((RANDOM%3))
	case $employeeCheck in
		$isPartTime)
			empHrs=4
			;;
		$isFullTime)
			empHrs=8
			;;
		*)
			empHrs=0
			;;
	esac
	salary=$(($empRatePerHr*$empHrs))
	totalSalary=$(($totalSalary+$salary))
done


