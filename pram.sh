#!/bin/bash
# echo "all params: $*"
# echo "number of param: $#"

for najmul in $*
do 
if [ -d "najmul" ]
then 
	echo "executing scripts in the config folder"
	ls -l "$najmul"
fi
echo $najmul
done


function score_sum {
sum=0

while true 
do
	read -p "enter a score: " score
if [ "$score" == "q" ]
then 
	break
fi
sum=$(($sum+$score))
echo  "total score: $sum"

done
}
score_sum

function create_file() {
	file_name=$1
	is_shell_script=$2
	touch $file_name
	echo "file $file_name created"
	if [ "$is_shell_script" = true ]
	then
		chmod u+x $file_name
		echo "added execute permission"
	fi
}

# create_file test.txt

# create_file myfile.yaml
# create_file myscrept.sh  true

function sum() {
	total=$(($1+$2))
	return $total
}
sum 2 10 
result=$?
echo "sum of 2 amd 10 is $result"
