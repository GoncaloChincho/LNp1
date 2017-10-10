###COMPILING SUB-TRANSDUCER

###TRANSLATES 1, 2, 3, 4, 9
fstcompile --isymbols=syms.sym --osymbols=syms.sym romanos-digitos-I.txt | fstarcsort > romanos-digitos-I.fst
fstdraw    --isymbols=syms.sym --osymbols=syms.sym --portrait romanos-digitos-I.fst | dot -Tpdf  > romanos-digitos-I.pdf
