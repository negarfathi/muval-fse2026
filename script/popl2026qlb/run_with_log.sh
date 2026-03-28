special_cases0=(
  "./benchmarks/QmuCLP/hark19_ex7_ub.qhes"
  "./benchmarks/QmuCLP/feng23_ex19_ub.qhes"
)

special_cases1=(
  "./benchmarks/QmuCLP/hark19_ex7_lb.qhes"
  "./benchmarks/QmuCLP/hark19_ex53_lb_approx.qhes"
  "./benchmarks/QmuCLP/feng23_ex19_lb_approx.qhes"
)

special_cases2=(
  "./benchmarks/QmuCLP/chatterjee22_fig18_lb.qhes"
  "./benchmarks/QmuCLP/chatterjee22_fig22_lb.qhes"
  "./benchmarks/QmuCLP/chatterjee22_fig24_lb.qhes"
)

special_cases3=(
  "./benchmarks/QmuCLP/chatterjee22_fig14_lb_hint.qhes"
)

for file in ./benchmarks/QmuCLP/*.qhes; do
    echo ""
    echo "$file"

    if [[ " ${special_cases0[@]} " =~ " ${file} " ]]; then
        config="./config/solver/muval_quant_polyqent_deg1_cond_eps_1.json"
    elif [[ " ${special_cases1[@]} " =~ " ${file} " ]]; then
        config="./config/solver/muval_quant_polyqent_deg1_cond_eps.json"
    elif [[ " ${special_cases2[@]} " =~ " ${file} " ]]; then
        config="./config/solver/muval_quant_polyqent_deg1_eps.json"
    elif [[ " ${special_cases3[@]} " =~ " ${file} " ]]; then
        config="./config/solver/muval_quant_polyqent_deg1.json"
    else
        config="./config/solver/muval_quant_polyqent_deg3.json"
    fi

    time timeout 180 ./_build/default/main.exe -c "$config" -p qmuclp "$file" 2> $(basename $file .qhes).log;
    cp temp_polyqent.smt2 $(basename $file .qhes).smt2;
done
