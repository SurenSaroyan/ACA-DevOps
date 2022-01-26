#!/bin/bash

echo -n "Enter numbers: "
read all_args

min=${all_args%% *}
max=${all_args%% *}

for i in ${all_args}
do
 if [[ ${i} -lt ${min} ]]
then
 min=${i}
elif [[ ${i} -gt ${max} ]]
then
 max=${i}
fi;
done;
echo "Max value is ${max}";
echo "Min value is ${min}";
