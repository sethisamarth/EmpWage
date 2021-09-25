#!  /bin/bash -x

#variable
empCheck=$((RANDOM%2))

#contant variable 
IS_PRESENT=1
EMP_RATE_PER_HR=20

#selection
if [ $empCheck -eq $IS_PRESENT ]
then
     empHrs=8
     salary=$(( empHrs * EMP_RATE_PER_HR ))
else
     salary=0
fi
