pid=$!

cd ../../scala
scalac pingping.scala
 
#Inicia a Aplicacao
for j in 5000 10000 50000 100000 500000 1000000
do
for h in 5000 10000 50000
do
for i in 1 2 3 4 5 6 7 8 9 10 
do
scala -J-Xmx8g pingping $h $j pingping_scala_"$h"B_"$j"R.txt
done
done
done

#Encerra script 
sleep 2

kill $pid