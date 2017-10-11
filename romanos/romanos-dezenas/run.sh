cd romanos-dezenas-X/
./run.sh
cd ../romanos-dezenas-L/
./run.sh
cd ..

###TRANSDUCER
###TRANSLATES ARABIC DIGITS INTO ROMAN 10 TO 90
fstunion romanos-dezenas-X/romanos-dezenas-X.fst romanos-dezenas-L/romanos-dezenas-L.fst > romanos-dezenas.fst
fstdraw    --isymbols=syms.sym --osymbols=syms.sym --portrait romanos-dezenas.fst | dot -Tpdf  > romanos-dezenas.pdf
