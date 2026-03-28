SCRIPT_DIR=$(cd $(dirname $0)/..; pwd)
timeout=300 options='-c ./config/solver/mu2chc.json -p muclp' $SCRIPT_DIR/run_bench.sh benchmarks/muCLP/function/*.hes | LC_ALL=C sort
