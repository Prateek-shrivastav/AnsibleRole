#!/bin/bash

echo "Enter the First number"
read a
echo "Enter the second Number"
read b
x=$(($a+$b))
Y=$(expr $a + $b)
echo $Y
echo $x
