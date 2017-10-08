fstcompile --isymbols=syms.sym --osymbols=syms.sym  romanos-dezenas-X/3.txt | fstarcsort > 3.fst
fstdraw    --isymbols=syms.sym --osymbols=syms.sym --portrait 3.fst | dot -Tpdf  > 3.pdf

fstcompile --isymbols=syms.sym --osymbols=syms.sym  romanos-dezenas-X/4.txt | fstarcsort > 4.fst
fstdraw    --isymbols=syms.sym --osymbols=syms.sym --portrait 4.fst | dot -Tpdf  > 4.pdf

fstcompile --isymbols=syms.sym --osymbols=syms.sym  romanos-dezenas-X/9.txt | fstarcsort > 9.fst
fstdraw    --isymbols=syms.sym --osymbols=syms.sym --portrait 9.fst | dot -Tpdf  > 9.pdf

fstcompile --isymbols=syms.sym --osymbols=syms.sym  romanos-dezenas-L/5.txt | fstarcsort > 5.fst
fstdraw    --isymbols=syms.sym --osymbols=syms.sym --portrait 5.fst | dot -Tpdf  > 5.pdf

fstcompile --isymbols=syms.sym --osymbols=syms.sym  romanos-dezenas-L/6.txt | fstarcsort > 6.fst
fstdraw    --isymbols=syms.sym --osymbols=syms.sym --portrait 6.fst | dot -Tpdf  > 6.pdf

fstcompile --isymbols=syms.sym --osymbols=syms.sym  romanos-dezenas-L/7.txt | fstarcsort > 7.fst
fstdraw    --isymbols=syms.sym --osymbols=syms.sym --portrait 7.fst | dot -Tpdf  > 7.pdf

fstcompile --isymbols=syms.sym --osymbols=syms.sym  57.txt | fstarcsort > 57.fst
fstdraw    --isymbols=syms.sym --osymbols=syms.sym --portrait 57.fst | dot -Tpdf  > 57.pdf

fstcompile --isymbols=syms.sym --osymbols=syms.sym  0.txt | fstarcsort > 0.fst
fstdraw    --isymbols=syms.sym --osymbols=syms.sym --portrait 0.fst | dot -Tpdf  > 0.pdf

fstcompile --isymbols=syms.sym --osymbols=syms.sym  8.txt | fstarcsort > 8.fst
fstdraw    --isymbols=syms.sym --osymbols=syms.sym --portrait 8.fst | dot -Tpdf  > 8.pdf

########
fstcompile --isymbols=syms.sym --osymbols=syms.sym romanos-dezenas-X/romanos-dezenas-X.txt | fstarcsort > romanos-dezenas-X.fst
fstdraw    --isymbols=syms.sym --osymbols=syms.sym --portrait romanos-dezenas-X.fst | dot -Tpdf  > romanos-dezenas-X.pdf

fstcompile --isymbols=syms.sym --osymbols=syms.sym romanos-dezenas-L/romanos-dezenas-L.txt | fstarcsort > romanos-dezenas-L.fst
fstdraw    --isymbols=syms.sym --osymbols=syms.sym --portrait romanos-dezenas-L.fst | dot -Tpdf  > romanos-dezenas-L.pdf

fstunion romanos-dezenas-X.fst romanos-dezenas-L.fst > romanos-dezenas.fst

fstdraw    --isymbols=syms.sym --osymbols=syms.sym --portrait romanos-dezenas.fst | dot -Tpdf  > romanos-dezenas.pdf

### TESTES ###
fstcompose 57.fst romanos-dezenas.fst > VVVV.fst
fstdraw --isymbols=syms.sym --osymbols=syms.sym --portrait VVVV.fst | dot -Tpdf > VVV.pdf

fstcompose 0.fst romanos-dezenas.fst > zero.fst
fstdraw --isymbols=syms.sym --osymbols=syms.sym --portrait zero.fst | dot -Tpdf > zero.pdf

fstcompose 8.fst romanos-dezenas.fst > VIII.fst
fstdraw --isymbols=syms.sym --osymbols=syms.sym --portrait VIII.fst | dot -Tpdf > LXXX.pdf

fstcompose 3.fst romanos-dezenas.fst > III.fst
fstdraw --isymbols=syms.sym --osymbols=syms.sym --portrait III.fst | dot -Tpdf > XXX.pdf

fstcompose 9.fst romanos-dezenas.fst > IX.fst
fstdraw --isymbols=syms.sym --osymbols=syms.sym --portrait IX.fst | dot -Tpdf > LC.pdf

fstcompose 4.fst romanos-dezenas.fst > IV.fst
fstdraw --isymbols=syms.sym --osymbols=syms.sym --portrait IV.fst | dot -Tpdf > XL.pdf

