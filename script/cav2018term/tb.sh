SCRIPT_DIR=$(cd $(dirname $0)/..; pwd)
timeout=60 options='-p ltsterm' $SCRIPT_DIR/para_tbp_tbd_muval_bench.sh benchmarks/LTS/cav2018term/*.t2 | LC_ALL=C sort
