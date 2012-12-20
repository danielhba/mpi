#!/bin/bash                                                                                                                                                                     

#Comentario: igual a usar "sar -A 1", mas sem a interface de rede que não abre no kSar

#Script Variables
#output_file="sar_data_AnelProcesso.txt"      #arquivo de saída
#interval=1                      #taxa de amostragem em segundos
 
#Inicia rodada de testes
#LC_ALL=C sar -bBdqrRSvwW -I SUM -I XALL -u ALL -P ALL $interval > $output_file &

cd ../../scala
pid=$!
 
#Inicia a Aplicacao
for i in 1 2 3 4 5 6 7 8 9 10 
do
scala -J-Xmx4g sendrecv 5000 500000 1000 sendrecv_scala_5000_5000.txt
done

for i in 1 2 3 4 5 6 7 8 9 10 
do
scala -J-Xmx4g sendrecv 10000 500000 1000 sendrecv_scala_10000_5000.txt
done

for i in 1 2 3 4 5 6 7 8 9 10 
do
scala -J-Xmx4g sendrecv 50000 500000 1000 sendrecv_scala_50000_5000.txt
done


for i in 1 2 3 4 5 6 7 8 9 10 
do
scala -J-Xmx4g sendrecv 5000 500000 10000 sendrecv_scala_5000_5000.txt
done

for i in 1 2 3 4 5 6 7 8 9 10 
do
scala -J-Xmx4g sendrecv 10000 500000 10000 sendrecv_scala_10000_5000.txt
done

for i in 1 2 3 4 5 6 7 8 9 10 
do
scala -J-Xmx4g sendrecv 50000 500000 10000 sendrecv_scala_50000_5000.txt
done


for i in 1 2 3 4 5 6 7 8 9 10 
do
scala -J-Xmx4g sendrecv 5000 500000 20000 sendrecv_scala_5000_5000.txt
done

for i in 1 2 3 4 5 6 7 8 9 10 
do
scala -J-Xmx4g sendrecv 10000 500000 20000 sendrecv_scala_10000_5000.txt
done

for i in 1 2 3 4 5 6 7 8 9 10 
do
scala -J-Xmx4g sendrecv 50000 500000 20000 sendrecv_scala_50000_5000.txt
done


for i in 1 2 3 4 5 6 7 8 9 10 
do
scala -J-Xmx4g sendrecv 5000 500000 30000 sendrecv_scala_5000_5000.txt
done

for i in 1 2 3 4 5 6 7 8 9 10 
do
scala -J-Xmx4g sendrecv 10000 500000 30000 sendrecv_scala_10000_5000.txt
done

for i in 1 2 3 4 5 6 7 8 9 10 
do
scala -J-Xmx4g sendrecv 50000 500000 30000 sendrecv_scala_50000_5000.txt
done


for i in 1 2 3 4 5 6 7 8 9 10 
do
scala -J-Xmx4g sendrecv 5000 500000 50000 sendrecv_scala_5000_5000.txt
done

for i in 1 2 3 4 5 6 7 8 9 10 
do
scala -J-Xmx4g sendrecv 10000 500000 50000 sendrecv_scala_10000_5000.txt
done

for i in 1 2 3 4 5 6 7 8 9 10 
do
scala -J-Xmx4g sendrecv 50000 500000 50000 sendrecv_scala_50000_5000.txt
done


for i in 1 2 3 4 5 6 7 8 9 10 
do
scala -J-Xmx4g sendrecv 5000 500000 100000 sendrecv_scala_5000_5000.txt
done

for i in 1 2 3 4 5 6 7 8 9 10 
do
scala -J-Xmx4g sendrecv 10000 500000 100000 sendrecv_scala_10000_5000.txt
done

for i in 1 2 3 4 5 6 7 8 9 10 
do
scala -J-Xmx4g sendrecv 50000 500000 100000 sendrecv_scala_50000_5000.txt
done


#Encerra script 
sleep 2

kill $pid				   
