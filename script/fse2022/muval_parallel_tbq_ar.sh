SCRIPT_DIR=$(
    cd $(dirname $0)/..
    pwd
)
timeout=300 options='-c ./config/solver/muval_parallel_tbq_ar.json -p ltsterm ' $SCRIPT_DIR/run_bench_for_multicore.sh benchmarks/LTS/fse2022/all_bv/*.t2 | LC_ALL=C sort
