#!  /bin/bash -x



#contant variable 
IS_PRESENT=1
is_partpresent=2
EMP_RATE_PER_HR=20
totalworkingdays=20
totalworkhr=0
#selection

for ((day=1;day<=$totalworkingdays;day++))
do

empCheck=$((RANDOM%3))
case  $empCheck in
        $IS_PRESENT)
     empHrs=8;;
     $is_partpresent)

       empHrs=4;;
      *)
       empHrs=0;;
esac
     totalworkhr=$(( totalworkhr + empHrs ))
     salary=$((  $empHrs * $EMP_RATE_PER_HR ))
done
     totalsalary=$(( totalworkhr * EMP_RATE_PER_HR ))

