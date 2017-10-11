cd romanos-digitos-I
./run.sh
cd ../romanos-digitos-V
./run.sh
cd ..

###TRANSDUCER
###TRANSLATES ARABIC DIGITS INTO ROMAN
fstunion romanos-digitos-I.fst romanos-digitos-V.fst > romanos-digitos.fst
fstdraw    --isymbols=syms.sym --osymbols=syms.sym --portrait romanos-digitos.fst | dot -Tpdf  > romanos-digitos.pdf
