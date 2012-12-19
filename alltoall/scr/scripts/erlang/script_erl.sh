cd ../../erlang
erlc *.erl
pid=$!

for k in 50000
do
	for j in 1000 10000 20000 30000 40000 50000 80000 100000
	do
		for l in 50000 100000 500000 1000000
		do
			for i in 1 2 3 4 5 6 7 8 9 10 
			do
				erl -smp enable -noshell -eval "alltoall:run($k,$l,$j)." -s init stop
			done
		done
	done
done

#Encerra script 
sleep 2
 
kill $pid

