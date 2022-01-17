#! /usr/bin/bash



count=10
age=10

#If Statement syntax
: '
if [[ $count -eq 10 && $age -lt 0 ]]
if [ $count -eq 10 -a $age -lt 0 ]
-eq -ne -gt -lt -le -ge: operators
binary boolean operators -a -o | && ||
'

if [ $count -eq 10 ] && [ $age -lt 0 ]
then
    echo "the condition is true"
elif (( $count > 9 )) && (( $age == 50 ))
then
    echo "Maybe true"
else
    echo "not true"
fi


#Case statement (Switch)

car="Honda"

case $car in
    "BMW" )
        echo "Its BMW" ;;
    "Honda" )
        echo "It's Honda" ;;
    * )
        echo "Unknown" ;;
esac


#While loop
number=1

while [ $number -lt 10 ]
do
    echo "$number"
    number=$(( number+1 ))
done

# Until loop - will run until the contition becomes true
echo "/n"
number=1
until [ $number -gt 10 ]
do
    echo "$number"
    number=$(( number+1 ))
done

    
