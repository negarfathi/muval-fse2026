SCRIPT_DIR=$(cd $(dirname $0)/..; pwd)
timeout=10 options='-c ./config/solver/mustrat.json -p smt' $SCRIPT_DIR/run_bench.sh benchmarks/QSMT/ijcai2016/test/satisfiability/*.smt2 | LC_ALL=C sort