#!/bin/bash

exp=fcst_phy2m
dir=/Volumes/LaCie/JRA-55/data/jra55chs/Daily/${exp}/

yr=2005
mnth=03

for day in {1..9}
do
    for i in 00 03 06 09 12 15 18 21
    do
        cdo -R copy ${dir}${yr}${mnth}/${exp}.${yr}${mnth}0${day}${i} ${dir}${yr}${mnth}/${exp}.${yr}${mnth}0${day}${i}_rgrid
    done
done

for day in {10..31}
do
    for i in 00 03 06 09 12 15 18 21
    do
        cdo -R copy ${dir}${yr}${mnth}/${exp}.${yr}${mnth}${day}${i} ${dir}${yr}${mnth}/${exp}.${yr}${mnth}${day}${i}_rgrid
    done
done

for day in {1..9}
do
    for i in 00 03 06 09 12 15 18 21
    do
        cdo -f nc4 copy ${dir}${yr}${mnth}/${exp}.${yr}${mnth}0${day}${i}_rgrid ${dir}${yr}${mnth}/${exp}.${yr}${mnth}0${day}${i}.nc
        rm ${dir}${yr}${mnth}/${exp}.${yr}${mnth}0${day}${i}_rgrid
    done
done

for day in {10..31}
do
    for i in 00 03 06 09 12 15 18 21
    do
        cdo -f nc4 copy ${dir}${yr}${mnth}/${exp}.${yr}${mnth}${day}${i}_rgrid ${dir}${yr}${mnth}/${exp}.${yr}${mnth}${day}${i}.nc
        rm ${dir}${yr}${mnth}/${exp}.${yr}${mnth}${day}${i}_rgrid
    done
done

