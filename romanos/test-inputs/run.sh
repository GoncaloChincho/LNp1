fstcompile --isymbols=syms.sym --osymbols=syms.sym  0.txt | fstarcsort > 0.fst
fstdraw    --isymbols=syms.sym --osymbols=syms.sym --portrait 0.fst | dot -Tpdf  > 0.pdf

fstcompile --isymbols=syms.sym --osymbols=syms.sym  3.txt | fstarcsort > 3.fst
fstdraw    --isymbols=syms.sym --osymbols=syms.sym --portrait 3.fst | dot -Tpdf  > 3.pdf

fstcompile --isymbols=syms.sym --osymbols=syms.sym  4.txt | fstarcsort > 4.fst
fstdraw    --isymbols=syms.sym --osymbols=syms.sym --portrait 4.fst | dot -Tpdf  > 4.pdf

fstcompile --isymbols=syms.sym --osymbols=syms.sym  8.txt | fstarcsort > 8.fst
fstdraw    --isymbols=syms.sym --osymbols=syms.sym --portrait 8.fst | dot -Tpdf  > 8.pdf

fstcompile --isymbols=syms.sym --osymbols=syms.sym  9.txt | fstarcsort > 9.fst
fstdraw    --isymbols=syms.sym --osymbols=syms.sym --portrait 9.fst | dot -Tpdf  > 9.pdf

fstcompile --isymbols=syms.sym --osymbols=syms.sym  30.txt | fstarcsort > 30.fst
fstdraw    --isymbols=syms.sym --osymbols=syms.sym --portrait 30.fst | dot -Tpdf  > 30.pdf

fstcompile --isymbols=syms.sym --osymbols=syms.sym  40.txt | fstarcsort > 40.fst
fstdraw    --isymbols=syms.sym --osymbols=syms.sym --portrait 40.fst | dot -Tpdf  > 40.pdf

fstcompile --isymbols=syms.sym --osymbols=syms.sym  80.txt | fstarcsort > 80.fst
fstdraw    --isymbols=syms.sym --osymbols=syms.sym --portrait 80.fst | dot -Tpdf  > 80.pdf

fstcompile --isymbols=syms.sym --osymbols=syms.sym  57.txt | fstarcsort > 57.fst
fstdraw    --isymbols=syms.sym --osymbols=syms.sym --portrait 57.fst | dot -Tpdf  > 57.pdf

fstcompile --isymbols=syms.sym --osymbols=syms.sym  90.txt | fstarcsort > 90.fst
fstdraw    --isymbols=syms.sym --osymbols=syms.sym --portrait 90.fst | dot -Tpdf  > 90.pdf
<<<<<<< HEAD

fstcompile --isymbols=syms.sym --osymbols=syms.sym  93.txt | fstarcsort > 93.fst
fstdraw    --isymbols=syms.sym --osymbols=syms.sym --portrait 93.fst | dot -Tpdf  > 93.pdf
=======
>>>>>>> 3113ad89b01fbb3fb1e42b685fd4006dec37c0c3
