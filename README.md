Assembly level tests for the div loop desribed here:

http://stackoverflow.com/q/26907523/149138

Each alignment (from 0 to 32) is generated as a seperate binary in bin. 

## Build

Make everything by running

    ./make.sh

## Run

Run everything under perf by running:

    ./run.sh

You can also look at `run2.sh`, which logs more events and uses `ocperf.py` from pmu-tools, or runtest.sh which is some test.


