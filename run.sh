events=cycles:u

for run in {1..20}; do
	for offset in {0..32}; do 
		perf stat -e $events -x, ./divq-test$offset 2>&1 | sed -e "s/^/$offset,/"
	done
done

