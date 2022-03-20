#!/bin/bash

#exp=fcst_phy2m
exp=fcst_surf 

#dir=/Volumes/LaCie/JRA-55/data/jra55chs/Daily/${exp}/
dir=/Volumes/LaCie/JRA-55/data/jra55c/Daily/${exp}/

year=2012
month=02

tar -xvf ${exp}_${year}-${month}.tgz

#mv dias/data/jra55chs/Daily/${exp}/* ${dir} 
mv dias/data/jra55c/Hist/Daily/${exp}/* ${dir} 
rm -r dias

rm ${exp}_${year}-${month}.tgz

