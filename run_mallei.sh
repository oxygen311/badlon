#!/bin/bash
set -euo pipefail

badlon_script="from badlon.run_badlon import main; import sys; sys.exit(main())" 

python -c "$badlon_script" analysis -b /Users/alexey/Projects/b_mallei/data/Burkholderia_pseudo_mallei/7-sibeliaz/sibeliaz_out_mallei/fine/3000/blocks_coords.txt -t chr -o charts/mallei
python -c "$badlon_script" analysis -b /Users/alexey/Projects/b_mallei/data/Burkholderia_pseudo_mallei/7-sibeliaz/sibeliaz_out_pseudomallei/fine/3000/blocks_coords.txt -t chr -o charts/pseudomallei
python -c "$badlon_script" analysis -b /Users/alexey/Projects/b_mallei/data/Burkholderia_pseudo_mallei/7-sibeliaz/sibeliaz_out_all/fine/3000/blocks_coords.txt -t chr -o charts/all