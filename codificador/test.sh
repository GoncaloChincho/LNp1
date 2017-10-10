cd test-inputs/
./run.sh
cd ..

###TESTS
###SUCCESSFUL
fstcompose test-inputs/99_.fst codificador.fst > ex1.fst
fstdraw --isymbols=syms.sym --osymbols=syms.sym --portrait ex1.fst | dot -Tpdf > ex1.pdf

fstcompose test-inputs/99_aa_.fst codificador.fst > ex2.fst
fstdraw --isymbols=syms.sym --osymbols=syms.sym --portrait ex2.fst | dot -Tpdf > ex2.pdf

fstcompose test-inputs/batata_28_.fst codificador.fst > ex3.fst
fstdraw --isymbols=syms.sym --osymbols=syms.sym --portrait ex3.fst | dot -Tpdf > ex3.pdf

fstcompose test-inputs/ir_tambem_.fst codificador.fst > ex4.fst
fstdraw --isymbols=syms.sym --osymbols=syms.sym --portrait ex4.fst | dot -Tpdf > ex4.pdf



