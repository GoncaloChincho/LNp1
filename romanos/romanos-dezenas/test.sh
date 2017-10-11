cd test-inputs
./run.sh
cd ..

### TESTES ###

###SUCCESSFUL
fstcompose test-inputs/8.fst romanos-dezenas.fst > VIII.fst
fstdraw --isymbols=syms.sym --osymbols=syms.sym --portrait VIII.fst | dot -Tpdf > LXXX.pdf

fstcompose test-inputs/3.fst romanos-dezenas.fst > III.fst
fstdraw --isymbols=syms.sym --osymbols=syms.sym --portrait III.fst | dot -Tpdf > XXX.pdf

fstcompose test-inputs/9.fst romanos-dezenas.fst > IX.fst
fstdraw --isymbols=syms.sym --osymbols=syms.sym --portrait IX.fst | dot -Tpdf > LC.pdf

fstcompose test-inputs/4.fst romanos-dezenas.fst > IV.fst
fstdraw --isymbols=syms.sym --osymbols=syms.sym --portrait IV.fst | dot -Tpdf > XL.pdf

###FAIL CASES
fstcompose test-inputs/57.fst romanos-dezenas.fst > LVII.fst
fstdraw --isymbols=syms.sym --osymbols=syms.sym --portrait LVII.fst | dot -Tpdf > LVII.pdf

fstcompose test-inputs/0.fst romanos-dezenas.fst > zero.fst
fstdraw --isymbols=syms.sym --osymbols=syms.sym --portrait zero.fst | dot -Tpdf > zero.pdf
