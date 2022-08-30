#!/bin/bash
#add fix to exercise6-fix here
if (( $# < 2 )) ; then
    echo "minimum 2 paramters"
    exit 1
fi

a=()
b_sum=0

#loop all paramers except last one
for i in ${@:1:$#-1}; 
  do :
     a+=("$i")
     bytes=$(wc -c $i | awk '{print $1}')
     b_sum=$((b_sum + bytes))
  done
#list all files
files_a="${a[@]}"
#last argument:
path_folder="${@: -1}"

which_server=`hostname`
case $which_server in
	       server1)      path_server="server2" ;;
           server2)      path_server="server1" ;;
esac       

scp $files_a $path_server:$path_folder

echo $b_sum