###COMPILING SUB-TRANSDUCER

###TRANSLATES 5, 6, 7, 8 
fstcompile --isymbols=syms.sym --osymbols=syms.sym romanos-digitos-V.txt | fstarcsort > romanos-digitos-V.fst
fstdraw    --isymbols=syms.sym --osymbols=syms.sym --portrait romanos-digitos-V.fst | dot -Tpdf  > romanos-digitos-V.pdf
