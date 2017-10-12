cd ../transdutor1
./run.sh
cd ../transdutor2
./run.sh
cd ../transdutor3
./run.sh
cd ../codificador

###SORTING ARCS FOR COMPOSE
fstarcsort ../transdutor1/transdutor1.fst > sorted1.fst
fstarcsort ../transdutor2/transdutor2.fst > sorted2.fst
fstarcsort ../transdutor3/transdutor3.fst > sorted3.fst

###COMPOSE
###TRANSLATES ARABIC NUMBERS TO ENCODED ROMAN NUMBERS

fstcompose sorted1.fst sorted2.fst > gof12.fst

###TRANSLATES ENCODES WORDS AND ARABIC NUMBERS VIA ROMAN NUMBERS
fstcompose gof12.fst sorted3.fst > codificador.fst
fstrmepsilon 
fstdraw    --isymbols=syms.sym --osymbols=syms.sym --portrait codificador.fst | dot -Tpdf  > codificador.pdf
