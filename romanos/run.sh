cd romanos-dezenas/
./run.sh
cd ../romanos-digitos/
./run.sh
cd ..

###TRANSDUCER
###TRANSLATES ARABIC NUMBERS INTO ROMAN FROM 0 TO 99
fstconcat romanos-dezenas/romanos-dezenas.fst romanos-digitos/romanos-digitos.fst > romanos.fst
fstdraw    --isymbols=syms.sym --osymbols=syms.sym --portrait romanos.fst | dot -Tpdf  > romanos.pdf



