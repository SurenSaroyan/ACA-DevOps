#!/bin/bash
bubbleSort() {
  arr=("$@")
  length=${#arr[*]}
  for ((i = 0; i < length - 1; i++)); do
    for ((j = 0; j < length - 1 - $i; j++)); do
      if [[ ${arr[$j]} -gt ${arr[$j + 1]} ]]; then
        temp=${arr[$j]}
        arr[$j]=${arr[$j + 1]}
        arr[$j + 1]=$temp
      fi
    done
  done
}

echo -n "Enter numbers: "
read all_args

declare -a odd=()
declare -a even=()

for i in ${all_args}; do
  if [ $((i % 2)) -eq 0 ]; then
    even+=($i)
  else
    odd+=($i)
  fi
done

bubbleSort "${odd[@]}"
echo "sorted odd is: ${arr[*]}"
bubbleSort "${even[@]}"
echo "sorted even is: ${arr[*]}"
