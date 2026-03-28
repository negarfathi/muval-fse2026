SCRIPT_DIR=$(
    cd $(dirname $0)/..
    pwd
)
timeout=300 options='-c ./config/solver/muval_parallel_exc_tbq_ar.json -p pltsterm ' $SCRIPT_DIR/run_bench_for_multicore.sh benchmarks/term-comp/Integer_Transition_Systems/From_AProVE_2014/*.smt2 benchmarks/term-comp/Integer_Transition_Systems/From_T2/*.smt2 | LC_ALL=C sort
