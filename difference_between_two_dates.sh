#!bin/bash

#__________________function start__________________
count () {
day_t=${date%/*}
day=${day_t#*/}

year=${date##*/}
years_full=$(( $year - 1 ))
leaps=$(( $(( $years_full / 4 )) + 1 ))
year_days_passed_w=$(( 365*$years_full ))
year_days_passed=$(( $year_days_passed_w + $leaps ))

months={31 28 31 30 31 30 31 31 30 31 30 31}
month=${date%%/*}
month_days_passed=0
i=0
while [ $i -lt $(( $month - 1 )) ]
do
        month_days_passed=$(( "${months[i]}" + $month_days_passed ))
        i=$(( $i + 1 ))
done
if_leap=$(echo $(( year % 4 )))
if [[ $if_leap -eq 0 && $month -gt 2 ]]



