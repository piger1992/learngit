#!/bin/bash
i=0;
sum=0;
for((i=1;$i<10;i++));do 
   sum=`expr  $i + $sum`
   echo "前 $i 项和为：$sum"
done
if ((sum<100));then
echo "前 `expr $i - 1` 项和小于100"
fi
