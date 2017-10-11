cd test-inputs/
./run.sh
cd ..
###TESTS

###SUCCESSFUL
fstcompose test-inputs/99_.fst descodificador.fst > ex1.fst
fstdraw --isymbols=syms.sym --osymbols=syms.sym --portrait ex1.fst | dot -Tpdf > ex1.pdf

fstcompose test-inputs/99_aa_.fst descodificador.fst > ex2.fst
fstdraw --isymbols=syms.sym --osymbols=syms.sym --portrait ex2.fst | dot -Tpdf > ex2.pdf

fstcompose test-inputs/batata_28_.fst descodificador.fst > ex3.fst
fstdraw --isymbols=syms.sym --osymbols=syms.sym --portrait ex3.fst | dot -Tpdf > ex3.pdf

fstcompose test-inputs/ir_tambem_.fst descodificador.fst > ex4.fst
fstdraw --isymbols=syms.sym --osymbols=syms.sym --portrait ex4.fst | dot -Tpdf > ex4.pdf

fstcompose test-inputs/arroz_com_maracuja_.fst descodificador.fst > ex5.fst
fstdraw --isymbols=syms.sym --osymbols=syms.sym --portrait ex5.fst | dot -Tpdf > ex5.pdf

fstcompose test-inputs/alpha_.fst descodificador.fst > alpha_.fst
fstdraw --isymbols=syms.sym --osymbols=syms.sym --portrait alpha_.fst | dot -Tpdf > alpha_.pdf

fstcompose test-inputs/2_beta_.fst descodificador.fst > 2_beta_.fst
fstdraw --isymbols=syms.sym --osymbols=syms.sym --portrait 2_beta_.fst | dot -Tpdf > 2_beta_.pdf

fstcompose test-inputs/23_charlie_.fst descodificador.fst > 23_charlie_.fst
fstdraw --isymbols=syms.sym --osymbols=syms.sym --portrait 23_charlie_.fst | dot -Tpdf > 23_charlie_.pdf

fstcompose test-inputs/48_delta_7_.fst descodificador.fst > 48_delta_7_.fst
fstdraw --isymbols=syms.sym --osymbols=syms.sym --portrait 48_delta_7_.fst | dot -Tpdf > 48_delta_7_.pdf

fstcompose test-inputs/5_eco_93_.fst descodificador.fst > 5_eco_93_.fst
fstdraw --isymbols=syms.sym --osymbols=syms.sym --portrait 5_eco_93_.fst | dot -Tpdf > 5_eco_93_.pdf

fstcompose test-inputs/foxtrot_61_golf_.fst descodificador.fst > foxtrot_61_golf_.fst
fstdraw --isymbols=syms.sym --osymbols=syms.sym --portrait foxtrot_61_golf_.fst | dot -Tpdf > foxtrot_61_golf_.pdf

fstcompose test-inputs/pangramAndNumbers.fst descodificador.fst > pangramAndNumbers.fst
fstdraw --isymbols=syms.sym --osymbols=syms.sym --portrait pangramAndNumbers.fst | dot -Tpdf > pangramAndNumbers.pdf

fstcompose test-inputs/shortPangram.fst descodificador.fst > shortPangram.fst
fstdraw --isymbols=syms.sym --osymbols=syms.sym --portrait shortPangram.fst | dot -Tpdf > shortPangram.pdf

fstcompose test-inputs/longPangram.fst descodificador.fst > longPangram.fst
fstdraw --isymbols=syms.sym --osymbols=syms.sym --portrait longPangram.fst | dot -Tpdf > longPangram.pdf
