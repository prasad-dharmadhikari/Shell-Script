#!bin/bash -x

echo "Welcome to employee wage computation"
# Constants
IS_PRESENT=1
IS_PART_TIME=1
IS_FULL_TIME=2
MAX_WORKING_HRS=100
EMP_RATE_PER_HR=20
MAX_WORKING_DAYS=20
# Variables
totalSalary=0
totalEmpHrs=0
totalWorkingDays=0
salary=0
workHrs=0

employeeCheck=$((RANDOM%3))

# To check whether employee is present or not
if [ $IS_PRESENT -eq $employeeCheck ]
then
	echo "Employee is present"
else
	echo "Employee is absent"
fi
# To calculate daily employee wage
if [ $IS_PRESENT -eq $employeeCheck ]
then
	empHrs=8
	salary=$(($EMP_RATE_PER_HRS*$empHrs))
else
	salary=0
fi
function getWorkingHrs()
{
	case $1 in
		$IS_PART_TIME)
			workHrs=4
			;;
		$IS_FULL_TIME)
			workHrs=8
			;;
		*)
			workHrs=0
			;;
	esac
	echo $workHrs
}
# To add part time employee and calculate it's wage using case statement
#To calculate the wage for month
for((day=1;day<=$MAX_WORKING_DAYS;day++))
do
	empHrs="$( getWorkingHrs $((RANDOM%3)) )"
	salary=$(($EMP_RATE_PER_HR*$empHrs))
	totalSalary=$(($totalSalary+$salary))
done
# Calculate wages till a condition of total working hours or days is reached for a month
while [[ $totalWorkingDays -lt $MAX_WORKING_DAYS && $totalEmpHrs -lt $MAX_WORKING_HRS ]]
do
	((totalWorkingDays++))
	empHrs="$( getWorkingHrs $((RANDOM%3)))"
	totalEmpHrs=$(($totalEmpHrs+$empHrs))
done
totalSalary=$(($totalEmpHrs*$EMP_RATE_PER_HR))



