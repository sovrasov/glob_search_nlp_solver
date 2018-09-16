declare -a algos=("ags" "direct" "directl" "mlsl" "crs" "scd" "stogo", "sda")
declare -a algos=("sda")

for algo in "${algos[@]}"
do
   echo "$algo"
   python2 ../experiments/solve_different_methods.py --verbose --dist_stop --max_iters 350000 --problems_dim 5 --problems_class gklss --algo $algo --stats_fname ../experiments/gklss5d/$algo.json
done
python2 ../experiments/plot_cmcs.py ../experiments/gklss5d/ --show
