#!/bin/bash

factorial()
{
    i=$1
           
    if(( i <= 2 )); then
        echo $i
    else
        f=$((i -1))
        
f=$(factorial $f)
f=$((f*i))

echo $f
fi
}

echo "Enter the number:"   
read num

if((num == 0)); then   
echo 1
else

factorial $num
fi
