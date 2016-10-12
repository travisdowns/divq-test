perf=../pmu-tools/ocperf.py
events=branches:u,cycles:u,exe_activity.1_ports_util:u,exe_activity.2_ports_util:u,exe_activity.3_ports_util:u,exe_activity.4_ports_util:u,uops_executed.stall_cycles:u,uops_issued.stall_cycles:u
#events=branches:u,cycles:u,cycle_activity.stalls_total,idq.dsb_uops:u,idq.mite_uops:u,uops_issued.stall_cycles:u,uops_executed.stall_cycles:u

for run in {1..1}; do
	for offset in 8 9 18 19; do
		$perf stat -e $events bin/divq-test$offset
	done
done

