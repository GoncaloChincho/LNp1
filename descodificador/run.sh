cd ../transdutor1
./run.sh
cd ../transdutor2
./run.sh
cd ../transdutor3
./run.sh
cd ../descodificador

###MIRRORS THE LISTED TRANSDUCERS
fstreverse ../transdutor1/transdutor1.fst > reverted1.fst
fstreverse ../transdutor2/transdutor2.fst > reverted2.fst
fstreverse ../transdutor3/transdutor3.fst > reverted3.fst

###INVERTS THE TAGS OF INPUT:OUTPUT
fstinvert ../transdutor1/transdutor1.fst > inverted1.fst
fstinvert ../transdutor2/transdutor2.fst > inverted2.fst
fstinvert ../transdutor3/transdutor3.fst > inverted3.fst

###VISUALIZATION FOR DEBUGGING
fstdraw --isymbols=syms.sym --osymbols=syms.sym --portrait inverted1.fst | dot -Tpdf > inverted1.pdf
fstdraw --isymbols=syms.sym --osymbols=syms.sym --portrait inverted2.fst | dot -Tpdf > inverted2.pdf
fstdraw --isymbols=syms.sym --osymbols=syms.sym --portrait inverted3.fst | dot -Tpdf > inverted3.pdf

###SORTING ARCS FOR COMPOSE
fstarcsort inverted1.fst > sorted1.fst
fstarcsort inverted2.fst > sorted2.fst
fstarcsort inverted3.fst > sorted3.fst

###COMPOSE
###TRANSLATES ENCODED WORDS AND ARABIC-ROMAN NUMBERS TO ENCODED ROMAN NUMBERS 
fstcompose sorted3.fst sorted2.fst > defog32.fst

###TRANSLATES ENCODED ROMAN NUMBERS TO ARABIC NUMBERS
fstcompose defog32.fst sorted1.fst > descodificador.fst
fstdraw    --isymbols=syms.sym --osymbols=syms.sym --portrait descodificador.fst | dot -Tpdf  > descodificador.pdf
