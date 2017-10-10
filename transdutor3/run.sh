###PROCESS LETTERS
fstcompile --isymbols=syms.sym --osymbols=syms.sym nocode.txt | fstarcsort > nocode.fst
fstdraw    --isymbols=syms.sym --osymbols=syms.sym --portrait nocode.fst | dot -Tpdf  > nocode.pdf
fstcompile --isymbols=syms.sym --osymbols=syms.sym code.txt | fstarcsort > code.fst
fstdraw    --isymbols=syms.sym --osymbols=syms.sym --portrait code.fst | dot -Tpdf  > code.pdf

###PROCESSES LETTERS TO BE ENCODED OR LETTERS NOT TO BE ENCODED
fstunion nocode.fst code.fst > union3.fst
fstdraw    --isymbols=syms.sym --osymbols=syms.sym --portrait union3.fst | dot -Tpdf  > union3.pdf

###PROCESSES ALL LETTERS AND ENCODES SOME
fstclosure union3.fst > closure3.fst

fstcompile --isymbols=syms.sym --osymbols=syms.sym ../transdutor1/space.txt | fstarcsort > space.fst

###PROCESSES WORD WITH UNDERSCORE
fstconcat closure3.fst space.fst > concat3.fst

###PROCESSES MORE THAN ONE WORD
fstclosure concat3.fst > allLetters.fst
fstdraw    --isymbols=syms.sym --osymbols=syms.sym --portrait allLetters.fst | dot -Tpdf  > allLetters.pdf

##PROCESSES NUMBERS ENDING WITH UNDERSCORE
fstcompile --isymbols=syms.sym --osymbols=syms.sym number.txt | fstarcsort > number.fst

###PROCESSES NUMBERS OR WORDS
fstunion allLetters.fst number.fst > union32.fst

###PROCESSES MORE THAN ONE WORD OR NUMBER
fstclosure union32.fst > transdutor3.fst
fstdraw    --isymbols=syms.sym --osymbols=syms.sym --portrait transdutor3.fst | dot -Tpdf  > transdutor3.pdf
