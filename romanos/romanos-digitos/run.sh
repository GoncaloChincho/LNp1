fstcompile --isymbols=syms.sym --osymbols=syms.sym  romanos-digitos-I/3.txt | fstarcsort > 3.fst
fstdraw    --isymbols=syms.sym --osymbols=syms.sym --portrait 3.fst | dot -Tpdf  > 3.pdf

fstcompile --isymbols=syms.sym --osymbols=syms.sym  romanos-digitos-I/4.txt | fstarcsort > 4.fst
fstdraw    --isymbols=syms.sym --osymbols=syms.sym --portrait 4.fst | dot -Tpdf  > 4.pdf

fstcompile --isymbols=syms.sym --osymbols=syms.sym  romanos-digitos-I/9.txt | fstarcsort > 9.fst
fstdraw    --isymbols=syms.sym --osymbols=syms.sym --portrait 9.fst | dot -Tpdf  > 9.pdf

fstcompile --isymbols=syms.sym --osymbols=syms.sym  romanos-digitos-V/5.txt | fstarcsort > 5.fst
fstdraw    --isymbols=syms.sym --osymbols=syms.sym --portrait 5.fst | dot -Tpdf  > 5.pdf

fstcompile --isymbols=syms.sym --osymbols=syms.sym  romanos-digitos-V/6.txt | fstarcsort > 6.fst
fstdraw    --isymbols=syms.sym --osymbols=syms.sym --portrait 6.fst | dot -Tpdf  > 6.pdf

fstcompile --isymbols=syms.sym --osymbols=syms.sym  romanos-digitos-V/7.txt | fstarcsort > 7.fst
fstdraw    --isymbols=syms.sym --osymbols=syms.sym --portrait 7.fst | dot -Tpdf  > 7.pdf

fstcompile --isymbols=syms.sym --osymbols=syms.sym  57.txt | fstarcsort > 57.fst
fstdraw    --isymbols=syms.sym --osymbols=syms.sym --portrait 57.fst | dot -Tpdf  > 57.pdf

fstcompile --isymbols=syms.sym --osymbols=syms.sym  0.txt | fstarcsort > 0.fst
fstdraw    --isymbols=syms.sym --osymbols=syms.sym --portrait 0.fst | dot -Tpdf  > 0.pdf

fstcompile --isymbols=syms.sym --osymbols=syms.sym  8.txt | fstarcsort > 8.fst
fstdraw    --isymbols=syms.sym --osymbols=syms.sym --portrait 8.fst | dot -Tpdf  > 8.pdf

########
fstcompile --isymbols=syms.sym --osymbols=syms.sym romanos-digitos-V/romanos-digitos-V.txt | fstarcsort > romanos-digitos-V.fst
fstdraw    --isymbols=syms.sym --osymbols=syms.sym --portrait romanos-digitos-V.fst | dot -Tpdf  > romanos-digitos-V.pdf

fstcompile --isymbols=syms.sym --osymbols=syms.sym romanos-digitos-I/romanos-digitos-I.txt | fstarcsort > romanos-digitos-I.fst
fstdraw    --isymbols=syms.sym --osymbols=syms.sym --portrait romanos-digitos-I.fst | dot -Tpdf  > romanos-digitos-I.pdf

fstunion romanos-digitos-I.fst romanos-digitos-V.fst > romanos-digitos.fst

fstdraw    --isymbols=syms.sym --osymbols=syms.sym --portrait romanos-digitos.fst | dot -Tpdf  > romanos-digitos.pdf

### TESTES ###
fstcompose 57.fst romanos-digitos.fst > VVVV.fst
fstdraw --isymbols=syms.sym --osymbols=syms.sym --portrait VVVV.fst | dot -Tpdf > VVV.pdf

fstcompose 0.fst romanos-digitos.fst > zero.fst
fstdraw --isymbols=syms.sym --osymbols=syms.sym --portrait zero.fst | dot -Tpdf > zero.pdf

fstcompose 8.fst romanos-digitos.fst > VIII.fst
fstdraw --isymbols=syms.sym --osymbols=syms.sym --portrait VIII.fst | dot -Tpdf > VIII.pdf

fstcompose 3.fst romanos-digitos.fst > III.fst
fstdraw --isymbols=syms.sym --osymbols=syms.sym --portrait III.fst | dot -Tpdf > III.pdf

fstcompose 9.fst romanos-digitos.fst > IX.fst
fstdraw --isymbols=syms.sym --osymbols=syms.sym --portrait IX.fst | dot -Tpdf > IX.pdf

fstcompose 4.fst romanos-digitos.fst > IV.fst
fstdraw --isymbols=syms.sym --osymbols=syms.sym --portrait IV.fst | dot -Tpdf > IV.pdf

