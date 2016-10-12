perf=../pmu-tools/ocperf.py
events=branches:u,cycles:u,idq.mite_uops:u,idq.dsb_uops:u,exe_activity.1_ports_util:u,exe_activity.2_ports_util:u,exe_activity.3_ports_util:u,exe_activity.4_ports_util:u


$perf stat -e $events bin/test2

