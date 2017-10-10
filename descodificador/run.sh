cd ../transdutor1
./run.sh
cd ../transdutor2
./run.sh
cd ../transdutor3
./run.sh
cd ../codificador
./run.sh
cd ../descodificador

fstreverse ../transdutor1/transdutor1.fst > reverted1.fst
fstreverse ../transdutor2/transdutor2.fst > reverted2.fst
fstreverse ../transdutor3/transdutor3.fst > reverted3.fst

fstinvert ../transdutor1/transdutor1.fst > inverted1.fst
fstinvert ../transdutor2/transdutor2.fst > inverted2.fst
fstinvert ../transdutor3/transdutor3.fst > inverted3.fst

fstdraw --isymbols=syms.sym --osymbols=syms.sym --portrait inverted1.fst | dot -Tpdf > inverted1.pdf
fstdraw --isymbols=syms.sym --osymbols=syms.sym --portrait inverted2.fst | dot -Tpdf > inverted2.pdf
fstdraw --isymbols=syms.sym --osymbols=syms.sym --portrait inverted3.fst | dot -Tpdf > inverted3.pdf

fstarcsort inverted1.fst > sorted1.fst
fstarcsort inverted2.fst > sorted2.fst
fstarcsort inverted3.fst > sorted3.fst

fstcompose sorted3.fst sorted2.fst > descodifica.fst

fstcompose descodifica.fst sorted1.fst > yes.fst



fstdraw    --isymbols=syms.sym --osymbols=syms.sym --portrait yes.fst | dot -Tpdf  > yes.pdf

##TESTES
fstcompile --isymbols=syms.sym --osymbols=syms.sym 99_.txt | fstarcsort > 99_.fst
fstdraw    --isymbols=syms.sym --osymbols=syms.sym --portrait 99_.fst | dot -Tpdf  > 99_.pdf

fstcompile --isymbols=syms.sym --osymbols=syms.sym 99_aa_.txt | fstarcsort > 99_aa_.fst
fstdraw    --isymbols=syms.sym --osymbols=syms.sym --portrait 99_aa_.fst | dot -Tpdf  > 99_aa_.pdf

fstcompile --isymbols=syms.sym --osymbols=syms.sym batata_28_.txt | fstarcsort > batata_28_.fst
fstdraw    --isymbols=syms.sym --osymbols=syms.sym --portrait batata_28_.fst | dot -Tpdf  > batata_28_.pdf

fstcompile --isymbols=syms.sym --osymbols=syms.sym ir_tambem_.txt | fstarcsort > ir_tambem_.fst
fstdraw    --isymbols=syms.sym --osymbols=syms.sym --portrait ir_tambem_.fst | dot -Tpdf  > ir_tambem_.pdf


fstcompose 99_.fst yes.fst > ex1.fst
fstdraw --isymbols=syms.sym --osymbols=syms.sym --portrait ex1.fst | dot -Tpdf > ex1.pdf

fstcompose 99_aa_.fst yes.fst > ex2.fst
fstdraw --isymbols=syms.sym --osymbols=syms.sym --portrait ex2.fst | dot -Tpdf > ex2.pdf

fstcompose batata_28_.fst yes.fst > ex3.fst
fstdraw --isymbols=syms.sym --osymbols=syms.sym --portrait ex3.fst | dot -Tpdf > ex3.pdf

fstcompose ir_tambem_.fst yes.fst > ex4.fst
fstdraw --isymbols=syms.sym --osymbols=syms.sym --portrait ex4.fst | dot -Tpdf > ex4.pdf



