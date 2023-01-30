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
then
        month_days_passed=$(( month_days_passed + 1 ))
fi

#COUNT DAYS FINAL
final_days=$(( ($year_days_passed + $month_days_passed) + ($day - 1) ))
echo $final_days
}
#__________________function end__________________


#__________________function call__________________
echo "Enter the date (eg: 12/25/1980):"
read date
res1=$(count $data)



