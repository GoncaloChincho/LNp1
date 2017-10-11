cd test-inputs/
./run.sh
cd ..

###TESTS
###SUCCESS
fstcompose test-inputs/ola_adri_anox.fst transdutor1.fst > ola_adri_anox.fst
fstdraw --isymbols=syms.sym --osymbols=syms.sym --portrait ola_adri_anox.fst | dot -Tpdf > ola_adri_anox.pdf

fstcompose test-inputs/ola_32.fst transdutor1.fst > ola_XXXII.fst
fstdraw --isymbols=syms.sym --osymbols=syms.sym --portrait ola_XXXII.fst | dot -Tpdf > ola_XXXII.pdf

fstcompose test-inputs/28_.fst transdutor1.fst > XXVIII_.fst
fstdraw --isymbols=syms.sym --osymbols=syms.sym --portrait XXVIII_.fst | dot -Tpdf > XXVIII_.pdf

###FAIL CASES
fstcompose test-inputs/28.fst transdutor1.fst > XXVIII.fst
fstdraw --isymbols=syms.sym --osymbols=syms.sym --portrait XXVIII.fst | dot -Tpdf > XXVIII.pdf
