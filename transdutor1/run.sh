cd ../romanos/
./run.sh
cd ../transdutor1

##COMPILING UNDERSCORE
fstcompile --isymbols=syms.sym --osymbols=syms.sym space.txt | fstarcsort > space.fst
fstdraw    --isymbols=syms.sym --osymbols=syms.sym --portrait space.fst | dot -Tpdf  > space.pdf


fstcompile --isymbols=syms.sym --osymbols=syms.sym letras.txt | fstarcsort > letras.fst
fstdraw    --isymbols=syms.sym --osymbols=syms.sym --portrait letras.fst | dot -Tpdf  > letras.pdf

###PROCESSES WORDS WITH LETTERS OR NUMBERS
fstunion letras.fst ../romanos/romanos.fst > union.fst
fstdraw    --isymbols=syms.sym --osymbols=syms.sym --portrait union.fst | dot -Tpdf  > union.pdf

###PROCESSES WORDS ENDING IN UNDERSCORE
fstconcat union.fst space.fst > concat.fst
fstdraw    --isymbols=syms.sym --osymbols=syms.sym --portrait concat.fst | dot -Tpdf  > concat.pdf

###PROCESSES MORE THAN ONE WORD
fstclosure concat.fst > transdutor1.fst
fstdraw    --isymbols=syms.sym --osymbols=syms.sym --portrait transdutor1.fst | dot -Tpdf  > transdutor1.pdf



