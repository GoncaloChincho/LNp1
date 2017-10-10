###PROCESS LETTERS
fstcompile --isymbols=syms.sym --osymbols=syms.sym nocode.txt | fstarcsort > nocode.fst
fstdraw    --isymbols=syms.sym --osymbols=syms.sym --portrait nocode.fst | dot -Tpdf  > nocode.pdf
fstcompile --isymbols=syms.sym --osymbols=syms.sym code.txt | fstarcsort > code.fst
fstdraw    --isymbols=syms.sym --osymbols=syms.sym --portrait code.fst | dot -Tpdf  > code.pdf
##CODED LETTERS OR NOT CODED
fstunion nocode.fst code.fst > union3.fst
fstdraw    --isymbols=syms.sym --osymbols=syms.sym --portrait union3.fst | dot -Tpdf  > union3.pdf
##PROCESS BOTH ON SAME WORD
fstclosure union3.fst > closure3.fst

fstcompile --isymbols=syms.sym --osymbols=syms.sym ../transdutor1/space.txt | fstarcsort > space.fst
##END WORD WITH UNDERSCORE
fstconcat closure3.fst space.fst > concat3.fst
##GO PROCESS MORE WORDS
fstclosure concat3.fst > allLetters.fst
fstdraw    --isymbols=syms.sym --osymbols=syms.sym --portrait allLetters.fst | dot -Tpdf  > allLetters.pdf

##PROCESS NUMBERS
fstcompile --isymbols=syms.sym --osymbols=syms.sym number.txt | fstarcsort > number.fst
fstunion allLetters.fst number.fst > union32.fst

fstclosure union32.fst > transdutor3.fst
fstdraw    --isymbols=syms.sym --osymbols=syms.sym --portrait transdutor3.fst | dot -Tpdf  > transdutor3.pdf

##TESTES
fstcompile --isymbols=syms.sym --osymbols=syms.sym XCIX_.txt | fstarcsort > XCIX_.fst
fstdraw    --isymbols=syms.sym --osymbols=syms.sym --portrait XCIX_.fst | dot -Tpdf  > XCIX_.pdf

fstcompile --isymbols=syms.sym --osymbols=syms.sym XCIX_aa_.txt | fstarcsort > XCIX_aa_.fst
fstdraw    --isymbols=syms.sym --osymbols=syms.sym --portrait XCIX_aa_.fst | dot -Tpdf  > XCIX_aa_.pdf

fstcompile --isymbols=syms.sym --osymbols=syms.sym batata_XXVIII_.txt | fstarcsort > batata_XXVIII_.fst
fstdraw    --isymbols=syms.sym --osymbols=syms.sym --portrait batata_XXVIII_.fst | dot -Tpdf  > batata_XXVIII_.pdf

fstcompile --isymbols=syms.sym --osymbols=syms.sym ir_tambem_.txt | fstarcsort > ir_tambem_.fst
fstdraw    --isymbols=syms.sym --osymbols=syms.sym --portrait ir_tambem_.fst | dot -Tpdf  > ir_tambem_.pdf




fstcompose XCIX_.fst transdutor3.fst > ex1.fst
fstdraw --isymbols=syms.sym --osymbols=syms.sym --portrait ex1.fst | dot -Tpdf > ex1.pdf

fstcompose XCIX_aa_.fst transdutor3.fst > ex2.fst
fstdraw --isymbols=syms.sym --osymbols=syms.sym --portrait ex2.fst | dot -Tpdf > ex2.pdf

fstcompose batata_XXVIII_.fst transdutor3.fst > ex3.fst
fstdraw --isymbols=syms.sym --osymbols=syms.sym --portrait ex3.fst | dot -Tpdf > ex3.pdf

fstcompose ir_tambem_.fst transdutor3.fst > ex4.fst
fstdraw --isymbols=syms.sym --osymbols=syms.sym --portrait ex4.fst | dot -Tpdf > ex4.pdf

