SCRIPT_DIR=$(cd $(dirname $0)/../..; pwd)
timeout=300 options='-p ltsnterm' $SCRIPT_DIR/para_dtp_dtd_lazy_muval_bench.sh benchmarks/LTS/tacas2014/nonterminating/*.t2 | LC_ALL=C sort
