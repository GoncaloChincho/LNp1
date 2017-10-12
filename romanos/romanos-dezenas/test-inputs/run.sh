###COMPILING TEST INPUTS
fstcompile --isymbols=syms.sym --osymbols=syms.sym  0.txt | fstarcsort > 0.fst
fstdraw    --isymbols=syms.sym --osymbols=syms.sym --portrait 0.fst | dot -Tpdf  > 0.pdf

fstcompile --isymbols=syms.sym --osymbols=syms.sym  romanos-dezenas-X/3.txt | fstarcsort > 3.fst
fstdraw    --isymbols=syms.sym --osymbols=syms.sym --portrait 3.fst | dot -Tpdf  > 3.pdf

fstcompile --isymbols=syms.sym --osymbols=syms.sym  romanos-dezenas-X/4.txt | fstarcsort > 4.fst
fstdraw    --isymbols=syms.sym --osymbols=syms.sym --portrait 4.fst | dot -Tpdf  > 4.pdf

fstcompile --isymbols=syms.sym --osymbols=syms.sym  romanos-dezenas-L/5.txt | fstarcsort > 5.fst
fstdraw    --isymbols=syms.sym --osymbols=syms.sym --portrait 5.fst | dot -Tpdf  > 5.pdf

fstcompile --isymbols=syms.sym --osymbols=syms.sym  romanos-dezenas-L/6.txt | fstarcsort > 6.fst
fstdraw    --isymbols=syms.sym --osymbols=syms.sym --portrait 6.fst | dot -Tpdf  > 6.pdf

fstcompile --isymbols=syms.sym --osymbols=syms.sym  romanos-dezenas-L/7.txt | fstarcsort > 7.fst
fstdraw    --isymbols=syms.sym --osymbols=syms.sym --portrait 7.fst | dot -Tpdf  > 7.pdf

fstcompile --isymbols=syms.sym --osymbols=syms.sym  romanos-dezenas-X/9.txt | fstarcsort > 9.fst
fstdraw    --isymbols=syms.sym --osymbols=syms.sym --portrait 9.fst | dot -Tpdf  > 9.pdf

fstcompile --isymbols=syms.sym --osymbols=syms.sym  8.txt | fstarcsort > 8.fst
fstdraw    --isymbols=syms.sym --osymbols=syms.sym --portrait 8.fst | dot -Tpdf  > 8.pdf

fstcompile --isymbols=syms.sym --osymbols=syms.sym  57.txt | fstarcsort > 57.fst
fstdraw    --isymbols=syms.sym --osymbols=syms.sym --portrait 57.fst | dot -Tpdf  > 57.pdf
