cd ../transdutor1
./run.sh
cd ../transdutor2
./run.sh
cd ../transdutor3
./run.sh

cd ../codificador

fstarcsort ../transdutor1/transdutor1.fst > sorted1.fst
fstarcsort ../transdutor2/transdutor2.fst > sorted2.fst
fstarcsort ../transdutor3/transdutor3.fst > sorted3.fst

fstcompose sorted1.fst sorted2.fst > codifica.fst

fstcompose codifica.fst sorted3.fst > yes.fst



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



