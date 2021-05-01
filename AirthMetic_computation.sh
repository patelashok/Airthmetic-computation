#! /bin/Bash
echo "Welcome Airthmetic computation"
read -p " Enter first value " a
read -p " Enter first value " b
read -p " Enter first value " c
compute1=$(($a+$b*$c))
echo  $compute1
compute2=$(($a*$B+$c))
echo $compute2
compute3=$((c+a/b))
echo $compute3
compute4=$((a%b+c))
echo $compute4
declare -A compute
compute[compute1]=$compute1
compute[compute2]=$compute2
compute[compute3]=$compute3
compute[compute4]=$compute4
echo ${compute[@]}
arr=($compute1 $compute2 $compute3 $compute4)
echo ${arr[@]}

for ((i = 0; i<4; i++))
do
      
    for((j = 0; j<4-i-1; j++))
    do
      
        if [ ${arr[j]} -lt ${arr[$((j+1))]} ]
        then
            # swap
            temp=${arr[j]}
            arr[$j]=${arr[$((j+1))]}  
            arr[$((j+1))]=$temp
        fi
    done
done
  
echo "Array in sorted Decending order :"
echo ${arr[*]}
