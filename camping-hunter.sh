#!/bin/bash
datestr=$(date -d "next saturday" | awk -v OFS="+"  '{print $1,$2,$3,$6}')
nextsat=$(date -d "next saturday")
nextsat2=$(date -d "$nextsat+7 days")
nextsat3=$(date -d "$nextsat2+7 days")
nextsat4=$(date -d "$nextsat3+7 days")
datestr2=$(echo $nextsat2 | awk -v OFS="+" '{print $1,$2,$3,$6}')
datestr3=$(echo $nextsat3 | awk -v OFS="+" '{print $1,$2,$3,$6}')
datestr4=$(echo $nextsat4 | awk -v OFS="+" '{print $1,$2,$3,$6}')

echo "HELO newegg.com"
echo "MAIL FROM: tristan.t.wu@newegg.com"
echo "RCPT TO: tristan.t.wu@newegg.com"
echo "RCPT TO: jason.j.huang@newegg.com"
echo "DATA"

echo "-------------------------------"
echo "date: "$datestr
echo "-------------------------------"
cat sites.data | while read line
 do
    siteid=$(echo $line | awk '{print $1}')
    sitename=$(echo $line | awk '{print $2}')
    ivt=$( sh curl-camping.sh $sitename $siteid $datestr  2>&1 | grep  '>STANDARD (' | sed "s/.*(\([0-9]*\)).*/\1/g" | uniq)
    sleep 1 
    ivt=$( sh curl-camping.sh $sitename $siteid $datestr  2>&1 | grep  '>STANDARD (' | sed "s/.*(\([0-9]*\)).*/\1/g" | uniq)
    echo "site="$sitename", inventory="$ivt
    sleep 1
 done

echo "-------------------------------"
echo "date: "$datestr2
echo "-------------------------------"

 cat sites.data | while read line
 do
    siteid=$(echo $line | awk '{print $1}')
    sitename=$(echo $line | awk '{print $2}')
    ivt=$( sh curl-camping.sh $sitename $siteid $datestr2  2>&1 | grep  '>STANDARD (' | sed "s/.*(\([0-9]*\)).*/\1/g" | uniq)
    sleep 1 
    ivt=$( sh curl-camping.sh $sitename $siteid $datestr2  2>&1 | grep  '>STANDARD (' | sed "s/.*(\([0-9]*\)).*/\1/g" | uniq)
    echo "site="$sitename", inventory="$ivt
    sleep 1
 done

echo "-------------------------------"
echo "date: "$datestr3
echo "-------------------------------"

 cat sites.data | while read line
 do
    siteid=$(echo $line | awk '{print $1}')
    sitename=$(echo $line | awk '{print $2}')
    ivt=$( sh curl-camping.sh $sitename $siteid $datestr3  2>&1 | grep  '>STANDARD (' | sed "s/.*(\([0-9]*\)).*/\1/g" | uniq)
    sleep 1 
    ivt=$( sh curl-camping.sh $sitename $siteid $datestr3  2>&1 | grep  '>STANDARD (' | sed "s/.*(\([0-9]*\)).*/\1/g" | uniq)
    echo "site="$sitename", inventory="$ivt
    sleep 1
 done

echo "-------------------------------"
echo "date: "$datestr4
echo "-------------------------------"

 cat sites.data | while read line
 do
    siteid=$(echo $line | awk '{print $1}')
    sitename=$(echo $line | awk '{print $2}')
    ivt=$( sh curl-camping.sh $sitename $siteid $datestr4  2>&1 | grep  '>STANDARD (' | sed "s/.*(\([0-9]*\)).*/\1/g" | uniq)
    sleep 1 
    ivt=$( sh curl-camping.sh $sitename $siteid $datestr4  2>&1 | grep  '>STANDARD (' | sed "s/.*(\([0-9]*\)).*/\1/g" | uniq)
    echo "site="$sitename", inventory="$ivt
    sleep 1
 done

echo "."
