fstcompile --isymbols=syms.sym --osymbols=syms.sym  3.txt | fstarcsort > 3.fst
fstdraw    --isymbols=syms.sym --osymbols=syms.sym --portrait 3.fst | dot -Tpdf  > 3.pdf

fstcompile --isymbols=syms.sym --osymbols=syms.sym  4.txt | fstarcsort > 4.fst
fstdraw    --isymbols=syms.sym --osymbols=syms.sym --portrait 4.fst | dot -Tpdf  > 4.pdf

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

fstcompile --isymbols=syms.sym --osymbols=syms.sym  0.txt | fstarcsort > 0.fst
fstdraw    --isymbols=syms.sym --osymbols=syms.sym --portrait 0.fst | dot -Tpdf  > 0.pdf

fstcompile --isymbols=syms.sym --osymbols=syms.sym  8.txt | fstarcsort > 8.fst
fstdraw    --isymbols=syms.sym --osymbols=syms.sym --portrait 8.fst | dot -Tpdf  > 8.pdf

fstcompile --isymbols=syms.sym --osymbols=syms.sym  90.txt | fstarcsort > 90.fst
fstdraw    --isymbols=syms.sym --osymbols=syms.sym --portrait 90.fst | dot -Tpdf  > 90.pdf

########
fstcompile --isymbols=syms.sym --osymbols=syms.sym romanos-digitos/romanos-digitos-V/romanos-digitos-V.txt | fstarcsort > romanos-digitos/romanos-digitos-V.fst
fstdraw    --isymbols=syms.sym --osymbols=syms.sym --portrait romanos-digitos/romanos-digitos-V.fst | dot -Tpdf  > romanos-digitos/romanos-digitos-V.pdf

fstcompile --isymbols=syms.sym --osymbols=syms.sym romanos-digitos/romanos-digitos-I/romanos-digitos-I.txt | fstarcsort > romanos-digitos/romanos-digitos-I.fst
fstdraw    --isymbols=syms.sym --osymbols=syms.sym --portrait romanos-digitos/romanos-digitos-I.fst | dot -Tpdf  > romanos-digitos/romanos-digitos-I.pdf

fstunion romanos-digitos/romanos-digitos-I.fst romanos-digitos/romanos-digitos-V.fst > romanos-digitos/romanos-digitos.fst

fstdraw    --isymbols=syms.sym --osymbols=syms.sym --portrait romanos-digitos/romanos-digitos.fst | dot -Tpdf  > romanos-digitos/romanos-digitos.pdf
####DEZENAS
fstcompile --isymbols=syms.sym --osymbols=syms.sym romanos-dezenas/romanos-dezenas-X/romanos-dezenas-X.txt | fstarcsort > romanos-dezenas/romanos-dezenas-X.fst
fstdraw    --isymbols=syms.sym --osymbols=syms.sym --portrait romanos-dezenas/romanos-dezenas-X.fst | dot -Tpdf  > romanos-dezenas/romanos-dezenas-X.pdf

fstcompile --isymbols=syms.sym --osymbols=syms.sym romanos-dezenas/romanos-dezenas-L/romanos-dezenas-L.txt | fstarcsort > romanos-dezenas/romanos-dezenas-L.fst
fstdraw    --isymbols=syms.sym --osymbols=syms.sym --portrait romanos-dezenas/romanos-dezenas-L.fst | dot -Tpdf  > romanos-dezenas/romanos-dezenas-L.pdf

fstunion romanos-dezenas/romanos-dezenas-X.fst romanos-dezenas/romanos-dezenas-L.fst > romanos-dezenas/romanos-dezenas.fst

fstdraw    --isymbols=syms.sym --osymbols=syms.sym --portrait romanos-dezenas/romanos-dezenas.fst | dot -Tpdf  > romanos-dezenas/romanos-dezenas.pdf

fstconcat romanos-dezenas/romanos-dezenas.fst romanos-digitos/romanos-digitos.fst > romanos.fst

fstdraw    --isymbols=syms.sym --osymbols=syms.sym --portrait romanos.fst | dot -Tpdf  > romanos.pdf
####testes
fstcompose 57.fst romanos.fst > LVII.fst
fstdraw --isymbols=syms.sym --osymbols=syms.sym --portrait LVII.fst | dot -Tpdf > LVII.pdf

fstcompose 0.fst romanos.fst > zero.fst
fstdraw --isymbols=syms.sym --osymbols=syms.sym --portrait zero.fst | dot -Tpdf > zero.pdf

fstcompose 8.fst romanos.fst > VIII.fst
fstdraw --isymbols=syms.sym --osymbols=syms.sym --portrait VIII.fst | dot -Tpdf > LXXX.pdf

fstcompose 3.fst romanos.fst > III.fst
fstdraw --isymbols=syms.sym --osymbols=syms.sym --portrait III.fst | dot -Tpdf > XXX.pdf

fstcompose 9.fst romanos.fst > IX.fst
fstdraw --isymbols=syms.sym --osymbols=syms.sym --portrait IX.fst | dot -Tpdf > LC.pdf

fstcompose 4.fst romanos.fst > IV.fst
fstdraw --isymbols=syms.sym --osymbols=syms.sym --portrait IV.fst | dot -Tpdf > XL.pdf

fstcompose 30.fst romanos.fst > XXX.fst
fstdraw --isymbols=syms.sym --osymbols=syms.sym --portrait XXX.fst | dot -Tpdf > XXX.pdf

fstcompose 40.fst romanos.fst > XL.fst
fstdraw --isymbols=syms.sym --osymbols=syms.sym --portrait XL.fst | dot -Tpdf > XL.pdf

fstcompose 80.fst romanos.fst > LXXX.fst
fstdraw --isymbols=syms.sym --osymbols=syms.sym --portrait LXXX.fst | dot -Tpdf > LXXX.pdf

fstcompose 90.fst romanos.fst > XC.fst
fstdraw --isymbols=syms.sym --osymbols=syms.sym --portrait XC.fst | dot -Tpdf > XC.pdf



