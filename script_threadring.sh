pid=$!

cd threadring/src/scripts/
sh script.sh

#Encerra script 
sleep 2

kill $pid
