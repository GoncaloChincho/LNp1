###COMPILING TRANSDUCER
###TRANSLATES 1, 2, 3, 4, 9 INTO ROMAN 10, 20, 30, 40, 90
fstcompile --isymbols=syms.sym --osymbols=syms.sym romanos-dezenas-X.txt | fstarcsort > romanos-dezenas-X.fst
fstdraw    --isymbols=syms.sym --osymbols=syms.sym --portrait romanos-dezenas-X.fst | dot -Tpdf  > romanos-dezenas-X.pdf
