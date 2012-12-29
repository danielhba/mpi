pid=$!

cd scala/
sh script_scala.sh
cd ../java/
sh script_java.sh

#Encerra script 
sleep 2

kill $pid
