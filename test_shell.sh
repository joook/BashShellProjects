#!/bin/bash

#variable
Name="Tom"
echo "Default name: ${Name}."

#array
Array1=("A" "B" "C")
Array2=(1 2 3)
echo "${Array1[0]} ${Array1[1]} ${Array1[2]} "
echo "${Array2[@]}"

#read
echo "Your name?"
read Name
echo "Your age?"
read Age

#printf
printf "%s %s\n" Name "${Name}"
printf "%s %d\n" Age "${Age}"

#calculate
if test ${Name} = "Tom"
then
    echo "Tom? That is just my name!"
fi

#function
func()
{
if test $1 -ge 21
then 
    echo "Legal to drink."
elif (($1>=0)) && (($1<=12))
then 
    echo "Call your dad to meet me at my office."
elif (($1<0))
then 
    echo "Are you kidding me?"
else
    echo "Illegal to drink."
fi
}
func $Age

#fstream
date +"%Y-%m-%d %H:%M:%S" >> ./log.txt
printf "%s %d\n" "${Name}" "${Age}" >> ./log.txt
func $Age >> ./log.txt
