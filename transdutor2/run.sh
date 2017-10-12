###PROCESSES LETTERS
fstcompile --isymbols=syms.sym --osymbols=syms.sym letras.txt | fstarcsort > letras.fst
fstdraw    --isymbols=syms.sym --osymbols=syms.sym --portrait letras.fst | dot -Tpdf > letras.pdf

###PROCESSES AND ENCODES ROMAN NUMBERS
fstcompile --isymbols=syms.sym --osymbols=syms.sym roman.txt | fstarcsort > roman.fst
fstdraw    --isymbols=syms.sym --osymbols=syms.sym --portrait roman.fst | dot -Tpdf  > roman.pdf

###PROCESSES MORE THAN ONE WORD
fstunion letras.fst roman.fst > union2.fst

fstclosure union2.fst > transdutor2.fst
fstdraw    --isymbols=syms.sym --osymbols=syms.sym --portrait transdutor2.fst | dot -Tpdf  > transdutor2.pdf
