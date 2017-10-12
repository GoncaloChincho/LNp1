###COMPILING TEST INPUTS
cd test-inputs
./run.sh
cd ..

### TESTES ###

###SUCCESSFUL
fstcompose test-inputs/0.fst romanos-digitos.fst > zero.fst
fstdraw --isymbols=syms.sym --osymbols=syms.sym --portrait zero.fst | dot -Tpdf > zero.pdf

fstcompose test-inputs/3.fst romanos-digitos.fst > III.fst
fstdraw --isymbols=syms.sym --osymbols=syms.sym --portrait III.fst | dot -Tpdf > III.pdf

fstcompose test-inputs/4.fst romanos-digitos.fst > IV.fst
fstdraw --isymbols=syms.sym --osymbols=syms.sym --portrait IV.fst | dot -Tpdf > IV.pdf

fstcompose test-inputs/5.fst romanos-digitos.fst > V.fst
fstdraw --isymbols=syms.sym --osymbols=syms.sym --portrait V.fst | dot -Tpdf > V.pdf

fstcompose test-inputs/6.fst romanos-digitos.fst > VI.fst
fstdraw --isymbols=syms.sym --osymbols=syms.sym --portrait VI.fst | dot -Tpdf > VI.pdf

fstcompose test-inputs/7.fst romanos-digitos.fst > VII.fst
fstdraw --isymbols=syms.sym --osymbols=syms.sym --portrait VII.fst | dot -Tpdf > VII.pdf

fstcompose test-inputs/8.fst romanos-digitos.fst > VIII.fst
fstdraw --isymbols=syms.sym --osymbols=syms.sym --portrait VIII.fst | dot -Tpdf > VIII.pdf

fstcompose test-inputs/9.fst romanos-digitos.fst > IX.fst
fstdraw --isymbols=syms.sym --osymbols=syms.sym --portrait IX.fst | dot -Tpdf > IX.pdf

###FAIL CASES
fstcompose test-inputs/57.fst romanos-digitos.fst > LVII.fst
fstdraw --isymbols=syms.sym --osymbols=syms.sym --portrait VVVV.fst | dot -Tpdf > LVII.pdf


