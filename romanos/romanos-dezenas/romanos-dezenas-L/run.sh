###COMPILING TRANSDUCER
###TRANSLATES 5, 6, 7, 8 INTO ROMAN 50, 60, 70, 80
fstcompile --isymbols=syms.sym --osymbols=syms.sym romanos-dezenas-L.txt | fstarcsort > romanos-dezenas-L.fst
fstdraw    --isymbols=syms.sym --osymbols=syms.sym --portrait romanos-dezenas-L.fst | dot -Tpdf  > romanos-dezenas-L.pdf
