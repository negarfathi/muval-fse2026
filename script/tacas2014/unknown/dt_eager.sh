SCRIPT_DIR=$(cd $(dirname $0)/../..; pwd)
timeout=60 options='-p ltsterm' $SCRIPT_DIR/para_dtp_dtd_eager_muval_bench.sh benchmarks/LTS/tacas2014/unknown/*.t2 | LC_ALL=C sort
