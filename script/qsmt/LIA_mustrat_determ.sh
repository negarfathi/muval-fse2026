SCRIPT_DIR=$(cd $(dirname $0)/..; pwd)
timeout=10 options='-c ./config/solver/mustrat_determ.json -p smt' $SCRIPT_DIR/run_bench.sh benchmarks/QSMT/LIA/*/*.smt2 | LC_ALL=C sort