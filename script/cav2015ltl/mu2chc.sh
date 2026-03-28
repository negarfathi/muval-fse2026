SCRIPT_DIR=$(
    cd $(dirname $0)/..
    pwd
)
timeout=600 options='-c ./config/solver/mu2chc.json -p cltl' $SCRIPT_DIR/../run_bench_for_multicore.sh benchmarks/C/cav2015ltl/*/*.c benchmarks/C/cav2015ltl/*/*/*.c | LC_ALL=C sort
