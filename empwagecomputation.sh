#!  /bin/bash -x

#variable
empCheck=$((RANDOM%3))

#contant variable 
IS_PRESENT=1
is_partpresent=2
EMP_RATE_PER_HR=20

#selection
case  $empCheck in
        $IS_PRESENT)
     empHrs=8;;
     $is_partpresent)

       empHrs=4;;
      *)
       empHrs=0;;
esac
     salary=$((  $empHrs * $EMP_RATE_PER_HR ))

