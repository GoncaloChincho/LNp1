cd test-inputs/
./run.sh
cd ..

###TESTS

###SUCCESSFUL
fstcompose test-inputs/XCIX_.fst transdutor3.fst > ex1.fst
fstdraw --isymbols=syms.sym --osymbols=syms.sym --portrait ex1.fst | dot -Tpdf > ex1.pdf

fstcompose test-inputs/XCIX_aa_.fst transdutor3.fst > ex2.fst
fstdraw --isymbols=syms.sym --osymbols=syms.sym --portrait ex2.fst | dot -Tpdf > ex2.pdf

fstcompose test-inputs/batata_XXVIII_.fst transdutor3.fst > ex3.fst
fstdraw --isymbols=syms.sym --osymbols=syms.sym --portrait ex3.fst | dot -Tpdf > ex3.pdf

fstcompose test-inputs/ir_tambem_.fst transdutor3.fst > ex4.fst
fstdraw --isymbols=syms.sym --osymbols=syms.sym --portrait ex4.fst | dot -Tpdf > ex4.pdf

####
fstcompose test-inputs/iir_.fst transdutor3.fst > out.fst
fstrmepsilon out.fst >iir_.fst
fstdraw --isymbols=syms.sym --osymbols=syms.sym --portrait iir_.fst | dot -Tpdf > iir_.pdf

fstcompose test-inputs/iik_.fst transdutor3.fst > out.fst
fstrmepsilon out.fst >iik_.fst
fstdraw --isymbols=syms.sym --osymbols=syms.sym --portrait iik_.fst | dot -Tpdf > iik_.pdf

fstcompose test-inputs/mambem_mamamoo_.fst transdutor3.fst > out.fst
fstrmepsilon out.fst >mambem_mamamoo_.fst
fstdraw --isymbols=syms.sym --osymbols=syms.sym --portrait mambem_mamamoo_.fst | dot -Tpdf > mambem_mamamoo_.pdf

fstcompose test-inputs/rair_.fst transdutor3.fst > out.fst
fstrmepsilon out.fst >rair_.fst
fstdraw --isymbols=syms.sym --osymbols=syms.sym --portrait rair_.fst | dot -Tpdf > rair_.pdf

fstcompose test-inputs/mmomb_.fst transdutor3.fst > out.fst
fstrmepsilon out.fst >mmomb_.fst
fstdraw --isymbols=syms.sym --osymbols=syms.sym --portrait mmomb_.fst | dot -Tpdf > mmomb_.pdf
