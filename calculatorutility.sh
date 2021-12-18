#!/bin/bash

#Evin Liu
#calculator utility

#set initial condition in order to allow looping
condition="y" 
echo "Welcome to calculator utility"
echo "Please enter your first number"
#takes first number input
read firnum
#while statement using the declared condition in order to allow user interations with looping
while [ $condition == "y" ]

do
echo "What function would you like to perform?"
echo "----------------------------------------"
echo "1: Addition"
echo "2: Subtraction"
echo "3: Multiplication"
echo "4: Division"
echo "5: Modulo"
echo "6: Clear"
echo "7: Cancel"
echo "----------------------------------------"
read answer

#set series of if else statements to allow user to pick what interaction 
if [ $answer == 1 ]
then
echo "Great! What is your next number?"
read secnum
sum=`expr $firnum + $secnum`
echo "$firnum + $secnum = " $sum

elif [ $answer == 2 ]
then
echo "Great! What is your next number?"
read secnum
sum=`expr $firnum - $secnum`
echo "$firnum - $secnum = " $sum

elif [ $answer == 3 ]
then
echo "Great! What is your next number?"
read secnum
sum=`expr $firnum \* $secnum`
echo "$firnum * $secnum = " $sum

elif [ $answer == 4 ]
then
echo "Great! What is your next number?"
read secnum
sum=`expr $firnum / $secnum`
echo "$firnum / $secnum = " $sum

elif [ $answer == 5 ]
then
echo "Great! What is your next number?"
read secnum
sum=`expr $firnum % $secnum`
echo "$firnum mod $secnum = " $sum

elif [ $answer == 6 ]
then
sum=0
echo "- cleared -"

elif [ $answer == 7 ]
then
break
fi

firnum=$sum
#allow user to decide whether or not to continue
echo "Continue? (y/n)"
read condition
done
