fstcompile --isymbols=syms.sym --osymbols=syms.sym minusculas.txt | fstarcsort > minusculas.fst
fstdraw    --isymbols=syms.sym --osymbols=syms.sym --portrait minusculas.fst | dot -Tpdf  > minusculas.pdf

fstcompile --isymbols=syms.sym --osymbols=syms.sym roman2arabic.txt | fstarcsort > roman2arabic.fst
fstdraw    --isymbols=syms.sym --osymbols=syms.sym --portrait roman2arabic.fst | dot -Tpdf  > roman2arabic.pdf

fstunion minusculas.fst roman2arabic.fst > union2.fst

fstclosure union2.fst > transdutor2.fst
fstdraw    --isymbols=syms.sym --osymbols=syms.sym --portrait transdutor2.fst | dot -Tpdf  > transdutor2.pdf

##TESTES
fstcompile --isymbols=syms.sym --osymbols=syms.sym XCIX_.txt | fstarcsort > XCIX_.fst
fstdraw    --isymbols=syms.sym --osymbols=syms.sym --portrait XCIX_.fst | dot -Tpdf  > XCIX_.pdf

fstcompile --isymbols=syms.sym --osymbols=syms.sym XCIX_aa_.txt | fstarcsort > XCIX_aa_.fst
fstdraw    --isymbols=syms.sym --osymbols=syms.sym --portrait XCIX_aa_.fst | dot -Tpdf  > XCIX_aa_.pdf

fstcompile --isymbols=syms.sym --osymbols=syms.sym batata_XXVIII_.txt | fstarcsort > batata_XXVIII_.fst
fstdraw    --isymbols=syms.sym --osymbols=syms.sym --portrait batata_XXVIII_.fst | dot -Tpdf  > batata_XXVIII_.pdf

fstcompile --isymbols=syms.sym --osymbols=syms.sym ir_tambem_.txt | fstarcsort > ir_tambem_.fst
fstdraw    --isymbols=syms.sym --osymbols=syms.sym --portrait ir_tambem_.fst | dot -Tpdf  > ir_tambem_.pdf




fstcompose XCIX_.fst transdutor2.fst > ex1.fst
fstdraw --isymbols=syms.sym --osymbols=syms.sym --portrait ex1.fst | dot -Tpdf > ex1.pdf

fstcompose XCIX_aa_.fst transdutor2.fst > ex2.fst
fstdraw --isymbols=syms.sym --osymbols=syms.sym --portrait ex2.fst | dot -Tpdf > ex2.pdf

fstcompose batata_XXVIII_.fst transdutor2.fst > ex3.fst
fstdraw --isymbols=syms.sym --osymbols=syms.sym --portrait ex3.fst | dot -Tpdf > ex3.pdf

fstcompose ir_tambem_.fst transdutor2.fst > ex4.fst
fstdraw --isymbols=syms.sym --osymbols=syms.sym --portrait ex4.fst | dot -Tpdf > ex4.pdf

