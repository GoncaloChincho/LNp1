fstcompile --isymbols=syms.sym --osymbols=syms.sym 28.txt | fstarcsort > XXVIII.fst
fstdraw    --isymbols=syms.sym --osymbols=syms.sym --portrait XXVIII.fst | dot -Tpdf > XXVIII.pdf

fstcompile --isymbols=syms.sym --osymbols=syms.sym ola_32.txt | fstarcsort > ola_XXXII.fst
fstdraw    --isymbols=syms.sym --osymbols=syms.sym --portrait ola_XXXII.fst | dot -Tpdf  > ola_XXXII.pdf

fstcompile --isymbols=syms.sym --osymbols=syms.sym ola_adri_ana_.txt | fstarcsort > ola_adri_anox.fst
fstdraw    --isymbols=syms.sym --osymbols=syms.sym --portrait ola_adri_anox.fst | dot -Tpdf  > ola_adri_anox.pdf
