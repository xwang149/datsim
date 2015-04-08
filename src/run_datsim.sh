#!/bin/bash
# echo "run without transfer limitation"
# ./datsim --codes-config=datsim_wan_three_site.conf --jobtrace=jobs.trace --synch=1 --trans-limit=trans-limit-no-limit.conf --output=../results/datsim_output_simple_schedular.log > ../results/simple_schedular.output
# ./simviz.py -e ../results/datsim_output_simple_schedular.log

# echo "run with no priority and transfer limitation of 1:1:1"
# ./datsim --codes-config=datsim_wan_three_site.conf --jobtrace=jobs.trace --synch=1 --trans-limit=trans-limit-1:1:1.conf --output=../results/datsim_output_limit_1:1:1_FIFO.log > ../results/limit_1:1:1_FIFO.output
# ./simviz.py -e ../results/datsim_output_limit_1:1:1_FIFO.log

# echo "run with priority and transfer limitation of 1:1:1"
# ./datsim --codes-config=datsim_wan_three_site.conf --jobtrace=jobs.trace --synch=1 --trans-limit=trans-limit-1:1:1.conf --sched-policy=1 --output=../results/datsim_output_limit_1:1:1.log > ../results/limit_1:1:1.output
# ./simviz.py -e ../results/datsim_output_limit_1:1:1.log

# echo "run with no priority and transfer limitation of 1:2:1"
# ./datsim --codes-config=datsim_wan_three_site.conf --jobtrace=jobs.trace --synch=1 --trans-limit=trans-limit-1:2:1.conf --output=../results/datsim_output_limit_1:2:1_FIFO.log > ../results/limit_1:2:1_FIFO.output
# ./simviz.py -e ../results/datsim_output_limit_1:2:1_FIFO.log

# echo "run with priority and transfer limitation of 1:2:1"
# ./datsim --codes-config=datsim_wan_three_site.conf --jobtrace=jobs.trace --synch=1 --trans-limit=trans-limit-1:2:1.conf --sched-policy=1 --output=../results/datsim_output_limit_1:2:1.log > ../results/limit_1:2:1.output
# ./simviz.py -e ../results/datsim_output_limit_1:2:1.log

echo "run with FIFO on case2"
./datsim --codes-config=datsim_wan_three_site.conf --jobtrace=jobs.trace --synch=1 --trans-limit=trans-limit-case2.conf --output=../results/datsim_output_case2_FIFO_2x.log > ../results/case2_FIFO_2x.output
# ./simviz.py -e ../results/datsim_output_case2_FIFO_2x.log

echo "run with priority on case2"
./datsim --codes-config=datsim_wan_three_site.conf --jobtrace=jobs.trace --synch=1 --trans-limit=trans-limit-case2.conf --sched-policy=2 --output=../results/datsim_output_case2_P_2x.log > ../results/case2_P_2x.output
# ./simviz.py -e ../results/datsim_output_case2_P_2x.log

echo "run with utility on case2"
./datsim --codes-config=datsim_wan_three_site.conf --jobtrace=jobs.trace --synch=1 --trans-limit=trans-limit-case2.conf --sched-policy=1 --output=../results/datsim_output_case2_U_2x.log > ../results/case2_U_2x.output
# ./simviz.py -e ../results/datsim_output_case2_U_2x.log 
