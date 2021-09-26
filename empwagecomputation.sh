#!  /bin/bash -x



#contant variable 
IS_PRESENT=1
is_partpresent=2
EMP_RATE_PER_HR=20
totalworkingdays=20
totalworkhr=0
maxworkhrs=80
#selection
day=1
declare -A dailyWage
function getWorkHr() {
      local empCheck=$1
      local    empHrs=0
      case  $empCheck in
        $IS_PRESENT)
     empHrs=8;;
     $is_partpresent)

       empHrs=4;;
      *)
       empHrs=0;;
   esac

   echo $empHrs

}
while (( $day<=$totalworkingdays && $totalworkhr < $maxworkhrs ))
do

      empCheck=$((RANDOM%3))

      empHrs=$( getWorkHr $empCheck  )
     totalworkhr=$(( $totalworkhr + $empHrs ))
     salary=$((  $empHrs * $EMP_RATE_PER_HR ))
     dailyWage[$day]=$((  $empHrs * $EMP_RATE_PER_HR ))
        ((day++))
done
     totalsalary=$(( totalworkhr * EMP_RATE_PER_HR ))
      echo totalsalary:$totalsalary
      echo wage:${dailyWage[*]}
      echo Day:${!dailyWage[*]}

