#!/bin/bash
set -euo pipefail

badlon_script="from badlon.run_badlon import main; import sys; sys.exit(main())" 

python -c "$badlon_script" match \
    -b /Users/alexey/Projects/b_mallei/data/Burkholderia_pseudo_mallei/7-sibeliaz/sibeliaz_out_mallei/fine/3000/blocks_coords.txt \
    -bf /Users/alexey/Projects/b_mallei/data/Burkholderia_pseudo_mallei/7-sibeliaz/sibeliaz_out_mallei/fine/3000/blocks_coords.txt \
    -a /Users/alexey/Projects/b_mallei/data/Burkholderia_pseudo_mallei/2-annotate_module \
    -t chr -pg /Users/alexey/Projects/b_mallei/data/Burkholderia_pseudo_mallei/3-pangenome/PanGenome-BUMA.All.prt-clust-0.8-mode1.lst \
    -o charts/mallei/block_gene_cov/
python -c "$badlon_script" match \
    -b /Users/alexey/Projects/b_mallei/data/Burkholderia_pseudo_mallei/7-sibeliaz/sibeliaz_out_pseudomallei/fine/3000/blocks_coords.txt \
    -bf /Users/alexey/Projects/b_mallei/data/Burkholderia_pseudo_mallei/7-sibeliaz/sibeliaz_out_pseudomallei/fine/3000/blocks_coords.txt \
    -a /Users/alexey/Projects/b_mallei/data/Burkholderia_pseudo_mallei/2-annotate_module \
    -t chr -pg /Users/alexey/Projects/b_mallei/data/Burkholderia_pseudo_mallei/3-pangenome/PanGenome-BUMA.All.prt-clust-0.8-mode1.lst \
    -o charts/pseudomallei/block_gene_cov/
python -c "$badlon_script" match \
    -b /Users/alexey/Projects/b_mallei/data/Burkholderia_pseudo_mallei/7-sibeliaz/sibeliaz_out_all/fine/3000/blocks_coords.txt \
    -bf /Users/alexey/Projects/b_mallei/data/Burkholderia_pseudo_mallei/7-sibeliaz/sibeliaz_out_all/fine/3000/blocks_coords.txt \
    -a /Users/alexey/Projects/b_mallei/data/Burkholderia_pseudo_mallei/2-annotate_module \
    -t chr -pg /Users/alexey/Projects/b_mallei/data/Burkholderia_pseudo_mallei/3-pangenome/PanGenome-BUMA.All.prt-clust-0.8-mode1.lst \
    -o charts/all/block_gene_cov/