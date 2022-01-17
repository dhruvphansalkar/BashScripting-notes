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

#for loop
: '
for i in 1 2 3 4 5
for i in {0..20..2} increment by 2
No space for brackets

for (( i=0; i<5; i++ ))
'

for i in {0..20}
do
    echo $i
done

#Break and continue
for (( i=0; i<=10; i++ ))
do
    if [ $i -gt 5 ]
    then
        break
    fi
    echo $i
done

for (( i=0; i<=10; i++ ))
do
    if [ $i -eq 5 ] || [ $i -eq 7 ]
    then 
        continue #goes back to the top of the loop
    fi
    echo $i
done


#-------------SCRIPT INPUT------------------

: '
./syntaxDemo.sh a b c
will print a b c
'
echo $1 $2 $3
args=("$@") #all argument in an array
echo ${args[0]}
echo $@

echo $# #prints length of the array

#file as argument
while read line
do
    echo "$line"
done < "${1:-/dev/stdin}"


    
