###PROCESS WORDS ENDING WITH UNDERSCORE
fstcompile --isymbols=syms.sym --osymbols=syms.sym allInOne.txt | fstarcsort > allInOne.fst
fstdraw    --isymbols=syms.sym --osymbols=syms.sym --portrait allInOne.fst | dot -Tpdf  > allInOne.pdf

##PROCESSES NUMBERS ENDING WITH UNDERSCORE
fstcompile --isymbols=syms.sym --osymbols=syms.sym number.txt | fstarcsort > number.fst

###PROCESSES NUMBERS OR WORDS
fstunion allInOne.fst number.fst > union32.fst

###PROCESSES MORE THAN ONE WORD OR NUMBER
fstclosure union32.fst > transdutor3.fst
fstdraw    --isymbols=syms.sym --osymbols=syms.sym --portrait transdutor3.fst | dot -Tpdf  > transdutor3.pdf
